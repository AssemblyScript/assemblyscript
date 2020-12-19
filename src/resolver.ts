/**
 * @fileoverview Resolve infrastructure to obtain types and elements.
 *
 * Similar to the compiler making instructions of expressions, the resolver
 * obtains metadata of expressions. As such, for each `compileX` method in
 * the compiler there is one `lookupX` method in the resolver returning the
 * respective IR element, respectively one `resolveX` method returning the
 * respective type of an expression. It is also able to make new elements,
 * like instances of classes given its concrete type arguments.
 *
 * @license Apache-2.0
 */

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
  Interface,
  Function,
  FunctionPrototype,
  VariableLikeElement,
  Property,
  PropertyPrototype,
  Field,
  FieldPrototype,
  Global,
  TypeDefinition,
  TypedElement,
  IndexSignature,
  isTypedElement,
  InterfacePrototype,
  DeclaredElement
} from "./program";

import {
  Flow
} from "./flow";

import {
  Range
} from "./tokenizer";

import {
  FunctionTypeNode,
  ParameterKind,
  TypeNode,
  NodeKind,
  NamedTypeNode,
  TypeName,
  TypeParameterNode,
  Node,
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
  CommaExpression,
  InstanceOfExpression,
  TernaryExpression,
  isTypeOmitted,
  FunctionExpression,
  NewExpression,
  ArrayLiteralExpression
} from "./ast";

import {
  Type,
  Signature,
  typesToString,
  TypeKind
} from "./types";

import {
  CommonFlags,
  CommonNames
} from "./common";

import {
  uniqueMap,
  isPowerOf2
} from "./util";

import {
  Token,
  operatorTokenToString
} from "./tokenizer";

import {
  BuiltinNames
} from "./builtins";

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

  // ====================================================== Types ======================================================

  /** Resolves a {@link TypeNode} to a concrete {@link Type}. */
  resolveType(
    /** The type to resolve. */
    node: TypeNode,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> | null = null,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    switch (node.kind) {
      case NodeKind.NAMEDTYPE: {
        return this.resolveNamedType(
          <NamedTypeNode>node,
          ctxElement,
          ctxTypes,
          reportMode
        );
      }
      case NodeKind.FUNCTIONTYPE: {
        return this.resolveFunctionType(
          <FunctionTypeNode>node,
          ctxElement,
          ctxTypes,
          reportMode
        );
      }
      default: assert(false);
    }
    return null;
  }

  /** Resolves a {@link NamedTypeNode} to a concrete {@link Type}. */
  private resolveNamedType(
    /** The type to resolve. */
    node: NamedTypeNode,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> | null = null,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var nameNode = node.name;
    var typeArgumentNodes = node.typeArguments;
    var isSimpleType = !nameNode.next;

    // Look up in contextual types if a simple type
    if (isSimpleType) {
      let simpleName = nameNode.identifier.text;
      if (ctxTypes !== null && ctxTypes.has(simpleName)) {
        let type = assert(ctxTypes.get(simpleName));
        if (typeArgumentNodes !== null && typeArgumentNodes.length > 0) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Type_0_is_not_generic,
              node.range, type.toString()
            );
          }
        }
        if (node.isNullable) {
          if (type.isInternalReference) return type.asNullable();
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Type_0_cannot_be_nullable,
              node.range, type.toString()
            );
          }
        }
        return type;
      }
    }

    // Look up in context
    var element = this.resolveTypeName(nameNode, ctxElement, reportMode);
    if (!element) return null;

    // Use shadow type if present (i.e. namespace sharing a type)
    var shadowType = element.shadowType;
    if (shadowType) {
      element = shadowType;

    } else {

      // Handle enums (become i32)
      if (element.kind == ElementKind.ENUM) {
        if (typeArgumentNodes !== null && typeArgumentNodes.length > 0) {
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
              DiagnosticCode.Type_0_cannot_be_nullable,
              node.range, element.name + "/i32"
            );
          }
        }
        return Type.i32;
      }

      // Handle classes and interfaces
      if (
        element.kind == ElementKind.CLASS_PROTOTYPE ||
        element.kind == ElementKind.INTERFACE_PROTOTYPE
      ) {
        let instance = this.resolveClassInclTypeArguments(
          <ClassPrototype>element,
          typeArgumentNodes,
          ctxElement,
          uniqueMap<string,Type>(ctxTypes), // don't inherit
          node,
          reportMode
        );
        if (!instance) return null;
        return node.isNullable ? instance.type.asNullable() : instance.type;
      }
    }

    // Handle type definitions
    if (element.kind == ElementKind.TYPEDEFINITION) {
      let typeDefinition = <TypeDefinition>element;

      // Shortcut already resolved (mostly builtins)
      if (element.is(CommonFlags.RESOLVED)) {
        if (typeArgumentNodes !== null && typeArgumentNodes.length > 0) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Type_0_is_not_generic,
              node.range, element.internalName
            );
          }
        }
        let type = typeDefinition.type;
        if (node.isNullable) {
          if (type.isInternalReference) return type.asNullable();
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Type_0_cannot_be_nullable,
              nameNode.range, nameNode.identifier.text
            );
          }
        }
        return type;
      }

      // Handle special built-in types
      if (isSimpleType) {
        let text = nameNode.identifier.text;
        if (text == CommonNames.native) return this.resolveBuiltinNativeType(node, ctxElement, ctxTypes, reportMode);
        if (text == CommonNames.indexof) return this.resolveBuiltinIndexofType(node, ctxElement, ctxTypes, reportMode);
        if (text == CommonNames.valueof) return this.resolveBuiltinValueofType(node, ctxElement, ctxTypes, reportMode);
        if (text == CommonNames.returnof) return this.resolveBuiltinReturnTypeType(node, ctxElement, ctxTypes, reportMode);
      }

      // Resolve normally
      let typeParameterNodes = typeDefinition.typeParameterNodes;
      let typeArguments: Type[] | null = null;
      if (typeParameterNodes) {
        typeArguments = this.resolveTypeArguments(
          typeParameterNodes,
          typeArgumentNodes,
          ctxElement,
          ctxTypes = uniqueMap(ctxTypes), // inherit
          node,
          reportMode
        );
        if (!typeArguments) return null;
      } else if (typeArgumentNodes !== null && typeArgumentNodes.length > 0) {
        this.error(
          DiagnosticCode.Type_0_is_not_generic,
          node.range, nameNode.identifier.text
        );
      }
      let type = this.resolveType(
        typeDefinition.typeNode,
        element,
        ctxTypes,
        reportMode
      );
      if (!type) return null;
      if (node.isNullable) {
        if (type.isInternalReference) return type.asNullable();
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Type_0_cannot_be_nullable,
            nameNode.range, nameNode.identifier.text
          );
        }
      }
      return type;
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Cannot_find_name_0,
        nameNode.range, nameNode.identifier.text
      );
    }
    return null;
  }

  /** Resolves a {@link FunctionTypeNode} to a concrete {@link Type}. */
  private resolveFunctionType(
    /** The type to resolve. */
    node: FunctionTypeNode,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> | null = null,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var explicitThisType = node.explicitThisType;
    var thisType: Type | null = null;
    if (explicitThisType) {
      thisType = this.resolveType(
        explicitThisType,
        ctxElement,
        ctxTypes,
        reportMode
      );
      if (!thisType) return null;
    }
    var parameterNodes = node.parameters;
    var numParameters = parameterNodes.length;
    var parameterTypes = new Array<Type>(numParameters);
    var requiredParameters = 0;
    var hasRest = false;
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
        ctxElement,
        ctxTypes,
        reportMode
      );
      if (!parameterType) return null;
      parameterTypes[i] = parameterType;
    }
    var returnTypeNode = node.returnType;
    var returnType: Type | null;
    if (isTypeOmitted(returnTypeNode)) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Type_expected,
          returnTypeNode.range
        );
      }
      returnType = Type.void;
    } else {
      returnType = this.resolveType(
        returnTypeNode,
        ctxElement,
        ctxTypes,
        reportMode
      );
      if (!returnType) return null;
    }
    var signature = new Signature(this.program, parameterTypes, returnType, thisType);
    signature.requiredParameters = requiredParameters;
    signature.hasRest = hasRest;
    return node.isNullable ? signature.type.asNullable() : signature.type;
  }

  private resolveBuiltinNativeType(
    /** The type to resolve. */
    node: NamedTypeNode,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> | null = null,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var typeArgumentNodes = node.typeArguments;
    if (!typeArgumentNodes || typeArgumentNodes.length != 1) {
      if (reportMode == ReportMode.REPORT) {
        let numTypeArguments = 0;
        if (typeArgumentNodes) numTypeArguments = typeArgumentNodes.length;
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          node.range, "1", numTypeArguments.toString()
        );
      }
      return null;
    }
    var typeArgument = this.resolveType(typeArgumentNodes[0], ctxElement, ctxTypes, reportMode);
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
    return null;
  }

  private resolveBuiltinIndexofType(
    /** The type to resolve. */
    node: NamedTypeNode,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> | null = null,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var typeArgumentNodes = node.typeArguments;
    if (!typeArgumentNodes || typeArgumentNodes.length != 1) {
      if (reportMode == ReportMode.REPORT) {
        let numTypeArguments = 0;
        if (typeArgumentNodes) numTypeArguments = typeArgumentNodes.length;
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          node.range, "1", numTypeArguments.toString()
        );
      }
      return null;
    }
    var typeArgument = this.resolveType(typeArgumentNodes[0], ctxElement, ctxTypes, reportMode);
    if (!typeArgument) return null;
    var classReference = typeArgument.classReference;
    if (!classReference) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Index_signature_is_missing_in_type_0,
          typeArgumentNodes[0].range, typeArgument.toString()
        );
      }
      return null;
    }
    var overload = classReference.lookupOverload(OperatorKind.INDEXED_GET);
    if (overload) {
      if (overload.is(CommonFlags.STATIC)) {
        assert(overload.signature.parameterTypes.length == 2);
        return overload.signature.parameterTypes[1];
      } else {
        assert(overload.signature.parameterTypes.length == 1);
        return overload.signature.parameterTypes[0];
      }
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Index_signature_is_missing_in_type_0,
        typeArgumentNodes[0].range, typeArgument.toString()
      );
    }
    return null;
  }

  private resolveBuiltinValueofType(
    /** The type to resolve. */
    node: NamedTypeNode,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> | null = null,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var typeArgumentNodes = node.typeArguments;
    if (!typeArgumentNodes || typeArgumentNodes.length != 1) {
      let numTypeArguments = 0;
      if (typeArgumentNodes) numTypeArguments = typeArgumentNodes.length;
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          node.range, "1", numTypeArguments.toString()
        );
      }
      return null;
    }
    var typeArgument = this.resolveType(typeArgumentNodes[0], ctxElement, ctxTypes, reportMode);
    if (!typeArgument) return null;
    var classReference = typeArgument.getClassOrWrapper(this.program);
    if (classReference) {
      let overload = classReference.lookupOverload(OperatorKind.INDEXED_GET);
      if (overload) return overload.signature.returnType;
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Index_signature_is_missing_in_type_0,
        typeArgumentNodes[0].range, typeArgument.toString()
      );
    }
    return null;
  }

  private resolveBuiltinReturnTypeType(
    /** The type to resolve. */
    node: NamedTypeNode,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> | null = null,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var typeArgumentNodes = node.typeArguments;
    if (!typeArgumentNodes || typeArgumentNodes.length != 1) {
      if (reportMode == ReportMode.REPORT) {
        let numTypeArguments = 0;
        if (typeArgumentNodes) numTypeArguments = typeArgumentNodes.length;
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          node.range, "1", numTypeArguments.toString()
        );
      }
      return null;
    }
    var typeArgument = this.resolveType(typeArgumentNodes[0], ctxElement, ctxTypes, reportMode);
    if (!typeArgument) return null;
    var signatureReference = typeArgument.getSignature();
    if (signatureReference) return signatureReference.returnType;
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Type_0_has_no_call_signatures,
        typeArgumentNodes[0].range, typeArgument.toString()
      );
    }
    return null;
  }

  /** Resolves a type name to the program element it refers to. */
  resolveTypeName(
    /** The type name to resolve. */
    node: TypeName,
    /** Contextual element. */
    ctxElement: Element,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var element = ctxElement.lookup(node.identifier.text);
    if (!element) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Cannot_find_name_0,
          node.range, node.identifier.text
        );
      }
      return null;
    }
    var prev = node;
    var next = node.next;
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
    /** Type parameter nodes present. */
    typeParameters: TypeParameterNode[],
    /** Type argument nodes provided. */
    typeArgumentNodes: TypeNode[] | null,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> = uniqueMap<string,Type>(),
    /** Alternative report node in case of empty type arguments. */
    alternativeReportNode: Node | null = null,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type[] | null {
    var minParameterCount = 0;
    var maxParameterCount = 0;
    for (let i = 0, k = typeParameters.length; i < k; ++i) {
      if (!typeParameters[i].defaultType) ++minParameterCount;
      ++maxParameterCount;
    }
    var argumentCount = typeArgumentNodes ? typeArgumentNodes.length : 0;
    if (argumentCount < minParameterCount || argumentCount > maxParameterCount) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          argumentCount
            ? Range.join(
                typeArgumentNodes![0].range,
                typeArgumentNodes![argumentCount - 1].range
              )
            : alternativeReportNode!.range,
          (argumentCount < minParameterCount ? minParameterCount : maxParameterCount).toString(),
          argumentCount.toString()
        );
      }
      return null;
    }
    var typeArguments = new Array<Type>(maxParameterCount);
    for (let i = 0; i < maxParameterCount; ++i) {
      let type = i < argumentCount
        ? this.resolveType( // reports
            typeArgumentNodes![i],
            ctxElement,
            ctxTypes,
            reportMode
          )
        : this.resolveType( // reports
            assert(typeParameters[i].defaultType),
            ctxElement,
            ctxTypes,
            reportMode
          );
      if (!type) return null;
      // TODO: check extendsType
      ctxTypes.set(typeParameters[i].name.text, type);
      typeArguments[i] = type;
    }
    return typeArguments;
  }

  /** Resolves respectively infers the concrete instance of a function by call context. */
  maybeInferCall(
    node: CallExpression,
    prototype: FunctionPrototype,
    ctxFlow: Flow,
    reportMode: ReportMode = ReportMode.REPORT
  ): Function | null {
    var typeArguments = node.typeArguments;

    // resolve generic call if type arguments have been provided
    if (typeArguments) {
      if (!prototype.is(CommonFlags.GENERIC)) {
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Type_0_is_not_generic,
            node.expression.range, prototype.internalName
          );
        }
        return null;
      }
      return this.resolveFunctionInclTypeArguments(
        prototype,
        typeArguments,
        ctxFlow.actualFunction,
        uniqueMap(ctxFlow.contextualTypeArguments), // don't inherit
        node,
        reportMode
      );
    }

    // infer generic call if type arguments have been omitted
    if (prototype.is(CommonFlags.GENERIC)) {
      let contextualTypeArguments = uniqueMap<string,Type>(ctxFlow.contextualTypeArguments);

      // fill up contextual types with auto for each generic component
      let typeParameterNodes = assert(prototype.typeParameterNodes);
      let numTypeParameters = typeParameterNodes.length;
      let typeParameterNames = new Set<string>();
      for (let i = 0; i < numTypeParameters; ++i) {
        let name = typeParameterNodes[i].name.text;
        contextualTypeArguments.set(name, Type.auto);
        typeParameterNames.add(name);
      }

      let parameterNodes = prototype.functionTypeNode.parameters;
      let numParameters = parameterNodes.length;
      let argumentNodes = node.args;
      let numArguments = argumentNodes.length;

      // infer types with generic components while updating contextual types
      for (let i = 0; i < numParameters; ++i) {
        let argumentExpression = i < numArguments ? argumentNodes[i] : parameterNodes[i].initializer;
        if (!argumentExpression) { // missing initializer -> too few arguments
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Expected_0_arguments_but_got_1,
              node.range, numParameters.toString(), numArguments.toString()
            );
          }
          return null;
        }
        let typeNode = parameterNodes[i].type;
        if (typeNode.hasGenericComponent(typeParameterNodes)) {
          let type = this.resolveExpression(argumentExpression, ctxFlow, Type.auto, ReportMode.SWALLOW);
          if (type) this.propagateInferredGenericTypes(typeNode, type, ctxFlow, contextualTypeArguments, typeParameterNames);
        }
      }

      // apply concrete types to the generic function signature
      let resolvedTypeArguments = new Array<Type>(numTypeParameters);
      for (let i = 0; i < numTypeParameters; ++i) {
        let name = typeParameterNodes[i].name.text;
        if (contextualTypeArguments.has(name)) {
          let inferredType = assert(contextualTypeArguments.get(name));
          if (inferredType != Type.auto) {
            resolvedTypeArguments[i] = inferredType;
            continue;
          }
        }
        // unused template, e.g. `function test<T>(): void {...}` called as `test()`
        // invalid because the type is effectively unknown inside the function body
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Type_argument_expected,
            node.expression.range.atEnd
          );
        }
        return null;
      }
      return this.resolveFunction(
        prototype,
        resolvedTypeArguments,
        uniqueMap<string,Type>(ctxFlow.contextualTypeArguments),
        reportMode
      );
    }

    // otherwise resolve the non-generic call as usual
    return this.resolveFunction(prototype, null, uniqueMap<string,Type>(), reportMode);
  }

  /** Updates contextual types with a possibly encapsulated inferred type. */
  private propagateInferredGenericTypes(
    /** The inferred type node. */
    node: TypeNode,
    /** The inferred type. */
    type: Type,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual types, i.e. `T`, with unknown types initialized to `auto`. */
    ctxTypes: Map<string,Type>,
    /** The names of the type parameters being inferred. */
    typeParameterNames: Set<string>
  ): void {
    if (node.kind == NodeKind.NAMEDTYPE) {
      let namedTypeNode = <NamedTypeNode>node;
      let typeArgumentNodes = namedTypeNode.typeArguments;
      if (typeArgumentNodes !== null && typeArgumentNodes.length > 0) { // foo<T>(bar: Array<T>)
        let classReference = type.classReference;
        if (classReference) {
          let classPrototype = this.resolveTypeName(namedTypeNode.name, ctxFlow.actualFunction);
          if (!classPrototype || classPrototype.kind != ElementKind.CLASS_PROTOTYPE) return;
          if (classReference.prototype == <ClassPrototype>classPrototype) {
            let typeArguments = classReference.typeArguments;
            if (typeArguments !== null && typeArguments.length == typeArgumentNodes.length) {
              for (let i = 0, k = typeArguments.length; i < k; ++i) {
                this.propagateInferredGenericTypes(typeArgumentNodes[i], typeArguments[i], ctxFlow, ctxTypes, typeParameterNames);
              }
              return;
            }
          }
        }
      } else { // foo<T>(bar: T)
        let name = namedTypeNode.name.identifier.text;
        if (ctxTypes.has(name)) {
          let currentType = assert(ctxTypes.get(name));
          if (currentType == Type.auto || (typeParameterNames.has(name) && currentType.isAssignableTo(type))) {
            ctxTypes.set(name, type);
          }
        }
      }
    } else if (node.kind == NodeKind.FUNCTIONTYPE) { // foo<T>(bar: (baz: T) => i32))
      let functionTypeNode = <FunctionTypeNode>node;
      let parameterNodes = functionTypeNode.parameters;
      if (parameterNodes !== null && parameterNodes.length > 0) {
        let signatureReference = type.signatureReference;
        if (signatureReference) {
          let parameterTypes = signatureReference.parameterTypes;
          let thisType = signatureReference.thisType;
          if (parameterTypes.length == parameterNodes.length && !thisType == !functionTypeNode.explicitThisType) {
            for (let i = 0, k = parameterTypes.length; i < k; ++i) {
              this.propagateInferredGenericTypes(parameterNodes[i].type, parameterTypes[i], ctxFlow, ctxTypes, typeParameterNames);
            }
            this.propagateInferredGenericTypes(functionTypeNode.returnType, signatureReference.returnType, ctxFlow, ctxTypes, typeParameterNames);
            if (thisType) this.propagateInferredGenericTypes(functionTypeNode.explicitThisType!, thisType, ctxFlow, ctxTypes, typeParameterNames);
            return;
          }
        }
      }
    }
  }

  /** Gets the concrete type of an element. */
  getTypeOfElement(element: Element): Type | null {
    var kind = element.kind;
    if (kind == ElementKind.GLOBAL) {
      if (!this.ensureResolvedLazyGlobal(<Global>element, ReportMode.SWALLOW)) return null;
    }
    if (isTypedElement(kind)) {
      let type = (<TypedElement>element).type;
      assert(type != Type.void);
      let classReference = type.getClassOrWrapper(this.program);
      if (classReference) {
        let wrappedType = classReference.wrappedType;
        if (wrappedType) type = wrappedType;
      }
      return type;
    }
    return null;
  }

  /** Gets the element of a concrete type. */
  getElementOfType(type: Type): Element | null {
    let classReference = type.getClassOrWrapper(this.program);
    if (classReference) return classReference;
    return null;
  }

  // =================================================== Expressions ===================================================

  /** Looks up the program element the specified expression refers to. */
  lookupExpression(
    /** The expression to look up. */
    node: Expression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    while (node.kind == NodeKind.PARENTHESIZED) { // skip
      node = (<ParenthesizedExpression>node).expression;
    }
    switch (node.kind) {
      case NodeKind.ASSERTION: {
        return this.lookupAssertionExpression(
          <AssertionExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.BINARY: {
        return this.lookupBinaryExpression(
          <BinaryExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.CALL: {
        return this.lookupCallExpression(
          <CallExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.COMMA: {
        return this.lookupCommaExpression(
          <CommaExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.ELEMENTACCESS: {
        return this.lookupElementAccessExpression(
          <ElementAccessExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.FUNCTION: {
        return this.lookupFunctionExpression(
          <FunctionExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.IDENTIFIER:
      case NodeKind.FALSE:
      case NodeKind.NULL:
      case NodeKind.TRUE: {
        return this.lookupIdentifierExpression(
          <IdentifierExpression>node,
          ctxFlow, ctxFlow.actualFunction, reportMode
        );
      }
      case NodeKind.THIS: {
        return this.lookupThisExpression(
          <ThisExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.SUPER: {
        return this.lookupSuperExpression(
          <SuperExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.INSTANCEOF: {
        return this.lookupInstanceOfExpression(
          <InstanceOfExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.LITERAL: {
        return this.lookupLiteralExpression(
          <LiteralExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.NEW: {
        return this.lookupNewExpression(
          <NewExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.PROPERTYACCESS: {
        return this.lookupPropertyAccessExpression(
          <PropertyAccessExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.TERNARY: {
        return this.lookupTernaryExpression(
          <TernaryExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.UNARYPOSTFIX: {
        return this.lookupUnaryPostfixExpression(
          <UnaryPostfixExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.UNARYPREFIX: {
        return this.lookupUnaryPrefixExpression(
          <UnaryPrefixExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
    }
    assert(false);
    return null;
  }

  /** Resolves an expression to its static type. */
  resolveExpression(
    /** The expression to resolve. */
    node: Expression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    while (node.kind == NodeKind.PARENTHESIZED) { // skip
      node = (<ParenthesizedExpression>node).expression;
    }
    switch (node.kind) {
      case NodeKind.ASSERTION: {
        return this.resolveAssertionExpression(
          <AssertionExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.BINARY: {
        return this.resolveBinaryExpression(
          <BinaryExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.CALL: {
        return this.resolveCallExpression(
          <CallExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.COMMA: {
        return this.resolveCommaExpression(
          <CommaExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.ELEMENTACCESS: {
        return this.resolveElementAccessExpression(
          <ElementAccessExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.FUNCTION: {
        return this.resolveFunctionExpression(
          <FunctionExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.IDENTIFIER:
      case NodeKind.FALSE:
      case NodeKind.NULL:
      case NodeKind.TRUE: {
        return this.resolveIdentifierExpression(
          <IdentifierExpression>node,
          ctxFlow, ctxType, ctxFlow.actualFunction, reportMode
        );
      }
      case NodeKind.THIS: {
        return this.resolveThisExpression(
          <ThisExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.SUPER: {
        return this.resolveSuperExpression(
          <SuperExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.INSTANCEOF: {
        return this.resolveInstanceOfExpression(
          <InstanceOfExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.LITERAL: {
        return this.resolveLiteralExpression(
          <LiteralExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.NEW: {
        return this.resolveNewExpression(
          <NewExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.PROPERTYACCESS: {
        return this.resolvePropertyAccessExpression(
          <PropertyAccessExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.TERNARY: {
        return this.resolveTernaryExpression(
          <TernaryExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.UNARYPOSTFIX: {
        return this.resolveUnaryPostfixExpression(
          <UnaryPostfixExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.UNARYPREFIX: {
        return this.resolveUnaryPrefixExpression(
          <UnaryPrefixExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
    }
    assert(false);
    return null;
  }

  /** Looks up the program element the specified identifier expression refers to. */
  lookupIdentifierExpression(
    /** The expression to look up. */
    node: IdentifierExpression,
    /** Flow to search for scoped locals. */
    ctxFlow: Flow,
    /** Element to search. */
    ctxElement: Element = ctxFlow.actualFunction, // differs for enums and namespaces
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    switch (node.kind) {
      case NodeKind.TRUE:
      case NodeKind.FALSE:
      case NodeKind.NULL: {
        let type = this.resolveIdentifierExpression(node, ctxFlow, Type.auto, ctxElement, reportMode);
        return type ? this.getElementOfType(type) : null;
      }
    }
    var name = node.text;
    var element: Element | null;
    if (element = ctxFlow.lookup(name)) {
      this.currentThisExpression = null;
      this.currentElementExpression = null;
      return element;
    }
    if (element = ctxElement.lookup(name)) {
      this.currentThisExpression = null;
      this.currentElementExpression = null;
      return element;
    }
    if (element = this.program.lookup(name)) {
      this.currentThisExpression = null;
      this.currentElementExpression = null;
      return element;
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Cannot_find_name_0,
        node.range, name
      );
    }
    return null;
  }

  /** Resolves an identifier to its static type. */
  private resolveIdentifierExpression(
    /** The expression to resolve. */
    node: IdentifierExpression,
    /** Flow to search for scoped locals. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** Element to search. */
    ctxElement: Element = ctxFlow.actualFunction, // differs for enums and namespaces
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    switch (node.kind) {
      case NodeKind.TRUE:
      case NodeKind.FALSE: return Type.bool;
      case NodeKind.NULL: {
        let classReference = ctxType.getClass();
        if (classReference) {
          return classReference.type.asNullable();
        } else {
          let signatureReference = ctxType.getSignature();
          if (signatureReference) {
            return signatureReference.type.asNullable();
          } else if (ctxType.isExternalReference) {
            return ctxType; // TODO: nullable?
          }
        }
        return this.program.options.usizeType;
      }
    }
    var element = this.lookupIdentifierExpression(node, ctxFlow, ctxElement, reportMode);
    if (!element) return null;
    if (element.kind == ElementKind.FUNCTION_PROTOTYPE) {
      let instance = this.resolveFunction(<FunctionPrototype>element, null, uniqueMap<string,Type>(), reportMode);
      if (!instance) return null;
      element = instance;
    }
    var type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expression_cannot_be_represented_by_a_type,
          node.range
        );
      }
    }
    return type;
  }

  /** Resolves a lazily compiled global, i.e. a static class field or annotated `@lazy`. */
  private ensureResolvedLazyGlobal(global: Global, reportMode: ReportMode = ReportMode.REPORT): bool {
    if (global.is(CommonFlags.RESOLVED)) return true;
    var type: Type | null;
    var typeNode = global.typeNode;
    if (typeNode) {
      type = this.resolveType(typeNode, global.parent, null, reportMode);
    } else {
      type = this.resolveExpression(assert(global.initializerNode), global.file.startFunction.flow, Type.auto, reportMode);
    }
    if (!type) return false;
    global.setType(type); // also sets resolved
    return true;
  }

  /** Looks up the program element the specified property access expression refers to. */
  private lookupPropertyAccessExpression(
    /** The expression to look up. */
    node: PropertyAccessExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var targetNode = node.expression;
    var target = this.lookupExpression(targetNode, ctxFlow, ctxType, reportMode); // reports
    if (!target) return null;
    var propertyName = node.property.text;

    // Resolve variable-likes to their class type first
    switch (target.kind) {
      case ElementKind.GLOBAL: if (!this.ensureResolvedLazyGlobal(<Global>target, reportMode)) return null;
      case ElementKind.ENUMVALUE:
      case ElementKind.LOCAL:
      case ElementKind.FIELD: { // someVar.prop
        let variableLikeElement = <VariableLikeElement>target;
        let type = variableLikeElement.type;
        assert(type != Type.void);
        let classReference = type.getClassOrWrapper(this.program);
        if (!classReference) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Property_0_does_not_exist_on_type_1,
              node.property.range, propertyName, variableLikeElement.type.toString()
            );
          }
          return null;
        }
        target = classReference;
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: { // SomeClass.prop
        let propertyInstance = this.resolveProperty(<PropertyPrototype>target, reportMode);
        if (!propertyInstance) return null;
        target = propertyInstance;
        // fall-through
      }
      case ElementKind.PROPERTY: { // someInstance.prop
        let propertyInstance = <Property>target;
        let getterInstance = assert(propertyInstance.getterInstance); // must have a getter
        let type = getterInstance.signature.returnType;
        let classReference = type.getClassOrWrapper(this.program);
        if (!classReference) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Property_0_does_not_exist_on_type_1,
              node.property.range, propertyName, type.toString()
            );
          }
          return null;
        }
        target = classReference;
        break;
      }
      case ElementKind.INDEXSIGNATURE: { // someInstance[x].prop
        let indexSignature = <IndexSignature>target;
        let parent = indexSignature.parent;
        assert(parent.kind == ElementKind.CLASS);
        let classInstance = <Class>parent;
        let elementExpression = assert(this.currentElementExpression);
        let indexedGet = classInstance.lookupOverload(OperatorKind.INDEXED_GET);
        if (!indexedGet) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Index_signature_is_missing_in_type_0,
              elementExpression.range, parent.internalName
            );
          }
          return null;
        }
        let returnType = indexedGet.signature.returnType;
        let classReference = returnType.getClassOrWrapper(this.program);
        if (!classReference) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Property_0_does_not_exist_on_type_1,
              node.property.range, propertyName, returnType.toString()
            );
          }
          return null;
        }
        target = classReference;
        break;
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        // Function with shadow type, i.e. function Symbol() + type Symbol = _Symbol
        let shadowType = target.shadowType;
        if (shadowType) {
          if (!shadowType.is(CommonFlags.RESOLVED)) {
            let resolvedType = this.resolveType(shadowType.typeNode, shadowType.parent, null, reportMode);
            if (resolvedType) shadowType.setType(resolvedType);
          }
          let classReference = shadowType.type.classReference;
          if (classReference) target = classReference.prototype;
          break;
        } else if (!target.is(CommonFlags.GENERIC)) {
          // Inherit from 'Function' if not overridden, i.e. fn.call
          let members = target.members;
          if (!members || !members.has(propertyName)) {
            let functionInstance = this.resolveFunction(<FunctionPrototype>target, null, uniqueMap<string,Type>(), ReportMode.SWALLOW);
            if (functionInstance) {
              let wrapper = functionInstance.type.getClassOrWrapper(this.program);
              if (wrapper) target = wrapper;
            }
          }
        }
        break;
      }
    }

    // Look up the member within
    switch (target.kind) {
      case ElementKind.CLASS_PROTOTYPE:
      case ElementKind.INTERFACE_PROTOTYPE:
      case ElementKind.CLASS:
      case ElementKind.INTERFACE: {
        do {
          let members = target.members;
          if (members !== null && members.has(propertyName)) {
            let member = assert(members.get(propertyName));
            if (member.kind == ElementKind.PROPERTY_PROTOTYPE) {
              let propertyInstance = this.resolveProperty(<PropertyPrototype>member, reportMode);
              if (!propertyInstance) return null;
              member = propertyInstance;
              if (propertyInstance.is(CommonFlags.STATIC)) {
                this.currentThisExpression = null;
              } else {
                this.currentThisExpression = targetNode;
              }
            } else {
              this.currentThisExpression = targetNode;
            }
            this.currentElementExpression = null;
            return member; // instance FIELD, static GLOBAL, FUNCTION_PROTOTYPE, PROPERTY...
          }
          // traverse inherited static members on the base prototype if target is a class prototype
          if (
            target.kind == ElementKind.CLASS_PROTOTYPE ||
            target.kind == ElementKind.INTERFACE_PROTOTYPE
          ) {
            let classPrototype = <ClassPrototype>target;
            let basePrototype = classPrototype.basePrototype;
            if (basePrototype) {
              target = basePrototype;
            } else {
              break;
            }
          // traverse inherited instance members on the base class if target is a class instance
          } else if (
            target.kind == ElementKind.CLASS ||
            target.kind == ElementKind.INTERFACE
          ) {
            let classInstance = <Class>target;
            let baseInstance = classInstance.base;
            if (baseInstance) {
              target = baseInstance;
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
        if (members !== null && members.has(propertyName)) {
          this.currentThisExpression = targetNode;
          this.currentElementExpression = null;
          return assert(members.get(propertyName)); // static ENUMVALUE, static GLOBAL, static FUNCTION_PROTOTYPE...
        }
        break;
      }
    }

    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Property_0_does_not_exist_on_type_1,
        node.property.range, propertyName, target.internalName
      );
    }
    return null;
  }

  /** Resolves a property access expression to its static type. */
  private resolvePropertyAccessExpression(
    /** The expression to resolve. */
    node: PropertyAccessExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var element = this.lookupPropertyAccessExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    var type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expression_cannot_be_represented_by_a_type,
          node.range
        );
      }
    }
    return type;
  }

  /** Looks up the program element the specified element access expression refers to. */
  private lookupElementAccessExpression(
    /** The expression to look up. */
    node: ElementAccessExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var targetExpression = node.expression;
    var targetType = this.resolveExpression(targetExpression, ctxFlow, ctxType, reportMode);
    if (!targetType) return null;
    let classReference = targetType.getClassOrWrapper(this.program);
    if (classReference) {
      do {
        let indexSignature = classReference.indexSignature;
        if (indexSignature) {
          this.currentThisExpression = targetExpression;
          this.currentElementExpression = node.elementExpression;
          return indexSignature;
        }
        classReference = classReference.base;
      } while(classReference);
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Index_signature_is_missing_in_type_0,
        targetExpression.range, targetType.toString()
      );
    }
    return null;
  }

  /** Resolves an element access expression to its static type. */
  private resolveElementAccessExpression(
    /** The expression to resolve. */
    node: ElementAccessExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var element = this.lookupElementAccessExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    var type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expression_cannot_be_represented_by_a_type,
          node.range
        );
      }
    }
    return type;
  }

  /** Determines the final type of an integer literal given the specified contextual type. */
  determineIntegerLiteralType(
    /** Integer literal value. */
    intValue: i64,
    /** Contextual type. */
    ctxType: Type
  ): Type {
    if (ctxType.isValue) {
      // compile to contextual type if matching
      switch (ctxType.kind) {
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
      }
    }
    // otherwise compile to best fitting native type
    if (i64_is_i32(intValue)) return Type.i32;
    if (i64_is_u32(intValue)) return Type.u32;
    return Type.i64; // TODO: u64 if positive and larger than i64?
  }

  /** Looks up the program element the specified assertion expression refers to. */
  private lookupAssertionExpression(
    /** The expression to look up. */
    node: AssertionExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    switch (node.assertionKind) {
      case AssertionKind.AS:
      case AssertionKind.PREFIX: {
        let type = this.resolveType(
          assert(node.toType), // must be set if not NONNULL
          ctxFlow.actualFunction,
          ctxFlow.contextualTypeArguments,
          reportMode
        );
        if (!type) return null;
        let element = this.getElementOfType(type);
        if (element) return element;
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Type_0_is_illegal_in_this_context,
            node.range, type.toString()
          );
        }
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return null;
      }
      case AssertionKind.NONNULL: {
        return this.lookupExpression(node.expression, ctxFlow, ctxType, reportMode);
      }
      case AssertionKind.CONST: {
        // TODO: decide on the layout of ReadonlyArray first
        // let element = this.lookupExpression(node.expression, ctxFlow, ctxType, reportMode);
        // if (!element) return null;
        // if (element.kind == ElementKind.CLASS && (<Class>element).extends(this.program.arrayPrototype)) {
        //   let elementType = assert((<Class>element).getTypeArgumentsTo(this.program.arrayPrototype))[0];
        //   return this.resolveClass(this.program.readonlyArrayPrototype, [ elementType ]);
        // }
        this.error(
          DiagnosticCode.Not_implemented_0,
          node.range,
          "Const assertion"
        );
        return null;
      }
    }
    assert(false);
    return null;
  }

  /** Resolves an assertion expression to its static type. */
  private resolveAssertionExpression(
    /** The expression to resolve. */
    node: AssertionExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    switch (node.assertionKind) {
      case AssertionKind.AS:
      case AssertionKind.PREFIX: {
        return this.resolveType(
          assert(node.toType),
          ctxFlow.actualFunction,
          ctxFlow.contextualTypeArguments,
          reportMode
        );
      }
      case AssertionKind.NONNULL: {
        let type = this.resolveExpression(node.expression, ctxFlow, ctxType, reportMode);
        return type ? type.nonNullableType : null;
      }
      case AssertionKind.CONST: {
        let element = this.lookupExpression(node, ctxFlow, ctxType, reportMode);
        if (!element) return null;
        let type = this.getTypeOfElement(element);
        if (!type) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Expression_cannot_be_represented_by_a_type,
              node.range
            );
          }
        }
        return type;
      }
      default: assert(false);
    }
    return null;
  }

  /** Looks up the program element the specified unary prefix expression refers to. */
  private lookupUnaryPrefixExpression(
    /** The expression to look up. */
    node: UnaryPrefixExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var type = this.resolveUnaryPrefixExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    var element = this.getElementOfType(type);
    if (!element) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
          node.range, operatorTokenToString(node.operator), type.toString()
        );
      }
    }
    return element;
  }

  /** Resolves an unary prefix expression to its static type. */
  private resolveUnaryPrefixExpression(
    /** The expression to resolve. */
    node: UnaryPrefixExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var operand = node.operand;
    var operator = node.operator;
    switch (operator) {
      case Token.MINUS: {
        // implicitly negate if an integer literal to distinguish between i32/u32/i64
        if (operand.isLiteralKind(LiteralKind.INTEGER)) {
          return this.determineIntegerLiteralType(i64_sub(i64_zero, (<IntegerLiteralExpression>operand).value), ctxType);
        }
        // fall-through
      }
      case Token.PLUS:
      case Token.PLUS_PLUS:
      case Token.MINUS_MINUS: {
        let type = this.resolveExpression(operand, ctxFlow, ctxType, reportMode);
        if (!type) return null;
        let classReference = type.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromUnaryPrefixToken(operator));
          if (overload) return overload.signature.returnType;
        }
        if (!type.isNumericValue) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              node.range, operatorTokenToString(operator), type.toString()
            );
          }
          return null;
        }
        return type;
      }
      case Token.EXCLAMATION: {
        let type = this.resolveExpression(operand, ctxFlow, ctxType, reportMode);
        if (!type) return null;
        let classReference = type.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.NOT);
          if (overload) return overload.signature.returnType;
        }
        return Type.bool; // incl. references
      }
      case Token.TILDE: {
        let type = this.resolveExpression(operand, ctxFlow, ctxType, reportMode);
        if (!type) return null;
        let classReference = type.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BITWISE_NOT);
          if (overload) return overload.signature.returnType;
        }
        if (!type.isNumericValue) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              node.range, "~", type.toString()
            );
          }
          return null;
        }
        return type.intType;
      }
      default: assert(false);
    }
    return null;
  }

  /** Looks up the program element the specified unary postfix expression refers to. */
  private lookupUnaryPostfixExpression(
    /** The expression to resolve. */
    node: UnaryPostfixExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var type = this.resolveUnaryPostfixExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    var element = this.getElementOfType(type);
    if (!element) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
          node.range, operatorTokenToString(node.operator), type.toString()
        );
      }
    }
    return element;
  }

  /** Resolves an unary postfix expression to its static type. */
  private resolveUnaryPostfixExpression(
    /** The expression to resolve. */
    node: UnaryPostfixExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var operator = node.operator;
    switch (operator) {
      case Token.PLUS_PLUS:
      case Token.MINUS_MINUS: {
        let type = this.resolveExpression(node.operand, ctxFlow, ctxType, reportMode);
        if (!type) return null;
        let classReference = type.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromUnaryPostfixToken(operator));
          if (overload) return overload.signature.returnType;
        }
        if (!type.isNumericValue) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              node.range, operatorTokenToString(operator), type.toString()
            );
          }
          return null;
        }
        return type;
      }
    }
    assert(false);
    return null;
  }

  /** Looks up the program element the specified binary expression refers to. */
  private lookupBinaryExpression(
    /** The expression to look up. */
    node: BinaryExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var type = this.resolveBinaryExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    var element = this.getElementOfType(type);
    if (element) return element; // otherwise void
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Type_0_is_illegal_in_this_context,
        node.range, type.toString()
      );
    }
    return null;
  }

  /** Resolves a binary expression to its static type. */
  private resolveBinaryExpression(
    /** The expression to resolve. */
    node: BinaryExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var left = node.left;
    var right = node.right;
    var operator = node.operator;

    switch (operator) {

      // assignment: result is the target's type

      case Token.EQUALS:
      case Token.PLUS_EQUALS:
      case Token.MINUS_EQUALS:
      case Token.ASTERISK_EQUALS:
      case Token.ASTERISK_ASTERISK_EQUALS:
      case Token.SLASH_EQUALS:
      case Token.PERCENT_EQUALS:
      case Token.LESSTHAN_LESSTHAN_EQUALS:
      case Token.GREATERTHAN_GREATERTHAN_EQUALS:
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS:
      case Token.AMPERSAND_EQUALS:
      case Token.BAR_EQUALS:
      case Token.CARET_EQUALS: {
        return this.resolveExpression(left, ctxFlow, ctxType, reportMode);
      }

      // comparison: result is Bool, preferring overloads, integer/float only

      case Token.LESSTHAN:
      case Token.GREATERTHAN:
      case Token.LESSTHAN_EQUALS:
      case Token.GREATERTHAN_EQUALS: {
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromBinaryToken(operator));
          if (overload) return overload.signature.returnType;
        }
        if (!leftType.isNumericValue) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              node.range, operatorTokenToString(operator), leftType.toString()
            );
          }
          return null;
        }
        return Type.bool;
      }

      // equality: result is Bool, preferring overloads, incl. references

      case Token.EQUALS_EQUALS:
      case Token.EXCLAMATION_EQUALS: {
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromBinaryToken(operator));
          if (overload) return overload.signature.returnType;
        }
        return Type.bool;
      }

      // identity: result is Bool, not supporting overloads

      case Token.EQUALS_EQUALS_EQUALS:
      case Token.EXCLAMATION_EQUALS_EQUALS: {
        return Type.bool;
      }

      // arithmetics: result is common type of LHS and RHS, preferring overloads

      case Token.PLUS:
      case Token.MINUS:
      case Token.ASTERISK:
      case Token.SLASH:
      case Token.PERCENT: { // mod has special logic, but also behaves like this
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromBinaryToken(operator));
          if (overload) return overload.signature.returnType;
        }
        let rightType = this.resolveExpression(right, ctxFlow, leftType, reportMode);
        if (!rightType) return null;
        let commonType = Type.commonDenominator(leftType, rightType, false);
        if (!commonType) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              node.range, leftType.toString(), rightType.toString()
            );
          }
        }
        return commonType;
      }

      // pow: result is common type of LHS and RHS, preferring overloads

      case Token.ASTERISK_ASTERISK: {
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromBinaryToken(operator));
          if (overload) return overload.signature.returnType;
        }
        let rightType = this.resolveExpression(right, ctxFlow, leftType, reportMode);
        if (!rightType) return null;
        let commonType = Type.commonDenominator(leftType, rightType, false);
        if (!commonType) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              node.range, leftType.toString(), rightType.toString()
            );
          }
        }
        return commonType;
      }

      // shift: result is LHS (RHS is converted to LHS), preferring overloads

      case Token.LESSTHAN_LESSTHAN:
      case Token.GREATERTHAN_GREATERTHAN:
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN: {
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromBinaryToken(operator));
          if (overload) return overload.signature.returnType;
        }
        if (!leftType.isIntegerValue) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              node.range, operatorTokenToString(operator), leftType.toString()
            );
          }
          return null;
        }
        return leftType;
      }

      // bitwise: result is common type of LHS and RHS with floats not being supported, preferring overloads

      case Token.AMPERSAND:
      case Token.BAR:
      case Token.CARET: {
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromBinaryToken(operator));
          if (overload) return overload.signature.returnType;
        }
        let rightType = this.resolveExpression(right, ctxFlow, ctxType, reportMode);
        if (!rightType) return null;
        let commonType = Type.commonDenominator(leftType, rightType, false);
        if (!commonType || !commonType.isIntegerValue) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              node.range, operatorTokenToString(operator), leftType.toString(), rightType.toString()
            );
          }
        }
        return commonType;
      }

      // logical: result is LHS (RHS is converted to LHS), not supporting overloads

      case Token.AMPERSAND_AMPERSAND:
      case Token.BAR_BAR: {
        return this.resolveExpression(left, ctxFlow, ctxType, reportMode);
      }
    }
    assert(false);
    return null;
  }

  /** Looks up the program element the specified this expression refers to. */
  private lookupThisExpression(
    /** The expression to look up. */
    node: ThisExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    if (ctxFlow.isInline) {
      let thisLocal = ctxFlow.lookupLocal(CommonNames.this_);
      if (thisLocal) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return thisLocal;
      }
    }
    var parent = ctxFlow.actualFunction.parent;
    if (parent) {
      this.currentThisExpression = null;
      this.currentElementExpression = null;
      return parent;
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode._this_cannot_be_referenced_in_current_location,
        node.range
      );
    }
    return null;
  }

  /** Resolves a this expression to its static type. */
  private resolveThisExpression(
    /** The expression to resolve. */
    node: ThisExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var element = this.lookupThisExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    var type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expression_cannot_be_represented_by_a_type,
          node.range
        );
      }
    }
    return type;
  }

  /** Looks up the program element the specified super expression refers to. */
  private lookupSuperExpression(
    /** The expression to look up. */
    node: SuperExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    if (ctxFlow.isInline) {
      let superLocal = ctxFlow.lookupLocal(CommonNames.super_);
      if (superLocal) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return superLocal;
      }
    }
    var parent: Element | null = ctxFlow.actualFunction.parent;
    if (parent !== null && parent.kind == ElementKind.CLASS) {
      let base = (<Class>parent).base;
      if (base) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return base;
      }
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode._super_can_only_be_referenced_in_a_derived_class,
        node.range
      );
    }
    return null;
  }

  /** Resolves a super expression to its static type. */
  private resolveSuperExpression(
    /** The expression to resolve. */
    node: SuperExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var element = this.lookupSuperExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    var type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expression_cannot_be_represented_by_a_type,
          node.range
        );
      }
    }
    return type;
  }

  /** Looks up the program element the specified literal expression refers to. */
  private lookupLiteralExpression(
    /** The expression to look up. */
    node: LiteralExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    this.currentThisExpression = node;
    this.currentElementExpression = null;
    switch (node.literalKind) {
      case LiteralKind.INTEGER: {
        let intType = this.determineIntegerLiteralType(
          (<IntegerLiteralExpression>node).value,
          ctxType
        );
        return assert(intType.getClassOrWrapper(this.program));
      }
      case LiteralKind.FLOAT: {
        let fltType = ctxType == Type.f32 ? Type.f32 : Type.f64;
        return assert(fltType.getClassOrWrapper(this.program));
      }
      case LiteralKind.STRING: {
        return this.program.stringInstance;
      }
      case LiteralKind.ARRAY: {
        let classReference = ctxType.getClass();
        if (classReference !== null && classReference.prototype == this.program.arrayPrototype) {
          return this.getElementOfType(ctxType);
        }
        // otherwise infer, ignoring ctxType
        let expressions = (<ArrayLiteralExpression>node).elementExpressions;
        let length = expressions.length;
        let elementType = Type.auto;
        let numNullLiterals = 0;
        for (let i = 0, k = length; i < k; ++i) {
          let expression = expressions[i];
          if (expression) {
            if (expression.kind == NodeKind.NULL && length > 1) {
              ++numNullLiterals;
            } else {
              let currentType = this.resolveExpression(expression, ctxFlow, elementType);
              if (!currentType) return null;
              if (elementType == Type.auto) elementType = currentType;
              else if (currentType != elementType) {
                let commonType = Type.commonDenominator(elementType, currentType, false);
                if (commonType) elementType = commonType;
                // otherwise triggers error on compilation
              }
            }
          }
        }
        if (elementType /* still */ == Type.auto) {
          if (numNullLiterals == length) { // all nulls infers as usize
            elementType = this.program.options.usizeType;
          } else {
            this.error(
              DiagnosticCode.The_type_argument_for_type_parameter_0_cannot_be_inferred_from_the_usage_Consider_specifying_the_type_arguments_explicitly,
              node.range, "T"
            );
            return null;
          }
        }
        if (
          numNullLiterals > 0 &&
          elementType.isInternalReference
        ) {
          elementType = elementType.asNullable();
        }
        return assert(this.resolveClass(this.program.arrayPrototype, [ elementType ]));
      }
    }
    assert(false);
    return null;
  }

  /** Resolves a literal expression to its static type. */
  private resolveLiteralExpression(
    /** The expression to resolve. */
    node: LiteralExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var element = this.lookupLiteralExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    var type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expression_cannot_be_represented_by_a_type,
          node.range
        );
      }
    }
    return type;
  }

  /** Looks up the program element the specified call expression refers to. */
  private lookupCallExpression(
    /** The expression to look up. */
    node: CallExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.void,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var type = this.resolveCallExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    var element = this.getElementOfType(type);
    if (!element) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Type_0_is_illegal_in_this_context,
          node.range, type.toString()
        );
      }
    }
    return element;
  }

  /** Resolves a call expression to its static type. */
  private resolveCallExpression(
    /** The expression to resolve. */
    node: CallExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.void,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var targetExpression = node.expression;
    var target = this.lookupExpression( // reports
      targetExpression,
      ctxFlow,
      ctxType,
      reportMode
    );
    if (!target) return null;
    switch (target.kind) {
      case ElementKind.FUNCTION_PROTOTYPE: {
        let functionPrototype = <FunctionPrototype>target;
        // `unchecked` behaves like parenthesized
        if (
          functionPrototype.internalName == BuiltinNames.unchecked &&
          node.args.length > 0
        ) {
          return this.resolveExpression(node.args[0], ctxFlow, ctxType, reportMode);
        }
        let instance = this.maybeInferCall(node, functionPrototype, ctxFlow, reportMode);
        if (!instance) return null;
        return instance.signature.returnType;
      }
      case ElementKind.GLOBAL:
      case ElementKind.LOCAL:
      case ElementKind.FIELD: {
        let varType = (<VariableLikeElement>target).type;
        let varElement = this.getElementOfType(varType);
        if (!varElement || varElement.kind != ElementKind.CLASS) {
          break;
        }
        target = varElement;
        // fall-through
      }
      case ElementKind.CLASS: {
        let typeArguments = (<Class>target).getTypeArgumentsTo(this.program.functionPrototype);
        if (typeArguments !== null && typeArguments.length > 0) {
          let ftype = typeArguments[0];
          let signatureReference = assert(ftype.signatureReference);
          return signatureReference.returnType;
        }
        break;
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

  /** Looks up the program element the specified comma expression refers to. */
  private lookupCommaExpression(
    /** The expression to look up. */
    node: CommaExpression,
    /** Flow to search for scoped locals. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var expressions = node.expressions;
    return this.lookupExpression(expressions[assert(expressions.length) - 1], ctxFlow, ctxType, reportMode);
  }

  /** Resolves a comma expression to its static type. */
  private resolveCommaExpression(
    /** The expression to resolve. */
    node: CommaExpression,
    /** Flow to search for scoped locals. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var expressions = node.expressions;
    return this.resolveExpression(expressions[assert(expressions.length) - 1], ctxFlow, ctxType, reportMode);
  }

  /** Looks up the program element the specified instanceof expression refers to. */
  private lookupInstanceOfExpression(
    /** The expression to look up. */
    node: InstanceOfExpression,
    /** Flow to search for scoped locals. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    return assert(Type.bool.getClassOrWrapper(this.program));
  }

  /** Resolves an instanceof expression to its static type. */
  private resolveInstanceOfExpression(
    /** The expression to resolve. */
    node: InstanceOfExpression,
    /** Flow to search for scoped locals. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    return Type.bool;
  }

  /** Looks up the program element the specified ternary expression refers to. */
  private lookupTernaryExpression(
    /** The expression to look up. */
    node: TernaryExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var type = this.resolveTernaryExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    var element = this.getElementOfType(type);
    if (!element) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Type_0_is_illegal_in_this_context,
          node.range, type.toString()
        );
      }
    }
    return element;
  }

  /** Resolves a ternary expression to its static type. */
  private resolveTernaryExpression(
    /** The expression to resolve. */
    node: TernaryExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var thenType = this.resolveExpression(node.ifThen, ctxFlow, ctxType, reportMode);
    if (!thenType) return null;
    var elseType = this.resolveExpression(node.ifElse, ctxFlow, thenType, reportMode);
    if (!elseType) return null;
    var commonType = Type.commonDenominator(thenType, elseType, false);
    if (!commonType) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
          node.range, "?:", thenType.toString(), elseType.toString()
        );
      }
    }
    return commonType;
  }

  /** Looks up the program element the specified new expression refers to. */
  private lookupNewExpression(
    /** The expression to look up. */
    node: NewExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var element = this.resolveTypeName(node.typeName, ctxFlow.actualFunction, reportMode);
    if (!element) return null;
    if (element.kind == ElementKind.CLASS_PROTOTYPE) {
      return this.resolveClassInclTypeArguments(
        <ClassPrototype>element,
        node.typeArguments,
        ctxFlow.actualFunction,
        uniqueMap<string,Type>(ctxFlow.contextualTypeArguments),
        node,
        reportMode
      );
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.This_expression_is_not_constructable,
        node.range
      );
    }
    return null;
  }

  /** Resolves a new expression to its static type. */
  private resolveNewExpression(
    /** The expression to resolve. */
    node: NewExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var element = this.lookupNewExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    var type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expression_cannot_be_represented_by_a_type,
          node.range
        );
      }
    }
    return type;
  }

  /** Looks up the program element the specified function expression refers to. */
  private lookupFunctionExpression(
    /** The expression to look up. */
    node: FunctionExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var type = this.resolveFunctionExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    var element = this.getElementOfType(type);
    if (!element) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Type_0_is_illegal_in_this_context,
          node.range, type.toString()
        );
      }
    }
    return element;
  }

  /** Resolves a function expression to its static type. */
  private resolveFunctionExpression(
    /** The expression to resolve. */
    node: FunctionExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    return this.resolveFunctionType(node.declaration.signature, ctxFlow.actualFunction, ctxFlow.contextualTypeArguments, reportMode);
  }

  // ==================================================== Elements =====================================================

  /** Resolves a function prototype using the specified concrete type arguments. */
  resolveFunction(
    /** The prototype of the function. */
    prototype: FunctionPrototype,
    /** Type arguments provided. */
    typeArguments: Type[] | null,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> = uniqueMap<string,Type>(),
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Function | null {
    var actualParent = prototype.parent.kind == ElementKind.PROPERTY_PROTOTYPE
      ? prototype.parent.parent
      : prototype.parent;
    var classInstance: Class | null = null; // if an instance method
    var instanceKey = typeArguments ? typesToString(typeArguments) : "";

    // Instance method prototypes are pre-bound to their concrete class as their parent
    if (prototype.is(CommonFlags.INSTANCE)) {
      assert(actualParent.kind == ElementKind.CLASS || actualParent.kind == ElementKind.INTERFACE);
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
          if (!ctxTypes.has(classTypeParameterName)) {
            ctxTypes.set(
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
    var signatureNode = prototype.functionTypeNode;
    var typeParameterNodes = prototype.typeParameterNodes;
    var numFunctionTypeArguments: i32;
    if (typeArguments !== null && (numFunctionTypeArguments = typeArguments.length) > 0) {
      assert(typeParameterNodes !== null && numFunctionTypeArguments == typeParameterNodes.length);
      for (let i = 0; i < numFunctionTypeArguments; ++i) {
        ctxTypes.set(
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
        ctxTypes,
        reportMode
      );
      if (!thisType) return null;
      ctxTypes.set(CommonNames.this_, thisType);
    } else if (classInstance) {
      thisType = classInstance.type;
      ctxTypes.set(CommonNames.this_, thisType);
    }

    // resolve parameter types
    var signatureParameters = signatureNode.parameters;
    var numSignatureParameters = signatureParameters.length;
    var parameterTypes = new Array<Type>(numSignatureParameters);
    var requiredParameters = 0;
    for (let i = 0; i < numSignatureParameters; ++i) {
      let parameterDeclaration = signatureParameters[i];
      if (parameterDeclaration.parameterKind == ParameterKind.DEFAULT) {
        requiredParameters = i + 1;
      }
      let typeNode = parameterDeclaration.type;
      if (isTypeOmitted(typeNode)) {
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Type_expected,
            typeNode.range
          );
        }
        return null;
      }
      let parameterType = this.resolveType(
        typeNode,
        prototype.parent, // relative to function
        ctxTypes,
        reportMode
      );
      if (!parameterType) return null;
      if (parameterType == Type.void) {
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Type_expected,
            typeNode.range
          );
        }
        return null;
      }
      parameterTypes[i] = parameterType;
    }

    // resolve return type
    var returnType: Type;
    if (prototype.is(CommonFlags.SET)) {
      returnType = Type.void; // not annotated
    } else if (prototype.is(CommonFlags.CONSTRUCTOR)) {
      returnType = classInstance!.type; // not annotated
    } else {
      let typeNode = signatureNode.returnType;
      if (isTypeOmitted(typeNode)) {
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Type_expected,
            typeNode.range
          );
        }
        return null;
      }
      let type = this.resolveType(
        typeNode,
        prototype.parent, // relative to function
        ctxTypes,
        reportMode
      );
      if (!type) return null;
      returnType = type;
    }

    var signature = new Signature(this.program, parameterTypes, returnType, thisType);
    signature.requiredParameters = requiredParameters;

    var nameInclTypeParameters = prototype.name;
    if (instanceKey.length) nameInclTypeParameters += "<" + instanceKey + ">";
    var instance = new Function(
      nameInclTypeParameters,
      prototype,
      typeArguments,
      signature,
      ctxTypes
    );
    prototype.setResolvedInstance(instanceKey, instance);
    return instance;
  }

  /** Resolves a function prototypeby first resolving the specified type arguments. */
  resolveFunctionInclTypeArguments(
    /** The prototype of the function. */
    prototype: FunctionPrototype,
    /** Type arguments provided to be resolved. */
    typeArgumentNodes: TypeNode[] | null,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type>,
    /** The node to use when reporting intermediate errors. */
    reportNode: Node,
    /** How to proceed with eventual diagnostics. */
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
        let classInstance = <Class>actualParent;
        let classTypeArguments = classInstance.typeArguments;
        if (classTypeArguments) {
          let typeParameterNodes = assert(classInstance.prototype.typeParameterNodes);
          let numClassTypeArguments = classTypeArguments.length;
          assert(numClassTypeArguments == typeParameterNodes.length);
          for (let i = 0; i < numClassTypeArguments; ++i) {
            ctxTypes.set(
              typeParameterNodes[i].name.text,
              classTypeArguments[i]
            );
          }
        }
      }

      resolvedTypeArguments = this.resolveTypeArguments( // reports
        assert(prototype.typeParameterNodes),
        typeArgumentNodes,
        ctxElement,
        ctxTypes,
        reportNode,
        reportMode
      );
      if (!resolvedTypeArguments) return null;

    // Otherwise make sure that no type arguments have been specified
    } else {
      if (typeArgumentNodes !== null && typeArgumentNodes.length > 0) {
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
      ctxTypes,
      reportMode
    );
  }

  /** Currently resolving classes. */
  private resolveClassPending: Set<Class> = new Set();

  /** Resolves a class prototype using the specified concrete type arguments. */
  resolveClass(
    /** The prototype of the class. */
    prototype: ClassPrototype,
    /** Type arguments provided. */
    typeArguments: Type[] | null,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> = uniqueMap<string,Type>(),
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Class | null {
    var instanceKey = typeArguments ? typesToString(typeArguments) : "";

    // Do not attempt to resolve the same class twice. This can return a class
    // that isn't fully resolved yet, but only on deeper levels of recursion.
    var instance = prototype.getResolvedInstance(instanceKey);
    if (instance) return instance;

    // Otherwise create
    var nameInclTypeParamters = prototype.name;
    if (instanceKey.length) nameInclTypeParamters += "<" + instanceKey + ">";
    if (prototype.kind == ElementKind.INTERFACE_PROTOTYPE) {
      instance = new Interface(nameInclTypeParamters, <InterfacePrototype>prototype, typeArguments);
    } else {
      instance = new Class(nameInclTypeParamters, prototype, typeArguments);
    }
    prototype.setResolvedInstance(instanceKey, instance);
    var pendingClasses = this.resolveClassPending;
    pendingClasses.add(instance);

    // Insert contextual type arguments for this operation. Internally, this method is always
    // called with matching type parameter / argument counts.
    if (typeArguments) {
      let typeParameterNodes = assert(prototype.typeParameterNodes);
      let numTypeParameters = typeParameterNodes.length;
      let numTypeArguments = typeArguments.length;
      assert(numTypeArguments == numTypeParameters);
      for (let i = 0; i < numTypeArguments; ++i) {
        ctxTypes.set(typeParameterNodes[i].name.text, typeArguments[i]);
      }
    } else {
      let typeParameterNodes = prototype.typeParameterNodes;
      assert(!(typeParameterNodes !== null && typeParameterNodes.length > 0));
    }
    instance.contextualTypeArguments = ctxTypes;

    var anyPending = false;

    // Resolve base class if applicable
    var basePrototype = prototype.basePrototype;
    if (basePrototype) {
      let current: ClassPrototype | null = basePrototype;
      do {
        if (current == prototype) {
          this.error(
            DiagnosticCode._0_is_referenced_directly_or_indirectly_in_its_own_base_expression,
            prototype.identifierNode.range,
            prototype.internalName
          );
          return null;
        }
        current = current.basePrototype;
      } while (current);
      let extendsNode = assert(prototype.extendsNode); // must be present if it has a base prototype
      let base = this.resolveClassInclTypeArguments(
        basePrototype,
        extendsNode.typeArguments,
        prototype.parent, // relative to derived class
        uniqueMap(ctxTypes), // don't inherit
        extendsNode,
        reportMode
      );
      if (!base) return null;
      instance.setBase(base);

      // If the base class is still pending, yield here and instead resolve any
      // derived classes once the base class's `finishResolveClass` is done.
      // This is guaranteed to never happen at the entry of the recursion, i.e.
      // where `resolveClass` is called from other code.
      if (pendingClasses.has(base)) anyPending = true;
    }

    // Resolve interfaces if applicable
    var interfacePrototypes = prototype.interfacePrototypes;
    if (interfacePrototypes) {
      for (let i = 0, k = interfacePrototypes.length; i < k; ++i) {
        let interfacePrototype = interfacePrototypes[i];
        let current: ClassPrototype | null = interfacePrototype;
        do {
          if (current == prototype) {
            this.error(
              DiagnosticCode._0_is_referenced_directly_or_indirectly_in_its_own_base_expression,
              prototype.identifierNode.range,
              prototype.internalName
            );
            return null;
          }
          current = current.basePrototype;
        } while (current);
        let implementsNode = assert(prototype.implementsNodes![i]);
        let iface = this.resolveClassInclTypeArguments(
          interfacePrototype,
          implementsNode.typeArguments,
          prototype.parent,
          uniqueMap(ctxTypes),
          implementsNode,
          reportMode
        );
        if (!iface) return null;
        assert(iface.kind == ElementKind.INTERFACE);
        instance.addInterface(<Interface>iface);

        // Like above, if any implemented interface is still pending, yield
        if (pendingClasses.has(iface)) anyPending = true;
      }
    }
    if (anyPending) return instance;

    // We only get here if the base class has been fully resolved already.
    this.finishResolveClass(instance, reportMode);
    return instance;
  }

  /** Finishes resolving the specified class. */
  private finishResolveClass(
    /** Class to finish resolving. */
    instance: Class,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode
  ): void {
    var members = instance.members;
    if (!members) instance.members = members = new Map();

    var pendingClasses = this.resolveClassPending;
    var unimplemented = new Map<string,DeclaredElement>();

    // Alias interface members
    var interfaces = instance.interfaces;
    if (interfaces) {
      for (let _values = Set_values(interfaces), i = 0, k = _values.length; i < k; ++i) {
        let iface = _values[i];
        assert(!pendingClasses.has(iface));
        let ifaceMembers = iface.members;
        if (ifaceMembers) {
          for (let _keys = Map_keys(ifaceMembers), i = 0, k = _keys.length; i < k; ++i) {
            let memberName = unchecked(_keys[i]);
            let member = assert(ifaceMembers.get(memberName));
            if (members.has(memberName)) {
              let existing = assert(members.get(memberName));
              if (!member.isCompatibleOverride(existing)) {
                this.errorRelated(
                  DiagnosticCode.This_overload_signature_is_not_compatible_with_its_implementation_signature,
                  member.identifierAndSignatureRange, existing.identifierAndSignatureRange
                );
                continue;
              }
            }
            members.set(memberName, member);
            unimplemented.set(memberName, member);
          }
        }
      }
    }

    // Alias base members
    var memoryOffset: u32 = 0;
    var base = instance.base;
    if (base) {
      assert(!pendingClasses.has(base));
      let baseMembers = base.members;
      if (baseMembers) {
        // TODO: for (let [baseMemberName, baseMember] of baseMembers) {
        for (let _keys = Map_keys(baseMembers), i = 0, k = _keys.length; i < k; ++i) {
          let memberName = unchecked(_keys[i]);
          let member = assert(baseMembers.get(memberName));
          if (members.has(memberName)) {
            let existing = assert(members.get(memberName));
            if (!member.isCompatibleOverride(existing)) {
              this.errorRelated(
                DiagnosticCode.This_overload_signature_is_not_compatible_with_its_implementation_signature,
                member.identifierAndSignatureRange, existing.identifierAndSignatureRange
              );
              continue;
            }
          }
          members.set(memberName, member);
          if (member.is(CommonFlags.ABSTRACT)) {
            unimplemented.set(memberName, member);
          } else {
            unimplemented.delete(memberName);
          }
        }
      }
      memoryOffset = base.nextMemoryOffset;
    }

    // Resolve instance members
    var prototype = instance.prototype;
    var instanceMemberPrototypes = prototype.instanceMembers;
    var properties = new Array<Property>();
    if (instanceMemberPrototypes) {
      // TODO: for (let member of instanceMemberPrototypes.values()) {
      for (let _values = Map_values(instanceMemberPrototypes), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
        let memberName = member.name;
        switch (member.kind) {

          case ElementKind.FIELD_PROTOTYPE: {
            let fieldPrototype = <FieldPrototype>member;
            let fieldTypeNode = fieldPrototype.typeNode;
            let fieldType: Type | null = null;
            // TODO: handle duplicate non-private fields specifically?
            if (!fieldTypeNode) {
              if (base) {
                let baseMembers = base.members;
                if (baseMembers !== null && baseMembers.has(fieldPrototype.name)) {
                  let baseField = assert(baseMembers.get(fieldPrototype.name));
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
                    fieldPrototype.identifierNode.range.atEnd
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
              if (fieldType == Type.void) {
                if (reportMode == ReportMode.REPORT) {
                  this.error(
                    DiagnosticCode.Type_expected,
                    fieldTypeNode.range
                  );
                }
                break;
              }
            }
            if (!fieldType) break; // did report above
            let fieldInstance = new Field(fieldPrototype, instance, fieldType);
            assert(isPowerOf2(fieldType.byteSize));
            let mask = fieldType.byteSize - 1;
            if (memoryOffset & mask) memoryOffset = (memoryOffset | mask) + 1;
            fieldInstance.memoryOffset = memoryOffset;
            memoryOffset += fieldType.byteSize;
            instance.add(memberName, fieldInstance); // reports
            break;
          }
          case ElementKind.FUNCTION_PROTOTYPE: {
            let boundPrototype = (<FunctionPrototype>member).toBound(instance);
            instance.add(boundPrototype.name, boundPrototype); // reports
            break;
          }
          case ElementKind.PROPERTY_PROTOTYPE: {
            let boundPrototype = (<PropertyPrototype>member).toBound(instance);
            instance.add(boundPrototype.name, boundPrototype); // reports
            break;
          }
          default: assert(false);
        }
        if (!member.is(CommonFlags.ABSTRACT)) {
          unimplemented.delete(memberName);
        }
      }
    }

    // Check that property getters and setters match
    for (let i = 0, k = properties.length; i < k; ++i) {
      let property = properties[i];
      let propertyGetter = property.getterInstance;
      if (!propertyGetter) {
        this.error(
          DiagnosticCode.Property_0_only_has_a_setter_and_is_missing_a_getter,
          property.identifierNode.range, property.name
        );
      } else {
        let propertySetter = property.setterInstance;
        if (propertySetter !== null && !propertyGetter.visibilityEquals(propertySetter)) {
          this.errorRelated(
            DiagnosticCode.Getter_and_setter_accessors_do_not_agree_in_visibility,
            propertyGetter.identifierNode.range, propertySetter.identifierNode.range
          );
        }
      }
    }

    if (instance.kind != ElementKind.INTERFACE) {

      // Check that all required members are implemented
      if (!instance.is(CommonFlags.ABSTRACT) && unimplemented.size > 0) {
        for (let _keys = Map_keys(unimplemented), i = 0, k = _keys.length; i < k; ++i) {
          let memberName = _keys[i];
          let member = assert(unimplemented.get(memberName));
          this.errorRelated(
            DiagnosticCode.Non_abstract_class_0_does_not_implement_inherited_abstract_member_1_from_2,
            instance.identifierNode.range, member.identifierNode.range,
            instance.internalName, memberName, member.parent.internalName
          );
        }
      }

      // Finalize memory offset
      instance.nextMemoryOffset = memoryOffset;

      // Link _own_ constructor if present
      {
        let ctorPrototype = instance.lookupInSelf(CommonNames.constructor);
        if (ctorPrototype !== null && ctorPrototype.parent === instance) {
          assert(ctorPrototype.kind == ElementKind.FUNCTION_PROTOTYPE);
          let ctorInstance = this.resolveFunction(
            <FunctionPrototype>ctorPrototype,
            null,
            assert(instance.contextualTypeArguments),
            reportMode
          );
          if (ctorInstance) instance.constructorInstance = <Function>ctorInstance;
        }
      }
    }

    // Fully resolve operator overloads (don't have type parameters on their own)
    var overloadPrototypes = prototype.overloadPrototypes;
    // TODO: for (let [overloadKind, overloadPrototype] of overloadPrototypes) {
    for (let _keys = Map_keys(overloadPrototypes), i = 0, k = _keys.length; i < k; ++i) {
      let overloadKind = unchecked(_keys[i]);
      let overloadPrototype = assert(overloadPrototypes.get(overloadKind));
      assert(overloadKind != OperatorKind.INVALID);
      let operatorInstance: Function | null;
      if (overloadPrototype.is(CommonFlags.INSTANCE)) {
        let boundPrototype = overloadPrototype.toBound(instance);
        operatorInstance = this.resolveFunction(
          boundPrototype,
          null,
          uniqueMap<string,Type>(),
          reportMode
        );
      } else {
        operatorInstance = this.resolveFunction(
          overloadPrototype,
          null,
          uniqueMap<string,Type>(),
          reportMode
        );
      }
      if (!operatorInstance) continue;
      let overloads = instance.overloads;
      if (!overloads) instance.overloads = overloads = new Map();
      // inc/dec are special in that an instance overload attempts to re-assign
      // the corresponding value, thus requiring a matching return type, while a
      // static overload works like any other overload.
      if (operatorInstance.is(CommonFlags.INSTANCE)) {
        switch (overloadKind) {
          case OperatorKind.PREFIX_INC:
          case OperatorKind.PREFIX_DEC:
          case OperatorKind.POSTFIX_INC:
          case OperatorKind.POSTFIX_DEC: {
            let returnType = operatorInstance.signature.returnType;
            if (!returnType.isAssignableTo(instance.type)) {
              if (reportMode == ReportMode.REPORT) {
                this.error(
                  DiagnosticCode.Type_0_is_not_assignable_to_type_1,
                  overloadPrototype.functionTypeNode.returnType.range, returnType.toString(), instance.type.toString()
                );
              }
            }
          }
        }
      }
      if (!overloads.has(overloadKind)) {
        overloads.set(overloadKind, operatorInstance);
        if (overloadKind == OperatorKind.INDEXED_GET || overloadKind == OperatorKind.INDEXED_SET) {
          let index = instance.indexSignature;
          if (!index) instance.indexSignature = index = new IndexSignature(instance);
          if (overloadKind == OperatorKind.INDEXED_GET) {
            index.setType(operatorInstance.signature.returnType);
          }
        }
      } else {
        if (reportMode == ReportMode.REPORT) {
          this.error(
            DiagnosticCode.Duplicate_decorator,
            operatorInstance.declaration.range
          );
        }
      }
    }

    // Remove this class from pending
    assert(pendingClasses.has(instance)); // must be pending
    pendingClasses.delete(instance);

    // Finish derived classes that we postponed in `resolveClass` due to the
    // base class still being pending, again triggering `finishResolveClass`
    // of any classes derived from those classes, ultimately leading to all
    // pending classes being resolved.
    for (let _values = Set_values(pendingClasses), i = 0, k = _values.length; i < k; ++i) {
      let pending = _values[i];
      let dependsOnInstance = pending.base === instance;
      let interfaces = pending.interfaces;
      if (interfaces) {
        let anyPending = false;
        for (let _values2 = Set_values(interfaces), j = 0, l = _values2.length; j < l; ++j) {
          let iface = _values2[j];
          if (iface === instance) dependsOnInstance = true;
          else if (pendingClasses.has(iface)) anyPending = true;
        }
        if (anyPending) continue;
      }
      if (dependsOnInstance) this.finishResolveClass(pending, reportMode);
    }
  }

  /** Resolves a class prototype by first resolving the specified type arguments. */
  resolveClassInclTypeArguments(
    /** The prototype of the class. */
    prototype: ClassPrototype,
    /** Type arguments provided to be resolved. */
    typeArgumentNodes: TypeNode[] | null,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type>,
    /** The node to use when reporting intermediate errors. */
    reportNode: Node,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Class | null {
    var resolvedTypeArguments: Type[] | null = null;

    // Resolve type arguments if generic
    if (prototype.is(CommonFlags.GENERIC)) {
      resolvedTypeArguments = this.resolveTypeArguments( // reports
        assert(prototype.typeParameterNodes), // must be present if generic
        typeArgumentNodes,
        ctxElement,
        ctxTypes,
        reportNode,
        reportMode
      );
      if (!resolvedTypeArguments) return null;

    // Otherwise make sure that no type arguments have been specified
    } else {
      if (typeArgumentNodes !== null && typeArgumentNodes.length > 0) {
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
      ctxTypes,
      reportMode
    );
  }

  /** Resolves a property prototype. */
  resolveProperty(
    /** The prototype of the property. */
    prototype: PropertyPrototype,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Property | null {
    var instance = prototype.instance;
    if (instance) return instance;
    prototype.instance = instance = new Property(prototype, prototype);
    var getterPrototype = prototype.getterPrototype;
    if (getterPrototype) {
      let getterInstance = this.resolveFunction(
        getterPrototype,
        null,
        uniqueMap<string,Type>(),
        reportMode
      );
      if (getterInstance) {
        instance.getterInstance = getterInstance;
        instance.setType(getterInstance.signature.returnType);
      }
    }
    var setterPrototype = prototype.setterPrototype;
    if (setterPrototype) {
      let setterInstance = this.resolveFunction(
        setterPrototype,
        null,
        uniqueMap<string,Type>(),
        reportMode
      );
      if (setterInstance) {
        instance.setterInstance = setterInstance;
        if (!instance.is(CommonFlags.RESOLVED)) {
          assert(setterInstance.signature.parameterTypes.length == 1);
          instance.setType(setterInstance.signature.parameterTypes[0]);
        }
      }
    }
    return instance;
  }
}
