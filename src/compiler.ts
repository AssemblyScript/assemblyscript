import {
  compileCall as compileBuiltinCall,
  compileGetConstant as compileBuiltinGetConstant
} from "./builtins";

import {
  PATH_DELIMITER
} from "./constants";

import {
  DiagnosticCode,
  DiagnosticEmitter
} from "./diagnostics";

import {
  Module,
  MemorySegment,
  ExpressionRef,
  UnaryOp,
  BinaryOp,
  NativeType,
  FunctionTypeRef,
  FunctionRef,
  ExpressionId,
  readString
} from "./module";

import {
  Program,
  ClassPrototype,
  Class,
  Element,
  ElementKind,
  Enum,
  FieldPrototype,
  Field,
  FunctionPrototype,
  Function,
  Global,
  Local,
  Namespace,
  Parameter,
  EnumValue,
  Property,
  VariableLikeElement
} from "./program";

import {
  Token
} from "./tokenizer";

import {
  Node,
  NodeKind,
  TypeNode,
  Source,
  SourceKind,

  Statement,
  BlockStatement,
  BreakStatement,
  ClassDeclaration,
  ContinueStatement,
  DeclarationStatement,
  DoStatement,
  EmptyStatement,
  EnumDeclaration,
  EnumValueDeclaration,
  ExportMember,
  ExportStatement,
  ExpressionStatement,
  FunctionDeclaration,
  ForStatement,
  IfStatement,
  ImportStatement,
  InterfaceDeclaration,
  ModifierKind,
  NamespaceDeclaration,
  ReturnStatement,
  SwitchCase,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
  VariableLikeDeclarationStatement,
  VariableDeclaration,
  VariableStatement,
  WhileStatement,

  Expression,
  AssertionExpression,
  BinaryExpression,
  CallExpression,
  CommaExpression,
  ElementAccessExpression,
  FloatLiteralExpression,
  IdentifierExpression,
  IntegerLiteralExpression,
  LiteralExpression,
  LiteralKind,
  NewExpression,
  ParenthesizedExpression,
  PropertyAccessExpression,
  TernaryExpression,
  StringLiteralExpression,
  UnaryPostfixExpression,
  UnaryPrefixExpression,

  hasModifier
} from "./ast";

import {
  Type,
  TypeKind,
  TypeFlags,
  typesToNativeTypes
} from "./types";

import {
  I64,
  U64
} from "./util/i64";

import {
  sb
} from "./util/sb";

/** Compilation target. */
export enum Target {
  /** WebAssembly with 32-bit pointers. */
  WASM32,
  /** WebAssembly with 64-bit pointers. Experimental and not supported by any runtime yet. */
  WASM64
}

/** Compiler options. */
export class Options {
  /** WebAssembly target. Defaults to {@link Target.WASM32}. */
  target: Target = Target.WASM32;
  /** If true, performs compilation as usual but doesn't produce any output (all calls to module become nops). */
  noEmit: bool = false;
  /** If true, compiles everything instead of just reachable code. */
  noTreeShaking: bool = false;
  /** If true, replaces assertions with nops. */
  noAssert: bool = false;
  /** If true, does not set up a memory. */
  noMemory: bool = false;
}

/** Indicates the desired kind of a conversion. */
export const enum ConversionKind {
  /** No conversion. */
  NONE,
  /** Implicit conversion. */
  IMPLICIT,
  /** Explicit conversion. */
  EXPLICIT
}

/** Compiler interface. */
export class Compiler extends DiagnosticEmitter {

  /** Program reference. */
  program: Program;
  /** Provided options. */
  options: Options;
  /** Module instance being compiled. */
  module: Module;

  /** Start function being compiled. */
  startFunction: Function;
  /** Start function expressions. */
  startFunctionBody: ExpressionRef[] = new Array();

  /** Current type in compilation. */
  currentType: Type = Type.void;
  /** Current function in compilation. */
  currentFunction: Function;
  /** Marker indicating whether continue statements are allowed in the current break context. */
  disallowContinue: bool = true;
  /** Marker indicating that a new variable, if present, is always a local. Used to distinguish locals from globals in the start function. */
  variableIsLocal: bool = false;

  /** Counting memory offset. */
  memoryOffset: U64 = new U64(8, 0); // leave space for (any size of) NULL
  /** Memory segments being compiled. */
  memorySegments: MemorySegment[] = new Array();

  /** Already processed file names. */
  files: Set<string> = new Set();

  /** Compiles a {@link Program} to a {@link Module} using the specified options. */
  static compile(program: Program, options: Options | null = null): Module {
    return new Compiler(program, options).compile();
  }

  /** Constructs a new compiler for a {@link Program} using the specified options. */
  constructor(program: Program, options: Options | null = null) {
    super(program.diagnostics);
    this.program = program;
    this.options = options ? options : new Options();
    this.memoryOffset = new U64(this.options.target == Target.WASM64 ? 8 : 4, 0); // leave space for `null`
    this.module = this.options.noEmit ? Module.createStub() : Module.create();

    // set up start function
    var startFunctionTemplate = new FunctionPrototype(program, "start", "start", null);
    var startFunctionInstance = new Function(startFunctionTemplate, startFunctionTemplate.internalName, [], [], Type.void, null);
    this.currentFunction = this.startFunction = startFunctionInstance;
  }

  /** Performs compilation of the underlying {@link Program} to a {@link Module}. */
  compile(): Module {

    // initialize lookup maps, built-ins, imports, exports, etc.
    this.program.initialize(this.options.target);

    // compile entry file (exactly one, usually)
    var sources = this.program.sources;
    for (var i = 0, k = sources.length; i < k; ++i)
      if (sources[i].isEntry)
        this.compileSource(sources[i]);

    // make start function if not empty
    if (this.startFunctionBody.length) {
      var typeRef = this.module.getFunctionTypeBySignature(NativeType.None, []);
      if (!typeRef)
        typeRef = this.module.addFunctionType("v", NativeType.None, []);
      this.module.setStart(
        this.module.addFunction(this.startFunction.prototype.internalName, typeRef, typesToNativeTypes(this.startFunction.additionalLocals),
          this.module.createBlock(null, this.startFunctionBody)
        )
      );
    }

    // set up memory
    if (!this.options.noMemory) {
      var initial = this.memoryOffset.clone();
      if (this.options.target == Target.WASM64)
        this.module.addGlobal("HEAP_BASE", NativeType.I64, false, this.module.createI64(initial.lo, initial.hi));
      else
        this.module.addGlobal("HEAP_BASE", NativeType.I32, false, this.module.createI32(initial.lo));

      // determine initial page size
      var initialOverlaps = initial.clone();
      initialOverlaps.and32(0xffff);
      if (!initialOverlaps.isZero) {
        initial.or32(0xffff);
        initial.add32(1);
      }
      initial.shru32(16); // now is initial size in 64k pages
      this.module.setMemory(initial.toI32(), Module.MAX_MEMORY_WASM32 /* TODO: not WASM64 compatible yet */, this.memorySegments, this.options.target, "memory");
    }
    return this.module;
  }

  // sources

  compileSourceByPath(normalizedPath: string, reportNode: Node): void {
    for (var i = 0, k = this.program.sources.length; i < k; ++i) {
      var importedSource = this.program.sources[i];
      if (importedSource.normalizedPath == normalizedPath) {
        this.compileSource(importedSource);
        return;
      }
    }
    this.error(DiagnosticCode.File_0_not_found, reportNode.range, normalizedPath);
  }

  compileSource(source: Source): void {
    if (this.files.has(source.normalizedPath))
      return;
    this.files.add(source.normalizedPath);

    var noTreeShaking = this.options.noTreeShaking;
    for (var i = 0, k = source.statements.length; i < k; ++i) {
      var statement = source.statements[i];
      switch (statement.kind) {

        case NodeKind.CLASS:
          if ((noTreeShaking || source.isEntry && hasModifier(ModifierKind.EXPORT, (<ClassDeclaration>statement).modifiers)) && !(<ClassDeclaration>statement).typeParameters.length)
            this.compileClassDeclaration(<ClassDeclaration>statement, []);
          break;

        case NodeKind.ENUM:
          if (noTreeShaking || source.isEntry && hasModifier(ModifierKind.EXPORT, (<EnumDeclaration>statement).modifiers))
            this.compileEnumDeclaration(<EnumDeclaration>statement);
          break;

        case NodeKind.FUNCTION:
          if ((noTreeShaking || source.isEntry && hasModifier(ModifierKind.EXPORT, (<FunctionDeclaration>statement).modifiers)) && !(<FunctionDeclaration>statement).typeParameters.length)
            this.compileFunctionDeclaration(<FunctionDeclaration>statement, []);
          break;

        case NodeKind.IMPORT:
          this.compileSourceByPath((<ImportStatement>statement).normalizedPath, (<ImportStatement>statement).path);
          break;

        case NodeKind.NAMESPACE:
          if (noTreeShaking || source.isEntry && hasModifier(ModifierKind.EXPORT, (<NamespaceDeclaration>statement).modifiers))
            this.compileNamespaceDeclaration(<NamespaceDeclaration>statement);
          break;

        case NodeKind.VARIABLE: // global
          this.compileVariableStatement(<VariableStatement>statement); // always because initializers might have side effects
          break;

        case NodeKind.EXPORT:
          if ((<ExportStatement>statement).normalizedPath != null)
            this.compileSourceByPath(<string>(<ExportStatement>statement).normalizedPath, <StringLiteralExpression>(<ExportStatement>statement).path);
          if (noTreeShaking || source.isEntry)
            this.compileExportStatement(<ExportStatement>statement);
          break;

        // otherwise a top-level statement that is part of the start function's body
        default:
          var previousFunction = this.currentFunction;
          this.currentFunction = this.startFunction;
          var expr = this.compileStatement(statement);
          if (!this.module.noEmit)
            this.startFunctionBody.push(expr);
          this.currentFunction = previousFunction;
          break;
      }
    }
  }

  // globals

  compileGlobalDeclaration(declaration: VariableDeclaration, isConst: bool): Global | null {
    var element = this.program.elements.get(declaration.internalName);
    if (!element || element.kind != ElementKind.GLOBAL)
      throw new Error("global expected");
    if (!this.compileGlobal(<Global>element)) // reports
      return null;
    if (isModuleExport(element, declaration)) {
      if ((<Global>element).hasConstantValue)
        this.module.addGlobalExport(element.internalName, declaration.name.name);
      else
        this.warning(DiagnosticCode.Cannot_export_a_mutable_global, declaration.range);
    }
    return <Global>element;
  }

  compileGlobal(global: Global): bool {
    if (global.isCompiled || global.isBuiltIn)
      return true;

    var declaration = global.declaration;
    var initExpr: ExpressionRef = 0;

    if (global.type == Type.void) { // infer type
      if (declaration) {
        if (declaration.type) {
          var resolvedType = this.program.resolveType(declaration.type); // reports
          if (!resolvedType)
            return false;
          if (resolvedType == Type.void) {
            this.error(DiagnosticCode.Type_0_is_not_assignable_to_type_1, declaration.range, "*", resolvedType.toString());
            return false;
          }
          global.type = resolvedType;
        } else if (declaration.initializer) { // infer type using void/NONE for proper literal inference
          initExpr = this.compileExpression(declaration.initializer, Type.void, ConversionKind.NONE); // reports
          if (this.currentType == Type.void) {
            this.error(DiagnosticCode.Type_0_is_not_assignable_to_type_1, declaration.range, this.currentType.toString(), "<auto>");
            return false;
          }
          global.type = this.currentType;
        } else {
          this.error(DiagnosticCode.Type_expected, declaration.name.range.atEnd);
          return false;
        }
      } else
        throw new Error("declaration expected");
    }

    var nativeType = global.type.toNativeType();

    if (global.isDeclared) {
      if (global.isConstant) {
        this.module.addGlobalImport(global.internalName, global.namespace ? global.namespace.simpleName : "env", global.simpleName, nativeType);
        global.isCompiled = true;
        return true;
      } else if (declaration) {
        this.error(DiagnosticCode.Operation_not_supported, declaration.range);
      }
      return false;
    }

    var initializeInStart = false;

    if (global.hasConstantValue) {
      initExpr = makeInlineConstant(global, this.module);
    } else if (declaration) {
      if (declaration.initializer) {
        if (!initExpr)
          initExpr = this.compileExpression(declaration.initializer, global.type);
        if (!this.module.noEmit && _BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
          if (!global.isMutable) {
            initExpr = this.precomputeExpressionRef(initExpr);
            if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
              this.warning(DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable, declaration.range);
              initializeInStart = true;
            }
          } else
            initializeInStart = true;
        }
      } else
        initExpr = global.type.toNativeZero(this.module);
    } else
      throw new Error("declaration expected");

    var internalName = global.internalName;
    if (initializeInStart) {
      this.module.addGlobal(internalName, nativeType, true, global.type.toNativeZero(this.module));
      var setExpr = this.module.createSetGlobal(internalName, initExpr);
      if (!this.module.noEmit)
        this.startFunctionBody.push(setExpr);
    } else {
      this.module.addGlobal(internalName, nativeType, global.isMutable, initExpr);
      if (!global.isMutable && !this.module.noEmit) {
        var exprType = _BinaryenExpressionGetType(initExpr);
        switch (exprType) {
          case NativeType.I32:
            global.constantIntegerValue = new I64(_BinaryenConstGetValueI32(initExpr), 0);
            break;
          case NativeType.I64:
            global.constantIntegerValue = new I64(_BinaryenConstGetValueI64Low(initExpr), _BinaryenConstGetValueI64High(initExpr));
            break;
          case NativeType.F32:
            global.constantFloatValue = _BinaryenConstGetValueF32(initExpr);
            break;
          case NativeType.F64:
            global.constantFloatValue = _BinaryenConstGetValueF64(initExpr);
            break;
          default:
            throw new Error("concrete type expected");
        }
        global.hasConstantValue = true;
      }
    }
    global.isCompiled = true;
    return true;
  }

  // enums

  compileEnumDeclaration(declaration: EnumDeclaration): void {
    var element = this.program.elements.get(declaration.internalName);
    if (!element || element.kind != ElementKind.ENUM)
      throw new Error("enum expected");
    this.compileEnum(<Enum>element);
  }

  compileEnum(element: Enum): bool {
    if (element.isCompiled)
      return true;

    element.isCompiled = true; // members might reference each other, triggering another compile
    var previousValue: EnumValue | null = null;
    if (element.members)
      for (var member of element.members.values()) {
        if (member.kind != ElementKind.ENUMVALUE) // happens if an enum is also a namespace
          continue;
        var initInStart = false;
        var val = <EnumValue>member;
        if (val.hasConstantValue) {
          this.module.addGlobal(val.internalName, NativeType.I32, false, this.module.createI32(val.constantValue));
        } else if (val.declaration) {
          var valueDeclaration = val.declaration;
          var initExpr: ExpressionRef;
          if (valueDeclaration.value) {
            initExpr = this.compileExpression(<Expression>valueDeclaration.value, Type.i32);
            if (!this.module.noEmit && _BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
              initExpr = this.precomputeExpressionRef(initExpr);
              if (_BinaryenExpressionGetId(initExpr) != ExpressionId.Const) {
                if (element.isConstant)
                  this.warning(DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable, valueDeclaration.range);
                initInStart = true;
              }
            }
          } else if (previousValue == null) {
            initExpr = this.module.createI32(0);
          } else if (previousValue.hasConstantValue) {
            initExpr = this.module.createI32(previousValue.constantValue + 1);
          } else {
            // in TypeScript this errors with TS1061, but actually we can do:
            initExpr = this.module.createBinary(BinaryOp.AddI32,
              this.module.createGetGlobal(previousValue.internalName, NativeType.I32),
              this.module.createI32(1)
            );
            if (element.isConstant)
              this.warning(DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable, valueDeclaration.range);
            initInStart = true;
          }
          if (initInStart) {
            this.module.addGlobal(val.internalName, NativeType.I32, true, this.module.createI32(0));
            var setExpr = this.module.createSetGlobal(val.internalName, initExpr);
            if (!this.module.noEmit)
              this.startFunctionBody.push(setExpr);
          } else {
            this.module.addGlobal(val.internalName, NativeType.I32, false, initExpr);
            if (!this.module.noEmit) {
              if (_BinaryenExpressionGetType(initExpr) == NativeType.I32) {
                val.constantValue = _BinaryenConstGetValueI32(initExpr);
                val.hasConstantValue = true;
              } else
                throw new Error("i32 expected");
            }
          }
        } else
          throw new Error("declaration expected");
        if (element.declaration && isModuleExport(element, element.declaration) && !initInStart)
          this.module.addGlobalExport(member.internalName, member.internalName);
        previousValue = <EnumValue>val;
      }
    return true;
  }

  // functions

  compileFunctionDeclaration(declaration: FunctionDeclaration, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): void {
    var internalName = declaration.internalName;
    var element = this.program.elements.get(internalName);
    if (!element || element.kind != ElementKind.FUNCTION_PROTOTYPE)
      throw new Error("function expected");
    var instance = this.compileFunctionUsingTypeArguments(<FunctionPrototype>element, typeArguments, contextualTypeArguments, alternativeReportNode); // reports
    if (!instance)
      return;
    if (isModuleExport(instance, declaration))
      this.module.addFunctionExport(instance.internalName, declaration.name.name);
  }

  compileFunctionUsingTypeArguments(prototype: FunctionPrototype, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): Function | null {
    var instance = prototype.resolveInclTypeArguments(typeArguments, contextualTypeArguments, alternativeReportNode); // reports
    if (!instance)
      return null;
    return this.compileFunction(instance) ? instance : null;
  }

  compileFunction(instance: Function): bool {
    if (instance.isCompiled)
      return true;

    var declaration = instance.prototype.declaration;
    if (!declaration)
      throw new Error("declaration expected"); // built-ins are not compiled here

    if (instance.isDeclared) {
      if (declaration.statements) {
        this.error(DiagnosticCode.An_implementation_cannot_be_declared_in_ambient_contexts, declaration.name.range);
        return false;
      }
    } else {
      if (!declaration.statements) {
        this.error(DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration, declaration.name.range);
        return false;
      }
    }
    instance.isCompiled = true;

    // compile statements
    var stmts: ExpressionRef[] | null = null;
    if (!instance.isDeclared) {
      var previousFunction = this.currentFunction;
      this.currentFunction = instance;
      stmts = this.compileStatements(<Statement[]>declaration.statements);
      this.currentFunction = previousFunction;
    }

    // create the function type
    var numParameters = instance.parameters.length;
    var numParametersInclThis = instance.instanceMethodOf ? numParameters + 1 : numParameters;
    var paramIndex = 0;

    var nativeResultType = instance.returnType.toNativeType();
    var nativeParamTypes = new Array<NativeType>(numParametersInclThis);
    var signatureNameParts = new Array<string>(numParametersInclThis + 1);

    if (instance.instanceMethodOf) {
      nativeParamTypes[paramIndex] = this.options.target == Target.WASM64 ? NativeType.I64 : NativeType.I32;
      signatureNameParts[paramIndex++] = instance.instanceMethodOf.type.toSignatureString();
    }
    for (var i = 0; i < numParameters; ++i) {
      nativeParamTypes[paramIndex] = instance.parameters[i].type.toNativeType();
      signatureNameParts[paramIndex++] = instance.parameters[i].type.toSignatureString();
    }
    signatureNameParts[paramIndex] = instance.returnType.toSignatureString();
    var typeRef = this.module.getFunctionTypeBySignature(nativeResultType, nativeParamTypes);
    if (!typeRef)
      typeRef = this.module.addFunctionType(signatureNameParts.join(""), nativeResultType, nativeParamTypes);

    // create the function
    if (instance.isDeclared) {
      this.module.addFunctionImport(instance.internalName, instance.prototype.namespace ? instance.prototype.namespace.simpleName : "env", declaration.name.name, typeRef);
    } else {
      this.module.addFunction(instance.internalName, typeRef, typesToNativeTypes(instance.additionalLocals), this.module.createBlock(null, <ExpressionRef[]>stmts, NativeType.None));
    }
    instance.finalize();
    return true;
  }

  // namespaces

  compileNamespaceDeclaration(declaration: NamespaceDeclaration): void {
    var members = declaration.members;
    var noTreeShaking = this.options.noTreeShaking;
    for (var i = 0, k = members.length; i < k; ++i) {
      var member = members[i];
      switch (member.kind) {

        case NodeKind.CLASS:
          if ((noTreeShaking || hasModifier(ModifierKind.EXPORT, (<ClassDeclaration>member).modifiers)) && !(<ClassDeclaration>member).typeParameters.length)
            this.compileClassDeclaration(<ClassDeclaration>member, []);
          break;

        case NodeKind.INTERFACE:
          if ((noTreeShaking || hasModifier(ModifierKind.EXPORT, (<InterfaceDeclaration>member).modifiers)) && !(<InterfaceDeclaration>member).typeParameters.length)
            this.compileInterfaceDeclaration(<InterfaceDeclaration>member, []);
          break;

        case NodeKind.ENUM:
          if (noTreeShaking || hasModifier(ModifierKind.EXPORT, (<EnumDeclaration>member).modifiers))
            this.compileEnumDeclaration(<EnumDeclaration>member);
          break;

        case NodeKind.FUNCTION:
          if ((noTreeShaking || hasModifier(ModifierKind.EXPORT, (<FunctionDeclaration>member).modifiers)) && !(<FunctionDeclaration>member).typeParameters.length)
            this.compileFunctionDeclaration(<FunctionDeclaration>member, []);
          break;

        case NodeKind.NAMESPACE:
          if (noTreeShaking || hasModifier(ModifierKind.EXPORT, (<NamespaceDeclaration>member).modifiers))
            this.compileNamespaceDeclaration(<NamespaceDeclaration>member);
          break;

        case NodeKind.VARIABLE:
          if (noTreeShaking || hasModifier(ModifierKind.EXPORT, (<VariableStatement>member).modifiers))
            this.compileVariableStatement(<VariableStatement>member);
          break;

        default:
          throw new Error("namespace member expected");
      }
    }
  }

  compileNamespace(ns: Namespace): void {
    if (!ns.members)
      return;

    var noTreeShaking = this.options.noTreeShaking;
    for (var element of ns.members.values()) {
      switch (element.kind) {

        case ElementKind.CLASS_PROTOTYPE:
          if ((noTreeShaking || (<ClassPrototype>element).isExported) && !(<ClassPrototype>element).isGeneric)
            this.compileClassUsingTypeArguments(<ClassPrototype>element, []);
          break;

        case ElementKind.ENUM:
          this.compileEnum(<Enum>element);
          break;

        case ElementKind.FUNCTION_PROTOTYPE:
          if ((noTreeShaking || (<FunctionPrototype>element).isExported) && !(<FunctionPrototype>element).isGeneric)
            this.compileFunctionUsingTypeArguments(<FunctionPrototype>element, []);
          break;

        case ElementKind.GLOBAL:
          this.compileGlobal(<Global>element);
          break;

        case ElementKind.NAMESPACE:
          this.compileNamespace(<Namespace>element);
          break;
      }
    }
  }

  // exports

  compileExportStatement(statement: ExportStatement): void {
    var members = statement.members;
    for (var i = 0, k = members.length; i < k; ++i) {
      var member = members[i];
      var internalExportName = statement.range.source.internalPath + PATH_DELIMITER + member.externalIdentifier.name;
      var element = this.program.exports.get(internalExportName);
      if (!element) // reported in Program#initialize
        continue;
      switch (element.kind) {

        case ElementKind.CLASS_PROTOTYPE:
          if (!(<ClassPrototype>element).isGeneric)
            this.compileClassUsingTypeArguments(<ClassPrototype>element, []);
          break;

        case ElementKind.ENUM:
          this.compileEnum(<Enum>element);
          break;

        case ElementKind.FUNCTION_PROTOTYPE:
          if (!(<FunctionPrototype>element).isGeneric) {
            var functionInstance = this.compileFunctionUsingTypeArguments(<FunctionPrototype>element, []);
            if (functionInstance && statement.range.source.isEntry)
              this.module.addFunctionExport(functionInstance.internalName, member.externalIdentifier.name);
          }
          break;

        case ElementKind.GLOBAL:
          if (this.compileGlobal(<Global>element) && statement.range.source.isEntry) {
            if ((<Global>element).hasConstantValue)
              this.module.addGlobalExport(element.internalName, member.externalIdentifier.name);
            else
              this.warning(DiagnosticCode.Cannot_export_a_mutable_global, member.range);
          }
          break;

        case ElementKind.NAMESPACE:
          this.compileNamespace(<Namespace>element);
          break;
      }
    }
  }

  // classes

  compileClassDeclaration(declaration: ClassDeclaration, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): void {
    var internalName = declaration.internalName;
    var element = this.program.elements.get(internalName);
    if (!element || element.kind != ElementKind.CLASS_PROTOTYPE)
      throw new Error("class expected");
    this.compileClassUsingTypeArguments(<ClassPrototype>element, typeArguments, contextualTypeArguments, alternativeReportNode);
  }

  compileClassUsingTypeArguments(prototype: ClassPrototype, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): void {
    var instance = prototype.resolveInclTypeArguments(typeArguments, contextualTypeArguments, alternativeReportNode);
    if (!instance)
      return;
    this.compileClass(instance);
  }

  compileClass(instance: Class): bool {
    if (instance.isCompiled)
      return true;

    return instance.isCompiled = true;
  }

  compileInterfaceDeclaration(declaration: InterfaceDeclaration, typeArguments: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): void {
    throw new Error("not implemented");
  }

  // memory

  /** Adds a static memory segment with the specified data.  */
  addMemorySegment(buffer: Uint8Array): MemorySegment {
    if (this.memoryOffset.lo & 7) { // align to 8 bytes so any native data type is aligned here
      this.memoryOffset.or32(7);
      this.memoryOffset.add32(1);
    }
    var segment = MemorySegment.create(buffer, this.memoryOffset.clone());
    this.memorySegments.push(segment);
    this.memoryOffset.add32(buffer.length);
    return segment;
  }

  // statements

  compileStatement(statement: Statement): ExpressionRef {
    switch (statement.kind) {

      case NodeKind.BLOCK:
        return this.compileBlockStatement(<BlockStatement>statement);

      case NodeKind.BREAK:
        return this.compileBreakStatement(<BreakStatement>statement);

      case NodeKind.CONTINUE:
        return this.compileContinueStatement(<ContinueStatement>statement);

      case NodeKind.DO:
        return this.compileDoStatement(<DoStatement>statement);

      case NodeKind.EMPTY:
        return this.compileEmptyStatement(<EmptyStatement>statement);

      case NodeKind.EXPRESSION:
        return this.compileExpressionStatement(<ExpressionStatement>statement);

      case NodeKind.FOR:
        return this.compileForStatement(<ForStatement>statement);

      case NodeKind.IF:
        return this.compileIfStatement(<IfStatement>statement);

      case NodeKind.RETURN:
        return this.compileReturnStatement(<ReturnStatement>statement);

      case NodeKind.SWITCH:
        return this.compileSwitchStatement(<SwitchStatement>statement);

      case NodeKind.THROW:
        return this.compileThrowStatement(<ThrowStatement>statement);

      case NodeKind.TRY:
        return this.compileTryStatement(<TryStatement>statement);

      case NodeKind.VARIABLE:
        return this.compileVariableStatement(<VariableStatement>statement);

      case NodeKind.WHILE:
        return this.compileWhileStatement(<WhileStatement>statement);

      case NodeKind.TYPEDECLARATION:
        if (this.currentFunction == this.startFunction)
          return this.module.createNop();
        // fall-through: must be top-level; function bodies are not guaranteed to be evaluated

      default:
        throw new Error("statement expected");
    }
  }

  compileStatements(statements: Statement[]): ExpressionRef[] {
    var k = statements.length;
    var stmts = new Array<ExpressionRef>(k);
    for (var i = 0; i < k; ++i)
      stmts[i] = this.compileStatement(statements[i]);
    return stmts; // array of 0-es in noEmit-mode
  }

  compileBlockStatement(statement: BlockStatement): ExpressionRef {
    var statements = statement.statements;
    if (statements.length == 0)
      return this.module.createNop();
    if (statements.length == 1)
      return this.compileStatement(statements[0]);
    return this.module.createBlock(null, this.compileStatements(statements), NativeType.None);
  }

  compileBreakStatement(statement: BreakStatement): ExpressionRef {
    if (statement.label) {
      this.error(DiagnosticCode.Operation_not_supported, statement.label.range);
      return this.module.createUnreachable();
    }
    var context = this.currentFunction.breakContext;
    if (context != null)
      return this.module.createBreak("break|" + context);

    this.error(DiagnosticCode.A_break_statement_can_only_be_used_within_an_enclosing_iteration_or_switch_statement, statement.range);
    return this.module.createUnreachable();
  }

  compileContinueStatement(statement: ContinueStatement): ExpressionRef {
    if (statement.label) {
      this.error(DiagnosticCode.Operation_not_supported, statement.label.range);
      return this.module.createUnreachable();
    }
    var context = this.currentFunction.breakContext;
    if (context && !this.disallowContinue)
      return this.module.createBreak("continue|" + context);

    this.error(DiagnosticCode.A_continue_statement_can_only_be_used_within_an_enclosing_iteration_statement, statement.range);
    return this.module.createUnreachable();
  }

  compileDoStatement(statement: DoStatement): ExpressionRef {
    var label = this.currentFunction.enterBreakContext();
    var body = this.compileStatement(statement.statement);
    var condition = this.compileExpression(statement.condition, Type.i32);
    this.currentFunction.leaveBreakContext();
    var breakLabel = "break|" + label;
    var continueLabel = "continue|" + label;
    return this.module.createBlock(breakLabel, [
      this.module.createLoop(continueLabel,
        this.module.createBlock(null, [
          body,
          this.module.createBreak(continueLabel, condition)
        ], NativeType.None))
    ], NativeType.None);
  }

  compileEmptyStatement(statement: EmptyStatement): ExpressionRef {
    return this.module.createNop();
  }

  compileExpressionStatement(statement: ExpressionStatement): ExpressionRef {
    var expr = this.compileExpression(statement.expression, Type.void, ConversionKind.NONE);
    if (this.currentType != Type.void) {
      expr = this.module.createDrop(expr);
      this.currentType = Type.void;
    }
    return expr;
  }

  compileForStatement(statement: ForStatement): ExpressionRef {
    var context = this.currentFunction.enterBreakContext();
    var variableWasLocal = this.variableIsLocal;
    if (this.currentFunction == this.startFunction)
      this.variableIsLocal = true;
    var initializer = statement.initializer ? this.compileStatement(<Statement>statement.initializer) : this.module.createNop();
    this.variableIsLocal = variableWasLocal;
    var condition = statement.condition ? this.compileExpression(<Expression>statement.condition, Type.i32) : this.module.createI32(1);
    var incrementor = statement.incrementor ? this.compileExpression(<Expression>statement.incrementor, Type.void) : this.module.createNop();
    var body = this.compileStatement(statement.statement);
    this.currentFunction.leaveBreakContext();
    var continueLabel = "continue|" + context;
    var breakLabel = "break|" + context;
    return this.module.createBlock(breakLabel, [
      initializer,
      this.module.createLoop(continueLabel, this.module.createBlock(null, [
        this.module.createIf(condition, this.module.createBlock(null, [
          body,
          incrementor,
          this.module.createBreak(continueLabel)
        ], NativeType.None))
      ], NativeType.None))
    ], NativeType.None);
  }

  compileIfStatement(statement: IfStatement): ExpressionRef {
    var condition = this.compileExpression(statement.condition, Type.i32);
    var ifTrue = this.compileStatement(statement.ifTrue);
    var ifFalse = statement.ifFalse ? this.compileStatement(<Statement>statement.ifFalse) : <ExpressionRef>0;
    return this.module.createIf(condition, ifTrue, ifFalse);
  }

  compileReturnStatement(statement: ReturnStatement): ExpressionRef {
    if (this.currentFunction) {
      var expression = statement.value ? this.compileExpression(<Expression>statement.value, this.currentFunction.returnType) : <ExpressionRef>0;
      return this.module.createReturn(expression);
    }
    return this.module.createUnreachable();
  }

  compileSwitchStatement(statement: SwitchStatement): ExpressionRef {
    var context = this.currentFunction.enterBreakContext();
    var previousDisallowContinue = this.disallowContinue;
    this.disallowContinue = true;

    // introduce a local for evaluating the condition (exactly once)
    var tempLocal = this.currentFunction.getTempLocal(Type.i32);
    var k = statement.cases.length;

    // prepend initializer to inner block
    var breaks = new Array<ExpressionRef>(1 + k);
    breaks[0] = this.module.createSetLocal(tempLocal.index, this.compileExpression(statement.condition, Type.i32)); // initializer

    // make one br_if per (possibly dynamic) labeled case (binaryen optimizes to br_table where possible)
    var breakIndex = 1;
    var defaultIndex = -1;
    for (var i = 0; i < k; ++i) {
      var case_ = statement.cases[i];
      if (case_.label) {
        breaks[breakIndex++] = this.module.createBreak("case" + i.toString(10) + "|" + context,
          this.module.createBinary(BinaryOp.EqI32,
            this.module.createGetLocal(tempLocal.index, NativeType.I32),
            this.compileExpression(case_.label, Type.i32)
          )
        );
      } else
        defaultIndex = i;
    }

    this.currentFunction.freeTempLocal(tempLocal);

    // otherwise br to default respectively out of the switch if there is no default case
    breaks[breakIndex] = this.module.createBreak((defaultIndex >= 0
        ? "case" + defaultIndex.toString(10)
        : "break"
      ) + "|" + context);

    // nest blocks in order
    var currentBlock = this.module.createBlock("case0|" + context, breaks, NativeType.None);
    for (i = 0; i < k; ++i) {
      case_ = statement.cases[i];
      var nextLabel = i == k - 1 ? "break|" + context : "case" + (i + 1).toString(10) + "|" + context;
      var l = case_.statements.length;
      var body = new Array<ExpressionRef>(1 + l);
      body[0] = currentBlock;
      for (var j = 0; j < l; ++j)
        body[j + 1] = this.compileStatement(case_.statements[j]);
      currentBlock = this.module.createBlock(nextLabel, body, NativeType.None);
    }
    this.currentFunction.leaveBreakContext();
    this.disallowContinue = previousDisallowContinue;

    return currentBlock;
  }

  compileThrowStatement(statement: ThrowStatement): ExpressionRef {
    return this.module.createUnreachable(); // TODO: waiting for exception-handling spec
  }

  compileTryStatement(statement: TryStatement): ExpressionRef {
    throw new Error("not implemented");
    // can't yet support something like: try { return ... } finally { ... }
    // worthwhile to investigate lowering returns to block results (here)?
  }

  compileVariableStatement(statement: VariableStatement): ExpressionRef {
    var declarations = statement.declarations;

    // top-level variables become globals
    if (this.currentFunction == this.startFunction && !this.variableIsLocal) {
      var isConst = hasModifier(ModifierKind.CONST, statement.modifiers);
      for (var i = 0, k = declarations.length; i < k; ++i)
        this.compileGlobalDeclaration(declarations[i], isConst);
      return this.module.createNop();
    }
    // other variables become locals
    var initializers = new Array<ExpressionRef>();
    for (i = 0, k = declarations.length; i < k; ++i) {
      var declaration = declarations[i];
      var name = declaration.name.name;
      var type: Type | null = null;
      var init: ExpressionRef = 0;
      if (declaration.type) {
        type = this.program.resolveType(<TypeNode>declaration.type, this.currentFunction.contextualTypeArguments, true); // reports
        if (!type)
          continue;
        if (declaration.initializer)
          init = this.compileExpression(declaration.initializer, type); // reports
      } else if (declaration.initializer) { // infer type using void/NONE for proper literal inference
        init = this.compileExpression(declaration.initializer, Type.void, ConversionKind.NONE); // reports
        if (this.currentType == Type.void) {
          this.error(DiagnosticCode.Type_0_is_not_assignable_to_type_1, declaration.range, this.currentType.toString(), "<auto>");
          continue;
        }
        type = this.currentType;
      } else {
        this.error(DiagnosticCode.Type_expected, declaration.name.range.atEnd);
        continue;
      }
      if (this.currentFunction.locals.has(name))
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, name); // recoverable
      else {
        if (hasModifier(ModifierKind.CONST, declaration.modifiers)) {
          if (init) {
            init = this.precomputeExpressionRef(init);
            if (_BinaryenExpressionGetId(init) == ExpressionId.Const) {
              var local = new Local(this.program, name, -1, type);
              switch (_BinaryenExpressionGetType(init)) {
                case NativeType.I32:
                  local = local.withConstantIntegerValue(_BinaryenConstGetValueI32(init), 0);
                  break;
                case NativeType.I64:
                  local = local.withConstantIntegerValue(_BinaryenConstGetValueI64Low(init), _BinaryenConstGetValueI64High(init));
                  break;
                case NativeType.F32:
                  local = local.withConstantFloatValue(<f64>_BinaryenConstGetValueF32(init));
                  break;
                case NativeType.F64:
                  local = local.withConstantFloatValue(_BinaryenConstGetValueF64(init));
                  break;
                default:
                  throw new Error("concrete type expected");
              }
              this.currentFunction.locals.set(name, local);
              continue;
            } else
              this.warning(DiagnosticCode.Compiling_constant_with_non_constant_initializer_as_mutable, declaration.range);
          } else {
            this.error(DiagnosticCode._const_declarations_must_be_initialized, declaration.range);
          }
        }
        this.currentFunction.addLocal(type, name);
        if (init)
          initializers.push(this.compileAssignmentWithValue(declaration.name, init));
      }
    }
    return initializers.length ? this.module.createBlock(null, initializers, NativeType.None) : this.module.createNop();
  }

  compileWhileStatement(statement: WhileStatement): ExpressionRef {
    var label = this.currentFunction.enterBreakContext();
    var condition = this.compileExpression(statement.condition, Type.i32);
    var breakLabel = "break|" + label;
    var continueLabel = "continue|" + label;
    var body = this.compileStatement(statement.statement);
    this.currentFunction.leaveBreakContext();
    return this.module.createBlock(breakLabel, [
      this.module.createLoop(continueLabel,
        this.module.createIf(condition, this.module.createBlock(null, [
          body,
          this.module.createBreak(continueLabel)
        ], NativeType.None))
      )
    ], NativeType.None);
  }

  // expressions

  compileExpression(expression: Expression, contextualType: Type, conversionKind: ConversionKind = ConversionKind.IMPLICIT, wrapSmallIntegers: bool = true): ExpressionRef {
    this.currentType = contextualType;

    var expr: ExpressionRef;
    switch (expression.kind) {

      case NodeKind.ASSERTION:
        expr = this.compileAssertionExpression(<AssertionExpression>expression, contextualType);
        break;

      case NodeKind.BINARY:
        expr = this.compileBinaryExpression(<BinaryExpression>expression, contextualType, wrapSmallIntegers);
        break;

      case NodeKind.CALL:
        expr = this.compileCallExpression(<CallExpression>expression, contextualType);
        break;

      case NodeKind.COMMA:
        expr = this.compileCommaExpression(<CommaExpression>expression, contextualType);
        break;

      case NodeKind.ELEMENTACCESS:
        expr = this.compileElementAccessExpression(<ElementAccessExpression>expression, contextualType);
        break;

      case NodeKind.IDENTIFIER:
      case NodeKind.FALSE:
      case NodeKind.NULL:
      case NodeKind.THIS:
      case NodeKind.TRUE:
        expr = this.compileIdentifierExpression(<IdentifierExpression>expression, contextualType);
        break;

      case NodeKind.LITERAL:
        expr = this.compileLiteralExpression(<LiteralExpression>expression, contextualType);
        break;

      case NodeKind.NEW:
        expr = this.compileNewExpression(<NewExpression>expression, contextualType);
        break;

      case NodeKind.PARENTHESIZED:
        expr = this.compileParenthesizedExpression(<ParenthesizedExpression>expression, contextualType);
        break;

      case NodeKind.PROPERTYACCESS:
        expr = this.compilePropertyAccessExpression(<PropertyAccessExpression>expression, contextualType);
        break;

      case NodeKind.TERNARY:
        expr = this.compileTernaryExpression(<TernaryExpression>expression, contextualType);
        break;

      case NodeKind.UNARYPOSTFIX:
        expr = this.compileUnaryPostfixExpression(<UnaryPostfixExpression>expression, contextualType);
        break;

      case NodeKind.UNARYPREFIX:
        expr = this.compileUnaryPrefixExpression(<UnaryPrefixExpression>expression, contextualType, wrapSmallIntegers);
        break;

      default:
        throw new Error("expression expected");
    }

    if (conversionKind != ConversionKind.NONE && this.currentType != contextualType) {
      expr = this.convertExpression(expr, this.currentType, contextualType, conversionKind, expression);
      this.currentType = contextualType;
    }
    return expr;
  }

  precomputeExpression(expression: Expression, contextualType: Type, conversionKind: ConversionKind = ConversionKind.IMPLICIT): ExpressionRef {
    return this.precomputeExpressionRef(this.compileExpression(expression, contextualType, conversionKind));
  }

  precomputeExpressionRef(expr: ExpressionRef): ExpressionRef {
    var nativeType = this.currentType.toNativeType();
    var typeRef = this.module.getFunctionTypeBySignature(nativeType, []);
    if (!typeRef)
      typeRef = this.module.addFunctionType(this.currentType.toSignatureString(), nativeType, []);
    var funcRef = this.module.addFunction("__precompute", typeRef, [], expr);
    this.module.runPasses([ "precompute" ], funcRef);
    var ret = _BinaryenFunctionGetBody(funcRef);
    this.module.removeFunction("__precompute");
    // TODO: also remove the function type somehow if no longer used or make the C-API accept
    // a `null` typeRef, using an implicit type.
    return ret;
  }

  convertExpression(expr: ExpressionRef, fromType: Type, toType: Type, conversionKind: ConversionKind, reportNode: Node): ExpressionRef {
    if (conversionKind == ConversionKind.NONE) {
      assert(false);
      return expr;
    }

    // void to any
    if (fromType.kind == TypeKind.VOID) {
      this.error(DiagnosticCode.Type_0_is_not_assignable_to_type_1, reportNode.range, fromType.toString(), toType.toString());
      return this.module.createUnreachable();
    }

    // any to void
    if (toType.kind == TypeKind.VOID)
      return this.module.createDrop(expr);

    var mod = this.module;
    var losesInformation = false;

    if (fromType.is(TypeFlags.FLOAT)) {

      // float to float
      if (toType.is(TypeFlags.FLOAT)) {
        if (fromType.kind == TypeKind.F32) {

          // f32 to f64
          if (toType.kind == TypeKind.F64)
            expr = mod.createUnary(UnaryOp.PromoteF32, expr);

          // otherwise f32 to f32

        // f64 to f32
        } else if (toType.kind == TypeKind.F32) {
          losesInformation = true;
          expr = mod.createUnary(UnaryOp.DemoteF64, expr);
        }

        // otherwise f64 to f64

      // float to int
      } else if (toType.is(TypeFlags.INTEGER)) {
        losesInformation = true;

        // f32 to int
        if (fromType.kind == TypeKind.F32) {
          if (toType.is(TypeFlags.SIGNED)) {
            if (toType.is(TypeFlags.LONG))
              expr = mod.createUnary(UnaryOp.TruncF32ToI64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF32ToI32, expr);
              if (toType.is(TypeFlags.SMALL))
                expr = makeSmallIntegerWrap(expr, toType, this.module);
            }
          } else {
            if (toType.is(TypeFlags.LONG))
              expr = mod.createUnary(UnaryOp.TruncF32ToU64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF32ToU32, expr);
              if (toType.is(TypeFlags.SMALL))
                expr = makeSmallIntegerWrap(expr, toType, this.module);
            }
          }

        // f64 to int
        } else {
          if (toType.is(TypeFlags.SIGNED)) {
            if (toType.is(TypeFlags.LONG))
              expr = mod.createUnary(UnaryOp.TruncF64ToI64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF64ToI32, expr);
              if (toType.is(TypeFlags.SMALL))
                expr = makeSmallIntegerWrap(expr, toType, this.module);
            }
          } else {
            if (toType.is(TypeFlags.LONG))
              expr = mod.createUnary(UnaryOp.TruncF64ToU64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF64ToU32, expr);
              if (toType.is(TypeFlags.SMALL))
                expr = makeSmallIntegerWrap(expr, toType, this.module);
            }
          }
        }

      // float to void
      } else {
        assert(toType.flags == TypeFlags.NONE);
        expr = this.module.createDrop(expr);
      }

    // int to float
    } else if (fromType.is(TypeFlags.INTEGER) && toType.is(TypeFlags.FLOAT)) {

      // int to f32
      if (toType.kind == TypeKind.F32) {
        if (fromType.is(TypeFlags.LONG)) {
          losesInformation = true;
          expr = mod.createUnary(fromType.is(TypeFlags.SIGNED) ? UnaryOp.ConvertI64ToF32 : UnaryOp.ConvertU64ToF32, expr);
        } else {
          losesInformation = !fromType.is(TypeFlags.SMALL);
          expr = mod.createUnary(fromType.is(TypeFlags.SIGNED) ? UnaryOp.ConvertI32ToF32 : UnaryOp.ConvertU32ToF32, expr);
        }

      // int to f64
      } else {
        if (fromType.is(TypeFlags.LONG)) {
          losesInformation = true;
          expr = mod.createUnary(fromType.is(TypeFlags.SIGNED) ? UnaryOp.ConvertI64ToF64 : UnaryOp.ConvertU64ToF64, expr);
        } else
          expr = mod.createUnary(fromType.is(TypeFlags.SIGNED) ? UnaryOp.ConvertI32ToF64 : UnaryOp.ConvertU32ToF64, expr);
      }

    // int to int
    } else {
      if (fromType.is(TypeFlags.LONG)) {

        // i64 to i32
        if (!toType.is(TypeFlags.LONG)) {
          losesInformation = true;
          expr = mod.createUnary(UnaryOp.WrapI64, expr); // discards upper bits
          if (toType.is(TypeFlags.SMALL))
            expr = makeSmallIntegerWrap(expr, toType, this.module);
        }

      // i32 to i64
      } else if (toType.is(TypeFlags.LONG)) {
        expr = mod.createUnary(toType.is(TypeFlags.SIGNED) ? UnaryOp.ExtendI32 : UnaryOp.ExtendU32, expr);

      // i32 or smaller to even smaller or same size int with change of sign
      } else if (toType.is(TypeFlags.SMALL) && (fromType.size > toType.size || (fromType.size == toType.size && fromType.is(TypeFlags.SIGNED) != toType.is(TypeFlags.SIGNED)))) {
        losesInformation = true;
        expr = makeSmallIntegerWrap(expr, toType, this.module);
      }

      // otherwise (smaller) i32/u32 to (same size) i32/u32
    }

    if (losesInformation && conversionKind == ConversionKind.IMPLICIT)
      this.error(DiagnosticCode.Conversion_from_type_0_to_1_possibly_loses_information_and_thus_requires_an_explicit_cast, reportNode.range, fromType.toString(), toType.toString());

    return expr;
  }

  compileAssertionExpression(expression: AssertionExpression, contextualType: Type): ExpressionRef {
    var toType = this.program.resolveType(expression.toType, this.currentFunction.contextualTypeArguments); // reports
    if (!toType)
      return this.module.createUnreachable();
    return this.compileExpression(expression.expression, toType, ConversionKind.EXPLICIT);
  }

  compileBinaryExpression(expression: BinaryExpression, contextualType: Type, wrapSmallIntegers: bool = true): ExpressionRef {
    var left: ExpressionRef;
    var right: ExpressionRef;
    var condition: ExpressionRef;
    var expr: ExpressionRef;

    var compound = false;
    var possiblyOverflows = false;
    var tempLocal: Local | null = null

    switch (expression.operator) {

      case Token.LESSTHAN:
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.LtI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.LtI64, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.LtI64 : BinaryOp.LtI32, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.LtU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.LtU64 : BinaryOp.LtU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.LtU64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.LtF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.LtF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.GREATERTHAN:
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.GtI32, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.GtI64 : BinaryOp.GtI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.GtI64, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.GtU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.GtU64 : BinaryOp.GtU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.GtU64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.GtF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.GtF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.LESSTHAN_EQUALS:
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.LeI32, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.LeI64 : BinaryOp.LeI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.LeI64, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.LeU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.LeU64 : BinaryOp.LeU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.LeU64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.LeF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.LeF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.GREATERTHAN_EQUALS:
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.GeI32, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.GeI64 : BinaryOp.GeI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.GeI64, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.GeU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.GeU64 : BinaryOp.GeU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.GeU64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.GeF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.GeF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.EQUALS_EQUALS_EQUALS:
        // TODO?
      case Token.EQUALS_EQUALS:

        // NOTE that this favors correctness, in terms of emitting a binary expression, over
        // checking for a possible use of unary EQZ. while the most classic of all optimizations,
        // that's not what the source told us to do. for reference, `!left` emits unary EQZ.

        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.EqI32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.EqI64 : BinaryOp.EqI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.EqI64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.EqF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.EqF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.EXCLAMATION_EQUALS_EQUALS:
        // TODO?
      case Token.EXCLAMATION_EQUALS:
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.NeI32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.NeI64 : BinaryOp.NeI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.NeI64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.NeF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.NeF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        this.currentType = Type.bool;
        break;

      case Token.EQUALS:
        return this.compileAssignment(expression.left, expression.right, contextualType);

      case Token.PLUS_EQUALS:
        compound = true;
      case Token.PLUS: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          case TypeKind.I32:
          case TypeKind.U32:
            expr = this.module.createBinary(BinaryOp.AddI32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.AddI64 : BinaryOp.AddI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.AddI64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.AddF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.AddF64, left, right);
            break;

          default:
            throw new Error("concrete type expected");
        }
        break;

      case Token.MINUS_EQUALS:
        compound = true;
      case Token.MINUS: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          case TypeKind.I32:
          case TypeKind.U32:
            expr = this.module.createBinary(BinaryOp.SubI32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.SubI64 : BinaryOp.SubI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.SubI64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.SubF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.SubF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.ASTERISK_EQUALS:
        compound = true;
      case Token.ASTERISK: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
            // fall-through
          case TypeKind.I32:
          case TypeKind.U32:
            expr = this.module.createBinary(BinaryOp.MulI32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.MulI64 : BinaryOp.MulI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.MulI64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.MulF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.MulF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.SLASH_EQUALS:
        compound = true;
      case Token.SLASH: // TODO: when can division remain unwrapped? does it overflow?
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
            possiblyOverflows = true;
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.DivI32, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.DivI64 : BinaryOp.DivI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.DivI64, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          case TypeKind.U32:
            expr = this.module.createBinary(BinaryOp.DivU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.DivU64 : BinaryOp.DivU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.DivU64, left, right);
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.DivF32, left, right);
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.DivF64, left, right);
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.PERCENT_EQUALS:
        compound = true;
      case Token.PERCENT: // TODO: when can remainder remain unwrapped? may it overflow?
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.I32:
            expr = this.module.createBinary(BinaryOp.RemI32, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.RemI64 : BinaryOp.RemI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.RemI64, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.U32:
          case TypeKind.BOOL:
            expr = this.module.createBinary(BinaryOp.RemU32, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.RemU64 : BinaryOp.RemU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.RemU64, left, right);
            break;

          case TypeKind.F32:
          case TypeKind.F64:
            // TODO: internal fmod, possibly simply imported from JS
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            expr = this.module.createUnreachable();
            break;

          default:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.LESSTHAN_LESSTHAN_EQUALS:
        compound = true;
      case Token.LESSTHAN_LESSTHAN: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          default:
            expr = this.module.createBinary(BinaryOp.ShlI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.ShlI64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.ShlI64 : BinaryOp.ShlI32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.GREATERTHAN_GREATERTHAN_EQUALS:
        compound = true;
      case Token.GREATERTHAN_GREATERTHAN: // must wrap small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT);

        switch (this.currentType.kind) {

          default:
            // assumes signed shr on signed small integers does not overflow
            expr = this.module.createBinary(BinaryOp.ShrI32, left, right);
            break;

          case TypeKind.I64:
            expr = this.module.createBinary(BinaryOp.ShrI64, left, right);
            break;

          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.ShrI64 : BinaryOp.ShrI32, left, right);
            break;

          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            // assumes unsigned shr on unsigned small integers does not overflow
          case TypeKind.U32:
            expr = this.module.createBinary(BinaryOp.ShrU32, left, right);
            break;

          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.ShrU64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.ShrU64 : BinaryOp.ShrU32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS:
        compound = true;
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN: // modifies low bits of small integers if unsigned
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType == Type.void ? Type.u64 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
            possiblyOverflows = true;
            // fall-through
          default:
            // assumes that unsigned shr on unsigned small integers does not overflow
            expr = this.module.createBinary(BinaryOp.ShrU32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.ShrU64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.ShrU64 : BinaryOp.ShrU32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.AMPERSAND_EQUALS:
        compound = true;
      case Token.AMPERSAND: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // if left or right already did
          default:
            expr = this.module.createBinary(BinaryOp.AndI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.AndI64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.AndI64 : BinaryOp.AndI32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.BAR_EQUALS:
        compound = true;
      case Token.BAR: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // if left or right already did
          default:
            expr = this.module.createBinary(BinaryOp.OrI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.OrI64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.OrI64 : BinaryOp.OrI32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.CARET_EQUALS:
        compound = true;
      case Token.CARET: // retains low bits of small integers
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, ConversionKind.NONE, false);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // if left or right already did
          default:
            expr = this.module.createBinary(BinaryOp.XorI32, left, right);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.XorI64, left, right);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.XorI64 : BinaryOp.XorI32, left, right);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      // logical (no overloading)

      case Token.AMPERSAND_AMPERSAND: // left && right
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        // clone left if free of side effects while tolerating one level of nesting
        expr = this.module.cloneExpression(left, true, 1);

        // if not possible, tee left to a temp. local
        if (!expr) {
          tempLocal = this.currentFunction.getAndFreeTempLocal(this.currentType);
          left = this.module.createTeeLocal(tempLocal.index, left);
        }

        possiblyOverflows = this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER);
        condition = makeIsTrueish(left, this.currentType, this.module);

        // simplify when cloning left without side effects was successful
        if (expr)
          expr = this.module.createIf(
            condition, // left
            right,     // ? right
            expr       // : cloned left
          );

        // otherwise make use of the temp. local
        else {
          assert(tempLocal);
          expr = this.module.createIf(
            condition,
            right,
            this.module.createGetLocal((<Local>tempLocal).index, this.currentType.toNativeType())
          );
        }
        break;

      case Token.BAR_BAR:  // left || right
        left = this.compileExpression(expression.left, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        right = this.compileExpression(expression.right, this.currentType, ConversionKind.IMPLICIT, false);

        // clone left if free of side effects while tolerating one level of nesting
        expr = this.module.cloneExpression(left, true, 1);

        // if not possible, tee left to a temp. local
        if (!expr) {
          tempLocal = this.currentFunction.getAndFreeTempLocal(this.currentType);
          left = this.module.createTeeLocal(tempLocal.index, left);
        }

        possiblyOverflows = this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER); // if right already did
        condition = makeIsTrueish(left, this.currentType, this.module);

        // simplify when cloning left without side effects was successful
        if (expr)
          expr = this.module.createIf(
            condition, // left
            expr,      // ? cloned left
            right      // : right
          );

        // otherwise make use of the temp. local
        else {
          assert(tempLocal);
          expr = this.module.createIf(
            condition,
            this.module.createGetLocal((<Local>tempLocal).index, this.currentType.toNativeType()),
            right
          );
        }
        break;

      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        throw new Error("not implemented");
    }
    if (possiblyOverflows && wrapSmallIntegers) {
      assert(this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER));
      expr = makeSmallIntegerWrap(expr, this.currentType, this.module);
    }
    return compound
      ? this.compileAssignmentWithValue(expression.left, expr, contextualType != Type.void)
      : expr;
  }

  compileAssignment(expression: Expression, valueExpression: Expression, contextualType: Type): ExpressionRef {
    var resolved = this.program.resolveExpression(expression, this.currentFunction); // reports
    if (!resolved)
      return this.module.createUnreachable();

    // to compile just the value, we need to know the target's type
    var element = resolved.element;
    var elementType: Type;
    switch (element.kind) {

      case ElementKind.GLOBAL:
        if (!this.compileGlobal(<Global>element)) // reports; not yet compiled if a static field compiled as a global
          return this.module.createUnreachable();
        assert((<Global>element).type != Type.void);
        // fall-through

      case ElementKind.LOCAL:
      case ElementKind.FIELD:
        elementType = (<VariableLikeElement>element).type;
        break;

      case ElementKind.PROPERTY:
        var setterPrototype = (<Property>element).setterPrototype;
        if (setterPrototype) {
          var setterInstance = setterPrototype.resolve(); // reports
          if (!setterInstance)
            return this.module.createUnreachable();
          elementType = setterInstance.parameters[0].type;
          break;
        }
        this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, (<Property>element).internalName);
        return this.module.createUnreachable();

      case ElementKind.FUNCTION_PROTOTYPE:
        if (expression.kind == NodeKind.ELEMENTACCESS) { // @operator("[]")
          assert(resolved.target && resolved.target.kind == ElementKind.CLASS && element.simpleName == (<Class>resolved.target).prototype.fnIndexedGet)
          var resolvedIndexedSet = (<FunctionPrototype>element).resolve(null);
          if (resolvedIndexedSet) {
            elementType = resolvedIndexedSet.returnType;
            break;
          }
        }
        // fall-through
      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        return this.module.createUnreachable();
    }

    // now compile the value and do the assignment
    this.currentType = elementType;
    return this.compileAssignmentWithValue(expression, this.compileExpression(valueExpression, elementType), contextualType != Type.void);
  }

  compileAssignmentWithValue(expression: Expression, valueWithCorrectType: ExpressionRef, tee: bool = false): ExpressionRef {
    var resolved = this.program.resolveExpression(expression, this.currentFunction); // reports
    if (!resolved)
      return this.module.createUnreachable();

    var element = resolved.element;
    var tempLocal: Local;
    var targetExpr: ExpressionRef;
    switch (element.kind) {

      case ElementKind.LOCAL:
        this.currentType = tee ? (<Local>element).type : Type.void;
        if ((<Local>element).isConstant) {
          this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, (<Local>element).internalName);
          return this.module.createUnreachable();
        }
        return tee
          ? this.module.createTeeLocal((<Local>element).index, valueWithCorrectType)
          : this.module.createSetLocal((<Local>element).index, valueWithCorrectType);

      case ElementKind.GLOBAL:
        if (!this.compileGlobal(<Global>element)) // reports; not yet compiled if a static field compiled as a global
          return this.module.createUnreachable();
        assert((<Global>element).type != Type.void);
        this.currentType = tee ? (<Global>element).type : Type.void;
        if ((<Local>element).isConstant) {
          this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, (<Local>element).internalName);
          return this.module.createUnreachable();
        }
        if (!tee)
          return this.module.createSetGlobal((<Global>element).internalName, valueWithCorrectType);
        var globalNativeType = (<Global>element).type.toNativeType();
        return this.module.createBlock(null, [ // emulated teeGlobal
          this.module.createSetGlobal((<Global>element).internalName, valueWithCorrectType),
          this.module.createGetGlobal((<Global>element).internalName, globalNativeType)
        ], globalNativeType);

      case ElementKind.FIELD:
        if ((<Field>element).prototype.isReadonly) {
          this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, (<Field>element).internalName);
          return this.module.createUnreachable();
        }
        assert(resolved.targetExpression != null);
        targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32, ConversionKind.NONE);
        assert(this.currentType.classType);
        this.currentType = tee ? (<Field>element).type : Type.void;
        var elementNativeType = (<Field>element).type.toNativeType();
        if (!tee)
          return this.module.createStore((<Field>element).type.size >> 3, targetExpr, valueWithCorrectType, elementNativeType, (<Field>element).memoryOffset);
        tempLocal = this.currentFunction.getAndFreeTempLocal((<Field>element).type);
        return this.module.createBlock(null, [ // TODO: simplify if valueWithCorrectType has no side effects
          this.module.createSetLocal(tempLocal.index, valueWithCorrectType),
          this.module.createStore((<Field>element).type.size >> 3, targetExpr, this.module.createGetLocal(tempLocal.index, elementNativeType), elementNativeType, (<Field>element).memoryOffset),
          this.module.createGetLocal(tempLocal.index, elementNativeType)
        ], elementNativeType);

      case ElementKind.PROPERTY:
        var setterPrototype = (<Property>element).setterPrototype;
        if (setterPrototype) {
          var setterInstance = setterPrototype.resolve(); // reports
          if (setterInstance) {
            assert(setterInstance.parameters.length == 1);
            if (!tee) {
              if (setterInstance.isInstance) {
                assert(resolved.targetExpression != null);
                targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32, ConversionKind.NONE);
                assert(this.currentType.classType);
                this.currentType = Type.void;
                return this.makeCall(setterInstance, [ targetExpr, valueWithCorrectType ]);
              } else {
                this.currentType = Type.void;
                return this.makeCall(setterInstance, [ valueWithCorrectType ]);
              }
            }
            var getterPrototype = (<Property>element).getterPrototype;
            assert(getterPrototype != null);
            var getterInstance = (<FunctionPrototype>getterPrototype).resolve(); // reports
            if (getterInstance) {
              assert(getterInstance.parameters.length == 0);
              if (setterInstance.isInstance) {
                assert(resolved.targetExpression != null);
                targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32, ConversionKind.NONE);
                assert(this.currentType.classType);
                tempLocal = this.currentFunction.getAndFreeTempLocal(getterInstance.returnType);
                return this.module.createBlock(null, [
                  this.makeCall(setterInstance, [ this.module.createTeeLocal(tempLocal.index, targetExpr), valueWithCorrectType ]),
                  this.makeCall(getterInstance, [ this.module.createGetLocal(tempLocal.index, tempLocal.type.toNativeType()) ])
                ], (this.currentType = getterInstance.returnType).toNativeType());
              } else
                return this.module.createBlock(null, [
                  this.makeCall(setterInstance, [ valueWithCorrectType ]),
                  this.makeCall(getterInstance)
                ], (this.currentType = getterInstance.returnType).toNativeType());
            }
          }
        } else
          this.error(DiagnosticCode.Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property, expression.range, (<Property>element).internalName);
        return this.module.createUnreachable();

      case ElementKind.FUNCTION_PROTOTYPE:
        if (expression.kind == NodeKind.ELEMENTACCESS) { // @operator("[]")
          assert(resolved.target && resolved.target.kind == ElementKind.CLASS);
          var resolvedIndexedGet = (<FunctionPrototype>element).resolve();
          if (!resolvedIndexedGet)
            return this.module.createUnreachable();
          var indexedSetName = (<Class>resolved.target).prototype.fnIndexedSet;
          var indexedSet: Element | null;
          if (indexedSetName != null && (<Class>resolved.target).members && (indexedSet = (<Map<string,Element>>(<Class>resolved.target).members).get(indexedSetName)) && indexedSet.kind == ElementKind.FUNCTION_PROTOTYPE) { // @operator("[]=")
            var resolvedIndexedSet = (<FunctionPrototype>indexedSet).resolve();
            if (!resolvedIndexedSet)
              return this.module.createUnreachable();
            targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32, ConversionKind.NONE);
            assert(this.currentType.classType);
            var elementExpr = this.compileExpression((<ElementAccessExpression>expression).elementExpression, Type.i32);
            if (!tee) {
              this.currentType = resolvedIndexedSet.returnType;
              return this.makeCall(resolvedIndexedSet, [ targetExpr, elementExpr, valueWithCorrectType ]);
            }
            this.currentType = resolvedIndexedGet.returnType;
            tempLocal = this.currentFunction.getAndFreeTempLocal(this.currentType);
            return this.module.createBlock(null, [
              this.makeCall(resolvedIndexedSet, [ targetExpr, elementExpr, this.module.createTeeLocal(tempLocal.index, valueWithCorrectType) ]),
              this.module.createGetLocal(tempLocal.index, tempLocal.type.toNativeType()) // TODO: could be different from an actual __get (needs 2 temp locals)
            ], this.currentType.toNativeType());
          } else {
            this.error(DiagnosticCode.Index_signature_in_type_0_only_permits_reading, expression.range, (<Class>resolved.target).internalName);
            return this.module.createUnreachable();
          }
        }
        // fall-through
    }
    this.error(DiagnosticCode.Operation_not_supported, expression.range);
    return this.module.createUnreachable();
  }

  compileCallExpression(expression: CallExpression, contextualType: Type): ExpressionRef {
    var resolved = this.program.resolveExpression(expression.expression, this.currentFunction); // reports
    if (!resolved)
      return this.module.createUnreachable();

    var element = resolved.element;
    if (element.kind == ElementKind.FUNCTION_PROTOTYPE) {
      var functionPrototype = <FunctionPrototype>element;
      var functionInstance: Function | null = null;
      if (functionPrototype.isBuiltIn) {
        var resolvedTypeArguments: Type[] | null = null;
        if (expression.typeArguments) {
          var k = expression.typeArguments.length;
          resolvedTypeArguments = new Array<Type>(k);
          var sb = new Array<string>(k);
          for (var i = 0; i < k; ++i) {
            var resolvedType = this.program.resolveType(expression.typeArguments[i], this.currentFunction.contextualTypeArguments, true); // reports
            if (!resolvedType)
              return this.module.createUnreachable();
            resolvedTypeArguments[i] = resolvedType;
            sb[i] = resolvedType.toString();
          }
          functionInstance = functionPrototype.instances.get(sb.join(","));
        } else
          functionInstance = functionPrototype.instances.get("");

        if (!functionInstance) {
          var expr = compileBuiltinCall(this, functionPrototype, resolvedTypeArguments, expression.arguments, contextualType, expression);
          if (!expr) {
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            return this.module.createUnreachable();
          }
          return expr;
        }
      } else {
        // TODO: infer type arguments from parameter types if omitted
        functionInstance = (<FunctionPrototype>element).resolveInclTypeArguments(expression.typeArguments, this.currentFunction.contextualTypeArguments, expression); // reports
      }
      if (!functionInstance)
        return this.module.createUnreachable();

      var numArguments = expression.arguments.length;
      var numArgumentsInclThis = functionInstance.instanceMethodOf != null ? numArguments + 1 : numArguments;
      var argumentIndex = 0;

      var args = new Array<Expression>(numArgumentsInclThis);
      if (functionInstance.instanceMethodOf) {
        assert(resolved.targetExpression != null);
        args[argumentIndex++] = <Expression>resolved.targetExpression;
      }
      for (i = 0; i < numArguments; ++i)
        args[argumentIndex++] = expression.arguments[i];
      return this.compileCall(functionInstance, args, expression);
    }
    this.error(DiagnosticCode.Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures, expression.range, element.internalName);
    return this.module.createUnreachable();
  }

  /** Compiles a call to a function. If an instance method, `this` is the first element in `argumentExpressions`. */
  compileCall(functionInstance: Function, argumentExpressions: Expression[], reportNode: Node): ExpressionRef {

    // validate and compile arguments
    var parameters = functionInstance.parameters;

    var numParameters = parameters.length;
    var numParametersInclThis = functionInstance.instanceMethodOf != null ? numParameters + 1 : numParameters;
    var numArgumentsInclThis = argumentExpressions.length;
    var numArguments = functionInstance.instanceMethodOf != null ? numArgumentsInclThis - 1 : numArgumentsInclThis;

    if (numArgumentsInclThis > numParametersInclThis) { // too many arguments
      this.error(DiagnosticCode.Expected_0_arguments_but_got_1, reportNode.range,
        numParameters.toString(10),
        numArguments.toString(10)
      );
      return this.module.createUnreachable();
    }
    var operands = new Array<ExpressionRef>(numParametersInclThis);
    var operandIndex = 0;
    if (functionInstance.instanceMethodOf)
      operands[operandIndex++] = this.compileExpression(argumentExpressions[0], functionInstance.instanceMethodOf.type);
    for (; operandIndex < numParametersInclThis; ++operandIndex) {

      // argument has been provided
      if (numArgumentsInclThis > operandIndex) {
        operands[operandIndex] = this.compileExpression(argumentExpressions[operandIndex], parameters[operandIndex + numParameters - numParametersInclThis].type);

      // argument has been omitted
      } else {
        var initializer = parameters[operandIndex + numParameters - numParametersInclThis].initializer;
        if (initializer) { // fall back to provided initializer
          operands[operandIndex] = this.compileExpression(initializer, parameters[operandIndex + numParameters - numParametersInclThis].type);
          // FIXME: here, the initializer is compiled in the caller's scope.
          // a solution could be to use a stub for each possible overload, calling the
          // full function with optional arguments being part of the stub's body.

        } else { // too few arguments
          this.error(DiagnosticCode.Expected_at_least_0_arguments_but_got_1, reportNode.range,
            (operandIndex + numParameters - numParametersInclThis).toString(10),
            numArguments.toString(10)
          );
          return this.module.createUnreachable();
        }
      }
    }

    this.currentType = functionInstance.returnType;
    return this.makeCall(functionInstance, operands);
  }

  private makeCall(functionInstance: Function, operands: ExpressionRef[] | null = null): ExpressionRef {
    if (!(functionInstance.isCompiled || this.compileFunction(functionInstance)))
      return this.module.createUnreachable();

    // imported function
    if (functionInstance.isDeclared)
      return this.module.createCallImport(functionInstance.internalName, operands, functionInstance.returnType.toNativeType());

    // internal function
    return this.module.createCall(functionInstance.internalName, operands, functionInstance.returnType.toNativeType());
  }

  compileCommaExpression(expression: CommaExpression, contextualType: Type): ExpressionRef {
    var expressions = expression.expressions;
    var k = expressions.length;
    var exprs = new Array<ExpressionRef>(k--);
    for (var i = 0; i < k; ++i)
      exprs[i] = this.compileExpression(expressions[i], Type.void);    // drop all
    exprs[i] = this.compileExpression(expressions[i], contextualType); // except last
    return this.module.createBlock(null, exprs, this.currentType.toNativeType());
  }

  compileElementAccessExpression(expression: ElementAccessExpression, contextualType: Type): ExpressionRef {
    var resolved = this.program.resolveElementAccess(expression, this.currentFunction); // reports
    if (!resolved)
      return this.module.createUnreachable();
    assert(resolved.element.kind == ElementKind.FUNCTION_PROTOTYPE && resolved.target && resolved.target.kind == ElementKind.CLASS);
    var instance = (<FunctionPrototype>resolved.element).resolve(null, (<Class>resolved.target).contextualTypeArguments);
    if (!instance)
      return this.module.createUnreachable();
    return this.compileCall(instance, [ expression.expression, expression.elementExpression ], expression);
  }

  compileIdentifierExpression(expression: IdentifierExpression, contextualType: Type): ExpressionRef {
    // check special keywords first
    switch (expression.kind) {

      case NodeKind.NULL:
        if (this.options.target == Target.WASM64) {
          if (!contextualType.classType) {
            assert(contextualType.kind == TypeKind.USIZE);
            this.currentType = Type.usize64;
          }
          return this.module.createI64(0);
        }
        if (!contextualType.classType) {
          assert(contextualType.kind == TypeKind.USIZE);
          this.currentType = Type.usize32;
        }
        return this.module.createI32(0);

      case NodeKind.TRUE:
        this.currentType = Type.bool;
        return this.module.createI32(1);

      case NodeKind.FALSE:
        this.currentType = Type.bool;
        return this.module.createI32(0);

      case NodeKind.THIS:
        if (this.currentFunction.instanceMethodOf) {
          this.currentType = this.currentFunction.instanceMethodOf.type;
          return this.module.createGetLocal(0, this.currentType.toNativeType());
        }
        this.error(DiagnosticCode._this_cannot_be_referenced_in_current_location, expression.range);
        this.currentType = this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32;
        return this.module.createUnreachable();

      case NodeKind.SUPER:
        if (this.currentFunction.instanceMethodOf && this.currentFunction.instanceMethodOf.base) {
          this.currentType = this.currentFunction.instanceMethodOf.base.type;
          return this.module.createGetLocal(0, this.currentType.toNativeType());
        }
        this.error(DiagnosticCode._super_can_only_be_referenced_in_a_derived_class, expression.range);
        this.currentType = this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32;
        return this.module.createUnreachable();
    }

    // otherwise resolve
    var resolved = this.program.resolveIdentifier(expression, this.currentFunction); // reports
    if (!resolved)
      return this.module.createUnreachable();

    var element = resolved.element;
    switch (element.kind) {

      case ElementKind.LOCAL:
        this.currentType = (<Local>element).type;
        if ((<Local>element).hasConstantValue)
          return makeInlineConstant(<Local>element, this.module);
        assert((<Local>element).index >= 0);
        return this.module.createGetLocal((<Local>element).index, this.currentType.toNativeType());

      case ElementKind.GLOBAL:
        if (element.isBuiltIn)
          return compileBuiltinGetConstant(this, <Global>element, expression);
        if (!this.compileGlobal(<Global>element)) // reports; not yet compiled if a static field compiled as a global
          return this.module.createUnreachable();
        assert((<Global>element).type != Type.void);
        this.currentType = (<Global>element).type;
        if ((<Global>element).hasConstantValue)
          return makeInlineConstant(<Global>element, this.module);
        return this.module.createGetGlobal((<Global>element).internalName, this.currentType.toNativeType());
    }
    this.error(DiagnosticCode.Operation_not_supported, expression.range);
    return this.module.createUnreachable();
  }

  compileLiteralExpression(expression: LiteralExpression, contextualType: Type): ExpressionRef {
    switch (expression.literalKind) {
      // case LiteralKind.ARRAY:

      case LiteralKind.FLOAT: {
        var floatValue = (<FloatLiteralExpression>expression).value;
        if (contextualType == Type.f32)
          return this.module.createF32(<f32>floatValue);
        this.currentType = Type.f64;
        return this.module.createF64(floatValue);
      }

      case LiteralKind.INTEGER:
        var intValue = (<IntegerLiteralExpression>expression).value;
        if (contextualType == Type.bool && (intValue.isZero || intValue.isOne))
          return this.module.createI32(intValue.isZero ? 0 : 1);
        if (contextualType == Type.f64)
          return this.module.createF64(intValue.toF64());
        if (contextualType == Type.f32)
          return this.module.createF32(<f32>intValue.toF64());
        if (contextualType.is(TypeFlags.LONG | TypeFlags.INTEGER))
          return this.module.createI64(intValue.lo, intValue.hi);
        if (!intValue.fitsInI32) {
          this.currentType = contextualType.is(TypeFlags.SIGNED) ? Type.i64 : Type.u64;
          return this.module.createI64(intValue.lo, intValue.hi);
        }
        if (contextualType.is(TypeFlags.SMALL | TypeFlags.INTEGER)) {
          var shift = contextualType.computeSmallIntegerShift(Type.i32);
          var mask = contextualType.computeSmallIntegerMask(Type.i32);
          return this.module.createI32(contextualType.is(TypeFlags.SIGNED) ? intValue.lo << shift >> shift : intValue.lo & mask);
        }
        if (contextualType == Type.void && !intValue.fitsInI32) {
          this.currentType = Type.i64;
          return this.module.createI64(intValue.lo, intValue.hi);
        }
        this.currentType = contextualType.is(TypeFlags.SIGNED) ? Type.i32 : Type.u32;
        return this.module.createI32(intValue.toI32());

      // case LiteralKind.OBJECT:
      // case LiteralKind.REGEXP:
      // case LiteralKind.STRING:
    }
    throw new Error("not implemented");
  }

  compileNewExpression(expression: NewExpression, contextualType: Type): ExpressionRef {
    throw new Error("not implemented");
  }

  compileParenthesizedExpression(expression: ParenthesizedExpression, contextualType: Type): ExpressionRef {
    // does not change types, just order
    return this.compileExpression(expression.expression, contextualType, ConversionKind.NONE);
  }

  compilePropertyAccessExpression(propertyAccess: PropertyAccessExpression, contextualType: Type): ExpressionRef {
    var resolved = this.program.resolvePropertyAccess(propertyAccess, this.currentFunction); // reports
    if (!resolved)
      return this.module.createUnreachable();

    var element = resolved.element;
    var targetExpr: ExpressionRef;
    switch (element.kind) {

      case ElementKind.GLOBAL: // static property
        if (element.isBuiltIn)
          return compileBuiltinGetConstant(this, <Global>element, propertyAccess);
        if (!this.compileGlobal(<Global>element)) // reports; not yet compiled if a static field compiled as a global
          return this.module.createUnreachable();
        assert((<Global>element).type != Type.void);
        this.currentType = (<Global>element).type;
        if ((<Global>element).hasConstantValue)
          return makeInlineConstant(<Global>element, this.module);
        return this.module.createGetGlobal((<Global>element).internalName, this.currentType.toNativeType());

      case ElementKind.ENUMVALUE: // enum value
        if (!this.compileEnum((<EnumValue>element).enum))
          return this.module.createUnreachable();
        this.currentType = Type.i32;
        if ((<EnumValue>element).hasConstantValue)
          return this.module.createI32((<EnumValue>element).constantValue);
        return this.module.createGetGlobal((<EnumValue>element).internalName, NativeType.I32);

      case ElementKind.FIELD: // instance field
        assert(resolved.target != null);
        assert(resolved.targetExpression != null);
        assert((<Field>element).memoryOffset >= 0);
        targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32);
        this.currentType = (<Field>element).type;
        return this.module.createLoad((<Field>element).type.size >> 3, (<Field>element).type.is(TypeFlags.SIGNED | TypeFlags.INTEGER),
          targetExpr,
          (<Field>element).type.toNativeType(),
          (<Field>element).memoryOffset
        );

      case ElementKind.PROPERTY: // instance property (here: getter)
        var getter = (<Property>element).getterPrototype;
        assert(getter != null);
        var getterInstance = (<FunctionPrototype>getter).resolve(null); // reports
        if (!getterInstance)
          return this.module.createUnreachable();
        assert(getterInstance.parameters.length == 0);
        this.currentType = getterInstance.returnType;
        if (getterInstance.isInstance) {
          var targetExpr = this.compileExpression(<Expression>resolved.targetExpression, this.options.target == Target.WASM64 ? Type.usize64 : Type.usize32)
          return this.makeCall(getterInstance, [ targetExpr ]);
        } else
          return this.makeCall(getterInstance);
    }
    this.error(DiagnosticCode.Operation_not_supported, propertyAccess.range);
    return this.module.createUnreachable();
  }

  compileTernaryExpression(expression: TernaryExpression, contextualType: Type): ExpressionRef {
    var condition = this.compileExpression(expression.condition, Type.i32);
    var ifThen = this.compileExpression(expression.ifThen, contextualType);
    var ifElse = this.compileExpression(expression.ifElse, contextualType);
    return this.module.createIf(condition, ifThen, ifElse);
  }

  compileUnaryPostfixExpression(expression: UnaryPostfixExpression, contextualType: Type): ExpressionRef {
    var operator = expression.operator;

    // make a getter for the expression (also obtains the type)
    var getValue = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);

    var op: BinaryOp;
    var nativeType: NativeType;
    var nativeOne: ExpressionRef;
    var possiblyOverflows = false;

    switch (expression.operator) {

      case Token.PLUS_PLUS:
        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          default:
            op = BinaryOp.AddI32;
            nativeType = NativeType.I32;
            nativeOne = this.module.createI32(1);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = this.options.target == Target.WASM64 ? BinaryOp.AddI64 : BinaryOp.AddI32;
            nativeType = this.options.target == Target.WASM64 ? NativeType.I64 : NativeType.I32;
            nativeOne = this.currentType.toNativeOne(this.module);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.AddI64;
            nativeType = NativeType.I64;
            nativeOne = this.module.createI64(1);
            break;

          case TypeKind.F32:
            op = BinaryOp.AddF32;
            nativeType = NativeType.F32;
            nativeOne = this.module.createF32(1);
            break;

          case TypeKind.F64:
            op = BinaryOp.AddF64;
            nativeType = NativeType.F64;
            nativeOne = this.module.createF64(1);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      case Token.MINUS_MINUS:
        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true;
          default:
            op = BinaryOp.SubI32;
            nativeType = NativeType.I32;
            nativeOne = this.module.createI32(1);
            break;

          case TypeKind.USIZE:
            // TODO: check operator overload
          case TypeKind.ISIZE:
            op = this.options.target == Target.WASM64 ? BinaryOp.SubI64 : BinaryOp.SubI32;
            nativeType = this.options.target == Target.WASM64 ? NativeType.I64 : NativeType.I32;
            nativeOne = this.currentType.toNativeOne(this.module);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            op = BinaryOp.SubI64;
            nativeType = NativeType.I64;
            nativeOne = this.module.createI64(1);
            break;

          case TypeKind.F32:
            op = BinaryOp.SubF32;
            nativeType = NativeType.F32;
            nativeOne = this.module.createF32(1);
            break;

          case TypeKind.F64:
            op = BinaryOp.SubF64;
            nativeType = NativeType.F64;
            nativeOne = this.module.createF64(1);
            break;

          case TypeKind.VOID:
            this.error(DiagnosticCode.Operation_not_supported, expression.range);
            throw new Error("concrete type expected");
        }
        break;

      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        throw new Error("unary postfix operator expected");
    }

    // simplify if dropped anyway
    if (contextualType == Type.void)
      return this.compileAssignmentWithValue(expression.operand,
        this.module.createBinary(op,
          getValue,
          nativeOne
        ), false
      );

    // use a temp local for the intermediate value and prepare a setter
    var tempLocal = this.currentFunction.getTempLocal(this.currentType);
    var setValue = this.module.createBinary(op,
      this.module.createGetLocal(tempLocal.index, nativeType),
      nativeOne
    );
    if (possiblyOverflows) {
      assert(this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER));
      setValue = makeSmallIntegerWrap(setValue, this.currentType, this.module);
    }
    setValue = this.compileAssignmentWithValue(expression.operand, setValue, false); // sets currentType = void
    this.currentType = tempLocal.type;
    this.currentFunction.freeTempLocal(tempLocal);
    return this.module.createBlock(null, [
      this.module.createSetLocal(tempLocal.index, getValue),
      setValue,
      this.module.createGetLocal(tempLocal.index, nativeType)
    ], nativeType);
  }

  compileUnaryPrefixExpression(expression: UnaryPrefixExpression, contextualType: Type, wrapSmallIntegers: bool = true): ExpressionRef {
    var possiblyOverflows = false;
    var compound = false;
    var expr: ExpressionRef;

    switch (expression.operator) {

      case Token.PLUS:
        if (this.currentType.isReference) {
          this.error(DiagnosticCode.Operation_not_supported, expression.range);
          return this.module.createUnreachable();
        }
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);
        possiblyOverflows = this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER); // if operand already did
        break;

      case Token.MINUS:
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // or if operand already did
          default:
            expr = this.module.createBinary(BinaryOp.SubI32, this.module.createI32(0), expr);
            break;

          case TypeKind.USIZE:
            if (this.currentType.isReference) {
              this.error(DiagnosticCode.Operation_not_supported, expression.range);
              return this.module.createUnreachable();
            }
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.SubI64 : BinaryOp.SubI32, this.currentType.toNativeZero(this.module), expr);
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.SubI64, this.module.createI64(0), expr);
            break;

          case TypeKind.F32:
            expr = this.module.createUnary(UnaryOp.NegF32, expr);
            break;

          case TypeKind.F64:
            expr = this.module.createUnary(UnaryOp.NegF64, expr);
            break;
        }
        break;

      case Token.PLUS_PLUS:
        compound = true;
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // or if operand already did
          default:
            expr = this.module.createBinary(BinaryOp.AddI32, expr, this.module.createI32(1));
            break;

          case TypeKind.USIZE:
            if (this.currentType.isReference) {
              this.error(DiagnosticCode.Operation_not_supported, expression.range);
              return this.module.createUnreachable();
            }
            // fall-through
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.AddI64 : BinaryOp.AddI32, expr, this.currentType.toNativeOne(this.module));
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.AddI64, expr, this.module.createI64(1));
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.AddF32, expr, this.module.createF32(1));
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.AddF64, expr, this.module.createF64(1));
            break;
        }
        break;

      case Token.MINUS_MINUS:
        compound = true;
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // or if operand already did
            // fall-through
          default:
            expr = this.module.createBinary(BinaryOp.SubI32, expr, this.module.createI32(1));
            break;

          case TypeKind.USIZE:
            if (this.currentType.isReference) {
              this.error(DiagnosticCode.Operation_not_supported, expression.range);
              return this.module.createUnreachable();
            }
            // fall-through
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.SubI64 : BinaryOp.SubI32, expr, this.currentType.toNativeOne(this.module));
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.SubI64, expr, this.module.createI64(1));
            break;

          case TypeKind.F32:
            expr = this.module.createBinary(BinaryOp.SubF32, expr, this.module.createF32(1));
            break;

          case TypeKind.F64:
            expr = this.module.createBinary(BinaryOp.SubF64, expr, this.module.createF64(1));
            break;
        }
        break;

      case Token.EXCLAMATION: // must wrap small integers
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType, ConversionKind.NONE);
        expr = makeIsFalseish(expr, this.currentType, this.module);
        this.currentType = Type.bool;
        break;

      case Token.TILDE: // retains low bits of small integers
        expr = this.compileExpression(expression.operand, contextualType == Type.void ? Type.i32 : contextualType.is(TypeFlags.FLOAT) ? Type.i64 : contextualType, contextualType == Type.void ? ConversionKind.NONE : ConversionKind.IMPLICIT, false);

        switch (this.currentType.kind) {

          case TypeKind.I8:
          case TypeKind.I16:
          case TypeKind.U8:
          case TypeKind.U16:
          case TypeKind.BOOL:
            possiblyOverflows = true; // or if operand already did
          default:
            expr = this.module.createBinary(BinaryOp.XorI32, expr, this.module.createI32(-1));
            break;

          case TypeKind.USIZE:
            if (this.currentType.isReference) {
              this.error(DiagnosticCode.Operation_not_supported, expression.range);
              return this.module.createUnreachable();
            }
            // fall-through
          case TypeKind.ISIZE:
            expr = this.module.createBinary(this.options.target == Target.WASM64 ? BinaryOp.XorI64 : BinaryOp.XorI32, expr, this.currentType.toNativeNegOne(this.module));
            break;

          case TypeKind.I64:
          case TypeKind.U64:
            expr = this.module.createBinary(BinaryOp.XorI64, expr, this.module.createI64(-1, -1));
            break;
        }
        break;

      case Token.TYPEOF:
        // it might make sense to implement typeof in a way that a generic function can detect whether
        // its type argument is a class type or string. that could then be used, for example, to
        // generate hash codes for sets and maps, depending on the kind of type parameter we have.
        // ideally the comparison would not involve actual string comparison and limit available
        // operations to hard-coded string literals.
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        throw new Error("not implemented");

      default:
        this.error(DiagnosticCode.Operation_not_supported, expression.range);
        throw new Error("unary operator expected");
    }
    if (possiblyOverflows && wrapSmallIntegers) {
      assert(this.currentType.is(TypeFlags.SMALL | TypeFlags.INTEGER));
      expr = makeSmallIntegerWrap(expr, this.currentType, this.module);
    }
    return compound
      ? this.compileAssignmentWithValue(expression.operand, expr, contextualType != Type.void)
      : expr;
  }
}

// helpers

/** Tests whether an element is a module-level export from the entry file. */
function isModuleExport(element: Element, declaration: DeclarationStatement): bool {
  if (!element.isExported)
    return false;
  var parentNode = declaration.parent;
  if (!parentNode)
    return false;
  if (declaration.range.source.isEntry && parentNode.kind != NodeKind.NAMESPACE)
    return true;
  if (parentNode.kind == NodeKind.VARIABLE)
    if (!(parentNode = parentNode.parent))
      return false;
  if (parentNode.kind != NodeKind.NAMESPACE && parentNode.kind != NodeKind.CLASS)
    return false;
  var parent = element.program.elements.get((<DeclarationStatement>parentNode).internalName);
  if (!parent)
    return false;
  return isModuleExport(parent, <DeclarationStatement>parentNode);
}

/** Creates an inlined expression of a constant variable-like element. */
function makeInlineConstant(element: VariableLikeElement, module: Module): ExpressionRef {
  assert(element.hasConstantValue);
  assert(element.type != null);
  switch ((<Type>element.type).kind) {

    case TypeKind.I8:
    case TypeKind.I16:
      var shift = element.type.computeSmallIntegerShift(Type.i32);
      return module.createI32(element.constantIntegerValue ? element.constantIntegerValue.toI32() << shift >> shift : 0);

    case TypeKind.U8:
    case TypeKind.U16:
    case TypeKind.BOOL:
      var mask = element.type.computeSmallIntegerMask(Type.i32);
      return module.createI32(element.constantIntegerValue ? element.constantIntegerValue.toI32() & mask : 0);

    case TypeKind.I32:
    case TypeKind.U32:
      return module.createI32(element.constantIntegerValue ? element.constantIntegerValue.lo : 0)

    case TypeKind.ISIZE:
    case TypeKind.USIZE:
      if (element.program.target != Target.WASM64)
        return module.createI32(element.constantIntegerValue ? element.constantIntegerValue.lo : 0)
      // fall-through

    case TypeKind.I64:
    case TypeKind.U64:
      return element.constantIntegerValue
        ? module.createI64(element.constantIntegerValue.lo, element.constantIntegerValue.hi)
        : module.createI64(0);

    case TypeKind.F32:
      return module.createF32((<VariableLikeElement>element).constantFloatValue);

    case TypeKind.F64:
      return module.createF64((<VariableLikeElement>element).constantFloatValue);
  }
  throw new Error("concrete type expected");
}

/** Wraps a 32-bit integer expression so it evaluates to a valid value in the range of the specified small integer type. */
export function makeSmallIntegerWrap(expr: ExpressionRef, type: Type, module: Module) {
  switch (type.kind) {

    case TypeKind.I8:
      expr = module.createBinary(BinaryOp.ShrI32,
        module.createBinary(BinaryOp.ShlI32,
          expr,
          module.createI32(24)
        ),
        module.createI32(24)
      );
      break;

    case TypeKind.I16:
      expr = module.createBinary(BinaryOp.ShrI32,
        module.createBinary(BinaryOp.ShlI32,
          expr,
          module.createI32(16)
        ),
        module.createI32(16)
      );
      break;

    case TypeKind.U8:
      expr = module.createBinary(BinaryOp.AndI32,
        expr,
        module.createI32(0xff)
      );
      break;

    case TypeKind.U16:
      expr = module.createBinary(BinaryOp.AndI32,
        expr,
        module.createI32(0xffff)
      );
      break;

    case TypeKind.BOOL:
      expr = module.createBinary(BinaryOp.AndI32,
        expr,
        module.createI32(0x1)
      );
      break;

    case TypeKind.VOID:
      throw new Error("concrete type expected");
  }
  return expr;
}

/** Creates a comparison whether an expression is not 'true' in a broader sense. */
export function makeIsFalseish(expr: ExpressionRef, type: Type, module: Module): ExpressionRef {
  switch (type.kind) {

    default: // any integer up to 32 bits
      expr = module.createUnary(UnaryOp.EqzI32, expr);
      break;

    case TypeKind.I64:
    case TypeKind.U64:
      expr = module.createUnary(UnaryOp.EqzI64, expr);
      break;

    case TypeKind.USIZE:
      // TODO: strings
    case TypeKind.ISIZE:
      expr = module.createUnary(type.size == 64 ? UnaryOp.EqzI64 : UnaryOp.EqzI32, expr);
      break;

    case TypeKind.F32:
      expr = module.createBinary(BinaryOp.EqF32, expr, module.createF32(0));
      break;

    case TypeKind.F64:
      expr = module.createBinary(BinaryOp.EqF64, expr, module.createF64(0));
      break;

    case TypeKind.VOID:
      throw new Error("concrete type expected");
  }
  return expr;
}

/** Creates a comparison whether an expression is 'true' in a broader sense. */
export function makeIsTrueish(expr: ExpressionRef, type: Type, module: Module): ExpressionRef {
  switch (type.kind) {

    default: // any integer up to 32 bits
      expr = module.createBinary(BinaryOp.NeI32, expr, module.createI32(0));
      break;

    case TypeKind.I64:
    case TypeKind.U64:
      expr = module.createBinary(BinaryOp.NeI64, expr, module.createI64(0));
      break;

    case TypeKind.USIZE:
      // TODO: strings
    case TypeKind.ISIZE:
      expr = type.size == 64
        ? module.createBinary(BinaryOp.NeI64, expr, module.createI64(0))
        : module.createBinary(BinaryOp.NeI32, expr, module.createI32(0));
      break;

    case TypeKind.F32:
      expr = module.createBinary(BinaryOp.NeF32, expr, module.createF32(0));
      break;

    case TypeKind.F64:
      expr = module.createBinary(BinaryOp.NeF64, expr, module.createF64(0));
      break;

    case TypeKind.VOID:
      throw new Error("concrete type expected");
  }
  return expr;
}
