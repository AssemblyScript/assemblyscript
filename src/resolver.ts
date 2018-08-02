/**
 * Resolve infrastructure to obtain types and elements.
 * @module resolver
 *//***/

import {
  DiagnosticEmitter,
  DiagnosticCode
} from "./diagnostics";

import {
  Program,
  ElementKind,
  OperatorKind,
  FlowFlags,

  Element,
  Class,
  ClassPrototype,
  Function,
  FunctionTarget,
  FunctionPrototype,
  VariableLikeElement,
  Property,
  DecoratorFlags,
  FieldPrototype,
  Field
} from "./program";

import {
  SignatureNode,
  ParameterKind,
  CommonTypeNode,
  NodeKind,
  TypeNode,
  TypeParameterNode,
  Node,
  Range,
  IdentifierExpression,
  CallExpression,
  ElementAccessExpression,
  PropertyAccessExpression,
  LiteralExpression,
  LiteralKind,
  ParenthesizedExpression,
  AssertionExpression,
  Expression
} from "./ast";

import {
  Type,
  Signature,
  typesToString
} from "./types";

import {
  PATH_DELIMITER,
  INSTANCE_DELIMITER,
  CommonFlags
} from "./common";

/** Indicates whether errors are reported or not. */
export enum ReportMode {
  /** Report errors. */
  REPORT,
  /** Swallow errors. */
  SWALLOW
}

/** Provides tools to resolve types and expressions. */
export class Resolver extends DiagnosticEmitter {

  /** The program this resolver belongs to. */
  program: Program;

  /** Target expression of the previously resolved property or element access. */
  currentThisExpression: Expression | null = null;
  /** Element expression of the previously resolved element access. */
  currentElementExpression : Expression | null = null;

  /** Constructs the resolver for the specified program. */
  constructor(program: Program) {
    super(program.diagnostics);
    this.program = program;
  }

  /** Resolves a {@link CommonTypeNode} to a concrete {@link Type}. */
  resolveType(
    node: CommonTypeNode,
    contextualTypeArguments: Map<string,Type> | null = null,
    reportMode = ReportMode.REPORT
  ): Type | null {

    // handle signatures specifically
    if (node.kind == NodeKind.SIGNATURE) {
      let signature = this.resolveSignature(<SignatureNode>node, contextualTypeArguments, reportMode);
      if (!signature) return null;
      return node.isNullable ? signature.type.asNullable() : signature.type;
    }

    // now dealing with TypeNode
    assert(node.kind == NodeKind.TYPE);
    var typeNode = <TypeNode>node;
    var simpleName = typeNode.name.text;
    var globalName = simpleName;
    var localName = typeNode.range.source.internalPath + PATH_DELIMITER + simpleName; // TODO cache

    // check file-global / program-global enum or class
    {
      let elementsLookup = this.program.elementsLookup;
      let element: Element | null;
      if (
        (element = elementsLookup.get(localName)) || // file-global
        (element = elementsLookup.get(globalName))   // program-global
      ) {
        switch (element.kind) {
          case ElementKind.ENUM: {
            if (typeNode.typeArguments !== null && typeNode.typeArguments.length) {
              if (reportMode == ReportMode.REPORT) {
                this.error(
                  DiagnosticCode.Type_0_is_not_generic,
                  node.range, element.internalName
                );
              }
              return null;
            }
            return Type.i32;
          }
          case ElementKind.CLASS_PROTOTYPE: {
            let instance = this.resolveClassInclTypeArguments(
              <ClassPrototype>element,
              typeNode.typeArguments,
              contextualTypeArguments,
              node
            ); // reports
            if (!instance) return null;
            return node.isNullable ? instance.type.asNullable() : instance.type;
          }
        }
      }
    }

    // check (global) type alias
    {
      let alias = this.program.typeAliases.get(simpleName);
      if (alias) return this.resolveType(alias.type, contextualTypeArguments, reportMode);
    }

    // resolve parameters
    {
      let typeArgumentNodes = typeNode.typeArguments;
      if (typeArgumentNodes) {
        let numTypeArguments = typeArgumentNodes.length;
        let paramTypes = new Array<Type>(numTypeArguments);
        for (let i = 0; i < numTypeArguments; ++i) {
          let paramType = this.resolveType( // reports
            typeArgumentNodes[i],
            contextualTypeArguments,
            reportMode
          );
          if (!paramType) return null;
          paramTypes[i] = paramType;
        }
        if (numTypeArguments) { // can't be a placeholder if it has parameters
          let instanceKey = typesToString(paramTypes);
          if (instanceKey.length) {
            localName += "<" + instanceKey + ">";
            globalName += "<" + instanceKey + ">";
          }
        } else if (contextualTypeArguments) {
          let placeholderType = contextualTypeArguments.get(globalName);
          if (placeholderType) return placeholderType;
        }
      }
    }

    // check file-global / program-global type
    {
      let typesLookup = this.program.typesLookup;
      let type: Type | null;
      if (
        (type = typesLookup.get(localName)) ||
        (type = typesLookup.get(globalName))
      ) {
        return type;
      }
    }

    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Cannot_find_name_0,
        typeNode.name.range, globalName
      );
    }
    return null;
  }

  /** Resolves a {@link SignatureNode} to a concrete {@link Signature}. */
  resolveSignature(
    node: SignatureNode,
    contextualTypeArguments: Map<string,Type> | null = null,
    reportMode: ReportMode = ReportMode.REPORT
  ): Signature | null {
    var explicitThisType = node.explicitThisType;
    var thisType: Type | null = null;
    if (explicitThisType) {
      thisType = this.resolveType(explicitThisType, contextualTypeArguments, reportMode);
      if (!thisType) return null;
    }
    var parameterTypeNodes = node.parameters;
    var numParameters = parameterTypeNodes.length;
    var parameterTypes = new Array<Type>(numParameters);
    var parameterNames = new Array<string>(numParameters);
    var requiredParameters = 0;
    var hasRest = false;
    for (let i = 0; i < numParameters; ++i) {
      let parameterTypeNode = parameterTypeNodes[i];
      switch (parameterTypeNode.parameterKind) {
        case ParameterKind.DEFAULT: {
          requiredParameters = i + 1;
          break;
        }
        case ParameterKind.REST: {
          assert(i == numParameters);
          hasRest = true;
          break;
        }
      }
      let parameterType = this.resolveType(
        assert(parameterTypeNode.type),
        contextualTypeArguments,
        reportMode
      );
      if (!parameterType) return null;
      parameterTypes[i] = parameterType;
      parameterNames[i] = parameterTypeNode.name.text;
    }
    var returnTypeNode = node.returnType;
    var returnType: Type | null;
    if (returnTypeNode) {
      returnType = this.resolveType(returnTypeNode, contextualTypeArguments, reportMode);
      if (!returnType) return null;
    } else {
      returnType = Type.void;
    }
    var signature = new Signature(parameterTypes, returnType, thisType);
    signature.parameterNames = parameterNames;
    signature.requiredParameters = requiredParameters;
    signature.hasRest = hasRest;
    return signature;
  }

  /** Resolves an array of type arguments to concrete types. */
  resolveTypeArguments(
    typeParameters: TypeParameterNode[],
    typeArgumentNodes: CommonTypeNode[] | null,
    contextualTypeArguments: Map<string,Type> | null = null,
    alternativeReportNode: Node | null = null,
    reportMode: ReportMode = ReportMode.REPORT
  ): Type[] | null {
    var parameterCount = typeParameters.length;
    var argumentCount = typeArgumentNodes ? typeArgumentNodes.length : 0;
    if (parameterCount != argumentCount) {
      if (argumentCount) {
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          Range.join(
            (<TypeNode[]>typeArgumentNodes)[0].range,
            (<TypeNode[]>typeArgumentNodes)[argumentCount - 1].range
          ),
          parameterCount.toString(10), argumentCount.toString(10)
        );
      } else if (alternativeReportNode) {
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          alternativeReportNode.range.atEnd, parameterCount.toString(10), "0"
        );
      }
      return null;
    }
    var typeArguments = new Array<Type>(parameterCount);
    for (let i = 0; i < parameterCount; ++i) {
      let type = this.resolveType( // reports
        (<TypeNode[]>typeArgumentNodes)[i],
        contextualTypeArguments,
        reportMode
      );
      if (!type) return null;
      // TODO: check extendsType
      typeArguments[i] = type;
    }
    return typeArguments;
  }

  /** Resolves an identifier to the element it refers to. */
  resolveIdentifier(
    identifier: IdentifierExpression,
    context: Element | null,
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var name = identifier.text;
    var element: Element | null;

    if (context) {

      switch (context.kind) {
        case ElementKind.FUNCTION: { // search locals, use prototype
          element = (<Function>context).flow.getScopedLocal(name);
          if (element) {
            this.currentThisExpression = null;
            this.currentElementExpression = null;
            return element;
          }
          context = (<Function>context).prototype.parent;
          break;
        }
        case ElementKind.CLASS: { // use prototype
          context = (<Class>context).prototype.parent;
          break;
        }
      }

      // search context
      while (context) {
        let members = context.members;
        if (members) {
          if (element = members.get(name)) {
            this.currentThisExpression = null;
            this.currentElementExpression = null;
            return element;
          }
        }
        context = context.parent;
      }
    }

    // search current file
    var elementsLookup = this.program.elementsLookup;
    if (element = elementsLookup.get(identifier.range.source.internalPath + PATH_DELIMITER + name)) {
      this.currentThisExpression = null;
      this.currentElementExpression = null;
      return element; // GLOBAL, FUNCTION_PROTOTYPE, CLASS_PROTOTYPE
    }

    // search global scope
    if (element = elementsLookup.get(name)) {
      this.currentThisExpression = null;
      this.currentElementExpression = null;
      return element; // GLOBAL, FUNCTION_PROTOTYPE, CLASS_PROTOTYPE
    }

    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Cannot_find_name_0,
        identifier.range, name
      );
    }
    return null;
  }

  /** Resolves a property access to the element it refers to. */
  resolvePropertyAccess(
    propertyAccess: PropertyAccessExpression,
    contextualFunction: Function,
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    // start by resolving the lhs target (expression before the last dot)
    var targetExpression = propertyAccess.expression;
    var target = this.resolveExpression(targetExpression, contextualFunction, reportMode); // reports
    if (!target) return null;

    // at this point we know exactly what the target is, so look up the element within
    var propertyName = propertyAccess.property.text;

    // Resolve variable-likes to the class type they reference first
    switch (target.kind) {
      case ElementKind.GLOBAL:
      case ElementKind.LOCAL:
      case ElementKind.FIELD: {
        let type = (<VariableLikeElement>target).type;
        assert(type != Type.void);
        let classReference = type.classReference;
        if (!classReference) {
          this.error(
            DiagnosticCode.Property_0_does_not_exist_on_type_1,
            propertyAccess.property.range, propertyName, (<VariableLikeElement>target).type.toString()
          );
          return null;
        }
        target = classReference;
        break;
      }
      case ElementKind.PROPERTY: {
        let getter = this.resolveFunction(
          assert((<Property>target).getterPrototype),
          null,
          null,
          reportMode
        );
        if (!getter) return null;
        let classReference = getter.signature.returnType.classReference;
        if (!classReference) {
          this.error(
            DiagnosticCode.Property_0_does_not_exist_on_type_1,
            propertyAccess.property.range, propertyName, getter.signature.returnType.toString()
          );
          return null;
        }
        target = classReference;
        break;
      }
      case ElementKind.CLASS: {
        let elementExpression = this.currentElementExpression;
        if (elementExpression) {
          let indexedGet = (<Class>target).lookupOverload(OperatorKind.INDEXED_GET);
          if (!indexedGet) {
            this.error(
              DiagnosticCode.Index_signature_is_missing_in_type_0,
              elementExpression.range, (<Class>target).internalName
            );
            return null;
          }
          let returnType = indexedGet.signature.returnType;
          if (!(target = returnType.classReference)) {
            this.error(
              DiagnosticCode.Property_0_does_not_exist_on_type_1,
              propertyAccess.property.range, propertyName, returnType.toString()
            );
            return null;
          }
        }
        break;
      }
    }

    // Look up the member within
    switch (target.kind) {
      case ElementKind.CLASS_PROTOTYPE:
      case ElementKind.CLASS: {
        do {
          let members = target.members;
          let member: Element | null;
          if (members && (member = members.get(propertyName))) {
            this.currentThisExpression = targetExpression;
            this.currentElementExpression = null;
            return member; // instance FIELD, static GLOBAL, FUNCTION_PROTOTYPE...
          }
          // traverse inherited static members on the base prototype if target is a class prototype
          if (target.kind == ElementKind.CLASS_PROTOTYPE) {
            if ((<ClassPrototype>target).basePrototype) {
              target = <ClassPrototype>(<ClassPrototype>target).basePrototype;
            } else {
              break;
            }
          // traverse inherited instance members on the base class if target is a class instance
          } else if (target.kind == ElementKind.CLASS) {
            if ((<Class>target).base) {
              target = <Class>(<Class>target).base;
            } else {
              break;
            }
          } else {
            break;
          }
        } while (true);
        break;
      }
      default: { // enums or other namespace-like elements
        let members = target.members;
        if (members) {
          let member = members.get(propertyName);
          if (member) {
            this.currentThisExpression = targetExpression;
            this.currentElementExpression = null;
            return member; // static ENUMVALUE, static GLOBAL, static FUNCTION_PROTOTYPE...
          }
        }
        break;
      }
    }
    this.error(
      DiagnosticCode.Property_0_does_not_exist_on_type_1,
      propertyAccess.property.range, propertyName, target.internalName
    );
    return null;
  }

  resolveElementAccess(
    elementAccess: ElementAccessExpression,
    contextualFunction: Function,
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var targetExpression = elementAccess.expression;
    var target = this.resolveExpression(targetExpression, contextualFunction, reportMode);
    if (!target) return null;
    switch (target.kind) {
      case ElementKind.GLOBAL:
      case ElementKind.LOCAL:
      case ElementKind.FIELD: {
        let type = (<VariableLikeElement>target).type;
        if (target = type.classReference) {
          this.currentThisExpression = targetExpression;
          this.currentElementExpression = elementAccess.elementExpression;
          return target;
        }
        break;
      }
      case ElementKind.CLASS: { // element access on element access
        let indexedGet = (<Class>target).lookupOverload(OperatorKind.INDEXED_GET);
        if (!indexedGet) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Index_signature_is_missing_in_type_0,
              elementAccess.range, (<Class>target).internalName
            );
          }
          return null;
        }
        let returnType = indexedGet.signature.returnType;
        if (target = returnType.classReference) {
          this.currentThisExpression = targetExpression;
          this.currentElementExpression = elementAccess.elementExpression;
          return target;
        }
        break;
      }
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        targetExpression.range
      );
    }
    return null;
  }

  resolveExpression(
    expression: Expression,
    contextualFunction: Function,
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    while (expression.kind == NodeKind.PARENTHESIZED) {
      expression = (<ParenthesizedExpression>expression).expression;
    }
    switch (expression.kind) {
      case NodeKind.ASSERTION: {
        let type = this.resolveType(
          (<AssertionExpression>expression).toType,
          contextualFunction.flow.contextualTypeArguments,
          reportMode
        );
        if (type) {
          let classType = type.classReference;
          if (classType) {
            this.currentThisExpression = null;
            this.currentElementExpression = null;
            return classType;
          }
        }
        return null;
      }
      case NodeKind.BINARY: { // TODO: string concatenation, mostly
        throw new Error("not implemented");
      }
      case NodeKind.THIS: { // -> Class / ClassPrototype
        if (contextualFunction.flow.is(FlowFlags.INLINE_CONTEXT)) {
          let explicitLocal = contextualFunction.flow.getScopedLocal("this");
          if (explicitLocal) {
            this.currentThisExpression = null;
            this.currentElementExpression = null;
            return explicitLocal;
          }
        }
        let parent = contextualFunction.parent;
        if (parent) {
          this.currentThisExpression = null;
          this.currentElementExpression = null;
          return parent;
        }
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode._this_cannot_be_referenced_in_current_location,
            expression.range
          );
        }
        return null;
      }
      case NodeKind.SUPER: { // -> Class
        if (contextualFunction.flow.is(FlowFlags.INLINE_CONTEXT)) {
          let explicitLocal = contextualFunction.flow.getScopedLocal("super");
          if (explicitLocal) {
            this.currentThisExpression = null;
            this.currentElementExpression = null;
            return explicitLocal;
          }
        }
        let parent = contextualFunction.parent;
        if (parent && parent.kind == ElementKind.CLASS && (parent = (<Class>parent).base)) {
          this.currentThisExpression = null;
          this.currentElementExpression = null;
          return parent;
        }
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode._super_can_only_be_referenced_in_a_derived_class,
            expression.range
          );
        }
        return null;
      }
      case NodeKind.IDENTIFIER: {
        return this.resolveIdentifier(<IdentifierExpression>expression, contextualFunction, reportMode);
      }
      case NodeKind.LITERAL: {
        switch ((<LiteralExpression>expression).literalKind) {
          case LiteralKind.STRING: {
            this.currentThisExpression = expression;
            this.currentElementExpression = null;
            return this.program.stringInstance;
          }
          // case LiteralKind.ARRAY: // TODO
        }
        break;
      }
      case NodeKind.PROPERTYACCESS: {
        return this.resolvePropertyAccess(
          <PropertyAccessExpression>expression,
          contextualFunction,
          reportMode
        );
      }
      case NodeKind.ELEMENTACCESS: {
        return this.resolveElementAccess(
          <ElementAccessExpression>expression,
          contextualFunction,
          reportMode
        );
      }
      case NodeKind.CALL: {
        let targetExpression = (<CallExpression>expression).expression;
        let target = this.resolveExpression(targetExpression, contextualFunction, reportMode);
        if (!target) return null;
        if (target.kind == ElementKind.FUNCTION_PROTOTYPE) {
          let instance = this.resolveFunctionInclTypeArguments(
            <FunctionPrototype>target,
            (<CallExpression>expression).typeArguments,
            contextualFunction.flow.contextualTypeArguments,
            expression,
            reportMode
          );
          if (!instance) return null;
          let returnType = instance.signature.returnType;
          let classType = returnType.classReference;
          if (classType) {
            // reuse resolvedThisExpression (might be property access)
            // reuse resolvedElementExpression (might be element access)
            return classType;
          } else {
            let signature = returnType.signatureReference;
            if (signature) {
              let functionTarget = signature.cachedFunctionTarget;
              if (!functionTarget) {
                functionTarget = new FunctionTarget(this.program, signature);
                signature.cachedFunctionTarget = functionTarget;
              }
              // reuse resolvedThisExpression (might be property access)
              // reuse resolvedElementExpression (might be element access)
              return functionTarget;
            }
          }
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures,
              targetExpression.range, target.internalName
            );
          }
          return null;
        }
        break;
      }
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        expression.range
      );
    }
    return null;
  }

  /** Resolves a function prototype to an instance using the specified concrete type arguments. */
  resolveFunction(
    prototype: FunctionPrototype,
    typeArguments: Type[] | null,
    contextualTypeArguments: Map<string,Type> | null = null,
    reportMode: ReportMode = ReportMode.REPORT
  ): Function | null {
    var instanceKey = typeArguments ? typesToString(typeArguments) : "";
    var instance = prototype.instances.get(instanceKey);
    if (instance) return instance;

    var declaration = prototype.declaration;
    var isInstance = prototype.is(CommonFlags.INSTANCE);
    var classPrototype = prototype.classPrototype;

    // inherit contextual type arguments as provided. might be overridden.
    var inheritedTypeArguments = contextualTypeArguments;
    contextualTypeArguments = new Map();
    if (inheritedTypeArguments) {
      for (let [inheritedName, inheritedType] of inheritedTypeArguments) {
        contextualTypeArguments.set(
          inheritedName,
          inheritedType
        );
      }
    }

    // override with class type arguments if a partially resolved instance method
    var classTypeArguments = prototype.classTypeArguments;
    if (classTypeArguments) { // set only if partially resolved
      assert(prototype.is(CommonFlags.INSTANCE));
      let classDeclaration = assert(classPrototype).declaration;
      let classTypeParameters = classDeclaration.typeParameters;
      let numClassTypeParameters = classTypeParameters.length;
      assert(numClassTypeParameters == classTypeArguments.length);
      for (let i = 0; i < numClassTypeParameters; ++i) {
        contextualTypeArguments.set(
          classTypeParameters[i].name.text,
          classTypeArguments[i]
        );
      }
    } else {
      assert(!classTypeArguments);
    }

    // override with function specific type arguments
    var signatureNode = declaration.signature;
    var functionTypeParameters = declaration.typeParameters;
    var numFunctionTypeArguments: i32;
    if (typeArguments && (numFunctionTypeArguments = typeArguments.length)) {
      assert(functionTypeParameters && numFunctionTypeArguments == functionTypeParameters.length);
      for (let i = 0; i < numFunctionTypeArguments; ++i) {
        contextualTypeArguments.set(
          (<TypeParameterNode[]>functionTypeParameters)[i].name.text,
          typeArguments[i]
        );
      }
    } else {
      assert(!functionTypeParameters || functionTypeParameters.length == 0);
    }

    // resolve class if an instance method
    var classInstance: Class | null = null;
    var thisType: Type | null = null;
    if (isInstance) {
      classInstance = this.resolveClass(
        assert(classPrototype),
        classTypeArguments,
        contextualTypeArguments,
        reportMode
      );
      if (!classInstance) return null;
      thisType = classInstance.type;
      contextualTypeArguments.set("this", thisType);
    }

    // resolve signature node
    var signatureParameters = signatureNode.parameters;
    var signatureParameterCount = signatureParameters.length;
    var parameterTypes = new Array<Type>(signatureParameterCount);
    var parameterNames = new Array<string>(signatureParameterCount);
    var requiredParameters = 0;
    for (let i = 0; i < signatureParameterCount; ++i) {
      let parameterDeclaration = signatureParameters[i];
      if (parameterDeclaration.parameterKind == ParameterKind.DEFAULT) {
        requiredParameters = i + 1;
      }
      let typeNode = assert(parameterDeclaration.type);
      let parameterType = this.resolveType(typeNode, contextualTypeArguments, reportMode);
      if (!parameterType) return null;
      parameterTypes[i] = parameterType;
      parameterNames[i] = parameterDeclaration.name.text;
    }

    var returnType: Type;
    if (prototype.is(CommonFlags.SET)) {
      returnType = Type.void; // not annotated
    } else if (prototype.is(CommonFlags.CONSTRUCTOR)) {
      returnType = assert(classInstance).type; // not annotated
    } else {
      let typeNode = assert(signatureNode.returnType);
      let type = this.resolveType(typeNode, contextualTypeArguments, reportMode);
      if (!type) return null;
      returnType = type;
    }

    var signature = new Signature(parameterTypes, returnType, thisType);
    signature.parameterNames = parameterNames;
    signature.requiredParameters = requiredParameters;

    var internalName = prototype.internalName;
    if (instanceKey.length) internalName += "<" + instanceKey + ">";
    instance = new Function(
      prototype,
      internalName,
      signature,
      classInstance
        ? classInstance
        : classPrototype,
      contextualTypeArguments
    );
    prototype.instances.set(instanceKey, instance);
    this.program.instancesLookup.set(internalName, instance);
    return instance;
  }

  /** Resolves a function prototype partially by applying the specified type arguments. */
  resolveFunctionPartially(
    prototype: FunctionPrototype,
    typeArguments: Type[] | null,
    reportMode: ReportMode = ReportMode.REPORT
  ): FunctionPrototype | null {
    assert(prototype.is(CommonFlags.INSTANCE));
    var classPrototype = assert(prototype.classPrototype);

    if (!(typeArguments && typeArguments.length)) return prototype; // no need to clone

    var simpleName = prototype.simpleName;
    var partialKey = typesToString(typeArguments);
    var partialPrototype = new FunctionPrototype(
      this.program,
      simpleName,
      classPrototype.internalName + "<" + partialKey + ">" + INSTANCE_DELIMITER + simpleName,
      prototype.declaration,
      classPrototype,
      prototype.decoratorFlags
    );
    partialPrototype.flags = prototype.flags;
    partialPrototype.operatorKind = prototype.operatorKind;
    partialPrototype.classTypeArguments = typeArguments;
    return partialPrototype;
  }

  /** Resolves a function prototype to an instance by first resolving the specified type arguments. */
  resolveFunctionInclTypeArguments(
    prototype: FunctionPrototype,
    typeArgumentNodes: CommonTypeNode[] | null,
    contextualTypeArguments: Map<string,Type> | null,
    reportNode: Node,
    reportMode: ReportMode = ReportMode.REPORT
  ): Function | null {
    var resolvedTypeArguments: Type[] | null = null;
    if (prototype.is(CommonFlags.GENERIC)) {
      assert(typeArgumentNodes != null && typeArgumentNodes.length != 0);
      resolvedTypeArguments = this.resolveTypeArguments( // reports
        assert(prototype.declaration.typeParameters),
        typeArgumentNodes,
        contextualTypeArguments,
        reportNode,
        reportMode
      );
      if (!resolvedTypeArguments) return null;
    }
    return this.resolveFunction(
      prototype,
      resolvedTypeArguments,
      contextualTypeArguments,
      reportMode
    );
  }

  /** Resolves a class prototype using the specified concrete type arguments. */
  resolveClass(
    prototype: ClassPrototype,
    typeArguments: Type[] | null,
    contextualTypeArguments: Map<string,Type> | null = null,
    reportMode: ReportMode = ReportMode.REPORT
  ): Class | null {
    var instanceKey = typeArguments ? typesToString(typeArguments) : "";

    // Check if this exact instance has already been resolved
    var instance = prototype.instances.get(instanceKey);
    if (instance) return instance;

    // Copy contextual type arguments so we don't pollute the original map
    var inheritedTypeArguments = contextualTypeArguments;
    contextualTypeArguments = new Map();
    if (inheritedTypeArguments) {
      for (let [inheritedName, inheritedType] of inheritedTypeArguments) {
        contextualTypeArguments.set(inheritedName, inheritedType);
      }
    }

    // Insert contextual type arguments for this operation. Internally, this method is always
    // called with matching type parameter / argument counts.
    var declaration = prototype.declaration;
    if (typeArguments) {
      let typeParameters = declaration.typeParameters;
      let expectedTypeArguments = typeParameters.length;
      let actualTypeArguments = typeArguments.length;
      assert(actualTypeArguments == expectedTypeArguments);
      for (let i = 0; i < actualTypeArguments; ++i) {
        contextualTypeArguments.set(typeParameters[i].name.text, typeArguments[i]);
      }
    } else {
      assert(declaration.typeParameters.length == 0);
    }

    // Resolve base class if applicable
    var baseClass: Class | null = null;
    if (declaration.extendsType) {
      let baseClassType = this.resolveType(
        declaration.extendsType,
        contextualTypeArguments,
        reportMode
      );
      if (!baseClassType) return null;
      if (!(baseClass = baseClassType.classReference)) {
        if (reportMode == ReportMode.REPORT) {
          this.program.error(
            DiagnosticCode.A_class_may_only_extend_another_class,
            declaration.extendsType.range
          );
        }
        return null;
      }
      if (baseClass.hasDecorator(DecoratorFlags.SEALED)) {
        if (reportMode == ReportMode.REPORT) {
          this.program.error(
            DiagnosticCode.Class_0_is_sealed_and_cannot_be_extended,
            declaration.extendsType.range, baseClass.internalName
          );
        }
        return null;
      }
      if (baseClass.hasDecorator(DecoratorFlags.UNMANAGED) != prototype.hasDecorator(DecoratorFlags.UNMANAGED)) {
        if (reportMode == ReportMode.REPORT) {
          this.program.error(
            DiagnosticCode.Unmanaged_classes_cannot_extend_managed_classes_and_vice_versa,
            Range.join(declaration.name.range, declaration.extendsType.range)
          );
        }
        return null;
      }
    }

    // Construct the instance and remember that it has been resolved already
    var simpleName = prototype.simpleName;
    var internalName = prototype.internalName;
    if (instanceKey.length) {
      simpleName += "<" + instanceKey + ">";
      internalName += "<" + instanceKey + ">";
    }
    instance = new Class(prototype, simpleName, internalName, typeArguments, baseClass);
    instance.contextualTypeArguments = contextualTypeArguments;
    prototype.instances.set(instanceKey, instance);
    this.program.instancesLookup.set(internalName, instance);

    // Inherit base class members and set up the initial memory offset for own fields
    var memoryOffset: u32 = 0;
    if (baseClass) {
      if (baseClass.members) {
        if (!instance.members) instance.members = new Map();
        for (let inheritedMember of baseClass.members.values()) {
          instance.members.set(inheritedMember.simpleName, inheritedMember);
        }
      }
      memoryOffset = baseClass.currentMemoryOffset;
    }

    // Resolve constructor by first applying the class type arguments
    if (prototype.constructorPrototype) {
      let constructorPartial = this.resolveFunctionPartially(
        prototype.constructorPrototype,
        typeArguments,
        reportMode
      );
      if (!constructorPartial) return null;
      instance.constructorInstance = this.resolveFunction(constructorPartial, null, null, reportMode);
    }

    // Resolve instance members
    if (prototype.instanceMembers) {
      for (let member of prototype.instanceMembers.values()) {
        switch (member.kind) {

          // Lay out fields in advance
          case ElementKind.FIELD_PROTOTYPE: {
            if (!instance.members) instance.members = new Map();
            let fieldDeclaration = (<FieldPrototype>member).declaration;
            let fieldType: Type | null = null;
            // TODO: handle duplicate non-private fields
            if (!fieldDeclaration.type) {
              if (baseClass !== null && baseClass.members !== null) {
                let baseField = baseClass.members.get((<FieldPrototype>member).simpleName);
                if (baseField && !baseField.is(CommonFlags.PRIVATE)) {
                  assert(baseField.kind == ElementKind.FIELD);
                  fieldType = (<Field>baseField).type;
                }
              }
              if (!fieldType) {
                if (reportMode == ReportMode.REPORT) {
                  this.error(
                    DiagnosticCode.Type_expected,
                    fieldDeclaration.name.range.atEnd
                  );
                }
              }
            } else {
              fieldType = this.resolveType(
                fieldDeclaration.type,
                instance.contextualTypeArguments,
                reportMode
              );
            }
            if (!fieldType) break;
            let fieldInstance = new Field(
              <FieldPrototype>member,
              internalName + INSTANCE_DELIMITER + (<FieldPrototype>member).simpleName,
              fieldType,
              fieldDeclaration,
              instance
            );
            switch (fieldType.byteSize) { // align
              case 1: break;
              case 2: { if (memoryOffset & 1) ++memoryOffset; break; }
              case 4: { if (memoryOffset & 3) memoryOffset = (memoryOffset | 3) + 1; break; }
              case 8: { if (memoryOffset & 7) memoryOffset = (memoryOffset | 7) + 1; break; }
              default: assert(false);
            }
            fieldInstance.memoryOffset = memoryOffset;
            memoryOffset += fieldType.byteSize;
            instance.members.set(member.simpleName, fieldInstance);
            break;
          }

          // Partially resolve methods as these might have type arguments on their own
          case ElementKind.FUNCTION_PROTOTYPE: {
            if (!instance.members) instance.members = new Map();
            let partialPrototype = this.resolveFunctionPartially(
              <FunctionPrototype>member,
              typeArguments,
              reportMode
            );
            if (!partialPrototype) return null;
            partialPrototype.internalName = internalName + INSTANCE_DELIMITER + partialPrototype.simpleName;
            instance.members.set(member.simpleName, partialPrototype);
            break;
          }

          // Clone properties and partially resolve the wrapped accessors for consistence with other methods
          case ElementKind.PROPERTY: {
            if (!instance.members) instance.members = new Map();
            let getterPrototype = assert((<Property>member).getterPrototype); // must be present
            let setterPrototype = (<Property>member).setterPrototype;         // might be present
            let instanceProperty = new Property(
              this.program,
              member.simpleName,
              internalName + INSTANCE_DELIMITER + member.simpleName,
              prototype
            );
            let partialGetterPrototype = this.resolveFunctionPartially(
              getterPrototype,
              typeArguments,
              reportMode
            );
            if (!partialGetterPrototype) return null;
            partialGetterPrototype
              .internalName = internalName + INSTANCE_DELIMITER + partialGetterPrototype.simpleName;
            instanceProperty.getterPrototype = partialGetterPrototype;
            if (setterPrototype) {
              let partialSetterPrototype = this.resolveFunctionPartially(
                setterPrototype,
                typeArguments,
                reportMode
              );
              if (!partialSetterPrototype) return null;
              partialSetterPrototype
                .internalName = internalName + INSTANCE_DELIMITER + partialSetterPrototype.simpleName;
              instanceProperty.setterPrototype = partialSetterPrototype;
            }
            instance.members.set(member.simpleName, instanceProperty);
            break;
          }
          default: assert(false);
        }
      }
    }

    // Finalize memory offset
    instance.currentMemoryOffset = memoryOffset;

    // Fully resolve operator overloads (don't have type parameters on their own)
    for (let [kind, overloadPrototype] of prototype.overloadPrototypes) {
      assert(kind != OperatorKind.INVALID);
      let operatorInstance: Function | null;
      if (overloadPrototype.is(CommonFlags.INSTANCE)) {
        let operatorPartial = this.resolveFunctionPartially(
          overloadPrototype,
          typeArguments,
          reportMode
        );
        if (!operatorPartial) continue;
        operatorInstance = this.resolveFunction(operatorPartial, null, null, reportMode);
      } else {
        operatorInstance = this.resolveFunction(overloadPrototype, null, null, reportMode);
      }
      if (!operatorInstance) continue;
      let overloads = instance.overloads;
      if (!overloads) instance.overloads = overloads = new Map();
      overloads.set(kind, operatorInstance);
    }
    return instance;
  }

  /** Resolves a class prototype by first resolving the specified type arguments. */
  resolveClassInclTypeArguments(
    prototype: ClassPrototype,
    typeArgumentNodes: CommonTypeNode[] | null,
    contextualTypeArguments: Map<string,Type> | null,
    reportNode: Node,
    reportMode: ReportMode = ReportMode.REPORT
  ): Class | null {
    var resolvedTypeArguments: Type[] | null = null;

    // Resolve type arguments if generic
    if (prototype.is(CommonFlags.GENERIC)) {
      let typeParameterNodes = prototype.declaration.typeParameters;
      let expectedTypeArguments = typeParameterNodes.length;
      assert(expectedTypeArguments > 0);
      let actualTypeArguments = typeArgumentNodes !== null ? typeArgumentNodes.length : 0;
      if (expectedTypeArguments != actualTypeArguments) {
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Expected_0_type_arguments_but_got_1,
            reportNode.range, expectedTypeArguments.toString(10), actualTypeArguments.toString(10)
          );
        }
        return null;
      }
      resolvedTypeArguments = this.resolveTypeArguments(
        typeParameterNodes,
        typeArgumentNodes,
        contextualTypeArguments,
        reportNode,
        reportMode
      );
      if (!resolvedTypeArguments) return null;

    // Otherwise make sure that no type arguments have been specified
    } else {
      if (typeArgumentNodes !== null && typeArgumentNodes.length) {
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Type_0_is_not_generic,
            reportNode.range, prototype.internalName
          );
        }
        return null;
      }
    }

    // Continue with concrete types
    return this.resolveClass(
      prototype,
      resolvedTypeArguments,
      contextualTypeArguments,
      reportMode
    );
  }
}
