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
  Range,
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
  ArrayLiteralExpression,
  ArrowKind,
  ExpressionStatement
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
  CommonNames
} from "./common";

import {
  cloneMap,
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
export const enum ReportMode {
  /** Report errors. */
  Report,
  /** Swallow errors. */
  Swallow
}

/** Provides tools to resolve types and expressions. */
export class Resolver extends DiagnosticEmitter {

  /** The program this resolver belongs to. */
  program: Program;

  /** Target expression of the previously resolved property or element access. */
  currentThisExpression: Expression | null = null;
  /** Element expression of the previously resolved element access. */
  currentElementExpression : Expression | null = null;
  /** Whether a new override has been discovered. */
  discoveredOverride: bool = false;

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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    if (node.currentlyResolving) {
      this.error(
        DiagnosticCode.Not_implemented_0,
        node.range, "Recursive types"
      );
      return null;
    }
    node.currentlyResolving = true;
    let resolved: Type | null = null;
    switch (node.kind) {
      case NodeKind.NamedType: {
        resolved = this.resolveNamedType(
          <NamedTypeNode>node,
          ctxElement,
          ctxTypes,
          reportMode
        );
        break;
      }
      case NodeKind.FunctionType: {
        resolved = this.resolveFunctionType(
          <FunctionTypeNode>node,
          ctxElement,
          ctxTypes,
          reportMode
        );
        break;
      }
      default: assert(false);
    }
    node.currentlyResolving = false;
    return resolved;
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let nameNode = node.name;
    let typeArgumentNodes = node.typeArguments;
    let isSimpleType = !nameNode.next;

    // Look up in contextual types if a simple type
    if (isSimpleType) {
      let simpleName = nameNode.identifier.text;
      if (ctxTypes && ctxTypes.has(simpleName)) {
        let type = assert(ctxTypes.get(simpleName));
        if (typeArgumentNodes && typeArgumentNodes.length > 0) {
          if (reportMode == ReportMode.Report) {
            this.error(
              DiagnosticCode.Type_0_is_not_generic,
              node.range, type.toString()
            );
          }
        }
        if (node.isNullable) {
          if (type.isReference) return type.asNullable();
          if (reportMode == ReportMode.Report) {
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
    let element = this.resolveTypeName(nameNode, ctxElement, reportMode);
    if (!element) return null;

    // Use shadow type if present (i.e. namespace sharing a type)
    let shadowType = element.shadowType;
    if (shadowType) {
      element = shadowType;

    } else {

      // Handle enums (become i32)
      if (element.kind == ElementKind.Enum) {
        if (typeArgumentNodes && typeArgumentNodes.length > 0) {
          if (reportMode == ReportMode.Report) {
            this.error(
              DiagnosticCode.Type_0_is_not_generic,
              node.range, element.internalName
            );
          }
        }
        if (node.isNullable) {
          if (reportMode == ReportMode.Report) {
            this.error(
              DiagnosticCode.Type_0_cannot_be_nullable,
              node.range, `${element.name}/i32`
            );
          }
        }
        return Type.i32;
      }

      // Handle classes and interfaces
      if (
        element.kind == ElementKind.ClassPrototype ||
        element.kind == ElementKind.InterfacePrototype
      ) {
        let instance = this.resolveClassInclTypeArguments(
          <ClassPrototype>element,
          typeArgumentNodes,
          ctxElement,
          cloneMap(ctxTypes), // don't inherit
          node,
          reportMode
        );
        if (!instance) return null;
        return node.isNullable ? instance.type.asNullable() : instance.type;
      }
    }

    // Handle type definitions
    if (element.kind == ElementKind.TypeDefinition) {
      let typeDefinition = <TypeDefinition>element;

      // Shortcut already resolved (mostly builtins)
      if (element.is(CommonFlags.Resolved)) {
        if (typeArgumentNodes && typeArgumentNodes.length > 0) {
          if (reportMode == ReportMode.Report) {
            this.error(
              DiagnosticCode.Type_0_is_not_generic,
              node.range, element.internalName
            );
          }
        }
        let type = typeDefinition.type;
        if (node.isNullable) {
          if (type.isReference) return type.asNullable();
          if (reportMode == ReportMode.Report) {
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
        if (text == CommonNames.native)   return this.resolveBuiltinNativeType(node, ctxElement, ctxTypes, reportMode);
        if (text == CommonNames.indexof)  return this.resolveBuiltinIndexofType(node, ctxElement, ctxTypes, reportMode);
        if (text == CommonNames.valueof)  return this.resolveBuiltinValueofType(node, ctxElement, ctxTypes, reportMode);
        if (text == CommonNames.returnof) return this.resolveBuiltinReturnTypeType(node, ctxElement, ctxTypes, reportMode);
        if (text == CommonNames.nonnull)  return this.resolveBuiltinNotNullableType(node, ctxElement, ctxTypes, reportMode);
      }

      // Resolve normally
      let typeParameterNodes = typeDefinition.typeParameterNodes;
      let typeArguments: Type[] | null = null;
      if (typeParameterNodes) {
        typeArguments = this.resolveTypeArguments(
          typeParameterNodes,
          typeArgumentNodes,
          ctxElement,
          ctxTypes = cloneMap(ctxTypes), // update
          node,
          reportMode
        );
        if (!typeArguments) return null;
      } else if (typeArgumentNodes && typeArgumentNodes.length > 0) {
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
        if (type.isReference) return type.asNullable();
        if (reportMode == ReportMode.Report) {
          this.error(
            DiagnosticCode.Type_0_cannot_be_nullable,
            nameNode.range, nameNode.identifier.text
          );
        }
      }
      return type;
    }
    if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let explicitThisType = node.explicitThisType;
    let thisType: Type | null = null;
    if (explicitThisType) {
      thisType = this.resolveType(
        explicitThisType,
        ctxElement,
        ctxTypes,
        reportMode
      );
      if (!thisType) return null;
    }
    let parameterNodes = node.parameters;
    let numParameters = parameterNodes.length;
    let parameterTypes = new Array<Type>(numParameters);
    let requiredParameters = 0;
    let hasRest = false;
    for (let i = 0; i < numParameters; ++i) {
      let parameterNode = parameterNodes[i];
      switch (parameterNode.parameterKind) {
        case ParameterKind.Default: {
          requiredParameters = i + 1;
          break;
        }
        case ParameterKind.Rest: {
          assert(i == numParameters);
          hasRest = true;
          break;
        }
      }
      let parameterTypeNode = parameterNode.type;
      if (isTypeOmitted(parameterTypeNode)) {
        if (reportMode == ReportMode.Report) {
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
    let returnTypeNode = node.returnType;
    let returnType: Type | null;
    if (isTypeOmitted(returnTypeNode)) {
      if (reportMode == ReportMode.Report) {
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
    let signature = Signature.create(this.program, parameterTypes, returnType, thisType, requiredParameters, hasRest);
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    const typeArgumentNode = this.ensureOneTypeArgument(node, reportMode);
    if (!typeArgumentNode) return null;
    let typeArgument = this.resolveType(typeArgumentNode, ctxElement, ctxTypes, reportMode);
    if (!typeArgument) return null;
    switch (typeArgument.kind) {
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:  return Type.i32;
      case TypeKind.Isize: if (!this.program.options.isWasm64) return Type.i32;
      case TypeKind.I64:  return Type.i64;
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32:
      case TypeKind.Bool: return Type.u32;
      case TypeKind.Usize: if (!this.program.options.isWasm64) return Type.u32;
      case TypeKind.U64:  return Type.u64;
      case TypeKind.F32:  return Type.f32;
      case TypeKind.F64:  return Type.f64;
      case TypeKind.V128: return Type.v128;
      case TypeKind.Void: return Type.void;
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    const typeArgumentNode = this.ensureOneTypeArgument(node, reportMode);
    if (!typeArgumentNode) return null;
    let typeArgument = this.resolveType(typeArgumentNode, ctxElement, ctxTypes, reportMode);
    if (!typeArgument) return null;
    let classReference = typeArgument.classReference;
    if (!classReference) {
      if (reportMode == ReportMode.Report) {
        this.error(
          DiagnosticCode.Index_signature_is_missing_in_type_0,
          typeArgumentNode.range, typeArgument.toString()
        );
      }
      return null;
    }
    let overload = classReference.lookupOverload(OperatorKind.IndexedGet);
    if (overload) {
      let parameterTypes = overload.signature.parameterTypes;
      if (overload.is(CommonFlags.Static)) {
        assert(parameterTypes.length == 2);
        return parameterTypes[1];
      } else {
        assert(parameterTypes.length == 1);
        return parameterTypes[0];
      }
    }
    if (reportMode == ReportMode.Report) {
      this.error(
        DiagnosticCode.Index_signature_is_missing_in_type_0,
        typeArgumentNode.range, typeArgument.toString()
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    const typeArgumentNode = this.ensureOneTypeArgument(node, reportMode);
    if (!typeArgumentNode) return null;
    let typeArgument = this.resolveType(typeArgumentNode, ctxElement, ctxTypes, reportMode);
    if (!typeArgument) return null;
    let classReference = typeArgument.getClassOrWrapper(this.program);
    if (classReference) {
      let overload = classReference.lookupOverload(OperatorKind.IndexedGet);
      if (overload) return overload.signature.returnType;
    }
    if (reportMode == ReportMode.Report) {
      this.error(
        DiagnosticCode.Index_signature_is_missing_in_type_0,
        typeArgumentNode.range, typeArgument.toString()
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    const typeArgumentNode = this.ensureOneTypeArgument(node, reportMode);
    if (!typeArgumentNode) return null;
    let typeArgument = this.resolveType(typeArgumentNode, ctxElement, ctxTypes, reportMode);
    if (!typeArgument) return null;
    let signatureReference = typeArgument.getSignature();
    if (signatureReference) return signatureReference.returnType;
    if (reportMode == ReportMode.Report) {
      this.error(
        DiagnosticCode.Type_0_has_no_call_signatures,
        typeArgumentNode.range, typeArgument.toString()
      );
    }
    return null;
  }

  private resolveBuiltinNotNullableType(
    /** The type to resolve. */
    node: NamedTypeNode,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> | null = null,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    const typeArgumentNode = this.ensureOneTypeArgument(node, reportMode);
    if (!typeArgumentNode) return null;
    let typeArgument = this.resolveType(typeArgumentNode, ctxElement, ctxTypes, reportMode);
    if (!typeArgument) return null;
    if (!typeArgument.isNullableReference) return typeArgument;
    return typeArgument.nonNullableType;
  }

  /** Resolves a type name to the program element it refers to. */
  resolveTypeName(
    /** The type name to resolve. */
    node: TypeName,
    /** Contextual element. */
    ctxElement: Element,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    let element = ctxElement.lookup(node.identifier.text, true);
    if (!element) {
      if (reportMode == ReportMode.Report) {
        this.error(
          DiagnosticCode.Cannot_find_name_0,
          node.range, node.identifier.text
        );
      }
      return null;
    }
    let prev = node;
    let next = node.next;
    while (next) {
      if (!(element = element.getMember(next.identifier.text))) {
        if (reportMode == ReportMode.Report) {
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
    /** Contextual types, i.e. `T`. Updated in place with the new set of contextual types. */
    ctxTypes: Map<string,Type> = new Map(),
    /** Alternative report node in case of empty type arguments. */
    alternativeReportNode: Node | null = null,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.Report
  ): Type[] | null {
    var
      minParameterCount = 0,
      maxParameterCount = 0;
    for (let i = 0, k = typeParameters.length; i < k; ++i) {
      if (!typeParameters[i].defaultType) ++minParameterCount;
      ++maxParameterCount;
    }
    let argumentCount = typeArgumentNodes ? typeArgumentNodes.length : 0;
    if (argumentCount < minParameterCount || argumentCount > maxParameterCount) {
      if (reportMode == ReportMode.Report) {
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
    let typeArguments = new Array<Type>(maxParameterCount);
    let oldCtxTypes = cloneMap(ctxTypes);
    ctxTypes.clear();
    for (let i = 0; i < maxParameterCount; ++i) {
      let type = i < argumentCount
        ? this.resolveType( // reports
            typeArgumentNodes![i],
            ctxElement,
            oldCtxTypes, // update
            reportMode
          )
        : this.resolveType( // reports
            assert(typeParameters[i].defaultType),
            ctxElement,
            cloneMap(ctxTypes), // don't update
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
    reportMode: ReportMode = ReportMode.Report
  ): Function | null {
    let typeArguments = node.typeArguments;

    // resolve generic call if type arguments have been provided
    if (typeArguments) {
      if (!prototype.is(CommonFlags.Generic)) {
        if (reportMode == ReportMode.Report) {
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
        ctxFlow.sourceFunction,
        cloneMap(ctxFlow.contextualTypeArguments), // don't inherit
        node,
        reportMode
      );
    }

    // infer generic call if type arguments have been omitted
    if (prototype.is(CommonFlags.Generic)) {
      let contextualTypeArguments = cloneMap(ctxFlow.contextualTypeArguments);

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
        let argumentExpression = i < numArguments
          ? argumentNodes[i]
          : parameterNodes[i].initializer;
        if (!argumentExpression) {
          // optional but not have initializer should be handled in the other place
          if (parameterNodes[i].parameterKind == ParameterKind.Optional) {
            continue;
          }
          // missing initializer -> too few arguments
          if (reportMode == ReportMode.Report) {
            this.error(
              DiagnosticCode.Expected_0_arguments_but_got_1,
              node.range, numParameters.toString(), numArguments.toString()
            );
          }
          return null;
        }
        let typeNode = parameterNodes[i].type;
        if (typeNode.hasGenericComponent(typeParameterNodes)) {
          let type = this.resolveExpression(argumentExpression, ctxFlow, Type.auto, ReportMode.Swallow);
          if (type) {
            this.propagateInferredGenericTypes(
              typeNode,
              type,
              prototype,
              contextualTypeArguments,
              typeParameterNames
            );
          }
        }
      }

      // apply concrete types to the generic function signature
      let resolvedTypeArguments = new Array<Type>(numTypeParameters);
      for (let i = 0; i < numTypeParameters; ++i) {
        let typeParameterNode = typeParameterNodes[i];
        let name = typeParameterNode.name.text;
        if (contextualTypeArguments.has(name)) {
          let inferredType = assert(contextualTypeArguments.get(name));
          if (inferredType != Type.auto) {
            resolvedTypeArguments[i] = inferredType;
            continue;
          }
          let defaultType = typeParameterNode.defaultType;
          if (defaultType) {
            // Default parameters are resolved in context of the called function, not the calling function
            let parent = prototype.parent;
            let defaultTypeContextualTypeArguments: Map<string, Type> | null = null;
            if (parent.kind == ElementKind.Class) {
              defaultTypeContextualTypeArguments = (<Class>parent).contextualTypeArguments;
            } else if (parent.kind == ElementKind.Function) {
              defaultTypeContextualTypeArguments = (<Function>parent).contextualTypeArguments;
            }
            let resolvedDefaultType = this.resolveType(
              defaultType,
              prototype,
              defaultTypeContextualTypeArguments,
              reportMode
            );
            if (!resolvedDefaultType) return null;
            resolvedTypeArguments[i] = resolvedDefaultType;
            continue;
          }
        }
        // unused template, e.g. `function test<T>(): void {...}` called as `test()`
        // invalid because the type is effectively unknown inside the function body
        if (reportMode == ReportMode.Report) {
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
        cloneMap(ctxFlow.contextualTypeArguments),
        reportMode
      );
    }

    // otherwise resolve the non-generic call as usual
    return this.resolveFunction(prototype, null, new Map(), reportMode);
  }

  /** Updates contextual types with a possibly encapsulated inferred type. */
  private propagateInferredGenericTypes(
    /** The inferred type node. */
    node: TypeNode,
    /** The inferred type. */
    type: Type,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`, with unknown types initialized to `auto`. */
    ctxTypes: Map<string,Type>,
    /** The names of the type parameters being inferred. */
    typeParameterNames: Set<string>
  ): void {
    if (node.kind == NodeKind.NamedType) {
      let namedTypeNode = <NamedTypeNode>node;
      let typeArgumentNodes = namedTypeNode.typeArguments;
      if (typeArgumentNodes && typeArgumentNodes.length > 0) { // foo<T>(bar: Array<T>)
        let classReference = type.classReference;
        if (classReference) {
          let classPrototype = this.resolveTypeName(namedTypeNode.name, ctxElement);
          if (!classPrototype || classPrototype.kind != ElementKind.ClassPrototype) return;
          if (classReference.prototype == <ClassPrototype>classPrototype) {
            let typeArguments = classReference.typeArguments;
            if (typeArguments && typeArguments.length == typeArgumentNodes.length) {
              for (let i = 0, k = typeArguments.length; i < k; ++i) {
                this.propagateInferredGenericTypes(
                  typeArgumentNodes[i],
                  typeArguments[i],
                  ctxElement,
                  ctxTypes,
                  typeParameterNames
                );
              }
              return;
            }
          }
        }
      } else { // foo<T>(bar: T)
        let name = namedTypeNode.name.identifier.text;
        if (ctxTypes.has(name)) {
          let currentType = assert(ctxTypes.get(name));
          if (
            currentType == Type.auto ||
            (typeParameterNames.has(name) && currentType.isAssignableTo(type))
          ) ctxTypes.set(name, type);
        }
      }
    } else if (node.kind == NodeKind.FunctionType) { // foo<T>(bar: (baz: T) => i32))
      let functionTypeNode = <FunctionTypeNode>node;
      let parameterNodes = functionTypeNode.parameters;
      let signatureReference = type.signatureReference;
      if (signatureReference) {
        let parameterTypes = signatureReference.parameterTypes;
        for (let i = 0, k = min(parameterTypes.length, parameterNodes.length) ; i < k; ++i) {
          this.propagateInferredGenericTypes(
            parameterNodes[i].type,
            parameterTypes[i],
            ctxElement,
            ctxTypes,
            typeParameterNames
          );
        }
        let returnType = signatureReference.returnType;
        if (returnType != Type.void) {
          this.propagateInferredGenericTypes(
            functionTypeNode.returnType,
            returnType,
            ctxElement,
            ctxTypes,
            typeParameterNames
          );
        }
        let thisType = signatureReference.thisType;
        let explicitThisType = functionTypeNode.explicitThisType;
        if (thisType && explicitThisType) {
          this.propagateInferredGenericTypes(
            explicitThisType,
            thisType,
            ctxElement,
            ctxTypes,
            typeParameterNames
          );
        }
        return;
      }
    }
  }

  /** Gets the concrete type of an element. */
  getTypeOfElement(element: Element): Type | null {
    let kind = element.kind;
    if (kind == ElementKind.Global) {
      if (!this.ensureResolvedLazyGlobal(<Global>element, ReportMode.Swallow)) return null;
    }
    if (isTypedElement(kind)) {
      let type = (<TypedElement>element).type;
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    while (node.kind == NodeKind.Parenthesized) { // skip
      node = (<ParenthesizedExpression>node).expression;
    }
    switch (node.kind) {
      case NodeKind.Assertion: {
        return this.lookupAssertionExpression(
          <AssertionExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Binary: {
        return this.lookupBinaryExpression(
          <BinaryExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Call: {
        return this.lookupCallExpression(
          <CallExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Comma: {
        return this.lookupCommaExpression(
          <CommaExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.ElementAccess: {
        return this.lookupElementAccessExpression(
          <ElementAccessExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Function: {
        return this.lookupFunctionExpression(
          <FunctionExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Identifier:
      case NodeKind.False:
      case NodeKind.Null:
      case NodeKind.True: {
        return this.lookupIdentifierExpression(
          <IdentifierExpression>node,
          ctxFlow, ctxFlow.sourceFunction, reportMode
        );
      }
      case NodeKind.This: {
        return this.lookupThisExpression(
          <ThisExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Super: {
        return this.lookupSuperExpression(
          <SuperExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.InstanceOf: {
        return this.lookupInstanceOfExpression(
          <InstanceOfExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Literal: {
        return this.lookupLiteralExpression(
          <LiteralExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.New: {
        return this.lookupNewExpression(
          <NewExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.PropertyAccess: {
        return this.lookupPropertyAccessExpression(
          <PropertyAccessExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Ternary: {
        return this.lookupTernaryExpression(
          <TernaryExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.UnaryPostfix: {
        return this.lookupUnaryPostfixExpression(
          <UnaryPostfixExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.UnaryPrefix: {
        return this.lookupUnaryPrefixExpression(
          <UnaryPrefixExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
    }
    assert(false);
    return null;
  }

  /** resolving expressions */
  private resolvingExpressions: Set<Expression> = new Set();

  /** Resolves an expression to its static type. */
  resolveExpression(
    /** The expression to resolve. */
    node: Expression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    const resolvingExpressions = this.resolvingExpressions;
    if (resolvingExpressions.has(node)) return null;
    resolvingExpressions.add(node);
    const resolved = this.doResolveExpression(node, ctxFlow, ctxType, reportMode);
    resolvingExpressions.delete(node);
    return resolved;
  }

  /** Resolves an expression to its static type. (may cause stack overflow) */
  private doResolveExpression(
    node: Expression,
    ctxFlow: Flow,
    ctxType: Type = Type.auto,
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    while (node.kind == NodeKind.Parenthesized) { // skip
      node = (<ParenthesizedExpression>node).expression;
    }
    switch (node.kind) {
      case NodeKind.Assertion: {
        return this.resolveAssertionExpression(
          <AssertionExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Binary: {
        return this.resolveBinaryExpression(
          <BinaryExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Call: {
        return this.resolveCallExpression(
          <CallExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Comma: {
        return this.resolveCommaExpression(
          <CommaExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.ElementAccess: {
        return this.resolveElementAccessExpression(
          <ElementAccessExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Function: {
        return this.resolveFunctionExpression(
          <FunctionExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Identifier:
      case NodeKind.False:
      case NodeKind.Null:
      case NodeKind.True: {
        return this.resolveIdentifierExpression(
          <IdentifierExpression>node,
          ctxFlow, ctxType, ctxFlow.sourceFunction, reportMode
        );
      }
      case NodeKind.This: {
        return this.resolveThisExpression(
          <ThisExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Super: {
        return this.resolveSuperExpression(
          <SuperExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.InstanceOf: {
        return this.resolveInstanceOfExpression(
          <InstanceOfExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Literal: {
        return this.resolveLiteralExpression(
          <LiteralExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.New: {
        return this.resolveNewExpression(
          <NewExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.PropertyAccess: {
        return this.resolvePropertyAccessExpression(
          <PropertyAccessExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.Ternary: {
        return this.resolveTernaryExpression(
          <TernaryExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.UnaryPostfix: {
        return this.resolveUnaryPostfixExpression(
          <UnaryPostfixExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.UnaryPrefix: {
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
    ctxElement: Element = ctxFlow.sourceFunction, // differs for enums and namespaces
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    switch (node.kind) {
      case NodeKind.True:
      case NodeKind.False:
      case NodeKind.Null: {
        let type = this.resolveIdentifierExpression(node, ctxFlow, Type.auto, ctxElement, reportMode);
        return type ? this.getElementOfType(type) : null;
      }
    }
    let name = node.text;
    let element: Element | null;
    if (element = ctxFlow.lookup(name)) {
      this.currentThisExpression = null;
      this.currentElementExpression = null;
      return element;
    }
    let outerFlow = ctxFlow.outer;
    if (outerFlow) {
      if (element = outerFlow.lookup(name)) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return element;
      }
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
    if (reportMode == ReportMode.Report) {
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
    ctxElement: Element = ctxFlow.sourceFunction, // differs for enums and namespaces
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    switch (node.kind) {
      case NodeKind.True:
      case NodeKind.False: return Type.bool;
      case NodeKind.Null: {
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
    let element = this.lookupIdentifierExpression(node, ctxFlow, ctxElement, reportMode);
    if (!element) return null;
    if (element.kind == ElementKind.FunctionPrototype) {
      let instance = this.resolveFunction(<FunctionPrototype>element, null, new Map(), reportMode);
      if (!instance) return null;
      element = instance;
    }
    let type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.Report) {
        this.error(
          DiagnosticCode.Expression_cannot_be_represented_by_a_type,
          node.range
        );
      }
    }
    return type;
  }

  /** Resolves a lazily compiled global, i.e. a static class field or annotated `@lazy`. */
  private ensureResolvedLazyGlobal(global: Global, reportMode: ReportMode = ReportMode.Report): bool {
    if (global.is(CommonFlags.Resolved)) return true;
    let typeNode = global.typeNode;
    let type = typeNode
      ? this.resolveType(typeNode, global.parent, null, reportMode)
      : this.resolveExpression(
          assert(global.initializerNode),
          global.file.startFunction.flow,
          Type.auto,
          reportMode
        );
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    let targetNode = node.expression;
    let target = this.lookupExpression(targetNode, ctxFlow, ctxType, reportMode); // reports
    if (!target) return null;
    let propertyName = node.property.text;

    // Resolve variable-likes to their class type first
    switch (target.kind) {
      case ElementKind.Global: if (!this.ensureResolvedLazyGlobal(<Global>target, reportMode)) return null;
      case ElementKind.EnumValue:
      case ElementKind.Local: { // someVar.prop
        let variableLikeElement = <VariableLikeElement>target;
        let type = variableLikeElement.type;
        if (type == Type.void) return null; // errored earlier
        let classReference = type.getClassOrWrapper(this.program);
        if (!classReference) {
          if (reportMode == ReportMode.Report) {
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
      case ElementKind.PropertyPrototype: { // SomeClass.prop
        let propertyInstance = this.resolveProperty(<PropertyPrototype>target, reportMode);
        if (!propertyInstance) return null;
        target = propertyInstance;
        // fall-through
      }
      case ElementKind.Property: { // someInstance.prop
        let propertyInstance = <Property>target;
        let getterInstance = assert(propertyInstance.getterInstance); // must have a getter
        let type = getterInstance.signature.returnType;
        let classReference = type.getClassOrWrapper(this.program);
        if (!classReference) {
          if (reportMode == ReportMode.Report) {
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
      case ElementKind.IndexSignature: { // someInstance[x].prop
        let indexSignature = <IndexSignature>target;
        let parent = indexSignature.parent;
        assert(parent.kind == ElementKind.Class);
        let classInstance = <Class>parent;
        let elementExpression = assert(this.currentElementExpression);
        let indexedGet = classInstance.lookupOverload(OperatorKind.IndexedGet);
        if (!indexedGet) {
          if (reportMode == ReportMode.Report) {
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
          if (reportMode == ReportMode.Report) {
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
      case ElementKind.FunctionPrototype: {
        // Function with shadow type, i.e. function Symbol() + type Symbol = _Symbol
        let shadowType = target.shadowType;
        if (shadowType) {
          if (!shadowType.is(CommonFlags.Resolved)) {
            let resolvedType = this.resolveType(shadowType.typeNode, shadowType.parent, null, reportMode);
            if (resolvedType) shadowType.setType(resolvedType);
          }
          let classReference = shadowType.type.classReference;
          if (classReference) target = classReference.prototype;
          break;
        } else if (!target.is(CommonFlags.Generic)) {
          // Inherit from 'Function' if not overridden, i.e. fn.call
          let ownMember = target.getMember(propertyName);
          if (!ownMember) {
            let functionInstance = this.resolveFunction(<FunctionPrototype>target, null, new Map(), ReportMode.Swallow);
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
      case ElementKind.ClassPrototype:
      case ElementKind.InterfacePrototype:
      case ElementKind.Class:
      case ElementKind.Interface: {
        do {
          let member = target.getMember(propertyName);
          if (member) {
            if (member.kind == ElementKind.PropertyPrototype) {
              let propertyInstance = this.resolveProperty(<PropertyPrototype>member, reportMode);
              if (!propertyInstance) return null;
              member = propertyInstance;
              if (propertyInstance.is(CommonFlags.Static)) {
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
            target.kind == ElementKind.ClassPrototype ||
            target.kind == ElementKind.InterfacePrototype
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
            target.kind == ElementKind.Class ||
            target.kind == ElementKind.Interface
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
        let member = target.getMember(propertyName);
        if (member) {
          this.currentThisExpression = targetNode;
          this.currentElementExpression = null;
          return member; // static ENUMVALUE, static GLOBAL, static FUNCTION_PROTOTYPE...
        }
        break;
      }
    }

    if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let element = this.lookupPropertyAccessExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    let type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    let targetExpression = node.expression;
    let targetType = this.resolveExpression(targetExpression, ctxFlow, ctxType, reportMode);
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
    if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let element = this.lookupElementAccessExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    let type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.Report) {
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
    expr: IntegerLiteralExpression,
    /** Has unary minus before literal. */
    negate: bool,
    /** Contextual type. */
    ctxType: Type
  ): Type {
    let intValue = expr.value;
    if (negate) {
      // x + i64.min > 0   ->   underflow
      if (i64_gt(i64_add(intValue, i64_minimum), i64_zero)) {
        let range = expr.range;
        this.error(
          DiagnosticCode.Literal_0_does_not_fit_into_i64_or_u64_types,
          range, range.source.text.substring(range.start - 1, range.end)
        );
      } else if (i64_eq(intValue, i64_zero)) {
        // Special handling for -0
        if (ctxType.isFloatValue) {
          return ctxType.kind == TypeKind.F32
            ? Type.f32
            : Type.f64;
        } else if (!ctxType.isIntegerValue) {
          // If it's unknown just always assume this is f64
          return Type.f64;
        }
      }
      intValue = i64_neg(intValue);
    }
    if (ctxType.isValue) {
      // compile to contextual type if matching
      switch (ctxType.kind) {
        case TypeKind.Bool: {
          if (i64_is_bool(intValue)) return Type.bool;
          break;
        }
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
        case TypeKind.Isize: {
          if (!this.program.options.isWasm64) {
            if (i64_is_i32(intValue)) return Type.isize32;
            break;
          }
          return Type.isize64;
        }
        case TypeKind.Usize: {
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
    // otherwise compile to best fitting type
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    switch (node.assertionKind) {
      case AssertionKind.As:
      case AssertionKind.Prefix: {
        let type = this.resolveType(
          assert(node.toType), // must be set if not NONNULL
          ctxFlow.sourceFunction,
          ctxFlow.contextualTypeArguments,
          reportMode
        );
        if (!type) return null;
        let element = this.getElementOfType(type);
        if (element) return element;
        if (reportMode == ReportMode.Report) {
          this.error(
            DiagnosticCode.Type_0_is_illegal_in_this_context,
            node.range, type.toString()
          );
        }
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return null;
      }
      case AssertionKind.NonNull: {
        return this.lookupExpression(node.expression, ctxFlow, ctxType, reportMode);
      }
      case AssertionKind.Const: {
        // TODO: decide on the layout of ReadonlyArray first
        // let element = this.lookupExpression(node.expression, ctxFlow, ctxType, reportMode);
        // if (!element) return null;
        // if (element.kind == ElementKind.Class && (<Class>element).extends(this.program.arrayPrototype)) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    switch (node.assertionKind) {
      case AssertionKind.As:
      case AssertionKind.Prefix: {
        return this.resolveType(
          assert(node.toType),
          ctxFlow.sourceFunction,
          ctxFlow.contextualTypeArguments,
          reportMode
        );
      }
      case AssertionKind.NonNull: {
        let type = this.resolveExpression(node.expression, ctxFlow, ctxType, reportMode);
        return type ? type.nonNullableType : null;
      }
      case AssertionKind.Const: {
        let element = this.lookupExpression(node, ctxFlow, ctxType, reportMode);
        if (!element) return null;
        let type = this.getTypeOfElement(element);
        if (!type) {
          if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    let type = this.resolveUnaryPrefixExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    let element = this.getElementOfType(type);
    if (!element) {
      if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let operand = node.operand;
    let operator = node.operator;
    switch (operator) {
      case Token.Minus: {
        // implicitly negate if an integer literal to distinguish between i32/u32/i64
        if (operand.isLiteralKind(LiteralKind.Integer)) {
          return this.determineIntegerLiteralType(
            <IntegerLiteralExpression>operand,
            true,
            ctxType
          );
        }
        // fall-through
      }
      case Token.Plus:
      case Token.Plus_Plus:
      case Token.Minus_Minus: {
        let type = this.resolveExpression(operand, ctxFlow, ctxType, reportMode);
        if (!type) return null;
        let classReference = type.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromUnaryPrefixToken(operator));
          if (overload) return overload.signature.returnType;
        }
        if (!type.isNumericValue) {
          if (reportMode == ReportMode.Report) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              node.range, operatorTokenToString(operator), type.toString()
            );
          }
          return null;
        }
        return type;
      }
      case Token.Exclamation: {
        let type = this.resolveExpression(operand, ctxFlow, ctxType, reportMode);
        if (!type) return null;
        let classReference = type.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.Not);
          if (overload) return overload.signature.returnType;
        }
        return Type.bool; // incl. references
      }
      case Token.Tilde: {
        let type = this.resolveExpression(operand, ctxFlow, ctxType, reportMode);
        if (!type) return null;
        let classReference = type.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.BitwiseNot);
          if (overload) return overload.signature.returnType;
        }
        if (!type.isNumericValue) {
          if (reportMode == ReportMode.Report) {
            this.error(
              DiagnosticCode.The_0_operator_cannot_be_applied_to_type_1,
              node.range, "~", type.toString()
            );
          }
          return null;
        }
        return type.intType;
      }
      case Token.Dot_Dot_Dot: {
        if (reportMode == ReportMode.Report) {
          this.error(
            DiagnosticCode.Not_implemented_0,
            node.range, "Spread operator"
          );
        }
        return null;
      }
      case Token.TypeOf: {
        return this.program.stringInstance.type;
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    let type = this.resolveUnaryPostfixExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    let element = this.getElementOfType(type);
    if (!element) {
      if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let operator = node.operator;
    switch (operator) {
      case Token.Plus_Plus:
      case Token.Minus_Minus: {
        let type = this.resolveExpression(node.operand, ctxFlow, ctxType, reportMode);
        if (!type) return null;
        let classReference = type.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromUnaryPostfixToken(operator));
          if (overload) return overload.signature.returnType;
        }
        if (!type.isNumericValue) {
          if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    let type = this.resolveBinaryExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    let element = this.getElementOfType(type);
    if (element) return element; // otherwise void
    if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let left = node.left;
    let right = node.right;
    let operator = node.operator;

    switch (operator) {

      // assignment: result is the target's type

      case Token.Equals:
      case Token.Plus_Equals:
      case Token.Minus_Equals:
      case Token.Asterisk_Equals:
      case Token.Asterisk_Asterisk_Equals:
      case Token.Slash_Equals:
      case Token.Percent_Equals:
      case Token.LessThan_LessThan_Equals:
      case Token.GreaterThan_GreaterThan_Equals:
      case Token.GreaterThan_GreaterThan_GreaterThan_Equals:
      case Token.Ampersand_Equals:
      case Token.Bar_Equals:
      case Token.Caret_Equals: {
        return this.resolveExpression(left, ctxFlow, ctxType, reportMode);
      }

      // comparison: result is Bool, preferring overloads, integer/float only

      case Token.LessThan:
      case Token.GreaterThan:
      case Token.LessThan_Equals:
      case Token.GreaterThan_Equals: {
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromBinaryToken(operator));
          if (overload) return overload.signature.returnType;
        }
        if (!leftType.isNumericValue) {
          if (reportMode == ReportMode.Report) {
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

      case Token.Equals_Equals:
      case Token.Exclamation_Equals: {
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

      case Token.Equals_Equals_Equals:
      case Token.Exclamation_Equals_Equals: {
        return Type.bool;
      }

      // in operator

      case Token.In: {
        return Type.bool;
      }

      // arithmetics: result is common type of LHS and RHS, preferring overloads

      case Token.Plus:
      case Token.Minus:
      case Token.Asterisk:
      case Token.Slash:
      case Token.Percent: // mod has special logic, but also behaves like this
      case Token.Asterisk_Asterisk: {
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromBinaryToken(operator));
          if (overload) return overload.signature.returnType;
        }
        let rightType = this.resolveExpression(right, ctxFlow, leftType, reportMode);
        if (!rightType) return null;
        let commonType = Type.commonType(leftType, rightType, ctxType);
        if (!commonType) {
          if (reportMode == ReportMode.Report) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              node.range, operatorTokenToString(operator), leftType.toString(), rightType.toString()
            );
          }
        }
        return commonType;
      }

      // shift: result is LHS (RHS is converted to LHS), preferring overloads

      case Token.LessThan_LessThan:
      case Token.GreaterThan_GreaterThan:
      case Token.GreaterThan_GreaterThan_GreaterThan: {
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromBinaryToken(operator));
          if (overload) return overload.signature.returnType;
        }
        if (!leftType.isIntegerValue) {
          if (reportMode == ReportMode.Report) {
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

      case Token.Ampersand:
      case Token.Bar:
      case Token.Caret: {
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let classReference = leftType.getClassOrWrapper(this.program);
        if (classReference) {
          let overload = classReference.lookupOverload(OperatorKind.fromBinaryToken(operator));
          if (overload) return overload.signature.returnType;
        }
        let rightType = this.resolveExpression(right, ctxFlow, ctxType, reportMode);
        if (!rightType) return null;
        let commonType = Type.commonType(leftType, rightType, ctxType);
        if (!commonType || !commonType.isIntegerValue) {
          if (reportMode == ReportMode.Report) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              node.range, operatorTokenToString(operator), leftType.toString(), rightType.toString()
            );
          }
        }
        return commonType;
      }

      // logical

      case Token.Ampersand_Ampersand: {
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let rightType = this.resolveExpression(right, ctxFlow, leftType, reportMode);
        if (!rightType) return null;
        let commonType = Type.commonType(leftType, rightType, ctxType);
        if (!commonType) {
          if (reportMode == ReportMode.Report) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              node.range, "&&", leftType.toString(), rightType.toString()
            );
          }
        }
        return commonType;
      }
      case Token.Bar_Bar: {
        let leftType = this.resolveExpression(left, ctxFlow, ctxType, reportMode);
        if (!leftType) return null;
        let rightType = this.resolveExpression(right, ctxFlow, leftType, reportMode);
        if (!rightType) return null;
        let commonType = Type.commonType(leftType, rightType, ctxType);
        if (!commonType) {
          if (reportMode == ReportMode.Report) {
            this.error(
              DiagnosticCode.Operator_0_cannot_be_applied_to_types_1_and_2,
              node.range, "||", leftType.toString(), rightType.toString()
            );
          }
          return null;
        }
        // `LHS || RHS` can only be null if both LHS and RHS are null
        return leftType.is(TypeFlags.Nullable) && rightType.is(TypeFlags.Nullable)
          ? commonType
          : commonType.nonNullableType;
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    if (ctxFlow.isInline) {
      let thisLocal = ctxFlow.lookupLocal(CommonNames.this_);
      if (thisLocal) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return thisLocal;
      }
    }
    let parent = ctxFlow.sourceFunction.parent;
    if (parent) {
      this.currentThisExpression = null;
      this.currentElementExpression = null;
      return parent;
    }
    if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let element = this.lookupThisExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    let type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    if (ctxFlow.isInline) {
      let superLocal = ctxFlow.lookupLocal(CommonNames.super_);
      if (superLocal) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return superLocal;
      }
    }
    let parent: Element | null = ctxFlow.sourceFunction.parent;
    if (parent && parent.kind == ElementKind.Class) {
      let base = (<Class>parent).base;
      if (base) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return base;
      }
    }
    if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let element = this.lookupSuperExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    let type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    this.currentThisExpression = node;
    this.currentElementExpression = null;
    switch (node.literalKind) {
      case LiteralKind.Integer: {
        let intType = this.determineIntegerLiteralType(
          <IntegerLiteralExpression>node,
          false,
          ctxType
        );
        return assert(intType.getClassOrWrapper(this.program));
      }
      case LiteralKind.Float: {
        let fltType = ctxType == Type.f32 ? Type.f32 : Type.f64;
        return assert(fltType.getClassOrWrapper(this.program));
      }
      case LiteralKind.String:
      case LiteralKind.Template: {
        return this.program.stringInstance;
      }
      case LiteralKind.RegExp: {
        return this.program.regexpInstance;
      }
      case LiteralKind.Array: {
        let classReference = ctxType.getClass();
        if (classReference && classReference.prototype == this.program.arrayPrototype) {
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
            if (expression.kind == NodeKind.Null && length > 1) {
              ++numNullLiterals;
            } else {
              let currentType = this.resolveExpression(expression, ctxFlow, elementType);
              if (!currentType) return null;
              if (elementType == Type.auto) elementType = currentType;
              else if (currentType != elementType) {
                let commonType = Type.commonType(elementType, currentType, elementType);
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
            if (reportMode == ReportMode.Report) {
              this.error(
                DiagnosticCode.The_type_argument_for_type_parameter_0_cannot_be_inferred_from_the_usage_Consider_specifying_the_type_arguments_explicitly,
                node.range, "T"
              );
            }
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
      case LiteralKind.Object: {
        if (ctxType.isClass) return ctxType.classReference;
        if (reportMode == ReportMode.Report) {
          this.error(
            DiagnosticCode.Expression_cannot_be_represented_by_a_type,
            node.range
          );
        }
        return null;
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let element = this.lookupLiteralExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    let type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    let type = this.resolveCallExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    let element = this.getElementOfType(type);
    if (!element) {
      if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let targetExpression = node.expression;
    let target = this.lookupExpression( // reports
      targetExpression,
      ctxFlow,
      ctxType,
      reportMode
    );
    if (!target) return null;
    switch (target.kind) {
      case ElementKind.FunctionPrototype: {
        let functionPrototype = <FunctionPrototype>target;
        // `unchecked` behaves like parenthesized
        if (
          functionPrototype.internalName == BuiltinNames.unchecked &&
          node.args.length > 0
        ) {
          return this.resolveExpression(node.args[0], ctxFlow, ctxType, reportMode);
        }
        let functionInstance = this.maybeInferCall(node, functionPrototype, ctxFlow, reportMode);
        if (!functionInstance) return null;
        target = functionInstance;
        // fall-through
      }
      case ElementKind.Function: {
        return (<Function>target).signature.returnType;
      }
      case ElementKind.PropertyPrototype: {
        let propertyInstance = this.resolveProperty(<PropertyPrototype>target, reportMode);
        if (!propertyInstance) return null;
        target = propertyInstance;
        // fall-through
      }
      default: {
        if (!isTypedElement(target.kind)) break;
        let targetElement = this.getElementOfType((<TypedElement>target).type);
        if (!targetElement || targetElement.kind != ElementKind.Class) break;
        target = targetElement;
        // fall-through
      }
      case ElementKind.Class: {
        let typeArguments = (<Class>target).getTypeArgumentsTo(this.program.functionPrototype);
        if (!(typeArguments && typeArguments.length)) break;
        let signature = assert(typeArguments[0].getSignature());
        return signature.returnType;
      }
    }
    if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    let expressions = node.expressions;
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let expressions = node.expressions;
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
    reportMode: ReportMode = ReportMode.Report
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
    reportMode: ReportMode = ReportMode.Report
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    let type = this.resolveTernaryExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    let element = this.getElementOfType(type);
    if (!element) {
      if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let thenType = this.resolveExpression(node.ifThen, ctxFlow, ctxType, reportMode);
    if (!thenType) return null;
    let elseType = this.resolveExpression(node.ifElse, ctxFlow, thenType, reportMode);
    if (!elseType) return null;
    let commonType = Type.commonType(thenType, elseType, ctxType);
    if (!commonType) {
      if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    let element = this.resolveTypeName(node.typeName, ctxFlow.sourceFunction, reportMode);
    if (!element) return null;
    if (element.kind == ElementKind.ClassPrototype) {
      return this.resolveClassInclTypeArguments(
        <ClassPrototype>element,
        node.typeArguments,
        ctxFlow.sourceFunction,
        cloneMap(ctxFlow.contextualTypeArguments),
        node,
        reportMode
      );
    }
    if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    let element = this.lookupNewExpression(node, ctxFlow, ctxType, reportMode);
    if (!element) return null;
    let type = this.getTypeOfElement(element);
    if (!type) {
      if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Element | null {
    let type = this.resolveFunctionExpression(node, ctxFlow, ctxType, reportMode);
    if (!type) return null;
    let element = this.getElementOfType(type);
    if (!element) {
      if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Type | null {
    const declaration = node.declaration;
    const signature = declaration.signature;
    const body = declaration.body;
    let functionType = this.resolveType(signature, ctxFlow.sourceFunction, ctxFlow.contextualTypeArguments, reportMode);
    if (
      functionType &&
      declaration.arrowKind != ArrowKind.None &&
      body && body.kind == NodeKind.Expression &&
      isTypeOmitted(signature.returnType)
    ) {
      // (x) => ret, infer return type accordingt to `ret`
      const expr = (<ExpressionStatement>body).expression;
      let signatureReference = assert(functionType.getSignature());
      // create a temp flow to resolve expression
      let tempFlow = Flow.createDefault(ctxFlow.sourceFunction);
      let parameters = signature.parameters;
      // return type of resolveFunctionType should have same parameter length with signature
      assert(signatureReference.parameterTypes.length == parameters.length);
      for (let i = 0, k = parameters.length; i < k; i++) {
        const parameter = parameters[i];
        const type = signatureReference.parameterTypes[i];
        tempFlow.addScopedDummyLocal(parameter.name.text, type, parameter);
      }
      const type = this.resolveExpression(expr, tempFlow, ctxType, reportMode);
      if (type) {
        functionType.signatureReference = Signature.create(
          this.program,
          signatureReference.parameterTypes,
          type,
          signatureReference.thisType,
          signatureReference.requiredParameters,
          signatureReference.hasRest,
        );
      }
    }
    return functionType;
  }

  // ==================================================== Elements =====================================================

  /** Resolves a function prototype using the specified concrete type arguments. */
  resolveFunction(
    /** The prototype of the function. */
    prototype: FunctionPrototype,
    /** Type arguments provided. */
    typeArguments: Type[] | null,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> = new Map(),
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.Report
  ): Function | null {
    let classInstance: Class | null = null; // if an instance method
    let instanceKey = typeArguments ? typesToString(typeArguments) : "";

    // Instance method prototypes are pre-bound to their concrete class as their parent
    if (prototype.is(CommonFlags.Instance)) {
      classInstance = assert(prototype.getBoundClassOrInterface());

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
          // override contextual
          ctxTypes.set(classTypeParameterName, classTypeArguments[i]);
        }
      }
    } else {
      assert(!prototype.isBound);
      let resolvedInstance = prototype.getResolvedInstance(instanceKey);
      if (resolvedInstance) return resolvedInstance;
    }

    // override whatever is contextual with actual function type arguments
    let signatureNode = prototype.functionTypeNode;
    let typeParameterNodes = prototype.typeParameterNodes;
    let numFunctionTypeArguments: i32;
    if (typeArguments && (numFunctionTypeArguments = typeArguments.length) > 0) {
      assert(typeParameterNodes && numFunctionTypeArguments == typeParameterNodes.length);
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
    let thisType: Type | null = null;
    let explicitThisType = signatureNode.explicitThisType;
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
    let signatureParameters = signatureNode.parameters;
    let numSignatureParameters = signatureParameters.length;
    let parameterTypes = new Array<Type>(numSignatureParameters);
    let requiredParameters = 0;
    for (let i = 0; i < numSignatureParameters; ++i) {
      let parameterDeclaration = signatureParameters[i];
      if (parameterDeclaration.parameterKind == ParameterKind.Default) {
        requiredParameters = i + 1;
      }
      let typeNode = parameterDeclaration.type;
      if (isTypeOmitted(typeNode)) {
        if (reportMode == ReportMode.Report) {
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
        if (reportMode == ReportMode.Report) {
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
    let returnType: Type;
    if (prototype.is(CommonFlags.Set)) {
      returnType = Type.void; // not annotated
    } else if (prototype.is(CommonFlags.Constructor)) {
      returnType = classInstance!.type; // not annotated
    } else {
      let typeNode = signatureNode.returnType;
      if (isTypeOmitted(typeNode)) {
        if (reportMode == ReportMode.Report) {
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

    let signature = Signature.create(this.program, parameterTypes, returnType, thisType, requiredParameters);

    let nameInclTypeParameters = prototype.name;
    if (instanceKey.length) nameInclTypeParameters += `<${instanceKey}>`;
    let instance = new Function(
      nameInclTypeParameters,
      prototype,
      typeArguments,
      signature,
      ctxTypes
    );
    prototype.setResolvedInstance(instanceKey, instance);

    // check against overridden base member
    if (classInstance) {
      let methodOrPropertyName = instance.declaration.name.text;
      let baseClass = classInstance.base;
      if (baseClass) {
        let baseMember = baseClass.getMember(methodOrPropertyName);
        if (baseMember) {
          // note override discovery (used by stub finalization)
          this.discoveredOverride = true;
          // verify that this is a compatible override
          let incompatibleOverride = true;
          if (instance.isAny(CommonFlags.Get | CommonFlags.Set)) {
            if (baseMember.kind == ElementKind.PropertyPrototype) {
              let baseProperty = this.resolveProperty(<PropertyPrototype>baseMember, reportMode);
              if (baseProperty) {
                if (instance.is(CommonFlags.Get)) {
                  let baseGetter = baseProperty.getterInstance;
                  if (baseGetter && instance.signature.isAssignableTo(baseGetter.signature, true)) {
                    incompatibleOverride = false;
                  }
                } else {
                  assert(instance.is(CommonFlags.Set));
                  let baseSetter = baseProperty.setterInstance;
                  if (baseSetter && instance.signature.isAssignableTo(baseSetter.signature, true)) {
                    incompatibleOverride = false;
                  }
                }
              }
            }
          } else if (instance.is(CommonFlags.Constructor)) {
            incompatibleOverride = false;
          } else {
            if (baseMember.kind == ElementKind.FunctionPrototype) {
              // Possibly generic. Resolve with same type arguments to obtain the correct one.
              let basePrototype = <FunctionPrototype>baseMember;
              let baseFunction = this.resolveFunction(basePrototype, typeArguments, new Map(), ReportMode.Swallow);
              if (baseFunction && instance.signature.isAssignableTo(baseFunction.signature, true)) {
                incompatibleOverride = false;
              }
            }
          }
          if (incompatibleOverride) {
            this.errorRelated(
              DiagnosticCode.This_overload_signature_is_not_compatible_with_its_implementation_signature,
              instance.identifierAndSignatureRange, baseMember.identifierAndSignatureRange
            );
          }
        }
      }
    }
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
    reportMode: ReportMode = ReportMode.Report
  ): Function | null {
    let resolvedTypeArguments: Type[] | null = null;

    // Resolve type arguments if generic
    if (prototype.is(CommonFlags.Generic)) {

      // If this is an instance method, first apply the class's type arguments
      if (prototype.is(CommonFlags.Instance)) {
        let classInstance = assert(prototype.getBoundClassOrInterface());
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
        ctxTypes, // update
        reportNode,
        reportMode
      );
      if (!resolvedTypeArguments) return null;

    // Otherwise make sure that no type arguments have been specified
    } else {
      if (typeArgumentNodes && typeArgumentNodes.length > 0) {
        if (reportMode == ReportMode.Report) {
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

  /** Resolves reachable overrides of the given instance method. */
  resolveOverrides(instance: Function): Function[] | null {
    let overridePrototypes = instance.prototype.unboundOverrides;
    if (!overridePrototypes) return null;

    let parentClassInstance = assert(instance.getBoundClassOrInterface());
    let overrides = new Set<Function>();

    // A method's `overrides` property contains its unbound override prototypes
    // so we first have to find the concrete classes it became bound to, obtain
    // their bound prototypes and make sure these are resolved.
    for (let _values = Set_values(overridePrototypes), i = 0, k = _values.length; i < k; ++i) {
      let unboundOverridePrototype = _values[i];
      assert(!unboundOverridePrototype.isBound);
      let unboundOverrideParent = unboundOverridePrototype.parent;
      let classInstances: Map<string,Class> | null;
      assert(unboundOverrideParent.kind == ElementKind.ClassPrototype);
      classInstances = (<ClassPrototype>unboundOverrideParent).instances;
      if (!classInstances) continue;
      for (let _values = Map_values(classInstances), j = 0, l = _values.length; j < l; ++j) {
        let classInstance = _values[j];
        // Check if the parent class is a subtype of instance's class
        if (!classInstance.isAssignableTo(parentClassInstance)) continue;
        let overrideInstance: Function | null = null;
        if (instance.isAny(CommonFlags.Get | CommonFlags.Set)) {
          let propertyName = instance.declaration.name.text;
          let boundPropertyPrototype = assert(classInstance.getMember(propertyName));
          assert(boundPropertyPrototype.kind == ElementKind.PropertyPrototype);
          let boundPropertyInstance = this.resolveProperty(<PropertyPrototype>boundPropertyPrototype);
          if (!boundPropertyInstance) continue;
          if (instance.is(CommonFlags.Get)) {
            overrideInstance = boundPropertyInstance.getterInstance;
          } else {
            assert(instance.is(CommonFlags.Set));
            overrideInstance = boundPropertyInstance.setterInstance;
          }
        } else {
          let boundPrototype = classInstance.getMember(unboundOverridePrototype.name);
          if (boundPrototype) { // might have errored earlier and wasn't added
            assert(boundPrototype.kind == ElementKind.FunctionPrototype);
            overrideInstance = this.resolveFunction(<FunctionPrototype>boundPrototype, instance.typeArguments);
          }
        }
        if (overrideInstance) overrides.add(overrideInstance);
      }
    }
    return Set_values(overrides);
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
    ctxTypes: Map<string,Type> = new Map(),
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.Report
  ): Class | null {
    let instanceKey = typeArguments ? typesToString(typeArguments) : "";

    // Do not attempt to resolve the same class twice. This can return a class
    // that isn't fully resolved yet, but only on deeper levels of recursion.
    let instance = prototype.getResolvedInstance(instanceKey);
    if (instance) return instance;

    // Otherwise create
    let nameInclTypeParameters = prototype.name;
    if (instanceKey.length) nameInclTypeParameters += `<${instanceKey}>`;
    if (prototype.kind == ElementKind.InterfacePrototype) {
      instance = new Interface(nameInclTypeParameters, <InterfacePrototype>prototype, typeArguments);
    } else {
      instance = new Class(nameInclTypeParameters, prototype, typeArguments);
    }
    prototype.setResolvedInstance(instanceKey, instance);
    let pendingClasses = this.resolveClassPending;
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
      assert(!(typeParameterNodes && typeParameterNodes.length > 0));
    }
    instance.contextualTypeArguments = ctxTypes;

    let anyPending = false;

    // Resolve base class if applicable
    let basePrototype = prototype.basePrototype;
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
        cloneMap(ctxTypes), // don't inherit
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

    // Implicitly extend `Object` if a derived object
    } else if (prototype.implicitlyExtendsObject) {
      instance.setBase(this.program.objectInstance);
    }

    // Resolve interfaces if applicable
    let interfacePrototypes = prototype.interfacePrototypes;
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
          cloneMap(ctxTypes),
          implementsNode,
          reportMode
        );
        if (!iface) return null;
        assert(iface.kind == ElementKind.Interface);
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

  /** Checks whether an override's visibility is valid. */
  private checkOverrideVisibility(
    /** Name to report. */
    name: string,
    /** Overriding member. */
    thisMember: DeclaredElement,
    /** Overriding class. */
    thisClass: Class,
    /** Overridden member. */
    baseMember: DeclaredElement,
    /** Overridden class. */
    baseClass: Class,
    /** Report mode. */
    reportMode: ReportMode
  ): bool {
    let hasErrors = false;
    if (thisMember.is(CommonFlags.Constructor)) {
      assert(baseMember.is(CommonFlags.Constructor));
      if (baseMember.is(CommonFlags.Private)) {
        if (reportMode == ReportMode.Report) {
          this.errorRelated(
            DiagnosticCode.Cannot_extend_a_class_0_Class_constructor_is_marked_as_private,
            thisMember.identifierNode.range, baseMember.identifierNode.range,
            baseClass.internalName
          );
        }
        hasErrors = true;
      }
    } else if (thisMember.is(CommonFlags.Private)) {
      if (baseMember.is(CommonFlags.Private)) {
        if (reportMode == ReportMode.Report) {
          this.errorRelated(
            DiagnosticCode.Types_have_separate_declarations_of_a_private_property_0,
            thisMember.identifierNode.range, baseMember.identifierNode.range,
            name
          );
        }
        hasErrors = true;
      } else {
        if (reportMode == ReportMode.Report) {
          this.errorRelated(
            DiagnosticCode.Property_0_is_private_in_type_1_but_not_in_type_2,
            thisMember.identifierNode.range, baseMember.identifierNode.range,
            name, thisClass.internalName, baseClass.internalName
          );
        }
        hasErrors = true;
      }
    } else if (thisMember.is(CommonFlags.Protected)) {
      if (baseMember.is(CommonFlags.Private)) {
        if (reportMode == ReportMode.Report) {
          this.errorRelated(
            DiagnosticCode.Property_0_is_private_in_type_1_but_not_in_type_2,
            thisMember.identifierNode.range, baseMember.identifierNode.range,
            name, baseClass.internalName, thisClass.internalName
          );
        }
        hasErrors = true;
      } else if (baseMember.isPublic) {
        if (reportMode == ReportMode.Report) {
          this.errorRelated(
            DiagnosticCode.Property_0_is_protected_in_type_1_but_public_in_type_2,
            thisMember.identifierNode.range, baseMember.identifierNode.range,
            name, thisClass.internalName, baseClass.internalName
          );
        }
        hasErrors = true;
      } else {
        assert(baseMember.is(CommonFlags.Protected));
      }
    } else if (thisMember.isPublic) {
      if (baseMember.is(CommonFlags.Private)) {
        if (reportMode == ReportMode.Report) {
          this.errorRelated(
            DiagnosticCode.Property_0_is_private_in_type_1_but_not_in_type_2,
            thisMember.identifierNode.range, baseMember.identifierNode.range,
            name, baseClass.internalName, thisClass.internalName
          );
        }
        hasErrors = true;
      } else if (baseMember.is(CommonFlags.Protected)) {
        if (reportMode == ReportMode.Report) {
          this.errorRelated(
            DiagnosticCode.Property_0_is_protected_in_type_1_but_public_in_type_2,
            thisMember.identifierNode.range, baseMember.identifierNode.range,
            name, baseClass.internalName, thisClass.internalName
          );
        }
        hasErrors = true;
      } else {
        assert(baseMember.isPublic);
      }
    }
    return !hasErrors;
  }

  /** Finishes resolving the specified class. */
  private finishResolveClass(
    /** Class to finish resolving. */
    instance: Class,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode
  ): void {
    let members = instance.members;
    if (!members) instance.members = members = new Map();

    let pendingClasses = this.resolveClassPending;
    let unimplemented = new Map<string,DeclaredElement>();
    // Alias implemented interface members
    let interfaces = instance.interfaces;
    if (interfaces) {
      for (let _values = Set_values(interfaces), i = 0, k = _values.length; i < k; ++i) {
        let iface = _values[i];
        assert(!pendingClasses.has(iface));
        let ifaceMembers = iface.members;
        if (ifaceMembers) {
          for (let _keys = Map_keys(ifaceMembers), i = 0, k = _keys.length; i < k; ++i) {
            let memberName = unchecked(_keys[i]);
            let ifaceMember = assert(ifaceMembers.get(memberName));
            let existingMember = instance.getMember(memberName);
            if (existingMember && !this.checkOverrideVisibility(memberName, existingMember, instance, ifaceMember, iface, reportMode)) {
              continue; // keep previous
            }
            members.set(memberName, ifaceMember);
            unimplemented.set(memberName, ifaceMember);
          }
        }
      }
    }

    // Alias base members
    let memoryOffset: u32 = 0;
    let base = instance.base;
    if (base) {
      let implicitlyExtendsObject = instance.prototype.implicitlyExtendsObject;
      assert(!pendingClasses.has(base));
      let baseMembers = base.members;
      if (baseMembers) {
        // TODO: for (let [baseMemberName, baseMember] of baseMembers) {
        for (let _keys = Map_keys(baseMembers), i = 0, k = _keys.length; i < k; ++i) {
          let memberName = unchecked(_keys[i]);
          let baseMember = assert(baseMembers.get(memberName));
          if (implicitlyExtendsObject && baseMember.is(CommonFlags.Static)) continue;
          let existingMember = instance.getMember(memberName);
          if (existingMember && !this.checkOverrideVisibility(memberName, existingMember, instance, baseMember, base, reportMode)) {
            continue; // keep previous
          }
          members.set(memberName, baseMember);
          if (baseMember.is(CommonFlags.Abstract)) {
            unimplemented.set(memberName, baseMember);
          } else {
            unimplemented.delete(memberName);
          }
        }
      }
      memoryOffset = base.nextMemoryOffset;
    }

    // Resolve instance members
    let prototype = instance.prototype;
    let instanceMemberPrototypes = prototype.instanceMembers;
    let properties = new Array<Property>();
    if (instanceMemberPrototypes) {
      // TODO: for (let member of instanceMemberPrototypes.values()) {
      for (let _values = Map_values(instanceMemberPrototypes), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
        let memberName = member.name;
        if (base) {
          let baseMember = base.getMember(memberName);
          if (baseMember) this.checkOverrideVisibility(memberName, member, instance, baseMember, base, reportMode);
        }
        switch (member.kind) {
          case ElementKind.FunctionPrototype: {
            let boundPrototype = (<FunctionPrototype>member).toBound(instance);
            instance.add(boundPrototype.name, boundPrototype); // reports
            break;
          }
          case ElementKind.PropertyPrototype: {
            let boundPrototype = (<PropertyPrototype>member).toBound(instance);
            if (boundPrototype.isField) { // resolve and lay out
              let boundInstance = this.resolveProperty(boundPrototype, reportMode);
              if (boundInstance) {
                let fieldType = boundInstance.type;
                if (fieldType == Type.void) break; // failed to resolve earlier
                if (fieldType.isExternalReference) {
                  this.error(
                    DiagnosticCode.Not_implemented_0,
                    assert(boundPrototype.typeNode).range,
                    "Reference typed fields"
                  );
                  break;
                }
                let needsLayout = true;
                if (base) {
                  let existingMember = base.getMember(boundPrototype.name);
                  if (existingMember && existingMember.kind == ElementKind.PropertyPrototype) {
                    let existingPrototype = <PropertyPrototype>existingMember;
                    let existingProperty = this.resolveProperty(existingPrototype, reportMode);
                    if (existingProperty && existingProperty.isField) {
                      if (existingProperty.type != boundInstance.type) {
                        // make sure fields are invariant (Binaryen would otherwise error)
                        this.errorRelated(
                          DiagnosticCode.Property_0_in_type_1_is_not_assignable_to_the_same_property_in_base_type_2,
                          boundInstance.identifierNode.range, existingProperty.identifierNode.range,
                          boundInstance.name, instance.internalName, base.internalName
                        );
                        break; // keep existing
                      }
                      boundInstance.memoryOffset = existingProperty.memoryOffset;
                      needsLayout = false;
                    }
                  }
                }
                if (needsLayout) {
                  let byteSize = fieldType.byteSize;
                  assert(isPowerOf2(byteSize));
                  let mask = byteSize - 1;
                  if (memoryOffset & mask) memoryOffset = (memoryOffset | mask) + 1;
                  boundInstance.memoryOffset = memoryOffset;
                  memoryOffset += byteSize;
                }
                boundPrototype.instance = boundInstance;
                instance.add(boundPrototype.name, boundPrototype); // reports
                // field materializes here, so check for supported type early
                // (other checks are performed once an element is compiled)
                let typeNode = assert(boundPrototype.fieldDeclaration).type;
                if (typeNode) this.program.checkTypeSupported(fieldType, typeNode);
              }
            } else {
              instance.add(boundPrototype.name, boundPrototype); // reports
            }
            break;
          }
          default: assert(false);
        }
        if (!member.is(CommonFlags.Abstract)) {
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
        if (propertySetter && !propertyGetter.visibilityEquals(propertySetter)) {
          this.errorRelated(
            DiagnosticCode.Getter_and_setter_accessors_do_not_agree_in_visibility,
            propertyGetter.identifierNode.range, propertySetter.identifierNode.range
          );
        }
      }
    }

    if (instance.kind != ElementKind.Interface) {

      // Check that all required members are implemented
      if (!instance.is(CommonFlags.Abstract) && unimplemented.size > 0) {
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
        let ctorPrototype = instance.getMember(CommonNames.constructor);
        if (ctorPrototype && ctorPrototype.parent == instance) {
          assert(ctorPrototype.kind == ElementKind.FunctionPrototype);
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
    let overloadPrototypes = prototype.operatorOverloadPrototypes;
    // TODO: for (let [overloadKind, overloadPrototype] of overloadPrototypes) {
    for (let _keys = Map_keys(overloadPrototypes), i = 0, k = _keys.length; i < k; ++i) {
      let overloadKind = unchecked(_keys[i]);
      let overloadPrototype = assert(overloadPrototypes.get(overloadKind));
      assert(overloadKind != OperatorKind.Invalid);
      if (overloadPrototype.is(CommonFlags.Generic)) {
        // Already errored during initialization: AS212: Decorator '@operator' is not valid here
        continue;
      }
      let operatorInstance: Function | null;
      if (overloadPrototype.is(CommonFlags.Instance)) {
        let boundPrototype = overloadPrototype.toBound(instance);
        operatorInstance = this.resolveFunction(
          boundPrototype,
          null,
          new Map(),
          reportMode
        );
      } else {
        operatorInstance = this.resolveFunction(
          overloadPrototype,
          null,
          new Map(),
          reportMode
        );
      }
      if (!operatorInstance) continue;
      let overloads = instance.operatorOverloads;
      if (!overloads) instance.operatorOverloads = overloads = new Map();
      // inc/dec are special in that an instance overload attempts to re-assign
      // the corresponding value, thus requiring a matching return type, while a
      // static overload works like any other overload.
      if (operatorInstance.is(CommonFlags.Instance)) {
        switch (overloadKind) {
          case OperatorKind.PrefixInc:
          case OperatorKind.PrefixDec:
          case OperatorKind.PostfixInc:
          case OperatorKind.PostfixDec: {
            let returnType = operatorInstance.signature.returnType;
            if (!returnType.isAssignableTo(instance.type)) {
              if (reportMode == ReportMode.Report) {
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
        if (overloadKind == OperatorKind.IndexedGet || overloadKind == OperatorKind.IndexedSet) {
          let index = instance.indexSignature;
          if (!index) instance.indexSignature = index = new IndexSignature(instance);
          if (overloadKind == OperatorKind.IndexedGet) {
            index.setType(operatorInstance.signature.returnType);
          }
        }
      } else {
        if (reportMode == ReportMode.Report) {
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
      let dependsOnInstance = pending.base == instance;
      let interfaces = pending.interfaces;
      if (interfaces) {
        let anyPending = false;
        for (let _values2 = Set_values(interfaces), j = 0, l = _values2.length; j < l; ++j) {
          let iface = _values2[j];
          if (iface == instance) dependsOnInstance = true;
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
    reportMode: ReportMode = ReportMode.Report
  ): Class | null {
    let resolvedTypeArguments: Type[] | null = null;

    // Resolve type arguments if generic
    if (prototype.is(CommonFlags.Generic)) {
      resolvedTypeArguments = this.resolveTypeArguments( // reports
        assert(prototype.typeParameterNodes), // must be present if generic
        typeArgumentNodes,
        ctxElement,
        ctxTypes, // update
        reportNode,
        reportMode
      );
      if (!resolvedTypeArguments) return null;

    // Otherwise make sure that no type arguments have been specified
    } else {
      if (typeArgumentNodes && typeArgumentNodes.length > 0) {
        if (reportMode == ReportMode.Report) {
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
    reportMode: ReportMode = ReportMode.Report
  ): Property | null {
    let instance = prototype.instance;
    if (instance) return instance;
    prototype.instance = instance = new Property(
      prototype,
      prototype.parent // same level as prototype
    );
    let getterPrototype = prototype.getterPrototype;
    if (getterPrototype) {
      let getterInstance = this.resolveFunction(
        getterPrototype,
        null,
        new Map(),
        reportMode
      );
      if (getterInstance) {
        instance.getterInstance = getterInstance;
        instance.setType(getterInstance.signature.returnType);
      }
    }
    let setterPrototype = prototype.setterPrototype;
    if (setterPrototype) {
      let setterInstance = this.resolveFunction(
        setterPrototype,
        null,
        new Map(),
        reportMode
      );
      if (setterInstance) {
        instance.setterInstance = setterInstance;
        if (!instance.is(CommonFlags.Resolved)) {
          assert(setterInstance.signature.parameterTypes.length == 1);
          instance.setType(setterInstance.signature.parameterTypes[0]);
        }
      }
    }
    return instance;
  }

  private ensureOneTypeArgument(
    /** The type to resolve. */
    node: NamedTypeNode,
    /** How to proceed with eventual diagnostics. */
    reportMode: ReportMode = ReportMode.Report
  ): TypeNode | null {
    let typeArgumentNodes = node.typeArguments;
    let numTypeArguments = 0;
    if (!typeArgumentNodes || (numTypeArguments = typeArgumentNodes.length) != 1) {
      if (reportMode == ReportMode.Report) {
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          node.range, "1", numTypeArguments.toString()
        );
      }
      return null;
    }
    return typeArgumentNodes[0];
  }
}
