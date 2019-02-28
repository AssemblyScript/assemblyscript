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
  Element,
  Class,
  ClassPrototype,
  Function,
  FunctionPrototype,
  VariableLikeElement,
  Property,
  PropertyPrototype,
  Field,
  FieldPrototype,
  Global,
  TypeDefinition
} from "./program";

import {
  FlowFlags,
  Flow
} from "./flow";

import {
  SignatureNode,
  ParameterKind,
  CommonTypeNode,
  NodeKind,
  TypeNode,
  TypeName,
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
  Expression,
  IntegerLiteralExpression,
  UnaryPrefixExpression,
  UnaryPostfixExpression,
  AssertionKind,
  BinaryExpression,
  ThisExpression,
  SuperExpression,
  isTypeOmitted
} from "./ast";

import {
  Type,
  Signature,
  typesToString,
  TypeKind,
  TypeFlags
} from "./types";

import {
  CommonFlags,
  CommonSymbols
} from "./common";

import {
  makeMap,
  isPowerOf2
} from "./util";

import {
  Token
} from "./tokenizer";

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
  constructor(
    /** The program to construct a resolver for. */
    program: Program
  ) {
    super(program.diagnostics);
    this.program = program;
  }

  /** Resolves a {@link CommonTypeNode} to a concrete {@link Type}. */
  resolveType(
    /** The type to resolve. */
    node: CommonTypeNode,
    /** Relative context. */
    context: Element,
    /** Type arguments inherited through context, i.e. `T`. */
    contextualTypeArguments: Map<string,Type> | null = null,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {

    // handle signature
    if (node.kind == NodeKind.SIGNATURE) {
      let explicitThisType = (<SignatureNode>node).explicitThisType;
      let thisType: Type | null = null;
      if (explicitThisType) {
        thisType = this.resolveType(
          explicitThisType,
          context,
          contextualTypeArguments,
          reportMode
        );
        if (!thisType) return null;
      }
      let parameterNodes = (<SignatureNode>node).parameters;
      let numParameters = parameterNodes.length;
      let parameterTypes = new Array<Type>(numParameters);
      let parameterNames = new Array<string>(numParameters);
      let requiredParameters = 0;
      let hasRest = false;
      for (let i = 0; i < numParameters; ++i) {
        let parameterNode = parameterNodes[i];
        switch (parameterNode.parameterKind) {
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
        let parameterTypeNode = parameterNode.type;
        if (isTypeOmitted(parameterTypeNode)) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Type_expected,
              parameterTypeNode.range
            );
          }
          return null;
        }
        let parameterType = this.resolveType(
          parameterTypeNode,
          context,
          contextualTypeArguments,
          reportMode
        );
        if (!parameterType) return null;
        parameterTypes[i] = parameterType;
        parameterNames[i] = parameterNode.name.text;
      }
      let returnTypeNode = (<SignatureNode>node).returnType;
      if (isTypeOmitted(returnTypeNode)) {
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Type_expected,
            returnTypeNode.range
          );
        }
        return null;
      }
      let returnType: Type | null;
      if (returnTypeNode) {
        returnType = this.resolveType(
          returnTypeNode,
          context,
          contextualTypeArguments,
          reportMode
        );
        if (!returnType) return null;
      } else {
        returnType = Type.void;
      }
      let signature = new Signature(parameterTypes, returnType, thisType);
      signature.parameterNames = parameterNames;
      signature.requiredParameters = requiredParameters;
      signature.hasRest = hasRest;
      return node.isNullable ? signature.type.asNullable() : signature.type;
    }

    // now dealing with TypeNode
    assert(node.kind == NodeKind.TYPE);
    var typeNode = <TypeNode>node;
    var typeName = typeNode.name;
    var typeArgumentNodes = typeNode.typeArguments;
    var possiblyPlaceholder = !typeName.next;

    // look up in contextual type arguments if possibly a placeholder
    if (possiblyPlaceholder) {
      if (contextualTypeArguments && contextualTypeArguments.has(typeName.identifier.text)) {
        let type = contextualTypeArguments.get(typeName.identifier.text)!;
        if (typeArgumentNodes !== null && typeArgumentNodes.length) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Type_0_is_not_generic,
              node.range, type.toString()
            );
          }
        }
        if (node.isNullable) {
          if (!type.is(TypeFlags.REFERENCE)) {
            if (reportMode == ReportMode.REPORT) {
              this.error(
                DiagnosticCode.Basic_type_0_cannot_be_nullable,
                node.range, type.toString()
              );
            }
          }
          return type.asNullable();
        }
        return type;
      }
    }

    // look up in context
    var element = this.resolveTypeName(typeName, context, reportMode);
    if (!element) return null;

    // use shadow type if present (i.e. namespace sharing a type)
    if (element.shadowType) {
      element = element.shadowType;

    } else {
      // handle enums (become i32)
      if (element.kind == ElementKind.ENUM) {
        if (typeArgumentNodes !== null && typeArgumentNodes.length) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Type_0_is_not_generic,
              node.range, element.internalName
            );
          }
        }
        if (node.isNullable) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Basic_type_0_cannot_be_nullable,
              node.range, element.name
            );
          }
        }
        return Type.i32;
      }

      // handle classes
      if (element.kind == ElementKind.CLASS_PROTOTYPE) {
        let instance = this.resolveClassInclTypeArguments(
          <ClassPrototype>element,
          typeArgumentNodes,
          context,
          makeMap<string,Type>(contextualTypeArguments), // don't inherit
          node
        ); // reports
        if (!instance) return null;
        return node.isNullable ? instance.type.asNullable() : instance.type;
      }
    }

    // handle type definitions
    if (element.kind == ElementKind.TYPEDEFINITION) {

      // shortcut already resolved (mostly builtins)
      if (element.is(CommonFlags.RESOLVED)) {
        if (typeArgumentNodes !== null && typeArgumentNodes.length) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Type_0_is_not_generic,
              node.range, element.internalName
            );
          }
        }
        let type = (<TypeDefinition>element).type;
        if (node.isNullable) {
          if (!type.is(TypeFlags.REFERENCE)) {
            if (reportMode == ReportMode.REPORT) {
              this.error(
                DiagnosticCode.Basic_type_0_cannot_be_nullable,
                typeNode.name.range, typeName.identifier.text
              );
            }
          } else {
            return type.asNullable();
          }
        }
        return type;
      }

      // handle special native type
      if (possiblyPlaceholder && typeName.identifier.text == CommonSymbols.native) {
        if (!(typeArgumentNodes && typeArgumentNodes.length == 1)) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Expected_0_type_arguments_but_got_1,
              typeNode.range, "1", (typeArgumentNodes ? typeArgumentNodes.length : 1).toString(10)
            );
          }
          return null;
        }
        let typeArgument = this.resolveType(
          typeArgumentNodes[0],
          context,
          contextualTypeArguments,
          reportMode
        );
        if (!typeArgument) return null;
        switch (typeArgument.kind) {
          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32: return Type.i32;
          case TypeKind.ISIZE: if (!this.program.options.isWasm64) return Type.i32;
          case TypeKind.I64: return Type.i64;
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL: return Type.u32;
          case TypeKind.USIZE: if (!this.program.options.isWasm64) return Type.u32;
          case TypeKind.U64: return Type.u64;
          case TypeKind.F32: return Type.f32;
          case TypeKind.F64: return Type.f64;
          case TypeKind.V128: return Type.v128;
          case TypeKind.VOID: return Type.void;
          default: assert(false);
        }
      }

      // resolve normally
      let typeParameterNodes = (<TypeDefinition>element).typeParameterNodes;
      let typeArguments: Type[] | null = null;
      if (typeParameterNodes) {
        typeArguments = this.resolveTypeArguments(
          typeParameterNodes,
          typeArgumentNodes,
          context,
          contextualTypeArguments = makeMap(contextualTypeArguments), // inherit
          node,
          reportMode
        );
        if (!typeArguments) return null;
      } else if (typeArgumentNodes && typeArgumentNodes.length) {
        this.error(
          DiagnosticCode.Type_0_is_not_generic,
          typeNode.range, typeName.identifier.text
        );
        // recoverable
      }
      return this.resolveType(
        (<TypeDefinition>element).typeNode,
        element,
        contextualTypeArguments,
        reportMode
      );
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Cannot_find_name_0,
        typeNode.name.range, typeName.identifier.text
      );
    }
    return null;
  }

  /** Resolves a type name to the program element it refers to. */
  resolveTypeName(
    /** The type name to resolve. */
    typeName: TypeName,
    /** Relative context. */
    context: Element,
    /** How to proceed with eventualy diagnostics. */
    reportMode = ReportMode.REPORT
  ): Element | null {
    var element = context.lookup(typeName.identifier.text);
    if (!element) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Cannot_find_name_0,
          typeName.range, typeName.identifier.text
        );
      }
      return null;
    }
    var prev = typeName;
    var next = typeName.next;
    while (next) {
      if (!(element = element.lookupInSelf(next.identifier.text))) {
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Property_0_does_not_exist_on_type_1,
            next.range, next.identifier.text, prev.identifier.text
          );
        }
        return null;
      }
      prev = next;
      next = next.next;
    }
    return element;
  }

  /** Resolves an array of type arguments to concrete types. */
  resolveTypeArguments(
    /** Actual type parameter nodes. */
    typeParameters: TypeParameterNode[],
    /** Type arguments provided. */
    typeArgumentNodes: CommonTypeNode[] | null,
    /** Relative context. */
    context: Element,
    /** Type arguments inherited through context, i.e. `T`. */
    contextualTypeArguments: Map<string,Type> = makeMap<string,Type>(),
    /** Alternative report node in case of empty type arguments. */
    alternativeReportNode: Node | null = null,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type[] | null {
    var minParameterCount = 0;
    var maxParameterCount = 0;
    for (let i = 0; i < typeParameters.length; ++i) {
      if (!typeParameters[i].defaultType) ++minParameterCount;
      ++maxParameterCount;
    }
    var argumentCount = typeArgumentNodes ? typeArgumentNodes.length : 0;
    if (argumentCount < minParameterCount || argumentCount > maxParameterCount) {
      this.error(
        DiagnosticCode.Expected_0_type_arguments_but_got_1,
        argumentCount
          ? Range.join(
              (<TypeNode[]>typeArgumentNodes)[0].range,
              (<TypeNode[]>typeArgumentNodes)[argumentCount - 1].range
            )
          : assert(alternativeReportNode).range,
        (argumentCount < minParameterCount ? minParameterCount : maxParameterCount).toString(10),
        argumentCount.toString(10)
      );
      return null;
    }
    var typeArguments = new Array<Type>(maxParameterCount);
    for (let i = 0; i < maxParameterCount; ++i) {
      let type = i < argumentCount
        ? this.resolveType( // reports
            (<TypeNode[]>typeArgumentNodes)[i],
            context,
            contextualTypeArguments,
            reportMode
          )
        : this.resolveType( // reports
            assert(typeParameters[i].defaultType),
            context,
            contextualTypeArguments,
            reportMode
          );
      if (!type) return null;
      // TODO: check extendsType
      contextualTypeArguments.set(typeParameters[i].name.text, type);
      typeArguments[i] = type;
    }
    return typeArguments;
  }

  /** Resolves an identifier to the program element it refers to. */
  resolveIdentifier(
    /** The expression to resolve. */
    identifier: IdentifierExpression,
    /** Optional flow to search for scoped locals. */
    flow: Flow | null,
    /** Optional context to search. */
    context: Element | null,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var name = identifier.text;
    var element: Element | null;
    if (flow) {
      if (element = flow.lookup(name)) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return element;
      }
    }
    if (context) {
      if (element = context.lookup(name)) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return element;
      }
    }
    if (element = this.program.lookupGlobal(name)) {
      this.currentThisExpression = null;
      this.currentElementExpression = null;
      return element;
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Cannot_find_name_0,
        identifier.range, name
      );
    }
    return null;
  }

  /** Resolves a lazily compiled global, i.e. a static class field. */
  ensureResolvedLazyGlobal(global: Global, reportMode: ReportMode = ReportMode.REPORT): bool {
    if (global.is(CommonFlags.RESOLVED)) return true;
    var typeNode = global.typeNode;
    if (!typeNode) return false;
    var type = this.resolveType( // reports
      typeNode,
      global.parent,
      null,
      reportMode
    );
    if (!type) return false;
    global.setType(type);
    return true;
  }

  /** Resolves a property access expression to the program element it refers to. */
  resolvePropertyAccessExpression(
    /** The expression to resolve. */
    propertyAccess: PropertyAccessExpression,
    /** Current flow. */
    flow: Flow,
    /** Current contextual type. */
    contextualType: Type,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var targetExpression = propertyAccess.expression;
    var target = this.resolveExpression(targetExpression, flow, contextualType, reportMode); // reports
    if (!target) return null;
    var propertyName = propertyAccess.property.text;

    // Resolve variable-likes to their class type first
    switch (target.kind) {
      case ElementKind.GLOBAL: if (!this.ensureResolvedLazyGlobal(<Global>target, reportMode)) return null;
      case ElementKind.LOCAL:
      case ElementKind.FIELD: {
        let type = (<VariableLikeElement>target).type; assert(type != Type.void);
        let classReference = type.classReference;
        if (!classReference) {
          let typeClasses = this.program.typeClasses;
          if (!type.is(TypeFlags.REFERENCE) && typeClasses.has(type.kind)) {
            classReference = typeClasses.get(type.kind)!;
          } else {
            this.error(
              DiagnosticCode.Property_0_does_not_exist_on_type_1,
              propertyAccess.property.range, propertyName, (<VariableLikeElement>target).type.toString()
            );
            return null;
          }
        }
        target = classReference;
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: { // static
        let getterInstance = this.resolveFunction( // reports
          assert((<PropertyPrototype>target).getterPrototype), // must have a getter
          null,
          makeMap<string,Type>(),
          reportMode
        );
        if (!getterInstance) return null;
        let classReference = getterInstance.signature.returnType.classReference;
        if (!classReference) {
          this.error(
            DiagnosticCode.Property_0_does_not_exist_on_type_1,
            propertyAccess.property.range, propertyName, getterInstance.signature.returnType.toString()
          );
          return null;
        }
        target = classReference;
        break;
      }
      case ElementKind.PROPERTY: { // instance
        let getterInstance = assert((<Property>target).getterInstance); // must have a getter
        let classReference = getterInstance.signature.returnType.classReference;
        if (!classReference) {
          this.error(
            DiagnosticCode.Property_0_does_not_exist_on_type_1,
            propertyAccess.property.range, propertyName, getterInstance.signature.returnType.toString()
          );
          return null;
        }
        target = classReference;
        break;
      }
      case ElementKind.CLASS: { // property access on element access?
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
          if (members && members.has(propertyName)) {
            this.currentThisExpression = targetExpression;
            this.currentElementExpression = null;
            return members.get(propertyName)!; // instance FIELD, static GLOBAL, FUNCTION_PROTOTYPE...
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
        if (members && members.has(propertyName)) {
          this.currentThisExpression = targetExpression;
          this.currentElementExpression = null;
          return members.get(propertyName)!; // static ENUMVALUE, static GLOBAL, static FUNCTION_PROTOTYPE...
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

  /** Resolves an element access expression to the program element it refers to. */
  resolveElementAccessExpression(
    /** The expression to resolve. */
    elementAccess: ElementAccessExpression,
    /** Current flow. */
    flow: Flow,
    /** Current contextual type. */
    contextualType: Type,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var targetExpression = elementAccess.expression;
    var target = this.resolveExpression(targetExpression, flow, contextualType, reportMode); // reports
    if (!target) return null;
    switch (target.kind) {
      case ElementKind.GLOBAL: if (!this.ensureResolvedLazyGlobal(<Global>target, reportMode)) return null;
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
      case ElementKind.CLASS: {
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
        if (targetExpression.kind == NodeKind.ELEMENTACCESS) { // nested element access
          let returnType = indexedGet.signature.returnType;
          if (target = returnType.classReference) {
            this.currentThisExpression = targetExpression;
            this.currentElementExpression = elementAccess.elementExpression;
            return target;
          }
          return null;
        }
        this.currentThisExpression = targetExpression;
        this.currentElementExpression = elementAccess.elementExpression;
        return target;
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

  /** Determines the final type of an integer literal given the specified contextual type. */
  determineIntegerLiteralType(
    /** Integer literal value. */
    intValue: I64,
    /** Current contextual type. */
    contextualType: Type
  ): Type {
    if (!contextualType.is(TypeFlags.REFERENCE)) {
      // compile to contextualType if matching
      switch (contextualType.kind) {
        case TypeKind.I8: {
          if (i64_is_i8(intValue)) return Type.i8;
          break;
        }
        case TypeKind.U8: {
          if (i64_is_u8(intValue)) return Type.u8;
          break;
        }
        case TypeKind.I16: {
          if (i64_is_i16(intValue)) return Type.i16;
          break;
        }
        case TypeKind.U16: {
          if (i64_is_u16(intValue)) return Type.u16;
          break;
        }
        case TypeKind.I32: {
          if (i64_is_i32(intValue)) return Type.i32;
          break;
        }
        case TypeKind.U32: {
          if (i64_is_u32(intValue)) return Type.u32;
          break;
        }
        case TypeKind.BOOL: {
          if (i64_is_bool(intValue)) return Type.bool;
          break;
        }
        case TypeKind.ISIZE: {
          if (!this.program.options.isWasm64) {
            if (i64_is_i32(intValue)) return Type.isize32;
            break;
          }
          return Type.isize64;
        }
        case TypeKind.USIZE: {
          if (!this.program.options.isWasm64) {
            if (i64_is_u32(intValue)) return Type.usize32;
            break;
          }
          return Type.usize64;
        }
        case TypeKind.I64: return Type.i64;
        case TypeKind.U64: return Type.u64;
        case TypeKind.F32: return Type.f32;
        case TypeKind.F64: return Type.f64;
        case TypeKind.VOID: break; // best fitting below
        default: assert(false);
      }
    }
    // otherwise compile to best fitting native type
    if (i64_is_i32(intValue)) return Type.i32;
    if (i64_is_u32(intValue)) return Type.u32;
    return Type.i64;
  }

  /** Resolves any expression to the program element it refers to. */
  resolveExpression(
    /** The expression to resolve. */
    expression: Expression,
    /** Current flow. */
    flow: Flow,
    /** Current contextual type. */
    contextualType: Type = Type.void,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    while (expression.kind == NodeKind.PARENTHESIZED) { // simply skip
      expression = (<ParenthesizedExpression>expression).expression;
    }
    switch (expression.kind) {
      case NodeKind.ASSERTION: {
        return this.resolveAssertionExpression(
          <AssertionExpression>expression,
          flow, contextualType, reportMode
        );
      }
      case NodeKind.UNARYPREFIX: {
        return this.resolveUnaryPrefixExpression(
          <UnaryPrefixExpression>expression,
          flow, contextualType, reportMode
        );
      }
      case NodeKind.UNARYPOSTFIX: {
        return this.resolveUnaryPostfixExpression(
          <UnaryPostfixExpression>expression,
          flow, contextualType, reportMode
        );
      }
      case NodeKind.BINARY: {
        return this.resolveBinaryExpression(
          <BinaryExpression>expression,
          flow, contextualType, reportMode
        );
      }
      case NodeKind.THIS: {
        return this.resolveThisExpression(
          <ThisExpression>expression,
          flow, contextualType, reportMode
        );
      }
      case NodeKind.SUPER: {
        return this.resolveSuperExpression(
          <SuperExpression>expression,
          flow, contextualType, reportMode
        );
      }
      case NodeKind.IDENTIFIER: {
        return this.resolveIdentifier(
          <IdentifierExpression>expression,
          flow, flow.actualFunction, reportMode
        );
      }
      case NodeKind.LITERAL: {
        return this.resolveLiteralExpression(
          <LiteralExpression>expression,
          flow, contextualType, reportMode
        );
      }
      case NodeKind.PROPERTYACCESS: {
        return this.resolvePropertyAccessExpression(
          <PropertyAccessExpression>expression,
          flow, contextualType, reportMode
        );
      }
      case NodeKind.ELEMENTACCESS: {
        return this.resolveElementAccessExpression(
          <ElementAccessExpression>expression,
          flow, contextualType, reportMode
        );
      }
      case NodeKind.CALL: {
        return this.resolveCallExpression(
          <CallExpression>expression,
          flow, contextualType, reportMode
        );
      }
      // TODO: everything else
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        expression.range
      );
    }
    return null;
  }

  /** Resolves an assertion expression to the program element it refers to. */
  resolveAssertionExpression(
    /** The expression to resolve. */
    expression: AssertionExpression,
    /** Current flow. */
    flow: Flow,
    /** Current contextual type. */
    contextualType: Type = Type.void,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    if (expression.assertionKind == AssertionKind.NONNULL) {
      return this.resolveExpression(
        expression.expression,
        flow,
        contextualType,
        reportMode
      );
    }
    var type = this.resolveType(
      assert(expression.toType), // must be set if not NONNULL
      flow.actualFunction,
      flow.contextualTypeArguments,
      reportMode
    );
    if (!type) return null;
    var element: Element | null = type.classReference;
    if (!element) {
      let signature = type.signatureReference;
      if (!signature) return null;
      element = signature.asFunctionTarget(this.program);
    }
    this.currentThisExpression = null;
    this.currentElementExpression = null;
    return element;
  }

  /** Resolves an unary prefix expression to the program element it refers to. */
  resolveUnaryPrefixExpression(
    /** The expression to resolve. */
    expression: UnaryPrefixExpression,
    /** Current flow. */
    flow: Flow,
    /** Current contextual type. */
    contextualType: Type = Type.void,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var operand = expression.operand;
    // TODO: operator overloads
    switch (expression.operator) {
      case Token.MINUS: {
        // implicitly negate if an integer literal to distinguish between i32/u32/i64
        if (operand.kind == NodeKind.LITERAL && (<LiteralExpression>operand).literalKind == LiteralKind.INTEGER) {
          let type = this.determineIntegerLiteralType(
            i64_sub(i64_zero, (<IntegerLiteralExpression>operand).value),
            contextualType
          );
          let typeClasses = this.program.typeClasses;
          return typeClasses.has(type.kind) ? typeClasses.get(type.kind)! : null;
        }
        return this.resolveExpression(
          operand,
          flow,
          contextualType,
          reportMode
        );
      }
      case Token.PLUS:
      case Token.PLUS_PLUS:
      case Token.MINUS_MINUS: {
        return this.resolveExpression(
          expression.operand,
          flow,
          contextualType,
          reportMode
        );
      }
      case Token.EXCLAMATION: {
        let typeClasses = this.program.typeClasses;
        return typeClasses.has(TypeKind.BOOL) ? typeClasses.get(TypeKind.BOOL)! : null;
      }
      case Token.TILDE: {
        let resolvedOperand = this.resolveExpression(
          expression.operand,
          flow,
          contextualType,
          reportMode
        );
        if (!resolvedOperand) return null;
        // TODO
        break;
      }
      default: assert(false);
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        expression.range
      );
    }
    return null;
  }

  /** Resolves an unary postfix expression to the program element it refers to. */
  resolveUnaryPostfixExpression(
    /** The expression to resolve. */
    expression: UnaryPostfixExpression,
    /** Current flow. */
    flow: Flow,
    /** Current contextual type. */
    contextualType: Type = Type.void,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    // TODO: operator overloads
    switch (expression.operator) {
      case Token.PLUS_PLUS:
      case Token.MINUS_MINUS: {
        return this.resolveExpression(
          expression.operand,
          flow,
          contextualType,
          reportMode
        );
      }
      default: assert(false);
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        expression.range
      );
    }
    return null;
  }

  /** Resolves a binary expression to the program element it refers to. */
  resolveBinaryExpression(
    /** The expression to resolve. */
    expression: BinaryExpression,
    /** Current flow. */
    flow: Flow,
    /** Current contextual type. */
    contextualType: Type = Type.void,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    // TODO
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        expression.range
      );
    }
    return null;
  }

  /** Resolves a this expression to the program element it refers to. */
  resolveThisExpression(
    /** The expression to resolve. */
    expression: ThisExpression,
    /** Current flow. */
    flow: Flow,
    /** Current contextual type. */
    contextualType: Type = Type.void,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    if (flow.is(FlowFlags.INLINE_CONTEXT)) {
      let thisLocal = flow.lookupLocal(CommonSymbols.this_);
      if (thisLocal) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return thisLocal;
      }
    }
    var parent = flow.actualFunction.parent;
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

  /** Resolves a super expression to the program element it refers to. */
  resolveSuperExpression(
    /** The expression to resolve. */
    expression: SuperExpression,
    /** Current flow. */
    flow: Flow,
    /** Current contextual type. */
    contextualType: Type = Type.void,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    if (flow.is(FlowFlags.INLINE_CONTEXT)) {
      let superLocal = flow.lookupLocal(CommonSymbols.super_);
      if (superLocal) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return superLocal;
      }
    }
    var parent: Element | null = flow.actualFunction.parent;
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

  /** Resolves a literal expression to the program element it refers to. */
  resolveLiteralExpression(
    /** The expression to resolve. */
    expression: LiteralExpression,
    /** Current flow. */
    flow: Flow,
    /** Current contextual type. */
    contextualType: Type = Type.void,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    switch (expression.literalKind) {
      case LiteralKind.INTEGER: {
        this.currentThisExpression = expression;
        this.currentElementExpression = null;
        let literalType = this.determineIntegerLiteralType(
          (<IntegerLiteralExpression>expression).value,
          contextualType
        );
        let typeClasses = this.program.typeClasses;
        return typeClasses.has(literalType.kind) ? typeClasses.get(literalType.kind)! : null;
      }
      case LiteralKind.FLOAT: {
        this.currentThisExpression = expression;
        this.currentElementExpression = null;
        let literalType = contextualType == Type.f32 ? Type.f32 : Type.f64;
        let typeClasses = this.program.typeClasses;
        return typeClasses.has(literalType.kind) ? typeClasses.get(literalType.kind)! : null;
      }
      case LiteralKind.STRING: {
        this.currentThisExpression = expression;
        this.currentElementExpression = null;
        return this.program.stringInstance;
      }
      // TODO
      // case LiteralKind.ARRAY:
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        expression.range
      );
    }
    return null;
  }

  /** Resolves a call expression to the program element it refers to. */
  resolveCallExpression(
    /** The expression to resolve. */
    expression: CallExpression,
    /** Current flow. */
    flow: Flow,
    /** Current contextual type. */
    contextualType: Type = Type.void,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var targetExpression = expression.expression;
    var target = this.resolveExpression( // reports
      targetExpression,
      flow,
      contextualType,
      reportMode
    );
    if (!target) return null;
    if (target.kind == ElementKind.FUNCTION_PROTOTYPE) {
      let instance = this.resolveFunctionInclTypeArguments(
        <FunctionPrototype>target,
        expression.typeArguments,
        flow.actualFunction,
        makeMap(flow.contextualTypeArguments), // don't inherit
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
          let functionTarget = signature.asFunctionTarget(this.program);
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
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        expression.range
      );
    }
    return null;
  }

  /** Resolves a function prototype using the specified concrete type arguments. */
  resolveFunction(
    /** The prototype of the function. */
    prototype: FunctionPrototype,
    /** Concrete type arguments. */
    typeArguments: Type[] | null,
    /** Type arguments inherited through context, i.e. `T`. */
    contextualTypeArguments: Map<string,Type> = makeMap<string,Type>(),
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Function | null {
    var actualParent = prototype.parent.kind == ElementKind.PROPERTY_PROTOTYPE
      ? prototype.parent.parent
      : prototype.parent;
    var classInstance: Class | null = null; // if an instance method
    var instanceKey = typeArguments ? typesToString(typeArguments) : "";

    // Instance method prototypes are pre-bound to their concrete class as their parent
    if (prototype.is(CommonFlags.INSTANCE)) {
      assert(actualParent.kind == ElementKind.CLASS);
      classInstance = <Class>actualParent;

      // check if this exact concrete class and function combination is known already
      let resolvedInstance = prototype.getResolvedInstance(instanceKey);
      if (resolvedInstance) return resolvedInstance;

      // inherit class specific type arguments
      let classTypeArguments = classInstance.typeArguments;
      if (classTypeArguments) {
        let classTypeParameters = assert(classInstance.prototype.typeParameterNodes);
        let numClassTypeArguments = classTypeParameters.length;
        assert(numClassTypeArguments == classTypeParameters.length);
        for (let i = 0; i < numClassTypeArguments; ++i) {
          let classTypeParameterName = classTypeParameters[i].name.text;
          if (!contextualTypeArguments.has(classTypeParameterName)) {
            contextualTypeArguments.set(
              classTypeParameterName,
              classTypeArguments[i]
            );
          }
        }
      }
    } else {
      assert(actualParent.kind != ElementKind.CLASS); // must not be pre-bound
      let resolvedInstance = prototype.getResolvedInstance(instanceKey);
      if (resolvedInstance) return resolvedInstance;
    }

    // override whatever is contextual with actual function type arguments
    var signatureNode = prototype.signatureNode;
    var typeParameterNodes = prototype.typeParameterNodes;
    var numFunctionTypeArguments: i32;
    if (typeArguments && (numFunctionTypeArguments = typeArguments.length)) {
      assert(typeParameterNodes && numFunctionTypeArguments == typeParameterNodes.length);
      for (let i = 0; i < numFunctionTypeArguments; ++i) {
        contextualTypeArguments.set(
          (<TypeParameterNode[]>typeParameterNodes)[i].name.text,
          typeArguments[i]
        );
      }
    } else {
      assert(!typeParameterNodes || typeParameterNodes.length == 0);
    }

    // resolve `this` type if applicable
    var thisType: Type | null = null;
    var explicitThisType = signatureNode.explicitThisType;
    if (explicitThisType) {
      thisType = this.resolveType(
        explicitThisType,
        prototype.parent, // relative to function
        contextualTypeArguments,
        reportMode
      );
      if (!thisType) return null;
      contextualTypeArguments.set(CommonSymbols.this_, thisType);
    } else if (classInstance) {
      thisType = classInstance.type;
      contextualTypeArguments.set(CommonSymbols.this_, thisType);
    }

    // resolve parameter types
    var signatureParameters = signatureNode.parameters;
    var numSignatureParameters = signatureParameters.length;
    var parameterTypes = new Array<Type>(numSignatureParameters);
    var parameterNames = new Array<string>(numSignatureParameters);
    var requiredParameters = 0;
    for (let i = 0; i < numSignatureParameters; ++i) {
      let parameterDeclaration = signatureParameters[i];
      if (parameterDeclaration.parameterKind == ParameterKind.DEFAULT) {
        requiredParameters = i + 1;
      }
      let typeNode = parameterDeclaration.type;
      if (isTypeOmitted(typeNode)) {
        this.error(
          DiagnosticCode.Type_expected,
          typeNode.range
        );
        return null;
      }
      let parameterType = this.resolveType(
        typeNode,
        prototype.parent, // relative to function
        contextualTypeArguments,
        reportMode
      );
      if (!parameterType) return null;
      parameterTypes[i] = parameterType;
      parameterNames[i] = parameterDeclaration.name.text;
    }

    // resolve return type
    var returnType: Type;
    if (prototype.is(CommonFlags.SET)) {
      returnType = Type.void; // not annotated
    } else if (prototype.is(CommonFlags.CONSTRUCTOR)) {
      returnType = assert(classInstance).type; // not annotated
    } else {
      let typeNode = signatureNode.returnType;
      if (isTypeOmitted(typeNode)) {
        this.error(
          DiagnosticCode.Type_expected,
          typeNode.range
        );
        return null;
      }
      let type = this.resolveType(
        typeNode,
        prototype.parent, // relative to function
        contextualTypeArguments,
        reportMode
      );
      if (!type) return null;
      returnType = type;
    }

    var signature = new Signature(parameterTypes, returnType, thisType);
    signature.parameterNames = parameterNames;
    signature.requiredParameters = requiredParameters;

    var nameInclTypeParameters = prototype.name;
    if (instanceKey.length) nameInclTypeParameters += "<" + instanceKey + ">";
    var instance = new Function(
      nameInclTypeParameters,
      prototype,
      signature,
      contextualTypeArguments
    );
    prototype.setResolvedInstance(instanceKey, instance);
    return instance;
  }

  /** Resolves a function prototypeby first resolving the specified type arguments. */
  resolveFunctionInclTypeArguments(
    /** The prototype of the function. */
    prototype: FunctionPrototype,
    /** Type arguments provided. */
    typeArgumentNodes: CommonTypeNode[] | null,
    /** Relative context. Type arguments are resolved from here. */
    context: Element,
    /** Type arguments inherited through context, i.e. `T`. */
    contextualTypeArguments: Map<string,Type>,
    /** The node to use when reporting intermediate errors. */
    reportNode: Node,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Function | null {
    var actualParent = prototype.parent.kind == ElementKind.PROPERTY_PROTOTYPE
      ? prototype.parent.parent
      : prototype.parent;
    var resolvedTypeArguments: Type[] | null = null;

    // Resolve type arguments if generic
    if (prototype.is(CommonFlags.GENERIC)) {

      // If this is an instance method, first apply the class's type arguments
      if (prototype.is(CommonFlags.INSTANCE)) {
        assert(actualParent.kind == ElementKind.CLASS);
        let classTypeArguments = (<Class>actualParent).typeArguments;
        if (classTypeArguments) {
          let typeParameterNodes = assert((<Class>actualParent).prototype.typeParameterNodes);
          let numClassTypeArguments = classTypeArguments.length;
          assert(numClassTypeArguments == typeParameterNodes.length);
          for (let i = 0; i < numClassTypeArguments; ++i) {
            contextualTypeArguments.set(
              typeParameterNodes[i].name.text,
              classTypeArguments[i]
            );
          }
        }
      }

      resolvedTypeArguments = this.resolveTypeArguments( // reports
        assert(prototype.typeParameterNodes),
        typeArgumentNodes,
        context,
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
    return this.resolveFunction(
      prototype,
      resolvedTypeArguments,
      contextualTypeArguments,
      reportMode
    );
  }

  /** Resolves a class prototype using the specified concrete type arguments. */
  resolveClass(
    /** The prototype of the class. */
    prototype: ClassPrototype,
    /** Concrete type arguments. */
    typeArguments: Type[] | null,
    /** Type arguments inherited through context, i.e. `T`. */
    contextualTypeArguments: Map<string,Type> = makeMap<string,Type>(),
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Class | null {
    var instanceKey = typeArguments ? typesToString(typeArguments) : "";

    // Check if this exact instance has already been resolved
    var instance = prototype.getResolvedInstance(instanceKey);
    if (instance) return instance;

    // Insert contextual type arguments for this operation. Internally, this method is always
    // called with matching type parameter / argument counts.
    if (typeArguments) {
      let typeParameterNodes = assert(prototype.typeParameterNodes);
      let numTypeParameters = typeParameterNodes.length;
      let numTypeArguments = typeArguments.length;
      assert(numTypeArguments == numTypeParameters);
      for (let i = 0; i < numTypeArguments; ++i) {
        contextualTypeArguments.set(typeParameterNodes[i].name.text, typeArguments[i]);
      }
    } else {
      let typeParameterNodes = prototype.typeParameterNodes;
      assert(!(typeParameterNodes && typeParameterNodes.length));
    }

    // Resolve base class if applicable
    var basePrototype = prototype.basePrototype;
    var baseClass: Class | null = null;
    if (basePrototype) {
      let extendsNode = assert(prototype.extendsNode); // must be present if it has a base prototype
      baseClass = this.resolveClassInclTypeArguments(
        basePrototype,
        extendsNode.typeArguments,
        prototype.parent, // relative to derived class
        makeMap(contextualTypeArguments), // don't inherit
        extendsNode,
        reportMode
      );
      if (!baseClass) return null;
    }

    // Construct the instance and remember that it has been resolved already
    var nameInclTypeParamters = prototype.name;
    if (instanceKey.length) nameInclTypeParamters += "<" + instanceKey + ">";
    instance = new Class(nameInclTypeParamters, prototype, typeArguments, baseClass);
    instance.contextualTypeArguments = contextualTypeArguments;
    prototype.setResolvedInstance(instanceKey, instance);

    // Inherit base class members and set up the initial memory offset for own fields
    var memoryOffset: u32 = 0;
    if (baseClass) {
      let baseMembers = baseClass.members;
      if (baseMembers) {
        let instanceMembers = instance.members;
        if (!instanceMembers) instance.members = instanceMembers = new Map();
        for (let [baseMemberName, baseMember] of baseMembers) {
          instanceMembers.set(baseMemberName, baseMember);
        }
      }
      memoryOffset = baseClass.currentMemoryOffset;
    }

    // Resolve instance members
    var instanceMemberPrototypes = prototype.instanceMembers;
    if (instanceMemberPrototypes) {
      for (let member of instanceMemberPrototypes.values()) {
        switch (member.kind) {

          // Lay out fields in advance
          case ElementKind.FIELD_PROTOTYPE: {
            let instanceMembers = instance.members;
            if (!instanceMembers) instance.members = instanceMembers = new Map();
            else if (instanceMembers.has(member.name)) {
              this.error(
                DiagnosticCode.Duplicate_identifier_0,
                (<FieldPrototype>member).identifierNode.range,
                member.name
              );
              break;
            }
            let fieldTypeNode = (<FieldPrototype>member).typeNode;
            let fieldType: Type | null = null;
            // TODO: handle duplicate non-private fields specifically?
            if (!fieldTypeNode) {
              if (baseClass) {
                let baseMembers = baseClass.members;
                if (baseMembers && baseMembers.has((<FieldPrototype>member).name)) {
                  let baseField = baseMembers.get((<FieldPrototype>member).name)!;
                  if (!baseField.is(CommonFlags.PRIVATE)) {
                    assert(baseField.kind == ElementKind.FIELD);
                    fieldType = (<Field>baseField).type;
                  }
                }
              }
              if (!fieldType) {
                if (reportMode == ReportMode.REPORT) {
                  this.error(
                    DiagnosticCode.Type_expected,
                    (<FieldPrototype>member).identifierNode.range.atEnd
                  );
                }
              }
            } else {
              fieldType = this.resolveType(
                fieldTypeNode,
                prototype.parent, // relative to class
                instance.contextualTypeArguments,
                reportMode
              );
            }
            if (!fieldType) break; // did report above
            let fieldInstance = new Field(<FieldPrototype>member, instance, fieldType);
            assert(isPowerOf2(fieldType.byteSize));
            let mask = fieldType.byteSize - 1;
            if (memoryOffset & mask) memoryOffset = (memoryOffset | mask) + 1;
            fieldInstance.memoryOffset = memoryOffset;
            memoryOffset += fieldType.byteSize;
            instance.add(member.name, fieldInstance); // reports
            break;
          }
          case ElementKind.FUNCTION_PROTOTYPE: {
            let boundPrototype = (<FunctionPrototype>member).toBound(instance);
            instance.add(boundPrototype.name, boundPrototype); // reports
            break;
          }
          case ElementKind.PROPERTY_PROTOTYPE: {
            let propertyInstance = new Property(<PropertyPrototype>member, instance);
            let getterPrototype = (<PropertyPrototype>member).getterPrototype;
            if (getterPrototype) {
              let getterInstance = this.resolveFunction(
                getterPrototype.toBound(instance),
                null,
                makeMap(instance.contextualTypeArguments),
                reportMode
              );
              if (getterInstance) {
                propertyInstance.getterInstance = getterInstance;
                propertyInstance.setType(getterInstance.signature.returnType);
              }
            }
            let setterPrototype = (<PropertyPrototype>member).setterPrototype;
            if (setterPrototype) {
              let setterInstance = this.resolveFunction(
                setterPrototype.toBound(instance),
                null,
                makeMap(instance.contextualTypeArguments),
                reportMode
              );
              if (setterInstance) {
                propertyInstance.setterInstance = setterInstance;
                if (!propertyInstance.is(CommonFlags.RESOLVED)) {
                  assert(setterInstance.signature.parameterTypes.length == 1);
                  propertyInstance.setType(setterInstance.signature.parameterTypes[0]);
                }
              }
            }
            instance.add(propertyInstance.name, propertyInstance); // reports
            break;
          }
          default: assert(false);
        }
      }
    }

    // Finalize memory offset
    instance.currentMemoryOffset = memoryOffset;

    // Link _own_ constructor if present
    {
      let ctorPrototype = instance.lookupInSelf(CommonSymbols.constructor);
      if (ctorPrototype && ctorPrototype.parent === instance) {
        assert(ctorPrototype.kind == ElementKind.FUNCTION_PROTOTYPE);
        let ctorInstance = this.resolveFunction(
          <FunctionPrototype>ctorPrototype,
          null,
          instance.contextualTypeArguments,
          reportMode
        );
        if (ctorInstance) instance.constructorInstance = <Function>ctorInstance;
      }
    }

    // Fully resolve operator overloads (don't have type parameters on their own)
    for (let [kind, overloadPrototype] of prototype.overloadPrototypes) {
      assert(kind != OperatorKind.INVALID);
      let operatorInstance: Function | null;
      if (overloadPrototype.is(CommonFlags.INSTANCE)) {
        let boundPrototype = overloadPrototype.toBound(instance);
        operatorInstance = this.resolveFunction(
          boundPrototype,
          null,
          makeMap<string,Type>(),
          reportMode
        );
      } else {
        operatorInstance = this.resolveFunction(
          overloadPrototype,
          null,
          makeMap<string,Type>(),
          reportMode
        );
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
    /** The prototype of the class. */
    prototype: ClassPrototype,
    /** Type argument nodes provided. */
    typeArgumentNodes: CommonTypeNode[] | null,
    /** Relative context. Type arguments are resolved from here. */
    context: Element,
    /** Type arguments inherited through context, i.e. `T`. */
    contextualTypeArguments: Map<string,Type>,
    /** The node to use when reporting intermediate errors. */
    reportNode: Node,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Class | null {
    var resolvedTypeArguments: Type[] | null = null;

    // Resolve type arguments if generic
    if (prototype.is(CommonFlags.GENERIC)) {
      resolvedTypeArguments = this.resolveTypeArguments( // reports
        assert(prototype.typeParameterNodes), // must be present if generic
        typeArgumentNodes,
        context,
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
