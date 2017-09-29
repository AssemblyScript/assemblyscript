import { Module, MemorySegment, UnaryOp, BinaryOp, HostOp, Type as BinaryenType } from "./binaryen";
import { DiagnosticCode, DiagnosticMessage, DiagnosticEmitter } from "./diagnostics";
import { hasModifier } from "./parser";
import { Program } from "./program";
import { CharCode, I64, U64 } from "./util";
import { Token } from "./tokenizer";
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
  EnumValueDeclaration,
  ExpressionStatement,
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

  statements: BinaryenExpressionRef[] = new Array(); // TODO: make start function

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

        case NodeKind.IMPORT:
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
          // TODO: obtain referenced declaration and export that
          break;

        default:
          this.statements.push(this.compileStatement(statement));
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
    for (let i: i32 = 0, k = en.declaration.members.length; i < k; ++i) {
      const declaration: EnumValueDeclaration =  en.declaration.members[i];
      const name: string = this.program.mangleName(declaration);
      const value: BinaryenExpressionRef = declaration.value
        ? this.compileExpression(<Expression>declaration.value, Type.i32)
        : this.module.createI32(i); // TODO
      this.module.addGlobal(name, BinaryenType.I32, false, value);
      if (en.exportName != null) {
        // TODO: WASM does not yet support non-function exports
      }
    }
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

  enterBreakContext(): string {
    if (this.breakMinor == 0)
      ++this.breakMajor;
    ++this.breakMinor;
    return this.breakMajor.toString() + "." + this.breakMinor.toString();
  }

  leaveBreakContext(): void {
    --this.breakMinor;
  }

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
    return this.compileExpression(statement.expression, Type.void);
  }

  compileForStatement(statement: ForStatement): BinaryenExpressionRef {
    const initializer: BinaryenExpressionRef = statement.initializer ? this.compileStatement(<Statement>statement.initializer) : 0;
    const condition: BinaryenExpressionRef = statement.condition ? this.compileExpression(<Expression>statement.condition, Type.i32) : 0;
    const incrementor: BinaryenExpressionRef = statement.incrementor ? this.compileExpression(<Expression>statement.incrementor, Type.void) : 0;
    throw new Error("not implemented");
  }

  compileIfStatement(statement: IfStatement): BinaryenExpressionRef {
    const condition: BinaryenExpressionRef = this.compileExpression(statement.condition, Type.i32);
    const ifTrue: BinaryenExpressionRef = this.compileStatement(statement.statement);
    const ifFalse: BinaryenExpressionRef = statement.elseStatement ? this.compileStatement(<Statement>statement.elseStatement) : 0;
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
    const condition: BinaryenExpressionRef = this.compileExpression(statement.condition, Type.i32);
    const label: string = this.enterBreakContext();
    const breakLabel: string = "break$" + label;
    const continueLabel: string = "continue$" + label;
    const body: BinaryenExpressionRef = this.compileStatement(statement.statement);
    this.leaveBreakContext();
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
          throw new Error("not implemented"); // TODO: fmod
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

    return compound
      ? this.compileAssignment(expression.left, this.module.createBinary(op, left, right))
      : this.module.createBinary(op, left, right);
  }

  compileAssignment(expression: Expression, value: BinaryenExpressionRef): BinaryenExpressionRef {
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
    let operand: BinaryenExpressionRef;
    let op: UnaryOp;

    switch (expression.operator) {

      case Token.PLUS_PLUS:
      case Token.MINUS_MINUS:

      default:
        throw new Error("not implemented");
    }
    // return this.module.createBinary(op, operand);
  }

  compileUnaryPrefixExpression(expression: UnaryPrefixExpression, contextualType: Type): BinaryenExpressionRef {
    let operand: BinaryenExpressionRef;
    let op: UnaryOp;

    switch (expression.operator) {

      case Token.PLUS:
        return this.compileExpression(expression.expression, contextualType);

      case Token.MINUS:
        operand = this.compileExpression(expression.expression, contextualType);
        if (this.currentType == Type.f32)
          op = UnaryOp.NegF32;
        else if (this.currentType == Type.f64)
          op = UnaryOp.NegF64;
        else
          return this.currentType.isLongInteger
            ? this.module.createBinary(BinaryOp.SubI64, this.module.createI64(0, 0), operand)
            : this.module.createBinary(BinaryOp.SubI32, this.module.createI32(0), operand);
        break;

      // case Token.PLUS_PLUS:
      // case Token.MINUS_MINUS:

      case Token.EXCLAMATION:
        operand = this.compileExpression(expression.expression, Type.bool, false);
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
        operand = this.compileExpression(expression.expression, contextualType.isAnyFloat ? Type.i64 : contextualType);
        return this.currentType.isLongInteger
          ? this.module.createBinary(BinaryOp.XorI64, operand, this.module.createI64(-1, -1))
          : this.module.createBinary(BinaryOp.XorI32, operand, this.module.createI32(-1));

      default:
        throw new Error("not implemented");
    }

    return this.module.createUnary(op, operand);
  }
}
