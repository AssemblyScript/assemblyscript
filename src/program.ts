import { Target } from "./compiler";
import { DiagnosticCode, DiagnosticMessage, DiagnosticEmitter } from "./diagnostics";
import { Source, Type, Class, Enum, Function, GlobalVariable, Namespace } from "./reflection";
import { hasModifier } from "./parser";
import { normalizePath, resolvePath } from "./util";
import {

  Node,
  NodeKind,
  SourceNode,
  ModifierKind,

  ClassDeclaration,
  DeclarationStatement,
  EnumDeclaration,
  EnumValueDeclaration,
  FieldDeclaration,
  FunctionDeclaration,
  ImportDeclaration,
  ImportStatement,
  InterfaceDeclaration,
  MethodDeclaration,
  NamespaceDeclaration,
  Statement,
  VariableDeclaration,
  VariableStatement

} from "./ast";

export class Program extends DiagnosticEmitter {

  sources: Source[];
  diagnosticsOffset: i32 = 0;
  target: Target = Target.WASM32;

  names: Map<string,DeclarationStatement> = new Map();
  types: Map<string,Type> = new Map();

  classes: Class[] = new Array();
  enums: Enum[] = new Array();
  functions: Function[] = new Array();
  globals: GlobalVariable[] = new Array();
  namespaces: Namespace[] = new Array();

  constructor(diagnostics: DiagnosticMessage[] | null = null) {
    super(diagnostics);
    this.sources = new Array();
  }

  initialize(target: Target): void {
    this.target = target;
    initializeBasicTypes(this.types, target);

    const importStatements: ImportStatement[] = new Array();

    // build a lookup map of global names to declarations
    for (let i: i32 = 0, k: i32 = this.sources.length; i < k; ++i) {
      const source: Source = this.sources[i];
      const statements: Statement[] = source.statements;
      for (let j: i32 = 0, l: i32 = statements.length; j < l; ++j) {
        const statement: Statement = statements[j];
        switch (statement.kind) {

          case NodeKind.CLASS:
            this.initializeClass(<ClassDeclaration>statement);
            break;

          case NodeKind.ENUM:
            this.initializeEnum(<EnumDeclaration>statement);
            break;

          case NodeKind.FUNCTION:
            this.initializeFunction(<FunctionDeclaration>statement);
            break;

          case NodeKind.IMPORT:
            this.initializeImports(<ImportStatement>statement);
            importStatements.push(<ImportStatement>statement);
            break;

          case NodeKind.INTERFACE:
            this.initializeInterface(<InterfaceDeclaration>statement);
            break;

          case NodeKind.NAMESPACE:
            this.initializeNamespace(<NamespaceDeclaration>statement);
            break;

          case NodeKind.VARIABLE:
            this.initializeVariables(<VariableStatement>statement);
            break;
        }
      }
    }

    // resolve imports to their respective declarations
    for (let i: i32 = 0, k: i32 = importStatements.length; i < k; ++i) {
      const statement: ImportStatement = importStatements[i];
      const importPath: string = resolvePath(normalizePath(statement.path), statement.range.source.normalizedPath);
      const members: ImportDeclaration[] = statement.declarations;
      for (let j: i32 = 0, l: i32 = members.length; j < l; ++j){
        const declaration: ImportDeclaration = members[j];
        const importedName: string = declaration.externalIdentifier.name;
        for (let m: i32 = 0, n: i32 = this.sources.length; m < n; ++n) {
          const source: Source = this.sources[m];
          if (source.path == importPath) {
            // TODO
          }
        }
      }
    }
  }

  initializeClass(declaration: ClassDeclaration): void {
    this.addName(declaration);
    const members: DeclarationStatement[] = declaration.members;
    for (let j: i32 = 0, l: i32 = members.length; j < l; ++j) {
      const statement: Statement = members[j];
      switch (statement.kind) {

        case NodeKind.FIELD:
          this.initializeField(<FieldDeclaration>statement);
          break;

        case NodeKind.METHOD:
          this.initializeMethod(<MethodDeclaration>statement);
          break;

        default:
          throw new Error("unexpected class member");
      }
    }
  }

  initializeField(declaration: FieldDeclaration): void {
    this.addName(declaration);
  }

  initializeEnum(declaration: EnumDeclaration): void {
    this.addName(declaration);
    const members: EnumValueDeclaration[] = declaration.members;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i)
      this.initializeEnumValue(members[i]);
  }

  initializeEnumValue(declaration: EnumValueDeclaration): void {
    this.addName(declaration);
  }

  initializeFunction(declaration: FunctionDeclaration): void {
    this.addName(declaration);
  }

  initializeImports(statement: ImportStatement): void {
    const members: ImportDeclaration[] = statement.declarations;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i)
      this.initializeImport(members[i]);
  }

  initializeImport(declaration: ImportDeclaration): void {
    this.addName(declaration);
  }

  initializeInterface(declaration: InterfaceDeclaration): void {
    this.addName(declaration);
    const members: Statement[] = declaration.members;
    for (let j: i32 = 0, l: i32 = members.length; j < l; ++j) {
      const statement: Statement = members[j];
      switch (statement.kind) {

        case NodeKind.FIELD:
          this.initializeField(<FieldDeclaration>statement);
          break;

        case NodeKind.METHOD:
          this.initializeMethod(<MethodDeclaration>statement);
          break;

        default:
          throw new Error("unexpected interface member");
      }
    }
  }

  initializeMethod(declaration: MethodDeclaration): void {
    this.addName(declaration);
  }

  initializeNamespace(declaration: NamespaceDeclaration): void {
    this.addName(declaration);
    const members: Statement[] = declaration.members;
    for (let j: i32 = 0, l: i32 = members.length; j < l; ++j) {
      const statement: Statement = members[j];
      switch (statement.kind) {

        case NodeKind.CLASS:
          this.initializeClass(<ClassDeclaration>statement);
          break;

        case NodeKind.ENUM:
          this.initializeEnum(<EnumDeclaration>statement);
          break;

        case NodeKind.FUNCTION:
          this.initializeFunction(<FunctionDeclaration>statement);
          break;

        case NodeKind.INTERFACE:
          this.initializeInterface(<InterfaceDeclaration>statement);
          break;

        case NodeKind.NAMESPACE:
          this.initializeNamespace(<NamespaceDeclaration>statement);
          break;

        case NodeKind.VARIABLE:
          this.initializeVariables(<VariableStatement>statement);
          break;

        default:
          throw new Error("unexpected namespace member");
      }
    }
  }

  initializeVariables(statement: VariableStatement): void {
    const declarations: VariableDeclaration[] = statement.members;
    for (let i: i32 = 0, k = declarations.length; i < k; ++i) {
      const declaration: VariableDeclaration = declarations[i];
      this.addName(declaration);
    }
  }

  addName(declaration: DeclarationStatement): void {
    const name: string = this.mangleName(declaration);
    if (this.names.has(name))
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, name); // recoverable
    else
      this.names.set(name, declaration);
  }

  mangleName(declaration: DeclarationStatement): string {
    let name: string = declaration.identifier.name;
    let parent: Node | null = declaration.parent;
    if (parent) {
      switch (parent.kind) {

        case NodeKind.SOURCE:
          return (<SourceNode>parent).path + "/" + name;

        case NodeKind.CLASS: {
          if (
            (declaration.kind == NodeKind.FIELD && !hasModifier(ModifierKind.STATIC, (<FieldDeclaration>declaration).modifiers)) ||
            (declaration.kind == NodeKind.METHOD && !hasModifier(ModifierKind.STATIC, (<MethodDeclaration>declaration).modifiers))
          )
            return this.mangleName(<DeclarationStatement>parent) + "#" + name;
          // otherwise fall through
        }
        case NodeKind.ENUM:
        case NodeKind.ENUMVALUE:
        case NodeKind.NAMESPACE:
          return this.mangleName(<DeclarationStatement>parent) + "." + name;

        case NodeKind.IMPORT: {
          const impParent: Node | null = (<ImportStatement>parent).parent;
          if (impParent && impParent.kind == NodeKind.SOURCE)
            return (<SourceNode>impParent).path + "/" + name;
          break;
        }

        case NodeKind.VARIABLE: {
          const varParent: Node | null = (<VariableStatement>parent).parent;
          if (varParent) {
            if (varParent.kind == NodeKind.SOURCE)
              return <SourceNode>varParent == this.sources[0] ? name : (<SourceNode>varParent).path + "/" + name;
            if (varParent.kind == NodeKind.NAMESPACE)
              return this.mangleName(<DeclarationStatement>varParent) + "." + name;
          }
          break;
        }
      }
    }
    throw new Error("unexpected parent");
  }

  addClass(cl: Class): void {
    cl.declaration.reflectionIndex = this.classes.length;
    this.classes.push(cl);
  }

  addEnum(en: Enum): void {
    en.declaration.reflectionIndex = this.enums.length;
    this.enums.push(en);
  }

  addFunction(fn: Function): void {
    fn.declaration.reflectionIndex = this.functions.length;
    this.functions.push(fn);
  }

  addGlobal(gl: GlobalVariable): void {
    gl.declaration.reflectionIndex = this.globals.length;
    this.globals.push(gl);
  }

  addNamespace(ns: Namespace): void {
    ns.declaration.reflectionIndex = this.namespaces.length;
    this.namespaces.push(ns);
  }
}

function initializeBasicTypes(types: Map<string,Type>, target: Target) {
  types.set("i8", Type.i8);
  types.set("i16", Type.i16);
  types.set("i32", Type.i32);
  types.set("i64", Type.i64);
  types.set("isize", target == Target.WASM32 ? Type.isize32 : Type.isize64);
  types.set("u8", Type.u8);
  types.set("u16", Type.u16);
  types.set("u32", Type.u32);
  types.set("u64", Type.u64);
  types.set("usize", target == Target.WASM32 ? Type.usize32 : Type.usize64);
  types.set("bool", Type.bool);
  types.set("void", Type.void);
}
