import { Target } from "./compiler";
import { DiagnosticCode, DiagnosticMessage, DiagnosticEmitter } from "./diagnostics";
import { hasModifier } from "./parser";
import { Type } from "./types";
import {

  ModifierKind,
  Node,
  NodeKind,
  Source,

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
  internalName: string;
  importName: string;
  declaration: ImportDeclaration;
}

export class Program extends DiagnosticEmitter {

  sources: Source[];
  diagnosticsOffset: i32 = 0;
  target: Target = Target.WASM32;

  /** Internal map of names to declarations. */
  names: Map<string,DeclarationStatement> = new Map();
  /** Separate map of internal type names to declarations. */
  types: Map<string,Type> = new Map();
  /** Separate map of internal export names to declarations. */
  exports: Map<string,DeclarationStatement> = new Map();

  constructor(diagnostics: DiagnosticMessage[] | null = null) {
    super(diagnostics);
    this.sources = new Array();
  }

  initialize(target: Target): void {
    this.target = target;

    initializeBasicTypes(this.types, target);

    const queuedExports: Map<string,QueuedExport> = new Map();
    const queuedImports: QueuedImport[] = new Array();

    // build initial lookup maps of internal and export names to declarations
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
            this.initializeExports(<ExportStatement>statement, queuedExports);
            break;

          case NodeKind.FUNCTION:
            this.initializeFunction(<FunctionDeclaration>statement);
            break;

          case NodeKind.IMPORT:
            this.initializeImports(<ImportStatement>statement, queuedExports, queuedImports);
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

    // at this point queued exports should be resolvable
    for (let [exportName, queuedExport] of queuedExports.entries()) {
      const seen: Set<QueuedExport> = new Set();
      while (queuedExports.has(queuedExport.importName)) {
        queuedExport = <QueuedExport>queuedExports.get(queuedExport.importName);
        if (seen.has(queuedExport))
          break;
        seen.add(queuedExport);
      }
      if (this.exports.has(queuedExport.importName))
        this.addExport(exportName, <DeclarationStatement>this.exports.get(queuedExport.importName));
      else
        this.error(DiagnosticCode.Cannot_find_name_0, queuedExport.member.externalIdentifier.range, queuedExport.importName);
    }

    // at this point also queued imports should be resolvable
    for (let i: i32 = 0, k: i32 = queuedImports.length; i < k; ++i) {
      const queuedImport: QueuedImport = queuedImports[i];
      const internalName: string = queuedImport.internalName;
      let importName: string = queuedImport.importName;
      const seen: Set<QueuedExport> = new Set();
      while (queuedExports.has(importName)) {
        const queuedExport: QueuedExport = <QueuedExport>queuedExports.get(importName);
        importName = queuedExport.importName;
        if (seen.has(queuedExport))
          break;
        seen.add(queuedExport);
      }
      if (this.exports.has(importName)) {
        if (this.names.has(internalName))
          this.error(DiagnosticCode.Duplicate_identifier_0, queuedImport.declaration.identifier.range, internalName);
        else {
          const declaration: DeclarationStatement = <DeclarationStatement>this.exports.get(importName);
          this.names.set(internalName, declaration);
          // TODO: also mirror (non-private) member names?
          // wouldn't it be better to look up members based on their parent?
        }
      } else
        this.error(DiagnosticCode.Cannot_find_name_0, queuedImport.declaration.externalIdentifier.range, importName);
    }
  }

  private initializeClass(declaration: ClassDeclaration): void {
    const internalName: string = this.mangleInternalName(declaration);
    this.addName(internalName, declaration);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.addExport(/* same as */internalName, declaration);
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
    const internalName: string = this.mangleInternalName(declaration);
    this.addName(internalName, declaration);
  }

  private initializeEnum(declaration: EnumDeclaration): void {
    const internalName: string = this.mangleInternalName(declaration);
    this.addName(internalName, declaration);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.addExport(/* same as */internalName, declaration);
    const members: EnumValueDeclaration[] = declaration.members;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i)
      this.initializeEnumValue(members[i]);
  }

  private initializeEnumValue(declaration: EnumValueDeclaration): void {
    const internalName: string = this.mangleInternalName(declaration);
    this.addName(internalName, declaration);
  }

  private initializeExports(statement: ExportStatement, queuedExports: Map<string,QueuedExport>): void {
    const members: ExportMember[] = statement.members;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i)
      this.initializeExport(members[i], statement.normalizedPath, queuedExports);
  }

  private initializeExport(member: ExportMember, normalizedPath: string | null, queuedExports: Map<string,QueuedExport>): void {
    const exportName: string = member.range.source.normalizedPath + "/" + member.externalIdentifier.name;
    if (queuedExports.has(exportName))
      this.error(DiagnosticCode.Duplicate_identifier_0, member.externalIdentifier.range, exportName);
    else {
      const queuedExport: QueuedExport = new QueuedExport();
      queuedExport.importName = normalizedPath == null
        ? member.range.source.normalizedPath + "/" + member.identifier.name // local
        : (<string>normalizedPath) + "/" + member.identifier.name;          // re-export
      queuedExport.member = member;
      queuedExports.set(exportName, queuedExport);
    }
  }

  private initializeFunction(declaration: FunctionDeclaration): void {
    const internalName: string = this.mangleInternalName(declaration);
    this.addName(internalName, declaration);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.addExport(/* same as */internalName, declaration);
  }

  private initializeImports(statement: ImportStatement, queuedExports: Map<string,QueuedExport>, queuedImports: QueuedImport[]): void {
    const members: ImportDeclaration[] = statement.declarations;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i) {
      const declaration: ImportDeclaration = members[i];
      this.initializeImport(declaration, statement.normalizedPath, queuedExports, queuedImports);
    }
  }

  private initializeImport(declaration: ImportDeclaration, normalizedPath: string, queuedExports: Map<string,QueuedExport>, queuedImports: QueuedImport[]): void {
    const importName: string = normalizedPath + "/" + declaration.externalIdentifier.name;
    let resolvedImportName: string = importName;
    const seen: Set<QueuedExport> = new Set();
    while (queuedExports.has(resolvedImportName)) {
      const queuedExport: QueuedExport = <QueuedExport>queuedExports.get(resolvedImportName);
      resolvedImportName = queuedExport.importName;
      if (seen.has(queuedExport))
        break;
      seen.add(queuedExport);
    }
    const internalName: string = this.mangleInternalName(declaration);
    if (this.exports.has(resolvedImportName)) { // resolvable right away
      if (this.names.has(internalName))
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName);
      else
        this.names.set(internalName, <DeclarationStatement>this.exports.get(resolvedImportName));
    } else { // points to yet unresolved export
      const queuedImport: QueuedImport = new QueuedImport();
      queuedImport.internalName = internalName;
      queuedImport.importName = importName;
      queuedImport.declaration = declaration;
      queuedImports.push(queuedImport);
    }
  }

  private initializeInterface(declaration: InterfaceDeclaration): void {
    const internalName: string = this.mangleInternalName(declaration);
    this.addName(internalName, declaration);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.addExport(/* same as */internalName, declaration);
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
    const internalName: string = this.mangleInternalName(declaration);
    this.addName(internalName, declaration);
  }

  private initializeNamespace(declaration: NamespaceDeclaration): void {
    const internalName: string = this.mangleInternalName(declaration);
    this.addName(internalName, declaration);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.addExport(/* same as */internalName, declaration);
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

  private initializeVariables(statement: VariableStatement, isNamespaceMember: bool = false): void {
    const declarations: VariableDeclaration[] = statement.declarations;
    const isExport: bool = !isNamespaceMember && hasModifier(ModifierKind.EXPORT, statement.modifiers);
    for (let i: i32 = 0, k = declarations.length; i < k; ++i) {
      const declaration: VariableDeclaration = declarations[i];
      const internalName: string = this.mangleInternalName(declaration);
      this.addName(internalName, declaration);
      if (isExport)
        this.addExport(/* same as */internalName, declaration);
    }
  }

  private addName(internalName: string, declaration: DeclarationStatement): void {
    if (this.names.has(internalName))
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName); // recoverable
    else
      this.names.set(internalName, declaration);
  }

  private addExport(exportName: string, declaration: DeclarationStatement): void {
    if (this.exports.has(exportName))
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, exportName); // recoverable
    else
      this.exports.set(exportName, declaration);
  }

  mangleInternalName(declaration: DeclarationStatement): string {
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
            return this.mangleInternalName(<DeclarationStatement>parent) + "#" + name;
          // otherwise fall through
        }
        case NodeKind.ENUM:
        case NodeKind.ENUMVALUE:
        case NodeKind.NAMESPACE:
          return this.mangleInternalName(<DeclarationStatement>parent) + "." + name;

        case NodeKind.IMPORT: {
          const importParent: Node | null = (<ImportStatement>parent).parent;
          if (importParent && importParent.kind == NodeKind.SOURCE)
            return (<Source>importParent).path + "/" + name;
          break;
        }

        case NodeKind.VARIABLE: {
          const variableParent: Node | null = (<VariableStatement>parent).parent;
          if (variableParent) {
            if (variableParent.kind == NodeKind.SOURCE)
              return <Source>variableParent == this.sources[0] ? name : (<Source>variableParent).path + "/" + name;
            if (variableParent.kind == NodeKind.NAMESPACE)
              return this.mangleInternalName(<DeclarationStatement>variableParent) + "." + name;
          }
          break;
        }
      }
    }
    throw new Error("unexpected parent");
  }
}

function initializeBasicTypes(types: Map<string,Type>, target: Target): void {
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
  types.set("f32", Type.f32);
  types.set("f64", Type.f64);
  types.set("void", Type.void);
}
