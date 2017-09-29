import { Target } from "./compiler";
import { DiagnosticCode, DiagnosticMessage, DiagnosticEmitter } from "./diagnostics";
import { Source, Type, Class, Enum, Function, GlobalVariable, Namespace } from "./reflection";
import { hasModifier } from "./parser";
import { normalizePath, resolvePath, trimExtension } from "./util";
import {

  Node,
  NodeKind,
  SourceNode,
  ModifierKind,
  IdentifierExpression,

  ClassDeclaration,
  DeclarationStatement,
  EnumDeclaration,
  EnumValueDeclaration,
  ExportMember,
  ExportStatement,
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

class QueuedExport {
  importName: string;
  member: ExportMember;
}

class QueuedImport {
  globalName: string;
  importName: string;
  declaration: ImportDeclaration;
}

export class Program extends DiagnosticEmitter {

  sources: Source[];
  diagnosticsOffset: i32 = 0;
  target: Target = Target.WASM32;

  // internal names to declarations
  names: Map<string,DeclarationStatement> = new Map();
  // type names to types
  types: Map<string,Type> = new Map();
  // export names to declarations (separate from internal names)
  exports: Map<string,DeclarationStatement> = new Map();

  // reflection instances
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

    const exportsMap: Map<string,QueuedExport> = new Map();
    const importsQueue: QueuedImport[] = new Array();

    // build initial lookup maps of global and export names to declarations
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

          case NodeKind.EXPORT:
            this.initializeExports(<ExportStatement>statement, exportsMap);
            break;

          case NodeKind.FUNCTION:
            this.initializeFunction(<FunctionDeclaration>statement);
            break;

          case NodeKind.IMPORT:
            this.initializeImports(<ImportStatement>statement, exportsMap, importsQueue);
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

    // at this point exports map should be resolvable
    for (let [key, val] of exportsMap.entries()) {
      const seen: Set<QueuedExport> = new Set();
      while (exportsMap.has(val.importName)) {
        val = <QueuedExport>exportsMap.get(val.importName);
        if (seen.has(val))
          break;
        seen.add(val);
      }
      if (this.exports.has(val.importName))
        this.addExport(key, <DeclarationStatement>this.exports.get(val.importName));
      else
        this.error(DiagnosticCode.Cannot_find_name_0, val.member.externalIdentifier.range, val.importName);
    }

    // at this point imports queue should be resolvable
    for (let i: i32 = 0, k: i32 = importsQueue.length; i < k; ++i) {
      const queued: QueuedImport = importsQueue[i];
      const globalName: string = queued.globalName;
      let importName: string = queued.importName;
      const seen: Set<QueuedExport> = new Set();
      while (exportsMap.has(importName)) {
        const val: QueuedExport = <QueuedExport>exportsMap.get(importName);
        importName = val.importName;
        if (seen.has(val))
          break;
        seen.add(val);
      }
      if (this.exports.has(importName)) {
        if (this.names.has(globalName))
          this.error(DiagnosticCode.Duplicate_identifier_0, queued.declaration.identifier.range, globalName);
        else {
          const declaration: DeclarationStatement = <DeclarationStatement>this.exports.get(importName);
          this.names.set(globalName, declaration);
          // TODO: also mirror (non-private) member names?
        }
      } else
        this.error(DiagnosticCode.Cannot_find_name_0, queued.declaration.externalIdentifier.range, importName);
    }
  }

  private initializeClass(declaration: ClassDeclaration): void {
    const globalName: string = this.mangleName(declaration);
    this.addName(globalName, declaration);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.addExport(globalName, declaration);
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

  private initializeField(declaration: FieldDeclaration): void {
    const globalName: string = this.mangleName(declaration);
    this.addName(globalName, declaration);
  }

  private initializeEnum(declaration: EnumDeclaration): void {
    const globalName: string = this.mangleName(declaration);
    this.addName(globalName, declaration);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.addExport(globalName, declaration);
    const members: EnumValueDeclaration[] = declaration.members;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i)
      this.initializeEnumValue(members[i]);
  }

  private initializeEnumValue(declaration: EnumValueDeclaration): void {
    const globalName: string = this.mangleName(declaration);
    this.addName(globalName, declaration);
  }

  private initializeExports(statement: ExportStatement, exportsMap: Map<string,QueuedExport>): void {
    const members: ExportMember[] = statement.members;
    const normalizedPath: string | null = statement.path == null ? null : normalizePath(<string>statement.path);
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i)
      this.initializeExport(members[i], normalizedPath, exportsMap);
  }

  private initializeExport(member: ExportMember, normalizedPath: string | null, exportsMap: Map<string,QueuedExport>): void {
    const exportName: string = member.range.source.normalizedPath + "/" + member.externalIdentifier.name;
    if (exportsMap.has(exportName))
      this.error(DiagnosticCode.Duplicate_identifier_0, member.externalIdentifier.range, exportName);
    else {
      const queued: QueuedExport = new QueuedExport();
      queued.importName = normalizedPath == null
        ? member.range.source.normalizedPath + "/" + member.identifier.name // local
        : (<string>normalizedPath) + "/" + member.identifier.name;          // re-export
      queued.member = member;
      exportsMap.set(exportName, queued);
    }
  }

  private initializeFunction(declaration: FunctionDeclaration): void {
    const globalName: string = this.mangleName(declaration);
    this.addName(globalName, declaration);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.addExport(globalName, declaration);
  }

  private initializeImports(statement: ImportStatement, exportsMap: Map<string,QueuedExport>, importsQueue: QueuedImport[]): void {
    const members: ImportDeclaration[] = statement.declarations;
    const normalizedPath: string = normalizePath(statement.path);
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i) {
      const declaration: ImportDeclaration = members[i];
      this.initializeImport(declaration, normalizedPath, exportsMap, importsQueue);
    }
  }

  private initializeImport(declaration: ImportDeclaration, normalizedPath: string, exportsMap: Map<string,QueuedExport>, importsQueue: QueuedImport[]): void {
    const importName: string = normalizedPath + "/" + declaration.externalIdentifier.name;
    let resolvedImportName: string = importName;
    while (exportsMap.has(resolvedImportName))
      resolvedImportName = (<QueuedExport>exportsMap.get(resolvedImportName)).importName;
    const globalName: string = this.mangleName(declaration);
    if (this.exports.has(resolvedImportName)) { // resolvable right away
      if (this.names.has(globalName))
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, globalName);
      else
        this.names.set(globalName, <DeclarationStatement>this.exports.get(resolvedImportName));
    } else { // points to yet unresolved export
      const queued: QueuedImport = new QueuedImport();
      queued.globalName = globalName;
      queued.importName = importName;
      queued.declaration = declaration;
      importsQueue.push(queued);
    }
  }

  private initializeInterface(declaration: InterfaceDeclaration): void {
    const globalName: string = this.mangleName(declaration);
    this.addName(globalName, declaration);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.addExport(globalName, declaration);
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

  private initializeMethod(declaration: MethodDeclaration): void {
    const globalName: string = this.mangleName(declaration);
    this.addName(globalName, declaration);
  }

  private initializeNamespace(declaration: NamespaceDeclaration): void {
    const globalName: string = this.mangleName(declaration);
    this.addName(globalName, declaration);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.addExport(globalName, declaration);
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
          this.initializeVariables(<VariableStatement>statement, true);
          break;

        default:
          throw new Error("unexpected namespace member");
      }
    }
  }

  private initializeVariables(statement: VariableStatement, insideNamespace: bool = false): void {
    const declarations: VariableDeclaration[] = statement.members;
    const isExport: bool = !insideNamespace && hasModifier(ModifierKind.EXPORT, statement.modifiers);
    for (let i: i32 = 0, k = declarations.length; i < k; ++i) {
      const declaration: VariableDeclaration = declarations[i];
      const globalName: string = this.mangleName(declaration);
      this.addName(globalName, declaration);
      if (isExport)
        this.addExport(globalName, declaration);
    }
  }

  private addName(globalName: string, declaration: DeclarationStatement): void {
    if (this.names.has(globalName))
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, globalName); // recoverable
    else
      this.names.set(globalName, declaration);
  }

  private addExport(globalName: string, declaration: DeclarationStatement): void {
    if (this.exports.has(globalName))
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, globalName); // recoverable
    else
      this.exports.set(globalName, declaration);
  }

  mangleName(declaration: DeclarationStatement): string {
    let name: string = declaration.identifier.name;
    let parent: Node | null = declaration.parent;
    if (parent) {
      switch (parent.kind) {

        case NodeKind.SOURCE:
          return (<Source>parent).normalizedPath + "/" + name;

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
  types.set("isize", target == Target.WASM64 ? Type.isize64 : Type.isize32);
  types.set("u8", Type.u8);
  types.set("u16", Type.u16);
  types.set("u32", Type.u32);
  types.set("u64", Type.u64);
  types.set("usize", target == Target.WASM64 ? Type.usize64 : Type.usize32);
  types.set("bool", Type.bool);
  types.set("void", Type.void);
}
