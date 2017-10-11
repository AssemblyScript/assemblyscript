import { Target } from "./compiler";
import { DiagnosticCode, DiagnosticMessage, DiagnosticEmitter } from "./diagnostics";
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
  VariableStatement,

  hasModifier

} from "./ast";

class QueuedExport {
  isForeign: bool;
  referencedName: string;
  member: ExportMember;
}

class QueuedImport {
  internalName: string;
  importName: string;
  declaration: ImportDeclaration;
}

const typesStub: Map<string,Type> = new Map();

export class Program extends DiagnosticEmitter {

  sources: Source[];
  diagnosticsOffset: i32 = 0;
  target: Target = Target.WASM32;

  /** Map of internal names to declarations. */
  names: Map<string,DeclarationStatement> = new Map();
  /** Separate map of internal type names to declarations. */
  types: Map<string,Type> = typesStub;
  /** Separate map of internal export names to declarations. */
  exports: Map<string,DeclarationStatement> = new Map(); // not global exports

  constructor(diagnostics: DiagnosticMessage[] | null = null) {
    super(diagnostics);
    this.sources = new Array();
  }

  initialize(target: Target): void {
    this.target = target;
    this.types = new Map([
      ["i8", Type.i8],
      ["i16", Type.i16],
      ["i32", Type.i32],
      ["i64", Type.i64],
      ["isize", target == Target.WASM64 ? Type.isize64 : Type.isize32],
      ["u8", Type.u8],
      ["u16", Type.u16],
      ["u32", Type.u32],
      ["u64", Type.u64],
      ["usize", target == Target.WASM64 ? Type.usize64 : Type.usize32],
      ["bool", Type.bool],
      ["f32", Type.f32],
      ["f64", Type.f64],
      ["void", Type.void]
    ]);

    const queuedExports: Map<string,QueuedExport> = new Map();
    const queuedImports: QueuedImport[] = new Array();

    // build initial lookup maps of internal names to declarations
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
    // export { add }
    // export { sub } from "./other"
    for (let [exportName, queuedExport] of queuedExports) {
      if (queuedExport.isForeign) {
        const seen: Set<QueuedExport> = new Set();
        while (queuedExports.has(queuedExport.referencedName)) {
          queuedExport = <QueuedExport>queuedExports.get(queuedExport.referencedName);
          if (seen.has(queuedExport))
            break;
          seen.add(queuedExport);
        }
        if (this.exports.has(queuedExport.referencedName)) {
          const declaration: DeclarationStatement = <DeclarationStatement>this.exports.get(queuedExport.referencedName);
          this.addExport(exportName, declaration);
          if (queuedExport.member.range.source.isEntry)
            declaration.globalExportName = queuedExport.member.externalIdentifier.name;
        } else
          this.error(DiagnosticCode.Cannot_find_name_0, queuedExport.member.externalIdentifier.range, queuedExport.referencedName);
      } else /* local */ {
        if (this.names.has(queuedExport.referencedName)) {
          const declaration: DeclarationStatement = <DeclarationStatement>this.names.get(queuedExport.referencedName);
          this.addExport(exportName, declaration);
          if (queuedExport.member.range.source.isEntry)
            declaration.globalExportName = queuedExport.member.externalIdentifier.name;
        } else
          this.error(DiagnosticCode.Cannot_find_name_0, queuedExport.member.externalIdentifier.range, queuedExport.referencedName);
      }
    }

    // at this point queued imports should be resolvable as well
    for (let i: i32 = 0, k: i32 = queuedImports.length; i < k; ++i) {
      const queuedImport: QueuedImport = queuedImports[i];
      const internalName: string = queuedImport.internalName;
      const seen: Set<QueuedExport> = new Set();
      let importName: string = queuedImport.importName;
      while (queuedExports.has(importName)) {
        const queuedExport: QueuedExport = <QueuedExport>queuedExports.get(importName);
        importName = queuedExport.referencedName;
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
    const internalName: string = declaration.internalName;
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
    this.addName(declaration.internalName, declaration);
  }

  private initializeEnum(declaration: EnumDeclaration): void {
    const internalName: string = declaration.internalName;
    this.addName(internalName, declaration);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers))
      this.addExport(/* same as */internalName, declaration);
    const members: EnumValueDeclaration[] = declaration.members;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i)
      this.initializeEnumValue(members[i]);
  }

  private initializeEnumValue(declaration: EnumValueDeclaration): void {
    this.addName(declaration.internalName, declaration);
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
      if (normalizedPath == null) {
        queuedExport.isForeign = false;
        queuedExport.referencedName = member.range.source.normalizedPath + "/" + member.identifier.name;
      } else {
        queuedExport.isForeign = true;
        queuedExport.referencedName = (<string>normalizedPath) + "/" + member.identifier.name;
      }
      queuedExport.member = member;
      queuedExports.set(exportName, queuedExport);
    }
  }

  private initializeFunction(declaration: FunctionDeclaration): void {
    const internalName: string = declaration.internalName;
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
      resolvedImportName = queuedExport.referencedName;
      if (seen.has(queuedExport))
        break;
      seen.add(queuedExport);
    }
    const internalName: string = declaration.internalName;
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
    const internalName: string = declaration.internalName;
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
    this.addName(declaration.internalName, declaration);
  }

  private initializeNamespace(declaration: NamespaceDeclaration): void {
    const internalName: string = declaration.internalName;
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
    for (let i: i32 = 0, k: i32 = declarations.length; i < k; ++i) {
      const declaration: VariableDeclaration = declarations[i];
      const internalName: string = declaration.internalName;
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
    else {
      this.exports.set(exportName, declaration);
      if (declaration.range.source.isEntry)
        declaration.globalExportName = declaration.identifier.name;
    }
  }
}
