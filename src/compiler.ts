import { Module, MemorySegment, UnaryOp, BinaryOp, HostOp } from "./binaryen";
import { DiagnosticCode, DiagnosticMessage, DiagnosticEmitter } from "./diagnostics";
import { hasModifier } from "./parser";
import { Program } from "./program";
import { CharCode, U64 } from "./util";
import {

  NodeKind,
  TypeNode,

  // statements
  BlockStatement,
  BreakStatement,
  ClassDeclaration,
  ContinueStatement,
  DoStatement,
  EmptyStatement,
  EnumDeclaration,
  ExpressionStatement,
  FunctionDeclaration,
  ForStatement,
  IfStatement,
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

  Enum,
  Class,
  Field,
  Function,
  GlobalVariable,
  LocalVariable,
  Namespace,
  Method,
  Source,
  Type,
  TypeKind

} from "./reflection";

export enum Target {
  WASM32,
  WASM64
}

export class Options {
  target: Target = Target.WASM32;
}

export class Compiler extends DiagnosticEmitter {

  program: Program;
  options: Options;
  module: Module;

  currentType: Type = Type.void;
  currentClass: Class | null = null;
  currentFunction: Function | null = null;
  breakMajor: i32 = 0;
  breakMinor: i32 = 0;

  memoryOffset: U64 = new U64(8, 0); // leave space for (any size of) NULL
  memorySegments: MemorySegment[] = new Array();

  static compile(program: Program, options: Options | null = null): Module {
    const compiler: Compiler = new Compiler(program, options);
    return compiler.compile();
  }

  constructor(program: Program, options: Options | null = null) {
    super(program.diagnostics);
    this.program = program;
    this.options = options ? options : new Options();
    this.module = Module.create();
  }

  compile(): Module {
    const program: Program = this.program;

    // initialize lookup maps
    program.initialize(this.options.target);

    // start by compiling entry file exports
    const entrySource: Source = program.sources[0];
    for (let i: i32 = 0, k = entrySource.statements.length; i < k; ++i) {
      const statement: Statement = entrySource.statements[i];
      switch (statement.kind) {

        case NodeKind.CLASS:
          if (hasModifier(ModifierKind.EXPORT, (<ClassDeclaration>statement).modifiers) && !(<ClassDeclaration>statement).typeParameters.length) {
            const cl: Class = Class.create(<ClassDeclaration>statement, []).exportAs((<ClassDeclaration>statement).identifier.name);
            this.program.addClass(cl);
            this.compileClass(cl);
          }
          break;

        case NodeKind.ENUM:
          if (hasModifier(ModifierKind.EXPORT, (<EnumDeclaration>statement).modifiers)) {
            const en: Enum = Enum.create(<EnumDeclaration>statement).exportAs((<EnumDeclaration>statement).identifier.name);
            this.program.addEnum(en);
            this.compileEnum(en);
          }
          break;

        case NodeKind.FUNCTION:
          if (hasModifier(ModifierKind.EXPORT, (<FunctionDeclaration>statement).modifiers) && !(<FunctionDeclaration>statement).typeParameters.length) {
            const fn: Function = Function.create(<FunctionDeclaration>statement, []).exportAs((<FunctionDeclaration>statement).identifier.name);
            this.program.addFunction(fn);
            this.compileFunction(fn);
          }
          break;

        case NodeKind.NAMESPACE:
          if (hasModifier(ModifierKind.EXPORT, (<NamespaceDeclaration>statement).modifiers)) {
            const ns: Namespace = Namespace.create(<NamespaceDeclaration>statement).exportAs((<NamespaceDeclaration>statement).identifier.name);
            this.program.addNamespace(ns);
            this.compileNamespace(ns);
          }
          break;

        case NodeKind.VARIABLE:
          if (hasModifier(ModifierKind.EXPORT, (<VariableStatement>statement).modifiers)) {
            const gls: GlobalVariable[] = GlobalVariable.create(<VariableStatement>statement);
            for (let j: i32 = 0, l: i32 = gls.length; j < l; ++j) {
              const gl: GlobalVariable = gls[j];
              gl.exportName = (<VariableDeclaration>gl.declaration).identifier.name; // WASM can't do this right now
              this.program.addGlobal(gl);
              this.compileGlobal(gl);
            }
          }
          break;

        case NodeKind.EXPORT:
          // obtain referenced declaration and export that
          break;
      }
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

  compileClass(cl: Class): void {
    throw new Error("not implemented");
  }

  compileEnum(en: Enum): void {
    throw new Error("not implemented");
  }

  compileFunction(fn: Function): void {
    throw new Error("not implemented");
  }

  compileGlobal(gl: GlobalVariable): void {
    throw new Error("not implemented");
  }

  compileNamespace(ns: Namespace): void {
    throw new Error("not implemented");
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

  resolveType(node: TypeNode, reportNotFound: bool = true): Type | null {
    const types: Map<string,Type> = this.program.types;
    const name: string = node.identifier.name;
    if (types.has(name)) {
      const type: Type = <Type>types.get(name);
      return type;
    }
    if (reportNotFound)
      this.error(DiagnosticCode.Cannot_find_name_0, node.identifier.range, name);
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
    return this.module.createBlock(null, children);
  }

  compileBreakStatement(statement: BreakStatement): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileContinueStatement(statement: ContinueStatement): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileDoStatement(statement: DoStatement): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileEmptyStatement(statement: EmptyStatement): BinaryenExpressionRef {
    return this.module.createNop();
  }

  compileExpressionStatement(statement: ExpressionStatement): BinaryenExpressionRef {
    const expression: BinaryenExpressionRef = this.compileExpression(statement.expression, Type.void);
    return this.currentType == Type.void ? expression : this.module.createDrop(expression);
  }

  compileForStatement(statement: ForStatement): BinaryenExpressionRef {
    const initializer: BinaryenExpressionRef = statement.initializer ? this.compileStatement(<Statement>statement.initializer) : 0;
    const condition: BinaryenExportRef = statement.condition ? this.compileExpression(<Expression>statement.condition, Type.i32) : 0;
    const incrementor: BinaryenExportRef = statement.incrementor ? this.compileExpression(<Expression>statement.incrementor, Type.void) : 0;
    throw new Error("not implemented");
  }

  compileIfStatement(statement: IfStatement): BinaryenExpressionRef {
    const condition: BinaryenExpressionRef = this.compileExpression(statement.condition, Type.i32);
    const ifTrue: BinaryenExpressionRef = this.compileStatement(statement.statement);
    const ifFalse: BinaryenExportRef = statement.elseStatement ? this.compileStatement(<Statement>statement.elseStatement) : 0;
    return this.module.createIf(condition, ifTrue, ifFalse);
  }

  compileReturnStatement(statement: ReturnStatement): BinaryenExpressionRef {
    if (this.currentFunction) {
      const expression: BinaryenExpressionRef = statement.expression ? this.compileExpression(<Expression>statement.expression, (<Function>this.currentFunction).returnType) : 0;
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
  }

  compileVariableStatement(statement: VariableStatement): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileWhileStatement(statement: WhileStatement): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  // expressions

  compileExpression(expression: Expression, resultType: Type): BinaryenExpressionRef {
    this.currentType = resultType;

    let expr: BinaryenExpressionRef;
    switch (expression.kind) {

      case NodeKind.ASSERTION:
        expr = this.compileAssertionExpression(<AssertionExpression>expression, resultType);
        break;

      case NodeKind.BINARY:
        expr = this.compileBinaryExpression(<BinaryExpression>expression, resultType);
        break;

      case NodeKind.CALL:
        expr = this.compileCallExpression(<CallExpression>expression, resultType);
        break;

      case NodeKind.ELEMENTACCESS:
        expr = this.compileElementAccessExpression(<ElementAccessExpression>expression, resultType);
        break;

      case NodeKind.IDENTIFIER:
        expr = this.compileIdentifierExpression(<IdentifierExpression>expression, resultType);
        break;

      case NodeKind.LITERAL:
        expr = this.compileLiteralExpression(<LiteralExpression>expression, resultType);
        break;

      case NodeKind.NEW:
        expr = this.compileNewExpression(<NewExpression>expression, resultType);
        break;

      case NodeKind.PARENTHESIZED:
        expr = this.compileParenthesizedExpression(<ParenthesizedExpression>expression, resultType);
        break;

      case NodeKind.PROPERTYACCESS:
        expr = this.compilePropertyAccessExpression(<PropertyAccessExpression>expression, resultType);
        break;

      case NodeKind.SELECT:
        expr = this.compileSelectExpression(<SelectExpression>expression, resultType);
        break;

      case NodeKind.UNARYPOSTFIX:
        expr = this.compileUnaryPostfixExpression(<UnaryPostfixExpression>expression, resultType);
        break;

      case NodeKind.UNARYPREFIX:
        expr = this.compileUnaryPrefixExpression(<UnaryPrefixExpression>expression, resultType);
        break;

      default:
        throw new Error("unexpected expression kind");
    }

    if (this.currentType != resultType) {
      expr = this.convertExpression(expr, this.currentType, resultType);
      this.currentType = resultType;
    }

    return expr;
  }

  convertExpression(expr: BinaryenExpressionRef, fromType: Type, toType: Type): BinaryenExpressionRef {

    // void to any
    if (fromType.kind == TypeKind.VOID)
      throw new Error("illegal conversion");

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
    const toType: Type | null = this.resolveType(expression.toType); // reports
    if (toType && toType != contextualType) {
      const expr: BinaryenExpressionRef = this.compileExpression(expression.expression, <Type>toType);
      return this.convertExpression(expr, this.currentType, <Type>toType);
    }
    return this.compileExpression(expression.expression, contextualType);
  }

  compileBinaryExpression(expression: BinaryExpression, contextualType: Type): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileCallExpression(expression: CallExpression, contextualType: Type): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileElementAccessExpression(expression: ElementAccessExpression, contextualType: Type): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileIdentifierExpression(expression: IdentifierExpression, contextualType: Type): BinaryenExpressionRef {
    throw new Error("not implemented");
  }

  compileLiteralExpression(expression: LiteralExpression, contextualType: Type): BinaryenExpressionRef {
    switch (expression.literalKind) {
      // case LiteralKind.ARRAY:

      case LiteralKind.FLOAT:
        if (contextualType == Type.f32)
          return this.module.createF32((<FloatLiteralExpression>expression).value);
        this.currentType = Type.f64;
        return this.module.createF64((<FloatLiteralExpression>expression).value);

      case LiteralKind.INTEGER:
        if (contextualType == Type.bool)
          return this.module.createI32((<IntegerLiteralExpression>expression).value.isOdd ? 1 : 0)
        if (contextualType.isLongInteger)
          return this.module.createI64((<IntegerLiteralExpression>expression).value.lo, (<IntegerLiteralExpression>expression).value.hi);
        const value: i32 = (<IntegerLiteralExpression>expression).value.toI32();
        if (contextualType.isSmallInteger)
          return contextualType.isSignedInteger
            ? this.module.createI32(value << contextualType.smallIntegerShift >> contextualType.smallIntegerShift)
            : this.module.createI32(value & contextualType.smallIntegerMask);
        return this.module.createI32(value);

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
    throw new Error("not implemented");
  }

  compileUnaryPrefixExpression(expression: UnaryPrefixExpression, contextualType: Type): BinaryenExpressionRef {
    throw new Error("not implemented");
  }
}
