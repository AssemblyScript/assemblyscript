/*

 Reflection objects are largely independent of their respective declarations in
 order to make it easier to introduce internal objects.

 Base
 ├ Class
 ├ Enum
 ├ Field
 ├ Function
 │ └ Method
 ├ Import
 ├ Namespace
 ├ Source
 ├ Type ~ TypeKind
 └ VariableBase
   ├ GlobalVariable
   └ LocalVariable

*/

import {
  ClassDeclaration,
  DeclarationStatement,
  EnumDeclaration,
  Expression,
  FunctionDeclaration,
  ImportDeclaration,
  ImportStatement,
  MethodDeclaration,
  ModifierKind,
  NamespaceDeclaration,
  Node,
  FieldDeclaration,
  SourceNode,
  Statement,
  NodeKind,
  TypeParameter,
  VariableDeclaration,
  VariableStatement
} from "./ast";
import { DiagnosticMessage } from "./diagnostics";
import { Token, Tokenizer, Range } from "./tokenizer";
import { hasModifier } from "./parser";
import { normalizePath } from "./util";

export abstract class Base {

  name: string;
  exportName: string | null = null;

  constructor(name: string) {
    this.name = name;
  }

  get isExport(): bool { return this.exportName != null; }

  exportAs(exportName: string): this {
    this.exportName = exportName;
    return this;
  }
}

export const enum TypeKind {
  I8,
  I16,
  I32,
  I64,
  ISIZE,
  U8,
  U16,
  U32,
  U64,
  USIZE,
  F32,
  F64,
  BOOL,
  VOID
}

export function typeKindToString(kind: TypeKind): string {
  switch (kind) {
    case TypeKind.I8: return "i8";
    case TypeKind.I16: return "i16";
    case TypeKind.I32: return "i32";
    case TypeKind.I64: return "i64";
    case TypeKind.ISIZE: return "isize";
    case TypeKind.U8: return "u8";
    case TypeKind.U16: return "u16";
    case TypeKind.U32: return "u32";
    case TypeKind.U64: return "u64";
    case TypeKind.USIZE: return "usize";
    case TypeKind.F32: return "f32";
    case TypeKind.F64: return "f64";
    case TypeKind.BOOL: return "bool";
    case TypeKind.VOID: return "void";
  }
  return "invalid";
}

export class Type extends Base {

  kind: TypeKind;
  size: i32;

  constructor(kind: TypeKind, size: i32) {
    super(typeKindToString(kind));
    this.kind = kind;
    this.size = size;
  }

  get bitSize(): i32 { return this.size << 3; }
  get smallIntegerShift(): i32 { return 32 - (this.size << 3); }
  get smallIntegerMask(): i32 { return -1 >>> 32 - (this.size << 3); }

  get isAnyInteger(): bool { return this.kind >= TypeKind.I8 && this.kind <= TypeKind.USIZE; }
  get isSmallInteger(): bool { return this.size == 1 || this.size == 2; }
  get isLongInteger(): bool { return this.size == 8 && this.kind != TypeKind.F64; }
  get isUnsignedInteger(): bool { return this.kind >= TypeKind.U8 && this.kind <= TypeKind.USIZE; }
  get isSignedInteger(): bool { return this.kind >= TypeKind.I8 && this.kind <= TypeKind.ISIZE; }
  get isAnySize(): bool { return this.kind == TypeKind.ISIZE || this.kind == TypeKind.USIZE; }
  get isAnyFloat(): bool { return this.kind == TypeKind.F32 || this.kind == TypeKind.F64; }

  toString(): string {
    return typeKindToString(this.kind);
  }

  static readonly i8: Type = new Type(TypeKind.I8, 1);
  static readonly i16: Type = new Type(TypeKind.I16, 2);
  static readonly i32: Type = new Type(TypeKind.I32, 4);
  static readonly i64: Type = new Type(TypeKind.I64, 8);
  static readonly isize32: Type = new Type(TypeKind.I32, 4);
  static readonly isize64: Type = new Type(TypeKind.I64, 8);
  static readonly u8: Type = new Type(TypeKind.U8, 1);
  static readonly u16: Type = new Type(TypeKind.U16, 2);
  static readonly u32: Type = new Type(TypeKind.U32, 4);
  static readonly u64: Type = new Type(TypeKind.U64, 8);
  static readonly usize32: Type = new Type(TypeKind.U32, 4);
  static readonly usize64: Type = new Type(TypeKind.U64, 8);
  static readonly f32: Type = new Type(TypeKind.F32, 4);
  static readonly f64: Type = new Type(TypeKind.F64, 8);
  static readonly bool: Type = new Type(TypeKind.BOOL, 1);
  static readonly void: Type = new Type(TypeKind.VOID, 0);
}

export class Source extends SourceNode {

  text: string;
  tokenizer: Tokenizer | null;
  statements: Statement[];
  isEntry: bool;
  normalizedPath: string;

  constructor(path: string, text: string, isEntry: bool = false) {
    super();
    this.range = new Range(this, 0, text.length);
    this.path = path;
    this.text = text;
    this.statements = new Array();
    this.isEntry = isEntry;
    this.normalizedPath = normalizePath(path);
  }

  get isDeclaration(): bool { return !this.isEntry && this.path.endsWith(".d.ts"); }
}

export class Import extends Base {

  declaration: ImportDeclaration | null;
  externalName: string;

  static create(declaration: ImportStatement): Import[] {
    const count: i32 = declaration.declarations.length;
    const imports: Import[] = new Array(count);
    for (let i: i32 = 0; i < count; ++i) {
      const decl: ImportDeclaration = declaration.declarations[i];
      const imprt: Import = new Import(decl.identifier.name);
      imprt.declaration = decl;
      imprt.externalName = decl.externalIdentifier.name;
      imports[i] = imprt;
    }
    return imports;
  }
}

export abstract class Variable extends Base {
  type: Type;
}

export class GlobalVariable extends Variable {

  declaration: VariableDeclaration;
  mutable: bool;

  static create(declaration: VariableStatement): GlobalVariable[] {
    const mutable: bool = hasModifier(ModifierKind.CONST, declaration.modifiers);
    const count: i32 = declaration.members.length;
    const variables: GlobalVariable[] = new Array(count);
    for (let i: i32 = 0; i < count; ++i) {
      const decl: VariableDeclaration = declaration.members[i];
      const variable: GlobalVariable = new GlobalVariable(decl.identifier.name);
      variable.declaration = decl;
      variable.mutable = mutable;
      variables[i] = variable;
    }
    return variables;
  }
}

export class LocalVariable extends Variable {

  declaration: VariableDeclaration;
  index: i32;

  static create(declaration: VariableStatement, index: i32): LocalVariable[] {
    const count: i32 = declaration.members.length;
    const variables: LocalVariable[] = new Array(count);
    for (let i: i32 = 0; i < count; ++i) {
      const decl: VariableDeclaration = declaration.members[i];
      const variable: LocalVariable = new LocalVariable(decl.identifier.name);
      variable.declaration = decl;
      variable.index = index;
      variables[i] = variable;
    }
    return variables;
  }
}

export class Namespace extends Base {

  declaration: NamespaceDeclaration;
  members: Base[];

  static create(declaration: NamespaceDeclaration): Namespace {
    const ns: Namespace = new Namespace(declaration.identifier.name);
    ns.declaration = declaration;
    const members: Base[] = ns.members = new Array();
    // TODO: insert members
    return ns;
  }
}

export class Enum extends Base {

  declaration: EnumDeclaration;
  isConst: bool;
  values: Map<string,Expression | null> = new Map();

  static create(declaration: EnumDeclaration): Enum {
    const enm: Enum = new Enum(declaration.identifier.name);
    enm.declaration = declaration;
    enm.isConst = hasModifier(ModifierKind.CONST, declaration.modifiers);
    // TODO: insert values
    return enm;
  }
}

export class Function extends Base {

  declaration: FunctionDeclaration;
  typeArguments: Type[];
  returnType: Type;
  statements: Statement[];

  static create(declaration: FunctionDeclaration, typeArguments: Type[]): Function {
    throw new Error("not implemented");
  }
}

export class Class extends Base {

  declaration: ClassDeclaration;
  typeArguments: Type[];
  baseClass: Class | null;
  memberNames: Set<string>;
  methods: Map<string,Method>;
  fields: Map<string,Field>;

  static create(declaration: ClassDeclaration, typeArguments: Type[]): Class {
    const clazz: Class = new Class(declaration.identifier.name);
    clazz.typeArguments = typeArguments;
    return clazz;
  }
}

export class Method extends Function {

  declaration: MethodDeclaration; // more specific
  isInstance: bool;

  static create(declaration: MethodDeclaration, typeArguments: Type[]): Method {
    throw new Error("not implemented");
  }
}

export class Field extends Base {

  declaration: FieldDeclaration | null;
  type: Type;
  offset: i32;
  initializer: Expression | null;

  static create(declaration: FieldDeclaration, offset: i32): Field {
    const field: Field = new Field(declaration.identifier.name);
    field.declaration = declaration;
    field.offset = offset;
    field.initializer = declaration.initializer;
    return field;
  }
}
