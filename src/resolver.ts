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
  FunctionTypeNode,
  ParameterKind,
  TypeNode,
  NodeKind,
  NamedTypeNode,
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

import {
  BuiltinSymbols
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
    /** How to proceed with eventualy diagnostics. */
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
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var nameNode = node.name;
    var typeArgumentNodes = node.typeArguments;
    var isSimpleType = !nameNode.next;

    // Look up in contextual types if a simple type
    if (isSimpleType) {
      let simpleName = nameNode.identifier.text;
      if (ctxTypes !== null && ctxTypes.has(simpleName)) {
        let type = ctxTypes.get(simpleName)!;
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

    // Look up in context
    var element = this.resolveTypeName(nameNode, ctxElement, reportMode);
    if (!element) return null;

    // Use shadow type if present (i.e. namespace sharing a type)
    if (element.shadowType) {
      element = element.shadowType;

    } else {

      // Handle enums (become i32)
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
              node.range, element.name + "/i32"
            );
          }
        }
        return Type.i32;
      }

      // Handle classes
      if (element.kind == ElementKind.CLASS_PROTOTYPE) {
        let instance = this.resolveClassInclTypeArguments(
          <ClassPrototype>element,
          typeArgumentNodes,
          ctxElement,
          makeMap<string,Type>(ctxTypes), // don't inherit
          node,
          reportMode
        );
        if (!instance) return null;
        return node.isNullable ? instance.type.asNullable() : instance.type;
      }
    }

    // Handle type definitions
    if (element.kind == ElementKind.TYPEDEFINITION) {

      // Shortcut already resolved (mostly builtins)
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
                nameNode.range, nameNode.identifier.text
              );
            }
          } else {
            return type.asNullable();
          }
        }
        return type;
      }

      // Handle special built-in types
      if (isSimpleType) {
        switch (nameNode.identifier.symbol) {
          case CommonSymbols.native: return this.resolveBuiltinNativeType(node, ctxElement, ctxTypes, reportMode);
          case CommonSymbols.indexof: return this.resolveBuiltinIndexofType(node, ctxElement, ctxTypes, reportMode);
          case CommonSymbols.valueof: return this.resolveBuiltinValueofType(node, ctxElement, ctxTypes, reportMode);
          case CommonSymbols.returnof: return this.resolveBuiltinReturnTypeType(node, ctxElement, ctxTypes, reportMode);
        }
      }

      // Resolve normally
      let typeParameterNodes = (<TypeDefinition>element).typeParameterNodes;
      let typeArguments: Type[] | null = null;
      if (typeParameterNodes) {
        typeArguments = this.resolveTypeArguments(
          typeParameterNodes,
          typeArgumentNodes,
          ctxElement,
          ctxTypes = makeMap(ctxTypes), // inherit
          node,
          reportMode
        );
        if (!typeArguments) return null;
      } else if (typeArgumentNodes && typeArgumentNodes.length) {
        this.error(
          DiagnosticCode.Type_0_is_not_generic,
          node.range, nameNode.identifier.text
        );
      }
      let type = this.resolveType(
        (<TypeDefinition>element).typeNode,
        element,
        ctxTypes,
        reportMode
      );
      if (!type) return null;
      if (node.isNullable) {
        if (!type.is(TypeFlags.REFERENCE)) {
          if (reportMode == ReportMode.REPORT) {
            this.error(
              DiagnosticCode.Basic_type_0_cannot_be_nullable,
              nameNode.range, nameNode.identifier.text
            );
          }
        } else {
          return type.asNullable();
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
    /** How to proceed with eventualy diagnostics. */
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
    var parameterNames = new Array<string>(numParameters);
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
      parameterNames[i] = parameterNode.name.text;
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
    signature.parameterNames = parameterNames;
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
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var typeArgumentNodes = node.typeArguments;
    if (!(typeArgumentNodes && typeArgumentNodes.length == 1)) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          node.range, "1", (typeArgumentNodes ? typeArgumentNodes.length : 1).toString(10)
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
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var typeArgumentNodes = node.typeArguments;
    if (!(typeArgumentNodes && typeArgumentNodes.length == 1)) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          node.range, "1", (typeArgumentNodes ? typeArgumentNodes.length : 1).toString(10)
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
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Type | null {
    var typeArgumentNodes = node.typeArguments;
    if (!(typeArgumentNodes && typeArgumentNodes.length == 1)) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          node.range, "1", (typeArgumentNodes ? typeArgumentNodes.length : 1).toString(10)
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
    if (overload) return overload.signature.returnType;
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
    if (!(typeArgumentNodes && typeArgumentNodes.length == 1)) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          node.range, "1", (typeArgumentNodes ? typeArgumentNodes.length : 1).toString(10)
        );
      }
      return null;
    }
    var typeArgument = this.resolveType(typeArgumentNodes[0], ctxElement, ctxTypes, reportMode);
    if (!typeArgument) return null;
    var signatureReference = typeArgument.signatureReference;
    if (!signatureReference) {
      if (reportMode == ReportMode.REPORT) {
        this.error(
          DiagnosticCode.Type_0_has_no_call_signatures,
          typeArgumentNodes[0].range, typeArgument.toString()
        );
      }
      return null;
    }
    return signatureReference.returnType;
  }

  /** Resolves a type name to the program element it refers to. */
  resolveTypeName(
    /** The type name to resolve. */
    node: TypeName,
    /** Contextual element. */
    ctxElement: Element,
    /** How to proceed with eventualy diagnostics. */
    reportMode = ReportMode.REPORT
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
    ctxTypes: Map<string,Type> = makeMap<string,Type>(),
    /** Alternative report node in case of empty type arguments. */
    alternativeReportNode: Node | null = null,
    /** How to proceed with eventualy diagnostics. */
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
      this.error(
        DiagnosticCode.Expected_0_type_arguments_but_got_1,
        argumentCount
          ? Range.join(
              (<NamedTypeNode[]>typeArgumentNodes)[0].range,
              (<NamedTypeNode[]>typeArgumentNodes)[argumentCount - 1].range
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
            (<NamedTypeNode[]>typeArgumentNodes)[i],
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

  // =================================================== Expressions ===================================================

  /** Resolves an expression to the program element it refers to. */
  resolveExpression(
    /** The expression to resolve. */
    node: Expression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    while (node.kind == NodeKind.PARENTHESIZED) { // simply skip
      node = (<ParenthesizedExpression>node).expression;
    }
    switch (node.kind) {
      case NodeKind.ASSERTION: {
        return this.resolveAssertionExpression(
          <AssertionExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.UNARYPREFIX: {
        return this.resolveUnaryPrefixExpression(
          <UnaryPrefixExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.UNARYPOSTFIX: {
        return this.resolveUnaryPostfixExpression(
          <UnaryPostfixExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.BINARY: {
        return this.resolveBinaryExpression(
          <BinaryExpression>node,
          ctxFlow, ctxType, reportMode
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
      case NodeKind.IDENTIFIER: {
        return this.resolveIdentifier(
          <IdentifierExpression>node,
          ctxFlow, ctxFlow.actualFunction, reportMode
        );
      }
      case NodeKind.LITERAL: {
        return this.resolveLiteralExpression(
          <LiteralExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.PROPERTYACCESS: {
        return this.resolvePropertyAccessExpression(
          <PropertyAccessExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.ELEMENTACCESS: {
        return this.resolveElementAccessExpression(
          <ElementAccessExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      case NodeKind.CALL: {
        return this.resolveCallExpression(
          <CallExpression>node,
          ctxFlow, ctxType, reportMode
        );
      }
      // TODO: everything else
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        node.range
      );
    }
    return null;
  }

  /** Resolves an identifier to the program element it refers to. */
  resolveIdentifier(
    /** The expression to resolve. */
    node: IdentifierExpression,
    /** Flow to search for scoped locals. */
    ctxFlow: Flow,
    /** Element to search. */
    ctxElement: Element = ctxFlow.actualFunction,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
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
    if (element = this.program.lookupGlobal(name)) {
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

  /** Resolves a lazily compiled global, i.e. a static class field or annotated `@lazy`. */
  private ensureResolvedLazyGlobal(global: Global, reportMode: ReportMode = ReportMode.REPORT): bool {
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
    global.setType(type); // also sets resolved
    return true;
  }

  /** Resolves a property access expression to the program element it refers to. */
  resolvePropertyAccessExpression(
    /** The expression to resolve. */
    node: PropertyAccessExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var targetNode = node.expression;
    var target = this.resolveExpression(targetNode, ctxFlow, ctxType, reportMode); // reports
    if (!target) return null;
    var propertyName = node.property.text;

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
              node.property.range, propertyName, (<VariableLikeElement>target).type.toString()
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
            node.property.range, propertyName, getterInstance.signature.returnType.toString()
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
            node.property.range, propertyName, getterInstance.signature.returnType.toString()
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
          let arrayType = indexedGet.signature.returnType;
          let classReference = arrayType.classReference;
          if (!classReference) {
            let typeClasses = this.program.typeClasses;
            if (!arrayType.is(TypeFlags.REFERENCE) && typeClasses.has(arrayType.kind)) {
              classReference = typeClasses.get(arrayType.kind)!;
            } else {
              this.error(
                DiagnosticCode.Property_0_does_not_exist_on_type_1,
                node.property.range, propertyName, arrayType.toString()
              );
              return null;
            }
          }
          target = classReference;
        }
        break;
      }
      case ElementKind.FUNCTION_PROTOTYPE: { // function Symbol() + type Symbol = _Symbol
        let shadowType = target.shadowType;
        if (shadowType) {
          if (!shadowType.is(CommonFlags.RESOLVED)) {
            let resolvedType = this.resolveType(shadowType.typeNode, shadowType.parent, null, reportMode);
            if (resolvedType) shadowType.setType(resolvedType);
          }
          let classReference = shadowType.type.classReference;
          if (classReference) target = classReference.prototype;
          break;
        }
      }
    }

    // Look up the member within
    switch (target.kind) {
      case ElementKind.CLASS_PROTOTYPE:
      case ElementKind.CLASS: {
        do {
          let members = target.members;
          if (members && members.has(propertyName)) {
            this.currentThisExpression = targetNode;
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
          this.currentThisExpression = targetNode;
          this.currentElementExpression = null;
          return members.get(propertyName)!; // static ENUMVALUE, static GLOBAL, static FUNCTION_PROTOTYPE...
        }
        break;
      }
    }

    this.error(
      DiagnosticCode.Property_0_does_not_exist_on_type_1,
      node.property.range, propertyName, target.internalName
    );
    return null;
  }

  /** Resolves an element access expression to the program element it refers to. */
  resolveElementAccessExpression(
    /** The expression to resolve. */
    node: ElementAccessExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var targetExpression = node.expression;
    var target = this.resolveExpression(targetExpression, ctxFlow, ctxType, reportMode); // reports
    if (!target) return null;
    switch (target.kind) {
      case ElementKind.GLOBAL: if (!this.ensureResolvedLazyGlobal(<Global>target, reportMode)) return null;
      case ElementKind.LOCAL:
      case ElementKind.FIELD: {
        let type = (<VariableLikeElement>target).type;
        if (target = type.classReference) {
          this.currentThisExpression = targetExpression;
          this.currentElementExpression = node.elementExpression;
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
              node.range, (<Class>target).internalName
            );
          }
          return null;
        }
        let arrayType = indexedGet.signature.returnType;
        if (targetExpression.kind == NodeKind.ELEMENTACCESS) { // nested element access
          if (target = arrayType.classReference) {
            this.currentThisExpression = targetExpression;
            this.currentElementExpression = node.elementExpression;
            return target;
          }
          return null;
        }
        this.currentThisExpression = targetExpression;
        this.currentElementExpression = node.elementExpression;
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
    /** Contextual type. */
    ctxType: Type
  ): Type {
    if (!ctxType.is(TypeFlags.REFERENCE)) {
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
        case TypeKind.VOID: break; // best fitting below
        default: assert(false);
      }
    }
    // otherwise compile to best fitting native type
    if (i64_is_i32(intValue)) return Type.i32;
    if (i64_is_u32(intValue)) return Type.u32;
    return Type.i64; // TODO: u64 if positive and larger than i64?
  }

  /** Resolves an assertion expression to the program element it refers to. */
  resolveAssertionExpression(
    /** The expression to resolve. */
    node: AssertionExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    if (node.assertionKind == AssertionKind.NONNULL) {
      return this.resolveExpression(
        node.expression,
        ctxFlow,
        ctxType,
        reportMode
      );
    }
    var type = this.resolveType(
      assert(node.toType), // must be set if not NONNULL
      ctxFlow.actualFunction,
      ctxFlow.contextualTypeArguments,
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
    node: UnaryPrefixExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var operand = node.operand;
    // TODO: operator overloads
    switch (node.operator) {
      case Token.MINUS: {
        // implicitly negate if an integer literal to distinguish between i32/u32/i64
        if (operand.kind == NodeKind.LITERAL && (<LiteralExpression>operand).literalKind == LiteralKind.INTEGER) {
          let type = this.determineIntegerLiteralType(
            i64_sub(i64_zero, (<IntegerLiteralExpression>operand).value),
            ctxType
          );
          let typeClasses = this.program.typeClasses;
          return typeClasses.has(type.kind) ? typeClasses.get(type.kind)! : null;
        }
        return this.resolveExpression(operand, ctxFlow, ctxType, reportMode);
      }
      case Token.PLUS:
      case Token.PLUS_PLUS:
      case Token.MINUS_MINUS: {
        return this.resolveExpression(node.operand, ctxFlow, ctxType, reportMode);
      }
      case Token.EXCLAMATION: {
        let typeClasses = this.program.typeClasses;
        assert(typeClasses.has(TypeKind.BOOL));
        return typeClasses.get(TypeKind.BOOL);
      }
      case Token.TILDE: {
        let resolvedOperand = this.resolveExpression(node.operand, ctxFlow, ctxType, reportMode);
        if (!resolvedOperand) return null;
        // TODO: matching integer type
        break;
      }
      default: assert(false);
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        node.range
      );
    }
    return null;
  }

  /** Resolves an unary postfix expression to the program element it refers to. */
  resolveUnaryPostfixExpression(
    /** The expression to resolve. */
    node: UnaryPostfixExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    // TODO: operator overloads
    switch (node.operator) {
      case Token.PLUS_PLUS:
      case Token.MINUS_MINUS: {
        return this.resolveExpression(node.operand, ctxFlow, ctxType, reportMode);
      }
      default: assert(false);
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        node.range
      );
    }
    return null;
  }

  /** Resolves a binary expression to the program element it refers to. */
  resolveBinaryExpression(
    /** The expression to resolve. */
    name: BinaryExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    // TODO
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        name.range
      );
    }
    return null;
  }

  /** Resolves a this expression to the program element it refers to. */
  resolveThisExpression(
    /** The expression to resolve. */
    node: ThisExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    if (ctxFlow.is(FlowFlags.INLINE_CONTEXT)) {
      let thisLocal = ctxFlow.lookupLocal(CommonSymbols.this_);
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

  /** Resolves a super expression to the program element it refers to. */
  resolveSuperExpression(
    /** The expression to resolve. */
    node: SuperExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    if (ctxFlow.is(FlowFlags.INLINE_CONTEXT)) {
      let superLocal = ctxFlow.lookupLocal(CommonSymbols.super_);
      if (superLocal) {
        this.currentThisExpression = null;
        this.currentElementExpression = null;
        return superLocal;
      }
    }
    var parent: Element | null = ctxFlow.actualFunction.parent;
    if (parent && parent.kind == ElementKind.CLASS && (parent = (<Class>parent).base)) {
      this.currentThisExpression = null;
      this.currentElementExpression = null;
      return parent;
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode._super_can_only_be_referenced_in_a_derived_class,
        node.range
      );
    }
    return null;
  }

  /** Resolves a literal expression to the program element it refers to. */
  resolveLiteralExpression(
    /** The expression to resolve. */
    node: LiteralExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.auto,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    switch (node.literalKind) {
      case LiteralKind.INTEGER: {
        this.currentThisExpression = node;
        this.currentElementExpression = null;
        let literalType = this.determineIntegerLiteralType(
          (<IntegerLiteralExpression>node).value,
          ctxType
        );
        let typeClasses = this.program.typeClasses;
        return typeClasses.has(literalType.kind) ? typeClasses.get(literalType.kind)! : null;
      }
      case LiteralKind.FLOAT: {
        this.currentThisExpression = node;
        this.currentElementExpression = null;
        let literalType = ctxType == Type.f32 ? Type.f32 : Type.f64;
        let typeClasses = this.program.typeClasses;
        return typeClasses.has(literalType.kind) ? typeClasses.get(literalType.kind)! : null;
      }
      case LiteralKind.STRING: {
        this.currentThisExpression = node;
        this.currentElementExpression = null;
        return this.program.stringInstance;
      }
      // TODO
      // case LiteralKind.ARRAY:
    }
    if (reportMode == ReportMode.REPORT) {
      this.error(
        DiagnosticCode.Operation_not_supported,
        node.range
      );
    }
    return null;
  }

  /** Resolves a call expression to the program element it refers to. */
  resolveCallExpression(
    /** The expression to resolve. */
    node: CallExpression,
    /** Contextual flow. */
    ctxFlow: Flow,
    /** Contextual type. */
    ctxType: Type = Type.void,
    /** How to proceed with eventualy diagnostics. */
    reportMode: ReportMode = ReportMode.REPORT
  ): Element | null {
    var targetExpression = node.expression;
    var target = this.resolveExpression( // reports
      targetExpression,
      ctxFlow,
      ctxType,
      reportMode
    );

    if (!target) return null;
    if (target.kind == ElementKind.FUNCTION_PROTOTYPE) {
      // `unchecked(expr: *): *` is special
      if (
        (<FunctionPrototype>target).internalName == BuiltinSymbols.unchecked &&
        node.arguments.length > 0
      ) {
        return this.resolveExpression(node.arguments[0], ctxFlow, ctxType, reportMode);
      }
      // otherwise resolve normally
      let instance = this.resolveFunctionInclTypeArguments(
        <FunctionPrototype>target,
        node.typeArguments,
        ctxFlow.actualFunction,
        makeMap(ctxFlow.contextualTypeArguments), // don't inherit
        node,
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
        } else {
          let typeClasses = this.program.typeClasses;
          if (!returnType.is(TypeFlags.REFERENCE) && typeClasses.has(returnType.kind)) {
            return typeClasses.get(returnType.kind);
          }
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
        node.range
      );
    }
    return null;
  }

  // ==================================================== Elements =====================================================

  /** Resolves a function prototype using the specified concrete type arguments. */
  resolveFunction(
    /** The prototype of the function. */
    prototype: FunctionPrototype,
    /** Type arguments provided. */
    typeArguments: Type[] | null,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> = makeMap<string,Type>(),
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
    if (typeArguments && (numFunctionTypeArguments = typeArguments.length)) {
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
      ctxTypes.set(CommonSymbols.this_, thisType);
    } else if (classInstance) {
      thisType = classInstance.type;
      ctxTypes.set(CommonSymbols.this_, thisType);
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
    signature.parameterNames = parameterNames;
    signature.requiredParameters = requiredParameters;

    var nameInclTypeParameters = prototype.name;
    if (instanceKey.length) nameInclTypeParameters += "<" + instanceKey + ">";
    var instance = new Function(
      nameInclTypeParameters,
      prototype,
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
      ctxTypes,
      reportMode
    );
  }

  /** Resolves a class prototype using the specified concrete type arguments. */
  resolveClass(
    /** The prototype of the class. */
    prototype: ClassPrototype,
    /** Type arguments provided. */
    typeArguments: Type[] | null,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type> = makeMap<string,Type>(),
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
        ctxTypes.set(typeParameterNodes[i].name.text, typeArguments[i]);
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
        makeMap(ctxTypes), // don't inherit
        extendsNode,
        reportMode
      );
      if (!baseClass) return null;
    }

    // Construct the instance and remember that it has been resolved already
    var nameInclTypeParamters = prototype.name;
    if (instanceKey.length) nameInclTypeParamters += "<" + instanceKey + ">";
    instance = new Class(nameInclTypeParamters, prototype, typeArguments, baseClass);
    instance.contextualTypeArguments = ctxTypes;
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
    /** Type arguments provided to be resolved. */
    typeArgumentNodes: TypeNode[] | null,
    /** Contextual element. */
    ctxElement: Element,
    /** Contextual types, i.e. `T`. */
    ctxTypes: Map<string,Type>,
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
        ctxElement,
        ctxTypes,
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
      ctxTypes,
      reportMode
    );
  }
}
