import { Module, MemorySegment, UnaryOp, BinaryOp, HostOp, Type as BinaryenType } from "./binaryen";
import { DiagnosticCode, DiagnosticMessage, DiagnosticEmitter } from "./diagnostics";
import { hasModifier } from "./parser";
import { Program } from "./program";
import { CharCode, I64, U64, normalizePath, sb } from "./util";
import { Token } from "./tokenizer";
import {

  Node,
  NodeKind,
  TypeNode,
  TypeParameter,
  Source,

  // statements
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
  FieldDeclaration,
  FunctionDeclaration,
  ForStatement,
  IfStatement,
  ImportStatement,
  MethodDeclaration,
  ModifierKind,
  NamespaceDeclaration,
  ReturnStatement,
  Statement,
  SwitchStatement,
  ThrowStatement,
  TryStatement,
  VariableDeclaration,
  VariableStatement,
  WhileStatement,

  // expressions
  ArrayLiteralExpression,
  AssertionExpression,
  BinaryExpression,
  CallExpression,
  ElementAccessExpression,
  Expression,
  FloatLiteralExpression,
  IdentifierExpression,
  IntegerLiteralExpression,
  LiteralExpression,
  LiteralKind,
  NewExpression,
  ParenthesizedExpression,
  PropertyAccessExpression,
  SelectExpression,
  StringLiteralExpression,
  UnaryPostfixExpression,
  UnaryPrefixExpression

} from "./ast";
import {

  ClassType,
  FunctionType,
  LocalType,
  Type,
  TypeKind,
  typeArgumentsToString

} from "./types";

export enum Target {
  WASM32,
  WASM64
}

export class Options {
  target: Target = Target.WASM32;
  noEmit: bool = false;
}

const VOID: BinaryenExpressionRef = 0;

export class Compiler extends DiagnosticEmitter {

  program: Program;
  options: Options;
  module: Module;

  startFunction: FunctionType = new FunctionType([], [], Type.void);
  startFunctionBody: BinaryenExpressionRef[] = new Array();

  currentType: Type = Type.void;
  currentClass: ClassType | null = null;
  currentFunction: FunctionType = this.startFunction;

  memoryOffset: U64 = new U64(8, 0); // leave space for (any size of) NULL
  memorySegments: MemorySegment[] = new Array();

  classes: Map<string,ClassType> = new Map();
  enums: Set<string> = new Set();
  functions: Map<string,FunctionType> = new Map();
  globals: Map<string,Type> = new Map();

  static compile(program: Program, options: Options | null = null): Module {
    const compiler: Compiler = new Compiler(program, options);
    return compiler.compile();
  }

  constructor(program: Program, options: Options | null = null) {
    super(program.diagnostics);
    this.program = program;
    this.options = options ? options : new Options();
    this.module = this.options.noEmit ? Module.createStub() : Module.create();
    // noEmit performs compilation as usual but all binaryen methods are nops instead
  }

  compile(): Module {
    const program: Program = this.program;

    // initialize lookup maps
    program.initialize(this.options.target);

    // start by compiling entry file exports
    const entrySource: Source = program.sources[0];
    for (let i: i32 = 0, k: i32 = entrySource.statements.length; i < k; ++i) {
      const statement: Statement = entrySource.statements[i];
      switch (statement.kind) {

        case NodeKind.CLASS:
          if (hasModifier(ModifierKind.EXPORT, (<ClassDeclaration>statement).modifiers) && !(<ClassDeclaration>statement).typeParameters.length)
            this.compileClass(<ClassDeclaration>statement, []);
          break;

        case NodeKind.ENUM:
          if (hasModifier(ModifierKind.EXPORT, (<EnumDeclaration>statement).modifiers))
            this.compileEnum(<EnumDeclaration>statement);
          break;

        case NodeKind.FUNCTION:
          if (hasModifier(ModifierKind.EXPORT, (<FunctionDeclaration>statement).modifiers) && !(<FunctionDeclaration>statement).typeParameters.length)
            this.compileFunction(<FunctionDeclaration>statement, []);
          break;

        case NodeKind.IMPORT:
          break;

        case NodeKind.NAMESPACE:
          if (hasModifier(ModifierKind.EXPORT, (<NamespaceDeclaration>statement).modifiers))
            this.compileNamespace(<NamespaceDeclaration>statement);
          break;

        case NodeKind.VARIABLE:
          if (hasModifier(ModifierKind.EXPORT, (<VariableStatement>statement).modifiers))
            this.compileGlobals(<VariableStatement>statement);
          break;

        case NodeKind.EXPORT: {
          this.compileExports(<ExportStatement>statement);
          break;
        }

        default: {
          const previousClass: ClassType | null = this.currentClass;
          const previousFunction: FunctionType = this.currentFunction;
          this.currentClass = null;
          this.currentFunction = this.startFunction;
          this.startFunctionBody.push(this.compileStatement(statement));
          this.currentClass = previousClass;
          this.currentFunction = previousFunction;
          break;
        }
      }
    }

    // make start function if not empty
    if (this.startFunctionBody.length) {
      let typeRef: BinaryenFunctionTypeRef = this.module.getFunctionTypeBySignature(BinaryenType.None, []);
      if (!typeRef)
        typeRef = this.module.addFunctionType("v", BinaryenType.None, []);
      this.module.setStart(
        this.module.addFunction("", typeRef, typesToBinaryenTypes(this.startFunction.additionalLocals), this.module.createBlock(null, this.startFunctionBody))
      );
    }

    // set up memory size and static segments
    const initial: U64 = this.memoryOffset.clone();
    const initialOverlaps: U64 = initial.clone();
    initialOverlaps.and32(0xffff);
    if (!initialOverlaps.isZero) {
      initial.or32(0xffff);
      initial.add32(1);
    }
    initial.shru32(16);
    this.module.setMemory(initial.toI32(), Module.MAX_MEMORY_WASM32 /* TODO: not WASM64 compatible yet */, this.memorySegments, this.options.target, "memory");

    return this.module;
  }

  compileClass(declaration: ClassDeclaration, typeArguments: Type[]): void {
    throw new Error("not implemented");
  }

  compileEnum(declaration: EnumDeclaration): void {
    const name: string = this.program.mangleInternalName(declaration);
    if (this.enums.has(name)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, name);
      return;
    }
    const valueDeclarations: EnumValueDeclaration[] = declaration.members;
    let previousValueName: string | null = null;
    const isExport: bool = declaration.range.source.isEntry && hasModifier(ModifierKind.EXPORT, declaration.modifiers);
    for (let i: i32 = 0, k: i32 = valueDeclarations.length; i < k; ++i)
      previousValueName = this.compileEnumValue(valueDeclarations[i], previousValueName, isExport);
    this.enums.add(name);
  }

  compileEnumValue(declaration: EnumValueDeclaration, previousName: string | null, isExport: bool): string {
    const name: string = this.program.mangleInternalName(declaration);
    let initializer: BinaryenExpressionRef = declaration.value ? this.compileExpression(<Expression>declaration.value, Type.i32) : 0;
    let initializeInStart: bool = declaration.value ? (<Expression>declaration.value).kind != NodeKind.LITERAL : true;
    // TODO: WASM does not support binary initializers for globals yet, hence me make them mutable and initialize in start
    if (!initializer) {
      if (previousName == null) {
        initializer = this.module.createI32(0);
        initializeInStart = false;
      } else {
        initializer = this.module.createBinary(BinaryOp.AddI32,
          this.module.createGetGlobal(previousName, BinaryenType.I32),
          this.module.createI32(1)
        );
      }
    }
    if (initializeInStart) {
      this.module.addGlobal(name, BinaryenType.I32, true, this.module.createI32(-1));
      this.startFunctionBody.push(this.module.createSetGlobal(name, initializer));
    } else
      this.module.addGlobal(name, BinaryenType.I32, false, initializer);
    // TODO: WASM does not support exporting globals yet (the following produces invalid code referencing a non-existent function)
    // this.module.addExport(name, (<EnumDeclaration>declaration.parent).identifier.name + "." + declaration.identifier.name);
    return name;
  }

  checkTypeArguments(typeParameters: TypeParameter[], typeArguments: Type[], reportNode: Node | null = null): bool {
    if (typeParameters.length != typeArguments.length) {
      if (reportNode)
        this.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, (<Node>reportNode).range, typeParameters.length.toString(10), typeArguments.length.toString(10));
      return false;
    }
    // TODO: check TypeParameter#extendsType
    return true;
  }

  compileFunction(declaration: FunctionDeclaration, typeArguments: Type[], inheritedTypeArgumentsMap: Map<string,Type> | null = null, reportNode: Node | null = null): void {
    if (!declaration.statements) {
      if (reportNode)
        this.error(DiagnosticCode.Function_implementation_is_missing_or_not_immediately_following_the_declaration, (<Node>reportNode).range);
      return;
    }

    if (!this.checkTypeArguments(declaration.typeParameters, typeArguments, reportNode)) // reports if requested
      return;

    let globalName: string = this.program.mangleInternalName(declaration);

    // inherit type arguments, i.e. from class
    const typeArgumentsMap: Map<string,Type> = new Map();
    if (inheritedTypeArgumentsMap)
      for (let [key, val] of (<Map<string,Type>>inheritedTypeArgumentsMap))
        typeArgumentsMap.set(key, val);

    // set (possibly override) type arguments for this specific call
    let i: i32, k: i32 = typeArguments.length;
    if (k) {
      for (i = 0; i < k; ++i)
        typeArgumentsMap.set(declaration.typeParameters[i].identifier.name, typeArguments[i]);
      globalName += typeArgumentsToString(typeArguments);
    }

    if (this.functions.has(globalName)) {
      if (reportNode)
        this.error(DiagnosticCode.Duplicate_function_implementation, (<Node>reportNode).range);
      return;
    }

    // resolve parameters
    k = declaration.parameters.length;
    const parameterNames: string[] = new Array(k);
    const parameterTypes: Type[] = new Array(k);
    for (i = 0; i < k; ++i) {
      parameterNames[i] = declaration.parameters[i].identifier.name;
      const typeNode: TypeNode | null = declaration.parameters[i].type;
      if (typeNode) {
        const type: Type | null = this.resolveType(<TypeNode>typeNode, typeArgumentsMap, true); // reports
        if (type)
          parameterTypes[i] = <Type>type;
        else
          return;
      } else
        return; // TODO: infer type? (currently reported by parser)
    }

    // resolve return type
    const typeNode: TypeNode | null = declaration.returnType;
    let returnType: Type;
    if (typeNode) {
      const type: Type | null = this.resolveType(<TypeNode>typeNode, typeArgumentsMap, true); // reports
      if (type)
        returnType = <Type>type;
      else
        return;
    } else
      return; // TODO: infer type? (currently reported by parser)

    // compile statements
    const functionType: FunctionType = new FunctionType(typeArguments, parameterTypes, returnType, parameterNames);
    this.functions.set(globalName, functionType);
    const previousFunction: FunctionType = this.currentFunction;
    this.currentFunction = functionType;
    const statements: Statement[] = <Statement[]>declaration.statements;
    k = statements.length;
    const body: BinaryenExpressionRef[] = new Array(k);
    let hasErrors: bool = false;
    for (i = 0; i < k; ++i)
      if (!(body[i] = this.compileStatement(statements[i])))
        hasErrors = true;
    this.currentFunction = previousFunction;

    if (hasErrors)
      return;

    // create function
    const binaryenResultType: BinaryenType = typeToBinaryenType(returnType);
    const binaryenParamTypes: BinaryenType[] = typesToBinaryenTypes(parameterTypes);
    let binaryenTypeRef: BinaryenFunctionTypeRef = this.module.getFunctionTypeBySignature(binaryenResultType, binaryenParamTypes);
    if (!binaryenTypeRef)
      binaryenTypeRef = this.module.addFunctionType(typesToSignatureName(parameterTypes, returnType), binaryenResultType, binaryenParamTypes);
    this.module.addFunction(globalName, binaryenTypeRef, typesToBinaryenTypes(functionType.additionalLocals), this.module.createBlock(null, body));
    if (declaration.range.source.isEntry && hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.module.addExport(globalName, declaration.identifier.name);
  }

  compileGlobals(statement: VariableStatement): void {
    const declarations: VariableDeclaration[] = statement.declarations;
    const isConst: bool = hasModifier(ModifierKind.CONST, statement.modifiers);
    const isExport: bool = statement.range.source.isEntry && hasModifier(ModifierKind.EXPORT, statement.modifiers);
    for (let i: i32 = 0, k: i32 = declarations.length; i < k; ++i)
      this.compileGlobal(declarations[i], isConst, isExport);
  }

  compileGlobal(declaration: VariableDeclaration, isConst: bool, isExport: bool): void {
    const type: Type | null = declaration.type ? this.resolveType(<TypeNode>declaration.type) : null; // reports
    if (!type)
      return;
    const name: string = this.program.mangleInternalName(declaration);
    if (this.globals.has(name)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, name);
      return;
    }
    const binaryenType: BinaryenType = typeToBinaryenType(<Type>type);
    const initializer: BinaryenExpressionRef = declaration.initializer ? this.compileExpression(<Expression>declaration.initializer, <Type>type) : typeToBinaryenZero(this.module, <Type>type);
    let initializeInStart: bool = declaration.initializer ? (<Expression>declaration.initializer).kind != NodeKind.LITERAL : false;
    // TODO: WASM does not support binary initializers for globals yet, hence me make them mutable and initialize in start
    if (initializeInStart) {
      this.module.addGlobal(name, binaryenType, false, typeToBinaryenZero(this.module, <Type>type));
      this.startFunctionBody.push(initializer);
    } else
      this.module.addGlobal(name, binaryenType, !isConst, initializer);
    // TODO: WASM does not support exporting globals yet (the following produces invalid code referencing a non-existent function)
    // this.module.addExport(name, declaration.identifier.name);
    this.globals.set(name, <Type>type);
  }

  compileNamespace(declaration: NamespaceDeclaration): void {
    const members: Statement[] = declaration.members;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i) {
      const member: Statement = members[i];
      switch (member.kind) {

        case NodeKind.CLASS:
          if (!(<ClassDeclaration>member).typeParameters.length)
            this.compileClass(<ClassDeclaration>member, []);
          break;

        case NodeKind.ENUM:
          this.compileEnum(<EnumDeclaration>member);
          break;

        case NodeKind.FUNCTION:
          if (!(<FunctionDeclaration>member).typeParameters.length)
            this.compileFunction(<FunctionDeclaration>member, []);
          break;

        case NodeKind.NAMESPACE:
          this.compileNamespace(<NamespaceDeclaration>member);
          break;

        case NodeKind.VARIABLE:
          this.compileGlobals(<VariableStatement>member);
          break;

        // TODO: some form of internal visibility?
        // case NodeKind.EXPORT:

        default:
          throw new Error("unexpected namespace member kind");
      }
    }
    throw new Error("not implemented");
  }

  compileExports(statement: ExportStatement): void {
    const members: ExportMember[] = statement.members;
    const normalizedPath: string | null = statement.path == null ? null : normalizePath(<string>statement.path);
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i)
      this.compileExport(members[i], normalizedPath);
  }

  compileExport(member: ExportMember, normalizedPath: string | null): void {
    const exportName: string = normalizedPath + "/" + member.externalIdentifier.name;
    const declaration: DeclarationStatement | null = <DeclarationStatement | null>this.program.exports.get(exportName);
    if (declaration) {
      switch ((<DeclarationStatement>declaration).kind) {

        case NodeKind.CLASS:
          if (!(<ClassDeclaration>declaration).typeParameters.length)
            this.compileClass(<ClassDeclaration>declaration, []);
          break;

        case NodeKind.ENUM:
          this.compileEnum(<EnumDeclaration>declaration);
          break;

        case NodeKind.FUNCTION:
          if (!(<FunctionDeclaration>declaration).typeParameters.length)
            this.compileFunction(<FunctionDeclaration>declaration, []);
          break;

        case NodeKind.NAMESPACE:
          this.compileNamespace(<NamespaceDeclaration>declaration);
          break;

        case NodeKind.VARIABLEDECLARATION:
          this.compileGlobal(<VariableDeclaration>declaration, hasModifier(ModifierKind.CONST, (<VariableStatement>declaration.parent).modifiers), member.range.source.isEntry);
          break;

        default:
          throw new Error("unexpected export declaration kind");
      }
    } else
      throw new Error("unexpected missing declaration");
  }

  // memory

  addMemorySegment(buffer: Uint8Array): MemorySegment {
    if (this.memoryOffset.lo & 7) { // align to 8 bytes so any possible data type is aligned here
      this.memoryOffset.or32(7);
      this.memoryOffset.add32(1);
    }
    const segment: MemorySegment = MemorySegment.create(buffer, this.memoryOffset.clone());
    this.memorySegments.push(segment);
    this.memoryOffset.add32(buffer.length);
    return segment;
  }

  // types

  resolveType(node: TypeNode, typeArgumentsMap: Map<string,Type> | null = null, reportNotFound: bool = true): Type | null {

    // resolve parameters
    const k: i32 = node.parameters.length;
    const paramTypes: Type[] = new Array(k);
    for (let i: i32 = 0; i < k; ++i) {
      const paramType: Type | null = this.resolveType(node.parameters[i], typeArgumentsMap, reportNotFound);
      if (!paramType)
        return null;
      paramTypes[i] = <Type>paramType;
    }

    let globalName: string = node.identifier.name;
    if (k) // not a placeholder
      globalName += typeArgumentsToString(paramTypes);
    else if (typeArgumentsMap && (<Map<string,Type>>typeArgumentsMap).has(globalName)) // possibly a placeholder
      return <Type>(<Map<string,Type>>typeArgumentsMap).get(globalName);

    const types: Map<string,Type> = this.program.types;

    // resolve local type
    const localName: string = node.range.source.normalizedPath + "/" + globalName;
    if (types.has(localName))
      return <Type>types.get(localName);

    // resolve global type
    if (types.has(globalName))
      return <Type>types.get(globalName);

    if (reportNotFound)
      this.error(DiagnosticCode.Cannot_find_name_0, node.identifier.range, globalName);
    return null;
  }

  resolveExpressionType(expression: Expression, contextualType: Type): Type {
    const previousType: Type = this.currentType;
    const previousNoEmit: bool = this.module.noEmit;
    this.module.noEmit = true;
    this.compileExpression(expression, contextualType, false); // now performs a dry run
    const type: Type = this.currentType;
    this.currentType = previousType;
    this.module.noEmit = previousNoEmit;
    return type;
  }

  resolveClassType(expression: Expression, typeArguments: TypeNode[], typeArgumentsMap: Map<string,Type> | null = null, create: bool = false): ClassType | null {
    if (expression.kind == NodeKind.THIS) {
      if (this.currentClass)
        return <ClassType>this.currentClass;
      this.error(DiagnosticCode._this_cannot_be_referenced_in_current_location, expression.range);
      return null;
    }
    if (expression.kind == NodeKind.IDENTIFIER) {
      throw new Error("not implemented");
    }
    if (expression.kind == NodeKind.ELEMENTACCESS) {
      throw new Error("not implemented");
    }
    if (expression.kind == NodeKind.PROPERTYACCESS) {
      throw new Error("not implemented");
    }
    return null;
  }

  resolveFunctionType(expression: Expression, typeArguments: TypeNode[], typeArgumentsMap: Map<string,Type> | null = null, create: bool = false): FunctionType | null {
    const k: i32 = typeArguments.length;
    const resolvedTypeArguments: Type[] = new Array(k);
    for (let i: i32 = 0; i < k; ++i) {
      const type: Type | null = this.resolveType(typeArguments[i], typeArgumentsMap, true); // reports
      if (!type)
        return null;
      resolvedTypeArguments[i] = <Type>type;
    }
    if (expression.kind == NodeKind.IDENTIFIER) {
      let globalName: string = (<IdentifierExpression>expression).name;
      if (k)
        globalName += typeArgumentsToString(resolvedTypeArguments);
      const localName = expression.range.source.normalizedPath + "/" + globalName;
      if (this.functions.has(localName))
        return <FunctionType>this.functions.get(localName);
      if (this.functions.has(globalName))
        return <FunctionType>this.functions.get(globalName);
      this.error(DiagnosticCode.Cannot_find_name_0, expression.range, globalName);
      return null;
    }
    if (expression.kind == NodeKind.PROPERTYACCESS) {
      throw new Error("not implemented");
    }
    return null;
  }

  // statements

  compileStatement(statement: Statement): BinaryenExpressionRef {
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
    }
    throw new Error("not implemented");
  }

  compileBlockStatement(statement: BlockStatement): BinaryenExpressionRef {
    const substatements: Statement[] = statement.statements;
    const children: BinaryenExpressionRef[] = new Array(substatements.length);
    for (let i: i32 = 0, k: i32 = substatements.length; i < k; ++i)
      children[i] = this.compileStatement(substatements[i]);
    return this.module.createBlock(null, children, BinaryenType.None);
  }

  compileBreakStatement(statement: BreakStatement): BinaryenExpressionRef {
    const context: string | null = this.currentFunction.breakContext;
    if (context)
      return this.module.createBreak("break$" + (<string>context));
    this.error(DiagnosticCode.A_break_statement_can_only_be_used_within_an_enclosing_iteration_or_switch_statement, statement.range);
    return this.module.createUnreachable();
  }

  compileContinueStatement(statement: ContinueStatement): BinaryenExpressionRef {
    const context: string | null = this.currentFunction.breakContext;
    if (context)
      return this.module.createBreak("continue$" + (<string>context));
    this.error(DiagnosticCode.A_continue_statement_can_only_be_used_within_an_enclosing_iteration_statement, statement.range);
    return this.module.createUnreachable();
  }

  compileDoStatement(statement: DoStatement): BinaryenExpressionRef {
    const label: string = this.currentFunction.enterBreakContext();
    const condition: BinaryenExpressionRef = this.compileExpression(statement.condition, Type.i32);
    const body: BinaryenExpressionRef = this.compileStatement(statement.statement);
    this.currentFunction.leaveBreakContext();
    const breakLabel: string = "break$" + label;
    const continueLabel: string = "continue$" + label;
    return this.module.createBlock(breakLabel, [
      this.module.createLoop(continueLabel,
        this.module.createBlock(null, [
          body,
          this.module.createBreak(continueLabel, condition)
        ]))
    ]);
  }

  compileEmptyStatement(statement: EmptyStatement): BinaryenExpressionRef {
    return this.module.createNop();
  }

  compileExpressionStatement(statement: ExpressionStatement): BinaryenExpressionRef {
    return this.compileExpression(statement.expression, Type.void);
  }

  compileForStatement(statement: ForStatement): BinaryenExpressionRef {
    const context: string = this.currentFunction.enterBreakContext();
    const initializer: BinaryenExpressionRef = statement.initializer ? this.compileStatement(<Statement>statement.initializer) : this.module.createNop();
    const condition: BinaryenExpressionRef = statement.condition ? this.compileExpression(<Expression>statement.condition, Type.i32) : this.module.createI32(1);
    const incrementor: BinaryenExpressionRef = statement.incrementor ? this.compileExpression(<Expression>statement.incrementor, Type.void) : this.module.createNop();
    const body: BinaryenExpressionRef = this.compileStatement(statement.statement);
    this.currentFunction.leaveBreakContext();
    const continueLabel: string = "continue$" + context;
    const breakLabel: string = "break$" + context;
    return this.module.createBlock(breakLabel, [
      initializer,
      this.module.createLoop(continueLabel, this.module.createBlock(null, [
        this.module.createIf(condition, this.module.createBlock(null, [
          body,
          incrementor,
          this.module.createBreak(continueLabel)
        ]))
      ]))
    ]);
  }

  compileIfStatement(statement: IfStatement): BinaryenExpressionRef {
    const condition: BinaryenExpressionRef = this.compileExpression(statement.condition, Type.i32);
    const ifTrue: BinaryenExpressionRef = this.compileStatement(statement.statement);
    const ifFalse: BinaryenExpressionRef = statement.elseStatement ? this.compileStatement(<Statement>statement.elseStatement) : 0;
    return this.module.createIf(condition, ifTrue, ifFalse);
  }

  compileReturnStatement(statement: ReturnStatement): BinaryenExpressionRef {
    if (this.currentFunction) {
      const expression: BinaryenExpressionRef = statement.expression ? this.compileExpression(<Expression>statement.expression, this.currentFunction.returnType) : 0;
      return this.module.createReturn(expression);
    }
    return this.module.createUnreachable();
  }

  compileSwitchStatement(statement: SwitchStatement): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileThrowStatement(statement: ThrowStatement): BinaryenExpressionRef {
    return this.module.createUnreachable(); // TODO: waiting for exception-handling spec
  }

  compileTryStatement(statement: TryStatement): BinaryenExpressionRef {
    throw new Error("not implemented");
    // can't yet support something like: try { return ... } finally { ... }
    // worthwhile to investigate lowering returns to block results (here)?
  }

  compileVariableStatement(statement: VariableStatement): BinaryenExpressionRef {
    // top-level variables become globals
    if (this.currentFunction == this.startFunction) {
      this.compileGlobals(statement);
      return this.module.createNop();
    }
    // other variables become locals
    const declarations: VariableDeclaration[] = statement.declarations;
    const initializers: BinaryenExpressionRef[] = new Array();
    for (let i: i32 = 0, k = declarations.length; i < k; ++i) {
      const declaration: VariableDeclaration = declarations[i];
      if (declaration.type) {
        const name: string = declaration.identifier.name;
        const type: Type | null = this.resolveType(<TypeNode>declaration.type, this.currentFunction.typeArgumentsMap, true); // reports
        if (type) {
          if (this.currentFunction.locals.has(name))
            this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, name); // recoverable
          else
            this.currentFunction.addLocal(<Type>type, name);
          if (declaration.initializer)
            initializers.push(this.compileAssignment(declaration.identifier, <Expression>declaration.initializer, Type.void));
        }
      }
    }
    return initializers.length ? this.module.createBlock(null, initializers) : this.module.createNop();
  }

  compileWhileStatement(statement: WhileStatement): BinaryenExpressionRef {
    const condition: BinaryenExpressionRef = this.compileExpression(statement.condition, Type.i32);
    const label: string = this.currentFunction.enterBreakContext();
    const breakLabel: string = "break$" + label;
    const continueLabel: string = "continue$" + label;
    const body: BinaryenExpressionRef = this.compileStatement(statement.statement);
    this.currentFunction.leaveBreakContext();
    return this.module.createBlock(breakLabel, [
      this.module.createLoop(continueLabel,
        this.module.createIf(condition, this.module.createBlock("", [
          body,
          this.module.createBreak(continueLabel)
        ]))
      )
    ]);
  }

  // expressions

  compileExpression(expression: Expression, contextualType: Type, convert: bool = true): BinaryenExpressionRef {
    this.currentType = contextualType;

    let expr: BinaryenExpressionRef;
    switch (expression.kind) {

      case NodeKind.ASSERTION:
        expr = this.compileAssertionExpression(<AssertionExpression>expression, contextualType);
        break;

      case NodeKind.BINARY:
        expr = this.compileBinaryExpression(<BinaryExpression>expression, contextualType);
        break;

      case NodeKind.CALL:
        expr = this.compileCallExpression(<CallExpression>expression, contextualType);
        break;

      case NodeKind.ELEMENTACCESS:
        expr = this.compileElementAccessExpression(<ElementAccessExpression>expression, contextualType);
        break;

      case NodeKind.IDENTIFIER:
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

      case NodeKind.SELECT:
        expr = this.compileSelectExpression(<SelectExpression>expression, contextualType);
        break;

      case NodeKind.UNARYPOSTFIX:
        expr = this.compileUnaryPostfixExpression(<UnaryPostfixExpression>expression, contextualType);
        break;

      case NodeKind.UNARYPREFIX:
        expr = this.compileUnaryPrefixExpression(<UnaryPrefixExpression>expression, contextualType);
        break;

      default:
        throw new Error("unexpected expression kind");
    }

    if (convert && this.currentType != contextualType) {
      expr = this.convertExpression(expr, this.currentType, contextualType);
      this.currentType = contextualType;
    }

    return expr;
  }

  convertExpression(expr: BinaryenExpressionRef, fromType: Type, toType: Type): BinaryenExpressionRef {

    // void to any
    if (fromType.kind == TypeKind.VOID)
      throw new Error("unexpected conversion from void");

    // any to void
    if (toType.kind == TypeKind.VOID)
      return this.module.createDrop(expr);

    const fromFloat: bool = fromType.isAnyFloat;
    const toFloat: bool = toType.isAnyFloat;

    const mod: Module = this.module;
    let losesInformation: bool = false;

    if (fromFloat) {

      // float to float
      if (toFloat) {
        if (fromType.kind == TypeKind.F32) {

          // f32 to f64
          if (toType.kind == TypeKind.F64)
            expr = mod.createUnary(UnaryOp.PromoteF32, expr);

        // f64 to f32
        } else if (toType.kind == TypeKind.F32) {
          losesInformation = true;
          expr = mod.createUnary(UnaryOp.DemoteF64, expr);
        }

      // float to int
      } else {
        losesInformation = true;

        // f32 to int
        if (fromType.kind == TypeKind.F32) {
          if (toType.isSignedInteger) {
            if (toType.isLongInteger)
              expr = mod.createUnary(UnaryOp.TruncF32_I64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF32_I32, expr);
              if (toType.isSmallInteger) {
                expr = mod.createBinary(BinaryOp.ShlI32, expr, mod.createI32(toType.smallIntegerShift));
                expr = mod.createBinary(BinaryOp.ShrI32, expr, mod.createI32(toType.smallIntegerShift));
              }
            }
          } else {
            if (toType.isLongInteger)
              expr = mod.createUnary(UnaryOp.TruncF32_U64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF32_U32, expr);
              if (toType.isSmallInteger)
                expr = mod.createBinary(BinaryOp.AndI32, expr, mod.createI32(toType.smallIntegerMask));
            }
          }

        // f64 to int
        } else {
          if (toType.isSignedInteger) {
            if (toType.isLongInteger)
              expr = mod.createUnary(UnaryOp.TruncF64_I64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF64_I32, expr);
              if (toType.isSmallInteger) {
                expr = mod.createBinary(BinaryOp.ShlI32, expr, mod.createI32(toType.smallIntegerShift));
                expr = mod.createBinary(BinaryOp.ShrI32, expr, mod.createI32(toType.smallIntegerShift));
              }
            }
          } else {
            if (toType.isLongInteger)
              expr = mod.createUnary(UnaryOp.TruncF64_U64, expr);
            else {
              expr = mod.createUnary(UnaryOp.TruncF64_U32, expr);
              if (toType.isSmallInteger)
                expr = mod.createBinary(BinaryOp.AndI32, expr, mod.createI32(toType.smallIntegerMask));
            }
          }
        }

      }

    // int to float
    } else if (toFloat) {

      // int to f32
      if (toType.kind == TypeKind.F32) {
        if (fromType.isLongInteger) {
          losesInformation = true;
          if (fromType.isSignedInteger)
            expr = mod.createUnary(UnaryOp.ConvertI64_F32, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU64_F32, expr);
        } else
          if (fromType.isSignedInteger)
            expr = mod.createUnary(UnaryOp.ConvertI32_F32, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU32_F32, expr);

      // int to f64
      } else {
        if (fromType.isLongInteger) {
          losesInformation = true;
          if (fromType.isSignedInteger)
            expr = mod.createUnary(UnaryOp.ConvertI64_F64, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU64_F64, expr);
        } else
          if (fromType.isSignedInteger)
            expr = mod.createUnary(UnaryOp.ConvertI32_F64, expr);
          else
            expr = mod.createUnary(UnaryOp.ConvertU32_F64, expr);
      }

    // int to int
    } else {
      if (fromType.isLongInteger) {

        // i64 to i32
        if (!toType.isLongInteger) {
          losesInformation = true;
          expr = mod.createUnary(UnaryOp.WrapI64, expr);
          if (toType.isSmallInteger) {
            if (toType.isSignedInteger) {
              expr = mod.createBinary(BinaryOp.ShlI32, expr, mod.createI32(toType.smallIntegerShift));
              expr = mod.createBinary(BinaryOp.ShrI32, expr, mod.createI32(toType.smallIntegerShift));
            } else
              expr = mod.createBinary(BinaryOp.AndI32, expr, mod.createI32(toType.smallIntegerMask));
          }
        }

      // i32 to i64
      } else if (toType.isLongInteger) {
        if (toType.isSignedInteger)
          expr = mod.createUnary(UnaryOp.ExtendI32, expr);
        else
          expr = mod.createUnary(UnaryOp.ExtendU32, expr);

      // i32 to smaller/change of signage i32
      } else if (toType.isSmallInteger && (fromType.size > toType.size || (fromType.size == toType.size && fromType.kind != toType.kind))) {
        losesInformation = true;
        if (toType.isSignedInteger) {
          expr = mod.createBinary(BinaryOp.ShlI32, expr, mod.createI32(toType.smallIntegerShift));
          expr = mod.createBinary(BinaryOp.ShrI32, expr, mod.createI32(toType.smallIntegerShift));
        } else
          expr = mod.createBinary(BinaryOp.AndI32, expr, mod.createI32(toType.smallIntegerMask));
      }
    }

    return expr;
  }

  compileAssertionExpression(expression: AssertionExpression, contextualType: Type): BinaryenExpressionRef {
    const toType: Type | null = this.resolveType(expression.toType, this.currentFunction.typeArgumentsMap); // reports
    if (toType && toType != contextualType) {
      const expr: BinaryenExpressionRef = this.compileExpression(expression.expression, <Type>toType);
      return this.convertExpression(expr, this.currentType, <Type>toType);
    }
    return this.compileExpression(expression.expression, contextualType);
  }

  compileBinaryExpression(expression: BinaryExpression, contextualType: Type): BinaryenExpressionRef {
    let op: BinaryOp;
    let left: BinaryenExpressionRef;
    let right: BinaryenExpressionRef;
    let compound: Token = 0;

    switch (expression.operator) {

      case Token.LESSTHAN:
        left = this.compileExpression(expression.left, contextualType, false);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.LtF32
           : this.currentType == Type.f64
           ? BinaryOp.LtF64
           : this.currentType.isLongInteger
           ? BinaryOp.LtI64
           : BinaryOp.LtI32;
        this.currentType = Type.bool;
        break;

      case Token.GREATERTHAN:
        left = this.compileExpression(expression.left, contextualType, false);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.GtF32
           : this.currentType == Type.f64
           ? BinaryOp.GtF64
           : this.currentType.isLongInteger
           ? BinaryOp.GtI64
           : BinaryOp.GtI32;
        this.currentType = Type.bool;
        break;

      case Token.LESSTHAN_EQUALS:
        left = this.compileExpression(expression.left, contextualType, false);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.LeF32
           : this.currentType == Type.f64
           ? BinaryOp.LeF64
           : this.currentType.isLongInteger
           ? BinaryOp.LeI64
           : BinaryOp.LeI32;
        this.currentType = Type.bool;
        break;

      case Token.GREATERTHAN_EQUALS:
        left = this.compileExpression(expression.left, contextualType, false);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.GeF32
           : this.currentType == Type.f64
           ? BinaryOp.GeF64
           : this.currentType.isLongInteger
           ? BinaryOp.GeI64
           : BinaryOp.GeI32;
        this.currentType = Type.bool;
        break;

      case Token.EQUALS_EQUALS:
      case Token.EQUALS_EQUALS_EQUALS:
        left = this.compileExpression(expression.left, contextualType, false);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.EqF32
           : this.currentType == Type.f64
           ? BinaryOp.EqF64
           : this.currentType.isLongInteger
           ? BinaryOp.EqI64
           : BinaryOp.EqI32;
        this.currentType = Type.bool;
        break;

      case Token.EQUALS:
        return this.compileAssignment(expression.left, expression.right, contextualType);

      case Token.PLUS_EQUALS:
        compound = Token.EQUALS;
      case Token.PLUS:
        left = this.compileExpression(expression.left, contextualType, false);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.AddF32
           : this.currentType == Type.f64
           ? BinaryOp.AddF64
           : this.currentType.isLongInteger
           ? BinaryOp.AddI64
           : BinaryOp.AddI32;
        break;

      case Token.MINUS_EQUALS:
        compound = Token.EQUALS;
      case Token.MINUS:
        left = this.compileExpression(expression.left, contextualType, false);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.SubF32
           : this.currentType == Type.f64
           ? BinaryOp.SubF64
           : this.currentType.isLongInteger
           ? BinaryOp.SubI64
           : BinaryOp.SubI32;
        break;

      case Token.ASTERISK_EQUALS:
        compound = Token.EQUALS;
      case Token.ASTERISK:
        left = this.compileExpression(expression.left, contextualType, false);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.MulF32
           : this.currentType == Type.f64
           ? BinaryOp.MulF64
           : this.currentType.isLongInteger
           ? BinaryOp.MulI64
           : BinaryOp.MulI32;
        break;

      case Token.SLASH_EQUALS:
        compound = Token.EQUALS;
      case Token.SLASH:
        left = this.compileExpression(expression.left, contextualType, false);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType == Type.f32
           ? BinaryOp.DivF32
           : this.currentType == Type.f64
           ? BinaryOp.DivF64
           : this.currentType.isLongInteger
           ? BinaryOp.DivI64
           : BinaryOp.DivI32;
        break;

      case Token.PERCENT_EQUALS:
        compound = Token.EQUALS;
      case Token.PERCENT:
        left = this.compileExpression(expression.left, contextualType, false);
        right = this.compileExpression(expression.right, this.currentType);
        if (this.currentType.isAnyFloat)
          throw new Error("not implemented"); // TODO: internal fmod
        op = this.currentType.isLongInteger
           ? BinaryOp.RemI64
           : BinaryOp.RemI32;
        break;

      case Token.LESSTHAN_LESSTHAN_EQUALS:
        compound = Token.EQUALS;
      case Token.LESSTHAN_LESSTHAN:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isLongInteger
           ? BinaryOp.ShlI64
           : BinaryOp.ShlI32;
        break;

      case Token.GREATERTHAN_GREATERTHAN_EQUALS:
        compound = Token.EQUALS;
      case Token.GREATERTHAN_GREATERTHAN:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isSignedInteger
           ? this.currentType.isLongInteger
             ? BinaryOp.ShrI64
             : BinaryOp.ShrI32
           : this.currentType.isLongInteger
             ? BinaryOp.ShrU64
             : BinaryOp.ShrU32;
        break;

      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS:
        compound = Token.EQUALS;
      case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.u64 : contextualType);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isLongInteger
           ? BinaryOp.ShrU64
           : BinaryOp.ShrU32;
        break;

      case Token.AMPERSAND_EQUALS:
        compound = Token.EQUALS;
      case Token.AMPERSAND:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isLongInteger
           ? BinaryOp.AndI64
           : BinaryOp.AndI32;
        break;

      case Token.BAR_EQUALS:
        compound = Token.EQUALS;
      case Token.BAR:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isLongInteger
           ? BinaryOp.OrI64
           : BinaryOp.OrI32;
        break;

      case Token.CARET_EQUALS:
        compound = Token.EQUALS;
      case Token.CARET:
        left = this.compileExpression(expression.left, contextualType.isAnyFloat ? Type.i64 : contextualType);
        right = this.compileExpression(expression.right, this.currentType);
        op = this.currentType.isLongInteger
           ? BinaryOp.XorI64
           : BinaryOp.XorI32;
        break;

      default:
        throw new Error("not implemented");
    }
    if (compound) {
      right = this.module.createBinary(op, left, right);
      return this.compileAssignmentWithValue(expression.left, right, contextualType != Type.void);
    }
    return this.module.createBinary(op, left, right);
  }

  compileAssignment(expression: Expression, valueExpression: Expression, contextualType: Type): BinaryenExpressionRef {
    this.currentType = this.resolveExpressionType(expression, contextualType);
    return this.compileAssignmentWithValue(expression, this.compileExpression(valueExpression, this.currentType), contextualType != Type.void);
  }

  compileAssignmentWithValue(expression: Expression, valueWithCorrectType: BinaryenExpressionRef, tee: bool = false): BinaryenExpressionRef {
    if (expression.kind == NodeKind.IDENTIFIER) {
      const name: string = (<IdentifierExpression>expression).name;
      const locals: Map<string,LocalType> = this.currentFunction.locals;
      if (locals.has(name)) {
        const local: LocalType = <LocalType>locals.get(name);
        if (tee) {
          this.currentType = local.type;
          return this.module.createTeeLocal(local.index, valueWithCorrectType);
        }
        this.currentType = Type.void;
        return this.module.createSetLocal(local.index, valueWithCorrectType);
      }
      const globals: Map<string,Type> = this.globals;
      if (globals.has(name)) {
        const globalType: Type = <Type>globals.get(name);
        if (tee) {
          const globalBinaryenType: BinaryenType = typeToBinaryenType(globalType);
          this.currentType = globalType;
          return this.module.createBlock(null, [ // teeGlobal
            this.module.createSetGlobal(name, valueWithCorrectType),
            this.module.createGetGlobal(name, globalBinaryenType)
          ], globalBinaryenType);
        }
        this.currentType = Type.void;
        return this.module.createSetGlobal(name, valueWithCorrectType);
      }
    }
    throw new Error("not implemented");
  }

  compileCallExpression(expression: CallExpression, contextualType: Type): BinaryenExpressionRef {
    const functionType: FunctionType | null = this.resolveFunctionType(expression.expression, expression.typeArguments, this.currentFunction.typeArgumentsMap, true);
    if (!functionType)
      return this.module.createUnreachable();
    // TODO: compile if not yet compiled
    // TODO: validate parameters and call
    // this.module.createCall(functionType.ref, operands, typeToBinaryenType(functionType.returnType));
    throw new Error("not implemented");
  }

  compileElementAccessExpression(expression: ElementAccessExpression, contextualType: Type): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileIdentifierExpression(expression: IdentifierExpression, contextualType: Type): BinaryenExpressionRef {
    const name: string = expression.name;
    const locals: Map<string,LocalType> = this.currentFunction.locals;
    if (locals.has(name)) {
      const local: LocalType = <LocalType>locals.get(name);
      this.currentType = local.type;
      return this.module.createGetLocal(local.index, typeToBinaryenType(this.currentType));
    }
    const globals: Map<string,Type> = this.globals;
    if (globals.has(name)) {
      this.currentType = <Type>globals.get(name);
      return this.module.createGetGlobal(name, typeToBinaryenType(this.currentType));
    }
    this.error(DiagnosticCode.Cannot_find_name_0, expression.range, name);
    return this.module.createUnreachable();
  }

  compileLiteralExpression(expression: LiteralExpression, contextualType: Type): BinaryenExpressionRef {
    switch (expression.literalKind) {
      // case LiteralKind.ARRAY:

      case LiteralKind.FLOAT: {
        const floatValue: f64 = (<FloatLiteralExpression>expression).value;
        if (contextualType == Type.f32 && (Math.fround(floatValue) as f64) == floatValue)
          return this.module.createF32(floatValue);
        this.currentType = Type.f64;
        return this.module.createF64(floatValue);
      }

      case LiteralKind.INTEGER: {
        const intValue: I64 = (<IntegerLiteralExpression>expression).value;
        if (contextualType == Type.bool && (intValue.isZero || intValue.isOne))
          return this.module.createI32(intValue.isZero ? 0 : 1);
        if (contextualType.isLongInteger)
          return this.module.createI64(intValue.lo, intValue.hi);
        if (!intValue.fitsInI32) {
          this.currentType = Type.i64;
          return this.module.createI64(intValue.lo, intValue.hi);
        }
        this.currentType = Type.i32;
        return this.module.createI32(intValue.toI32());
      }

      // case LiteralKind.OBJECT:
      // case LiteralKind.REGEXP:
      // case LiteralKind.STRING:
    }
    throw new Error("not implemented");
  }

  compileNewExpression(expression: NewExpression, contextualType: Type): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileParenthesizedExpression(expression: ParenthesizedExpression, contextualType: Type): BinaryenExpressionRef {
    return this.compileExpression(expression.expression, contextualType);
  }

  compilePropertyAccessExpression(expression: PropertyAccessExpression, contextualType: Type): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileSelectExpression(expression: SelectExpression, contextualType: Type): BinaryenExpressionRef {
    const condition: BinaryenExpressionRef = this.compileExpression(expression.condition, Type.i32);
    const ifThen: BinaryenExpressionRef = this.compileExpression(expression.ifThen, contextualType);
    const ifElse: BinaryenExpressionRef = this.compileExpression(expression.ifElse, contextualType);
    return this.module.createSelect(condition, ifThen, ifElse);
  }

  compileUnaryPostfixExpression(expression: UnaryPostfixExpression, contextualType: Type): BinaryenExpressionRef {
    const operator: Token = expression.operator;

    let op: BinaryOp;
    let binaryenType: BinaryenType;
    let binaryenOne: BinaryenExpressionRef;

    if (contextualType == Type.f32) {
      op = operator == Token.PLUS_PLUS ? BinaryOp.AddF32 : BinaryOp.SubF32;
      binaryenType = BinaryenType.F32;
      binaryenOne = this.module.createF32(1);
    } else if (contextualType == Type.f64) {
      op = operator == Token.PLUS_PLUS ? BinaryOp.AddF64 : BinaryOp.SubF64;
      binaryenType = BinaryenType.F64;
      binaryenOne = this.module.createF64(1);
    } else if (contextualType.isLongInteger) {
      op = operator == Token.PLUS_PLUS ? BinaryOp.AddI64 : BinaryOp.SubI64;
      binaryenType = BinaryenType.I64;
      binaryenOne = this.module.createI64(1, 0);
    } else {
      op = operator == Token.PLUS_PLUS ? BinaryOp.AddI32 : BinaryOp.SubI32;
      binaryenType = BinaryenType.I32;
      binaryenOne = this.module.createI32(1);
    }
    const getValue: BinaryenExpressionRef = this.compileExpression(expression.expression, contextualType);
    const setValue: BinaryenExpressionRef = this.compileAssignmentWithValue(expression.expression, this.module.createBinary(op, getValue, binaryenOne), false); // reports

    return this.module.createBlock(null, [
      getValue,
      setValue
    ], binaryenType);
  }

  compileUnaryPrefixExpression(expression: UnaryPrefixExpression, contextualType: Type): BinaryenExpressionRef {
    const operandExpression: Expression = expression.expression;

    let operand: BinaryenExpressionRef;
    let op: UnaryOp;

    switch (expression.operator) {

      case Token.PLUS:
        return this.compileExpression(operandExpression, contextualType);

      case Token.MINUS:
        operand = this.compileExpression(operandExpression, contextualType);
        if (this.currentType == Type.f32)
          op = UnaryOp.NegF32;
        else if (this.currentType == Type.f64)
          op = UnaryOp.NegF64;
        else
          return this.currentType.isLongInteger
               ? this.module.createBinary(BinaryOp.SubI64, this.module.createI64(0, 0), operand)
               : this.module.createBinary(BinaryOp.SubI32, this.module.createI32(0), operand);
        break;

      case Token.PLUS_PLUS:
        operand = this.compileExpression(operandExpression, contextualType);
        return this.currentType == Type.f32
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.AddF32, operand, this.module.createF32(1)), contextualType != Type.void)
             : this.currentType == Type.f64
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.AddF64, operand, this.module.createF64(1)), contextualType != Type.void)
             : this.currentType.isLongInteger
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.AddI64, operand, this.module.createI64(1, 0)), contextualType != Type.void)
             : this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.AddI32, operand, this.module.createI32(1)), contextualType != Type.void);

      case Token.MINUS_MINUS:
        operand = this.compileExpression(operandExpression, contextualType);
        return this.currentType == Type.f32
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.SubF32, operand, this.module.createF32(1)), contextualType != Type.void)
             : this.currentType == Type.f64
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.SubF64, operand, this.module.createF64(1)), contextualType != Type.void)
             : this.currentType.isLongInteger
             ? this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.SubI64, operand, this.module.createI64(1, 0)), contextualType != Type.void)
             : this.compileAssignmentWithValue(operandExpression, this.module.createBinary(BinaryOp.SubI32, operand, this.module.createI32(1)), contextualType != Type.void);

      case Token.EXCLAMATION:
        operand = this.compileExpression(operandExpression, Type.bool, false);
        if (this.currentType == Type.f32) {
          this.currentType = Type.bool;
          return this.module.createBinary(BinaryOp.EqF32, operand, this.module.createF32(0));
        }
        if (this.currentType == Type.f64) {
          this.currentType = Type.bool;
          return this.module.createBinary(BinaryOp.EqF64, operand, this.module.createF64(0));
        }
        op = this.currentType.isLongInteger
           ? UnaryOp.EqzI64 // TODO: does this yield i64 0/1?
           : UnaryOp.EqzI32;
        this.currentType = Type.bool;
        break;

      case Token.TILDE:
        operand = this.compileExpression(operandExpression, contextualType.isAnyFloat ? Type.i64 : contextualType);
        return this.currentType.isLongInteger
             ? this.module.createBinary(BinaryOp.XorI64, operand, this.module.createI64(-1, -1))
             : this.module.createBinary(BinaryOp.XorI32, operand, this.module.createI32(-1));

      default:
        throw new Error("not implemented");
    }
    return this.module.createUnary(op, operand);
  }
}

// helpers

function typeToBinaryenType(type: Type): BinaryenType {
  return type.kind == TypeKind.F32
       ? BinaryenType.F32
       : type.kind == TypeKind.F64
       ? BinaryenType.F64
       : type.isLongInteger
       ? BinaryenType.I64
       : type.isAnyInteger || type.kind == TypeKind.BOOL
       ? BinaryenType.I32
       : BinaryenType.None;
}

function typesToBinaryenTypes(types: Type[]): BinaryenType[] {
  const k: i32 = types.length;
  const ret: BinaryenType[] = new Array(k);
  for (let i: i32 = 0; i < k; ++i)
    ret[i] = typeToBinaryenType(types[i]);
  return ret;
}

function typeToBinaryenZero(module: Module, type: Type): BinaryenExpressionRef {
  return type.kind == TypeKind.F32
       ? module.createF32(0)
       : type.kind == TypeKind.F64
       ? module.createF64(0)
       : type.isLongInteger
       ? module.createI64(0, 0)
       : module.createI32(0);
}

function typeToBinaryenOne(module: Module, type: Type): BinaryenExpressionRef {
  return type.kind == TypeKind.F32
       ? module.createF32(1)
       : type.kind == TypeKind.F64
       ? module.createF64(1)
       : type.isLongInteger
       ? module.createI64(1, 0)
       : module.createI32(1);
}

function typeToSignatureNamePart(type: Type): string {
  return type.kind == TypeKind.VOID
       ? "v"
       : type.kind == TypeKind.F32
       ? "f"
       : type.kind == TypeKind.F64
       ? "F"
       : type.isLongInteger
       ? "I"
       : "i";
}

function typesToSignatureName(paramTypes: Type[], returnType: Type): string {
  sb.length = 0;
  for (let i: i32 = 0, k: i32 = paramTypes.length; i < k; ++i)
    sb.push(typeToSignatureNamePart(paramTypes[i]));
  sb.push(typeToSignatureNamePart(returnType));
  return sb.join("");
}
