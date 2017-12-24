import {
  initialize as initializeBuiltins
} from "./builtins";

import {
  Target
} from "./compiler";

import {
  PATH_DELIMITER
} from "./constants";

import {
  DiagnosticCode,
  DiagnosticMessage,
  DiagnosticEmitter
} from "./diagnostics";

import {
  Type,
  typesToString
} from "./types";

import {
  I64
} from "./util/i64";

import {
  ModifierKind,
  Node,
  NodeKind,
  Source,
  Range,
  TypeNode,
  TypeParameter,
  Decorator,

  Expression,
  IdentifierExpression,
  PropertyAccessExpression,
  StringLiteralExpression,
  CallExpression,

  Statement,
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
  TypeDeclaration,
  VariableLikeDeclarationStatement,
  VariableDeclaration,
  VariableStatement,

  hasModifier
} from "./ast";

import {
  NativeType
} from "./module";

class QueuedExport {
  isReExport: bool;
  referencedName: string;
  member: ExportMember;
}

class QueuedImport {
  internalName: string;
  referencedName: string;
  declaration: ImportDeclaration;
}

const noTypesYet: Map<string,Type> = new Map();

/** Represents an AssemblyScript program. */
export class Program extends DiagnosticEmitter {

  /** Array of source files. */
  sources: Source[];
  /** Diagnostic offset used where sequentially obtaining the next diagnostic. */
  diagnosticsOffset: i32 = 0;
  /** WASM target. */
  target: Target = Target.WASM32; // set on initialization
  /** Elements by internal name. */
  elements: Map<string,Element> = new Map();
  /** Types by internal name. */
  types: Map<string,Type> = noTypesYet;
  /** Declared type aliases. */
  typeAliases: Map<string,TypeNode> = new Map();
  /** Exports of individual files by internal name. Not global exports. */
  exports: Map<string,Element> = new Map();

  /** Constructs a new program, optionally inheriting parser diagnostics. */
  constructor(diagnostics: DiagnosticMessage[] | null = null) {
    super(diagnostics);
    this.sources = new Array();
  }

  /** Initializes the program and its elements prior to compilation. */
  initialize(target: Target = Target.WASM32): void {
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
      ["void", Type.void],
      ["number", Type.f64],
      ["boolean", Type.bool]
    ]);

    initializeBuiltins(this);

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

          case NodeKind.TYPEDECLARATION:
            this.initializeType(<TypeDeclaration>statement);
            break;

          case NodeKind.VARIABLE:
            this.initializeVariables(<VariableStatement>statement);
            break;
        }
      }
    }

    let element: Element | null;

    // queued imports should be resolvable now through traversing exports and queued exports
    for (let i: i32 = 0; i < queuedImports.length;) {
      const queuedImport: QueuedImport = queuedImports[i];
      element = this.tryResolveImport(queuedImport.referencedName, queuedExports);
      if (element) {
        this.elements.set(queuedImport.internalName, element);
        queuedImports.splice(i, 1);
      } else {
        this.error(DiagnosticCode.Module_0_has_no_exported_member_1, queuedImport.declaration.range, (<ImportStatement>queuedImport.declaration.parent).path.value, queuedImport.declaration.externalIdentifier.name);
        ++i;
      }
    }

    // queued exports should be resolvable now that imports are finalized
    for (let [exportName, queuedExport] of queuedExports) {
      let currentExport: QueuedExport | null = queuedExport;
      do {
        if (currentExport.isReExport) {
          element = <Element | null>this.exports.get(currentExport.referencedName);
          if (element) {
            this.exports.set(exportName, element);
            break;
          }
          currentExport = <QueuedExport | null>queuedExports.get(currentExport.referencedName);
          if (!currentExport)
            this.error(DiagnosticCode.Module_0_has_no_exported_member_1, queuedExport.member.externalIdentifier.range, (<StringLiteralExpression>(<ExportStatement>queuedExport.member.parent).path).value, queuedExport.member.externalIdentifier.name);
        } else {
          element = <Element | null>this.elements.get(currentExport.referencedName);
          if (element)
            this.exports.set(exportName, element);
          else
            this.error(DiagnosticCode.Cannot_find_name_0, queuedExport.member.range, queuedExport.member.identifier.name);
          break;
        }
      } while (currentExport);
    }
  }

  /** Tries to resolve an import by traversing exports and queued exports. */
  private tryResolveImport(referencedName: string, queuedExports: Map<string,QueuedExport>): Element | null {
    let element: Element | null;
    do {
      element = <Element | null>this.exports.get(referencedName);
      if (element)
        return element;
      const queuedExport: QueuedExport | null = <QueuedExport | null>queuedExports.get(referencedName);
      if (!queuedExport)
        return null;
      if (queuedExport.isReExport) {
        referencedName = queuedExport.referencedName;
        continue;
      }
      return <Element | null>this.elements.get(queuedExport.referencedName);
    } while (true);
  }

  private initializeClass(declaration: ClassDeclaration, namespace: Element | null = null): void {
    const internalName: string = declaration.internalName;
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      return;
    }
    const prototype: ClassPrototype = new ClassPrototype(this, declaration.name.name, internalName, declaration);
    this.elements.set(internalName, prototype);

    if (hasDecorator("global", declaration.decorators)) {
      if (this.elements.has(declaration.name.name))
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      else
        this.elements.set(declaration.name.name, prototype);
    }

    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(declaration.name.name)) {
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
          return;
        }
      } else
        namespace.members = new Map();
      namespace.members.set(declaration.name.name, prototype);
    } else if (prototype.isExported) {
      if (this.exports.has(internalName)) {
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, declaration.name.range, internalName);
        return;
      }
      this.exports.set(internalName, prototype);
    }

    const memberDeclarations: DeclarationStatement[] = declaration.members;
    for (let j: i32 = 0, l: i32 = memberDeclarations.length; j < l; ++j) {
      switch (memberDeclarations[j].kind) {

        case NodeKind.FIELD:
          this.initializeField(<FieldDeclaration>memberDeclarations[j], prototype);
          break;

        case NodeKind.METHOD:
          this.initializeMethod(<MethodDeclaration>memberDeclarations[j], prototype);
          break;

        default:
          throw new Error("unexpected class member");
      }
    }
  }

  private initializeField(declaration: FieldDeclaration, classPrototype: ClassPrototype): void {
    const name: string = declaration.name.name;
    const internalName: string = declaration.internalName;

    // static fields become global variables
    if (hasModifier(ModifierKind.STATIC, declaration.modifiers)) {
      if (this.elements.has(internalName)) {
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, declaration.internalName);
        return;
      }
      if (classPrototype.members) {
        if (classPrototype.members.has(name)) {
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, declaration.internalName);
          return;
        }
      } else
        classPrototype.members = new Map();
      const staticField: Global = new Global(this, internalName, declaration, null);
      classPrototype.members.set(name, staticField);
      this.elements.set(internalName, staticField);

    // instance fields are remembered until resolved
    } else {
      if (classPrototype.instanceMembers) {
        if (classPrototype.instanceMembers.has(name)) {
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, declaration.internalName);
          return;
        }
      } else
        classPrototype.instanceMembers = new Map();
      const instanceField = new FieldPrototype(classPrototype, internalName, declaration);
      classPrototype.instanceMembers.set(name, instanceField);
    }
  }

  private initializeMethod(declaration: MethodDeclaration, classPrototype: ClassPrototype): void {
    let name: string = declaration.name.name;
    const internalName: string = declaration.internalName;

    // static methods become global functions
    if (hasModifier(ModifierKind.STATIC, declaration.modifiers)) {
      if (this.elements.has(internalName)) {
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, declaration.internalName);
        return;
      }
      if (classPrototype.members) {
        if (classPrototype.members.has(name)) {
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, declaration.internalName);
          return;
        }
      } else
        classPrototype.members = new Map();
      const staticPrototype: FunctionPrototype = new FunctionPrototype(this, name, internalName, declaration, null);
      classPrototype.members.set(name, staticPrototype);
      this.elements.set(internalName, staticPrototype);

    // instance methods are remembered until resolved
    } else {
      if (classPrototype.instanceMembers) {
        if (classPrototype.instanceMembers.has(name)) {
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, declaration.internalName);
          return;
        }
      } else
        classPrototype.instanceMembers = new Map();
      const instancePrototype: FunctionPrototype = new FunctionPrototype(this, name, internalName, declaration, classPrototype);
      classPrototype.instanceMembers.set(name, instancePrototype);
    }
  }

  private initializeEnum(declaration: EnumDeclaration, namespace: Element | null = null): void {
    const internalName: string = declaration.internalName;
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      return;
    }
    const enm: Enum = new Enum(this, internalName, declaration);
    this.elements.set(internalName, enm);

    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(declaration.name.name)) {
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
          return;
        }
      } else
        namespace.members = new Map();
      namespace.members.set(declaration.name.name, enm);
    } else if (enm.isExported) {
      if (this.exports.has(internalName)) {
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, declaration.name.range, internalName);
        return;
      }
      this.exports.set(internalName, enm);
    }

    const values: EnumValueDeclaration[] = declaration.values;
    for (let i: i32 = 0, k: i32 = values.length; i < k; ++i)
      this.initializeEnumValue(values[i], enm);
  }

  private initializeEnumValue(declaration: EnumValueDeclaration, enm: Enum): void {
    const name: string = declaration.name.name;
    const internalName: string = declaration.internalName;
    if (enm.members) {
      if (enm.members.has(name)) {
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
        return;
      }
    } else
      enm.members = new Map();
    const value: EnumValue = new EnumValue(enm, this, internalName, declaration);
    enm.members.set(name, value);
  }

  private initializeExports(statement: ExportStatement, queuedExports: Map<string,QueuedExport>): void {
    const members: ExportMember[] = statement.members;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i)
      this.initializeExport(members[i], statement.internalPath, queuedExports);
  }

  private initializeExport(member: ExportMember, internalPath: string | null, queuedExports: Map<string,QueuedExport>): void {
    const externalName: string = member.range.source.internalPath + PATH_DELIMITER + member.externalIdentifier.name;
    if (this.exports.has(externalName)) {
      this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, member.externalIdentifier.range, externalName);
      return;
    }
    let referencedName: string;

    // export local element
    if (internalPath == null) {
      referencedName = member.range.source.internalPath + PATH_DELIMITER + member.identifier.name;

      // resolve right away if the element exists
      if (this.elements.has(referencedName)) {
        this.exports.set(externalName, <Element>this.elements.get(referencedName));
        return;
      }

      // otherwise queue it
      if (queuedExports.has(externalName)) {
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, member.externalIdentifier.range, externalName);
        return;
      }
      const queuedExport: QueuedExport = new QueuedExport();
      queuedExport.isReExport = false;
      queuedExport.referencedName = referencedName; // -> internal name
      queuedExport.member = member;
      queuedExports.set(externalName, queuedExport);

    // export external element
    } else {
      referencedName = (<string>internalPath) + PATH_DELIMITER + member.identifier.name;

      // resolve right away if the export exists
      if (this.exports.has(referencedName)) {
        this.exports.set(externalName, <Element>this.exports.get(referencedName));
        return;
      }

      // walk already known queued exports
      const seen: Set<QueuedExport> = new Set();
      while (queuedExports.has(referencedName)) {
        const queuedExport: QueuedExport = <QueuedExport>queuedExports.get(referencedName);
        if (queuedExport.isReExport) {
          if (this.exports.has(queuedExport.referencedName)) {
            this.exports.set(externalName, <Element>this.exports.get(referencedName));
            return;
          }
          referencedName = queuedExport.referencedName;
          if (seen.has(queuedExport))
            break;
          seen.add(queuedExport);
        } else {
          if (this.elements.has(queuedExport.referencedName)) {
            this.exports.set(externalName, <Element>this.elements.get(referencedName));
            return;
          }
          break;
        }
      }

      // otherwise queue it
      if (queuedExports.has(externalName)) {
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, member.externalIdentifier.range, externalName);
        return;
      }
      const queuedReExport: QueuedExport = new QueuedExport();
      queuedReExport.isReExport = true;
      queuedReExport.referencedName = referencedName; // -> export name
      queuedReExport.member = member;
      queuedExports.set(externalName, queuedReExport);
    }
  }

  private initializeFunction(declaration: FunctionDeclaration, namespace: Element | null = null): void {
    const internalName: string = declaration.internalName;
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      return;
    }
    const prototype: FunctionPrototype = new FunctionPrototype(this, declaration.name.name, internalName, declaration, null);
    this.elements.set(internalName, prototype);

    if (hasDecorator("global", declaration.decorators)) {
      if (this.elements.has(declaration.name.name))
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      else
        this.elements.set(declaration.name.name, prototype);
    }

    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(declaration.name.name)) {
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
          return;
        }
      } else
        namespace.members = new Map();
      namespace.members.set(declaration.name.name, prototype);
    } else if (prototype.isExported) {
      if (this.exports.has(internalName)) {
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, declaration.name.range, internalName);
        return;
      }
      this.exports.set(internalName, prototype);
    }
  }

  private initializeImports(statement: ImportStatement, queuedExports: Map<string,QueuedExport>, queuedImports: QueuedImport[]): void {
    const declarations: ImportDeclaration[] | null = statement.declarations;
    if (declarations) {
      for (let i: i32 = 0, k: i32 = declarations.length; i < k; ++i) {
        const declaration: ImportDeclaration = declarations[i];
        this.initializeImport(declaration, statement.internalPath, queuedExports, queuedImports);
      }
    } else if (statement.namespaceName) {
      const internalName: string = statement.range.source.internalPath + "/" + statement.namespaceName.name;
      if (this.elements.has(internalName)) {
        this.error(DiagnosticCode.Duplicate_identifier_0, statement.namespaceName.range, internalName);
        return;
      }
      this.error(DiagnosticCode.Operation_not_supported, statement.range); // TODO
    } else
      assert(false);
  }

  private initializeImport(declaration: ImportDeclaration, internalPath: string, queuedExports: Map<string,QueuedExport>, queuedImports: QueuedImport[]): void {
    const internalName: string = declaration.internalName;
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      return;
    }

    let referencedName: string = internalPath + PATH_DELIMITER + declaration.externalIdentifier.name;

    // resolve right away if the export exists
    if (this.exports.has(referencedName)) {
      this.elements.set(internalName, <Element>this.exports.get(referencedName));
      return;
    }

    // walk already known queued exports
    const seen: Set<QueuedExport> = new Set();
    while (queuedExports.has(referencedName)) {
      const queuedExport: QueuedExport = <QueuedExport>queuedExports.get(referencedName);
      if (queuedExport.isReExport) {
        if (this.exports.has(queuedExport.referencedName)) {
          this.elements.set(internalName, <Element>this.exports.get(referencedName));
          return;
        }
        referencedName = queuedExport.referencedName;
        if (seen.has(queuedExport))
          break;
        seen.add(queuedExport);
      } else {
        if (this.elements.has(queuedExport.referencedName)) {
          this.elements.set(internalName, <Element>this.elements.get(referencedName));
          return;
        }
        break;
      }
    }

    // otherwise queue it
    const queuedImport: QueuedImport = new QueuedImport();
    queuedImport.internalName = internalName;
    queuedImport.referencedName = referencedName;
    queuedImport.declaration = declaration;
    queuedImports.push(queuedImport);
  }

  private initializeInterface(declaration: InterfaceDeclaration, namespace: Element | null = null): void {
    const internalName: string = declaration.internalName;
    const prototype: InterfacePrototype = new InterfacePrototype(this, declaration.name.name, internalName, declaration);

    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      return;
    }
    this.elements.set(internalName, prototype);

    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(prototype.internalName)) {
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
          return;
        }
      } else
        namespace.members = new Map();
      namespace.members.set(prototype.internalName, prototype);
    } else if (prototype.isExported) {
      if (this.exports.has(internalName)) {
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, declaration.name.range, internalName);
        return;
      }
      this.exports.set(internalName, prototype);
    }

    const memberDeclarations: DeclarationStatement[] = declaration.members;
    for (let i: i32 = 0, k: i32 = memberDeclarations.length; i < k; ++i) {
      switch (memberDeclarations[i].kind) {

        case NodeKind.FIELD:
          this.initializeField(<FieldDeclaration>memberDeclarations[i], prototype);
          break;

        case NodeKind.METHOD:
          this.initializeMethod(<MethodDeclaration>memberDeclarations[i], prototype);
          break;

        default:
          throw new Error("unexpected interface member");
      }
    }
  }

  private initializeNamespace(declaration: NamespaceDeclaration, parentNamespace: Element | null = null): void {
    const internalName: string = declaration.internalName;

    let namespace: Element | null = this.elements.get(internalName);
    if (!namespace) {
      namespace = new Namespace(this, internalName, declaration);
      this.elements.set(internalName, namespace);
    }

    if (parentNamespace) {
      if (parentNamespace.members) {
        if (parentNamespace.members.has(declaration.name.name)) {
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
          return;
        }
      } else
        parentNamespace.members = new Map();
      parentNamespace.members.set(declaration.name.name, namespace);
    } else if (namespace.isExported) {
      if (this.exports.has(internalName)) {
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, declaration.name.range, internalName);
        return;
      }
      this.exports.set(internalName, namespace);
    }

    const members: Statement[] = declaration.members;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i) {
      switch (members[i].kind) {

        case NodeKind.CLASS:
          this.initializeClass(<ClassDeclaration>members[i], namespace);
          break;

        case NodeKind.ENUM:
          this.initializeEnum(<EnumDeclaration>members[i], namespace);
          break;

        case NodeKind.FUNCTION:
          this.initializeFunction(<FunctionDeclaration>members[i], namespace);
          break;

        case NodeKind.INTERFACE:
          this.initializeInterface(<InterfaceDeclaration>members[i], namespace);
          break;

        case NodeKind.NAMESPACE:
          this.initializeNamespace(<NamespaceDeclaration>members[i], namespace);
          break;

        case NodeKind.TYPEDECLARATION:
          this.initializeType(<TypeDeclaration>members[i], namespace);
          break;

        case NodeKind.VARIABLE:
          this.initializeVariables(<VariableStatement>members[i], namespace);
          break;

        default:
          throw new Error("unexpected namespace member");
      }
    }
  }

  private initializeType(declaration: TypeDeclaration, namespace: Element | null = null): void {
    // type aliases are program globals
    const name: string = declaration.name.name;
    if (this.types.has(name) || this.typeAliases.has(name)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, name);
      return;
    }
    this.typeAliases.set(name, declaration.alias);
  }

  private initializeVariables(statement: VariableStatement, namespace: Element | null = null): void {
    const declarations: VariableDeclaration[] = statement.declarations;
    for (let i: i32 = 0, k: i32 = declarations.length; i < k; ++i) {
      const declaration: VariableDeclaration = declarations[i];
      const internalName: string = declaration.internalName;
      if (this.elements.has(internalName)) {
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
        continue;
      }

      const global: Global = new Global(this, internalName, declaration, null);
      this.elements.set(internalName, global);

      if (hasDecorator("global", declaration.decorators)) {
        if (this.elements.has(declaration.name.name))
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
        else
          this.elements.set(declaration.name.name, global);
      }

      if (namespace) {
        if (namespace.members) {
          if (namespace.members.has(declaration.name.name)) {
            this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
            continue;
          }
        } else
          namespace.members = new Map();
        namespace.members.set(declaration.name.name, global);
      } else if (global.isExported) {
        if (this.exports.has(internalName))
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
        else
          this.exports.set(internalName, global);
      }
    }
  }

  /** Resolves a {@link TypeNode} to a concrete {@link Type}. */
  resolveType(node: TypeNode, contextualTypeArguments: Map<string,Type> | null = null, reportNotFound: bool = true): Type | null {

    // resolve parameters
    const k: i32 = node.typeArguments.length;
    const paramTypes: Type[] = new Array(k);
    for (let i: i32 = 0; i < k; ++i) {
      const paramType: Type | null = this.resolveType(node.typeArguments[i], contextualTypeArguments, reportNotFound);
      if (!paramType)
        return null;
      paramTypes[i] = <Type>paramType;
    }

    let globalName: string = node.identifier.name;
    if (k) // can't be a placeholder if it has parameters
      globalName += typesToString(paramTypes);
    else if (contextualTypeArguments) {
      const placeholderType: Type | null = <Type | null>contextualTypeArguments.get(globalName);
      if (placeholderType)
        return placeholderType;
    }

    let type: Type | null;

    // check file-global type
    if (type = <Type | null>this.types.get(node.range.source.internalPath + PATH_DELIMITER + globalName))
      return type;

    // check program-global type
    if (type = <Type | null>this.types.get(globalName))
      return type;

    // check type alias
    let alias: TypeNode | null = <TypeNode | null>this.typeAliases.get(globalName);
    if (alias && (type = this.resolveType(alias, null, reportNotFound)))
      return type;

    if (reportNotFound)
      this.error(DiagnosticCode.Cannot_find_name_0, node.identifier.range, globalName);

    return null;
  }

  /** Resolves an array of type parameters to concrete types. */
  resolveTypeArguments(typeParameters: TypeParameter[], typeArgumentNodes: TypeNode[] | null, contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): Type[] | null {
    const parameterCount: i32 = typeParameters.length;
    const argumentCount: i32 = typeArgumentNodes ? typeArgumentNodes.length : 0;
    if (parameterCount != argumentCount) {
      if (argumentCount)
        this.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, Range.join((<TypeNode[]>typeArgumentNodes)[0].range, (<TypeNode[]>typeArgumentNodes)[argumentCount - 1].range), parameterCount.toString(10), argumentCount.toString(10));
      else if (alternativeReportNode)
        this.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, alternativeReportNode.range.atEnd, parameterCount.toString(10), "0");
      return null;
    }
    const typeArguments: Type[] = new Array(parameterCount);
    for (let i: i32 = 0; i < parameterCount; ++i) {
      const type: Type | null = this.resolveType((<TypeNode[]>typeArgumentNodes)[i], contextualTypeArguments, true); // reports
      if (!type)
        return null;
      // TODO: check extendsType
      typeArguments[i] = type;
    }
    return typeArguments;
  }

  /** Resolves an identifier to the element is refers to. */
  resolveIdentifier(identifier: IdentifierExpression, contextualFunction: Function): Element | null {
    const name: string = identifier.name;
    const local: Local | null = <Local | null>contextualFunction.locals.get(name);
    if (local)
      return local;
    let element: Element | null;
    if (element = this.elements.get(identifier.range.source.internalPath + PATH_DELIMITER + name))
      return element;
    if (element = this.elements.get(name))
      return element;
    this.error(DiagnosticCode.Cannot_find_name_0, identifier.range, name);
    return null;
  }

  /** Resolves a property access the element it refers to. */
  resolvePropertyAccess(propertyAccess: PropertyAccessExpression, contextualFunction: Function): Element | null {
    const expression: Expression = propertyAccess.expression;
    let target: Element | null = null;
    if (expression.kind == NodeKind.IDENTIFIER) {
      target = this.resolveIdentifier(<IdentifierExpression>expression, contextualFunction);
    } else if (expression.kind == NodeKind.PROPERTYACCESS) {
      target = this.resolvePropertyAccess(<PropertyAccessExpression>expression, contextualFunction);
    } else
      throw new Error("unexpected target kind");
    if (!target)
      return null;
    const propertyName: string = propertyAccess.property.name;
    if (target.members) {
      const member: Element | null = target.members.get(propertyName);
      if (member)
        return member;
    }
    this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, expression.range, (<PropertyAccessExpression>expression).property.name, target.internalName);
    return null;
  }

  resolveElement(expression: Expression, contextualFunction: Function): Element | null {

    // this -> Class
    if (expression.kind == NodeKind.THIS) {
      if (contextualFunction.instanceMethodOf)
        return contextualFunction.instanceMethodOf;
      this.error(DiagnosticCode._this_cannot_be_referenced_in_current_location, expression.range);
      return null;
    }

    // local or global name
    if (expression.kind == NodeKind.IDENTIFIER) {
      return this.resolveIdentifier(<IdentifierExpression>expression, contextualFunction);

    // static or instance property (incl. enum values) or method
    } else if (expression.kind == NodeKind.PROPERTYACCESS) {
      return this.resolvePropertyAccess(<PropertyAccessExpression>expression, contextualFunction);

    // instantiation
    } else if (expression.kind == NodeKind.NEW) {
      return this.resolveElement((<CallExpression>expression).expression, contextualFunction);
    }

    throw new Error("not implemented");
  }
}

function hasDecorator(name: string, decorators: Decorator[] | null): bool {
  if (decorators)
    for (let i: i32 = 0, k: i32 = decorators.length; i < k; ++i) {
      const decorator: Decorator = decorators[i];
      const expression: Expression = decorator.name;
      const args: Expression[] = decorator.arguments;
      if (expression.kind == NodeKind.IDENTIFIER && args.length <= 1 && (<IdentifierExpression>expression).name == name)
        return true;
    }
  return false;
}

/** Indicates the specific kind of an {@link Element}. */
export enum ElementKind {
  /** A {@link Global}. */
  GLOBAL,
  /** A {@link Local}. */
  LOCAL,
  /** An {@link Enum}. */
  ENUM,
  /** An {@link EnumValue}. */
  ENUMVALUE,
  /** A {@link FunctionPrototype}. */
  FUNCTION_PROTOTYPE,
  /** A {@link Function}. */
  FUNCTION,
  /** A {@link ClassPrototype}. */
  CLASS_PROTOTYPE,
  /** A {@link Class}. */
  CLASS,
  /** An {@link InterfacePrototype}. */
  INTERFACE_PROTOTYPE,
  /** An {@link Interface}. */
  INTERFACE,
  /** A {@link FieldPrototype}. */
  FIELD_PROTOTYPE,
  /** A {@link Field}. */
  FIELD,
  /** A {@link PropertyPrototype}. */
  PROPERTY_PROTOTYPE,
  /** A {@link Property}. */
  PROPERTY,
  /** A {@link Namespace}. */
  NAMESPACE
}

/** Indicates traits of an {@link Element}. */
export enum ElementFlags {
  /** No flags set. */
  NONE = 0,
  /** Is compiled. */
  COMPILED = 1 << 0,
  /** Is an import. */
  IMPORTED = 1 << 1,
  /** Is an export. */
  EXPORTED = 1 << 2,
  /** Is built-in. */
  BUILTIN = 1 << 3,
  /** Is declared. */
  DECLARED = 1 << 4,
  /** Is generic. */
  GENERIC = 1 << 5,
  /** Is constant. */
  CONSTANT = 1 << 6,
  /** Has constant value. */
  CONSTANT_VALUE = 1 << 7,
  /** Is instance member. */
  INSTANCE = 1 << 8,
  /** Is getter. */
  GETTER = 1 << 9,
  /** Is setter. */
  SETTER = 1 << 10,
  /** Is global. */
  GLOBAL = 1 << 11,
  /** Is read-only. */
  READONLY = 1 << 12,
  /** Is a public member. */
  PUBLIC = 1 << 13,
  /** Is a protected member. */
  PROTECTED = 1 << 14,
  /** Is a private member. */
  PRIVATE = 1 << 15
}

/** Base class of all program elements. */
export abstract class Element {

  /** Specific element kind. */
  kind: ElementKind;
  /** Containing {@link Program}. */
  program: Program;
  /** Internal name referring to this element. */
  internalName: string;
  /** Element flags. */
  flags: ElementFlags = ElementFlags.NONE;
  /** Namespaced member elements. */
  members: Map<string,Element> | null = null;

  /** Constructs a new element, linking it to its containing {@link Program}. */
  protected constructor(program: Program, internalName: string) {
    this.program = program;
    this.internalName = internalName;
  }

  /** Whether compiled or not. */
  get isCompiled(): bool { return (this.flags & ElementFlags.COMPILED) != 0; }
  set isCompiled(is: bool) { if (is) this.flags |= ElementFlags.COMPILED; else this.flags &= ~ElementFlags.COMPILED; }

  /** Whether imported or not. */
  get isImported(): bool { return (this.flags & ElementFlags.IMPORTED) != 0; }
  set isImported(is: bool) { if (is) this.flags |= ElementFlags.IMPORTED; else this.flags &= ~ElementFlags.IMPORTED; }

  /** Whether exported or not. */
  get isExported(): bool { return (this.flags & ElementFlags.EXPORTED) != 0; }
  set isExported(is: bool) { if (is) this.flags |= ElementFlags.EXPORTED; else this.flags &= ~ElementFlags.EXPORTED; }

  /** Whether built-in or not. */
  get isBuiltIn(): bool { return (this.flags & ElementFlags.BUILTIN) != 0; }
  set isBuiltIn(is: bool) { if (is) this.flags |= ElementFlags.BUILTIN; else this.flags &= ~ElementFlags.BUILTIN; }

  /** Whether declared or not. */
  get isDeclared(): bool { return (this.flags & ElementFlags.DECLARED) != 0; }
  set isDeclared(is: bool) { if (is) this.flags |= ElementFlags.DECLARED; else this.flags &= ~ElementFlags.DECLARED; }

  /** Whether generic or not. */
  get isGeneric(): bool { return (this.flags & ElementFlags.GENERIC) != 0; }
  set isGeneric(is: bool) { if (is) this.flags |= ElementFlags.GENERIC; else this.flags &= ~ElementFlags.GENERIC; }

  /** Whether constant or not. */
  get isConstant(): bool { return (this.flags & ElementFlags.CONSTANT) != 0; }
  set isConstant(is: bool) { if (is) this.flags |= ElementFlags.CONSTANT; else this.flags &= ~ElementFlags.CONSTANT; }

  /** Whether mutable or not. */
  get isMutable(): bool { return !(this.flags & ElementFlags.CONSTANT); } // reuses constant flag
  set isMutable(is: bool) { if (is) this.flags &= ~ElementFlags.CONSTANT; else this.flags |= ElementFlags.CONSTANT; }

  /** Whether this element has a constant value or not. */
  get hasConstantValue(): bool { return (this.flags & ElementFlags.CONSTANT_VALUE) != 0; }
  set hasConstantValue(is: bool) { if (is) this.flags |= ElementFlags.CONSTANT_VALUE; else this.flags &= ~ElementFlags.CONSTANT_VALUE; }

  /** Whether an instance member or not. */
  get isInstance(): bool { return (this.flags & ElementFlags.INSTANCE) != 0; }
  set isInstance(is: bool) { if (is) this.flags |= ElementFlags.INSTANCE; else this.flags &= ~ElementFlags.INSTANCE; }

  /** Whether a member of the global namespace or not. */
  get isGlobal(): bool { return (this.flags & ElementFlags.GLOBAL) != 0; }
  set isGlobal(is: bool) { if (is) this.flags |= ElementFlags.GLOBAL; else this.flags &= ~ElementFlags.GLOBAL; }
}

/** A namespace. */
export class Namespace extends Element {

  kind = ElementKind.NAMESPACE;

  /** Declaration reference. */
  declaration: NamespaceDeclaration | null; // more specific

  /** Constructs a new namespace. */
  constructor(program: Program, internalName: string, declaration: NamespaceDeclaration | null = null) {
    super(program, internalName);
    if ((this.declaration = declaration) && this.declaration.modifiers) {
      for (let i: i32 = 0, k: i32 = this.declaration.modifiers.length; i < k; ++i) {
        switch (this.declaration.modifiers[i].modifierKind) {
          case ModifierKind.IMPORT: this.isImported = true; break;
          case ModifierKind.EXPORT: this.isExported = true; break;
          case ModifierKind.DECLARE: this.isDeclared = true; break;
          default: throw new Error("unexpected modifier");
        }
      }
    }
  }
}

/** An enum. */
export class Enum extends Element {

  kind = ElementKind.ENUM;

  /** Declaration reference. */
  declaration: EnumDeclaration | null;

  /** Constructs a new enum. */
  constructor(program: Program, internalName: string, declaration: EnumDeclaration | null = null) {
    super(program, internalName);
    if ((this.declaration = declaration) && this.declaration.modifiers) {
      for (let i: i32 = 0, k = this.declaration.modifiers.length; i < k; ++i) {
        switch (this.declaration.modifiers[i].modifierKind) {
          case ModifierKind.EXPORT: this.isExported = true; break;
          case ModifierKind.IMPORT: this.isImported = true; break;
          case ModifierKind.DECLARE: this.isDeclared = true; break;
          case ModifierKind.CONST: this.isConstant = true; break;
          default: throw new Error("unexpected modifier");
        }
      }
    }
  }
}

/** An enum value. */
export class EnumValue extends Element {

  kind = ElementKind.ENUMVALUE;

  /** Declaration reference. */
  declaration: EnumValueDeclaration | null;
  /** Parent enum. */
  enum: Enum;
  /** Constant value, if applicable. */
  constantValue: i32 = 0;

  constructor(enm: Enum, program: Program, internalName: string, declaration: EnumValueDeclaration | null = null) {
    super(program, internalName);
    this.enum = enm;
    this.declaration = declaration;
  }
}

/** A global variable. */
export class Global extends Element {

  kind = ElementKind.GLOBAL;

  /** Declaration reference. */
  declaration: VariableLikeDeclarationStatement | null;
  /** Resolved type, if resolved. */
  type: Type | null;
  /** Constant integer value, if applicable. */
  constantIntegerValue: I64 | null = null;
  /** Constant float value, if applicable. */
  constantFloatValue: f64 = 0;

  constructor(program: Program, internalName: string, declaration: VariableLikeDeclarationStatement | null = null, type: Type | null = null) {
    super(program, internalName);
    if (this.declaration = declaration) {
      if (this.declaration.modifiers) {
        for (let i: i32 = 0, k = this.declaration.modifiers.length; i < k; ++i) {
          switch (this.declaration.modifiers[i].modifierKind) {
            case ModifierKind.IMPORT: this.isImported = true; break;
            case ModifierKind.EXPORT: this.isExported = true; break;
            case ModifierKind.CONST: this.isConstant = true; break;
            case ModifierKind.DECLARE: this.isDeclared = true; break;
            case ModifierKind.STATIC: break; // static fields become globals
            default: throw new Error("unexpected modifier");
          }
        }
      }
    } else {
      this.hasConstantValue = true; // built-ins have constant values
    }
    this.type = type; // resolved later if `null`
  }

  withConstantIntegerValue(lo: i32, hi: i32): this {
    this.constantIntegerValue = new I64(lo, hi);
    this.hasConstantValue = true;
    this.isMutable = false;
    return this;
  }

  withConstantFloatValue(value: f64): this {
    this.constantFloatValue = value;
    this.hasConstantValue = true;
    this.isMutable = false;
    return this;
  }
}

/** A function parameter. */
export class Parameter {

  // not an Element on its own

  /** Parameter name. */
  name: string;
  /** Parameter type. */
  type: Type;
  /** Parameter initializer. */
  initializer: Expression | null;

  /** Constructs a new function parameter. */
  constructor(name: string, type: Type, initializer: Expression | null = null) {
    this.name = name;
    this.type = type;
    this.initializer = initializer;
  }
}

/** A function local. */
export class Local extends Element {

  kind = ElementKind.LOCAL;

  /** Local index. */
  index: i32;
  /** Local type. */
  type: Type;

  constructor(program: Program, internalName: string, index: i32, type: Type) {
    super(program, internalName);
    this.index = index;
    this.type = type;
  }
}

/** A yet unresolved function prototype. */
export class FunctionPrototype extends Element {

  kind = ElementKind.FUNCTION_PROTOTYPE;

  /** Declaration reference. */
  declaration: FunctionDeclaration | null;
  /** If an instance method, the class prototype reference. */
  classPrototype: ClassPrototype | null;
  /** Resolved instances. */
  instances: Map<string,Function> = new Map();
  /** Simple name. */
  simpleName: string;

  /** Constructs a new function prototype. */
  constructor(program: Program, simpleName: string, internalName: string, declaration: FunctionDeclaration | null, classPrototype: ClassPrototype | null = null) {
    super(program, internalName);
    this.simpleName = simpleName;
    if (this.declaration = declaration) {
      if (this.declaration.modifiers)
        for (let i: i32 = 0, k: i32 = this.declaration.modifiers.length; i < k; ++i) {
          switch (this.declaration.modifiers[i].modifierKind) {
            case ModifierKind.IMPORT: this.isImported = true; break;
            case ModifierKind.EXPORT: this.isExported = true; break;
            case ModifierKind.DECLARE: this.isDeclared = true; break;
            case ModifierKind.GET: this.isGetter = true; break;
            case ModifierKind.SET: this.isSetter = true; break;
            case ModifierKind.STATIC:
            case ModifierKind.ABSTRACT:
            case ModifierKind.PRIVATE:
            case ModifierKind.PROTECTED:
            case ModifierKind.PUBLIC: break; // already handled
            default: throw new Error("unexpected modifier");
          }
        }
      if (this.declaration.typeParameters.length)
        this.isGeneric = true;
    }
    if (this.classPrototype = classPrototype) {
      this.isInstance = true;
    }
  }

  /** Whether a getter function or not. */
  get isGetter(): bool { return (this.flags & ElementFlags.GETTER) != 0; }
  set isGetter(is: bool) { if (is) this.flags |= ElementFlags.GETTER; else this.flags &= ~ElementFlags.GETTER; }

  /** Whether a setter function or not. */
  get isSetter(): bool { return (this.flags & ElementFlags.SETTER) != 0; }
  set isSetter(is: bool) { if (is) this.flags |= ElementFlags.SETTER; else this.flags &= ~ElementFlags.SETTER; }

  resolve(typeArguments: Type[], contextualTypeArguments: Map<string,Type> | null): Function | null {
    const instanceKey: string = typesToString(typeArguments, "", "");
    let instance: Function | null = <Function | null>this.instances.get(instanceKey);
    if (instance)
      return instance;
    const declaration: FunctionDeclaration | null = this.declaration;
    if (!declaration)
      throw new Error("unexpected instantiation of internal function");

    // override call specific contextual type arguments
    let i: i32, k: i32 = typeArguments.length;
    if (k) {
      const inheritedTypeArguments: Map<string,Type> | null = contextualTypeArguments;
      contextualTypeArguments = new Map();
      if (inheritedTypeArguments)
        for (let [name, type] of inheritedTypeArguments)
          contextualTypeArguments.set(name, type);
      for (i = 0; i < k; ++i)
        contextualTypeArguments.set(declaration.typeParameters[i].identifier.name, typeArguments[i]);
    }

    // resolve parameters
    k = declaration.parameters.length;
    const parameters: Parameter[] = new Array(k);
    const parameterTypes: Type[] = new Array(k);
    let typeNode: TypeNode | null ;
    for (i = 0; i < k; ++i) {
      if (typeNode = declaration.parameters[i].type) {
        const type: Type | null = this.program.resolveType(<TypeNode>typeNode, contextualTypeArguments, true); // reports
        if (type) {
          parameters[i] = new Parameter(declaration.parameters[i].name.name, type);
          parameterTypes[i] = <Type>type;
        } else
          return null;
      } else
        return null;
    }

    // resolve return type
    let returnType: Type;
    if (typeNode = declaration.returnType) {
      const type: Type | null = this.program.resolveType(<TypeNode>typeNode, contextualTypeArguments, true); // reports
      if (type)
        returnType = <Type>type;
      else
        return null;
    } else
      return null;

    let internalName: string = this.internalName;
    if (instanceKey.length)
      internalName += "<" + instanceKey + ">";
    instance = new Function(this, internalName, typeArguments, parameters, returnType, null); // TODO: class
    this.instances.set(instanceKey, instance);
    return instance;
  }

  resolveInclTypeArguments(typeArgumentNodes: TypeNode[] | null, contextualTypeArguments: Map<string,Type> | null, alternativeReportNode: Node | null): Function | null {
    let resolvedTypeArguments: Type[] | null;
    if (this.isGeneric) {
      assert(typeArgumentNodes != null && typeArgumentNodes.length != 0);
      if (!this.declaration)
        throw new Error("missing declaration");
      resolvedTypeArguments = this.program.resolveTypeArguments(this.declaration.typeParameters, typeArgumentNodes, contextualTypeArguments, alternativeReportNode);
      if (!resolvedTypeArguments)
        return null;
    } else {
      assert(typeArgumentNodes == null || typeArgumentNodes.length == 0);
      resolvedTypeArguments = [];
    }
    return this.resolve(resolvedTypeArguments, contextualTypeArguments);
  }

  toString(): string { return this.simpleName; }
}

/** A resolved function. */
export class Function extends Element {

  kind = ElementKind.FUNCTION;

  /** Prototype reference. */
  prototype: FunctionPrototype;
  /** Concrete type arguments. */
  typeArguments: Type[];
  /** Concrete function parameters. Excluding `this` if an instance method. */
  parameters: Parameter[];
  /** Concrete return type. */
  returnType: Type;
  /** If an instance method, the concrete class it is a member of. */
  instanceMethodOf: Class | null;
  /** Map of locals by name. */
  locals: Map<string,Local> = new Map();
  /** List of additional non-parameter locals. */
  additionalLocals: Type[] = [];
  /** Current break context label. */
  breakContext: string | null = null;
  /** Contextual type arguments. */
  contextualTypeArguments: Map<string,Type> | null;

  private nextBreakId: i32 = 0;
  private breakStack: i32[] | null = null;

  /** Constructs a new concrete function. */
  constructor(prototype: FunctionPrototype, internalName: string, typeArguments: Type[], parameters: Parameter[], returnType: Type, instanceMethodOf: Class | null) {
    super(prototype.program, internalName);
    this.prototype = prototype;
    this.typeArguments = typeArguments;
    this.parameters = parameters;
    this.returnType = returnType;
    this.instanceMethodOf = instanceMethodOf;
    this.flags = prototype.flags;
    let localIndex: i32 = 0;
    if (instanceMethodOf) {
      assert(this.isInstance);
      this.locals.set("this", new Local(prototype.program, "this", localIndex++, instanceMethodOf.type));
      if (instanceMethodOf.contextualTypeArguments) {
        if (!this.contextualTypeArguments) this.contextualTypeArguments = new Map();
        for (let [name, type] of instanceMethodOf.contextualTypeArguments)
          this.contextualTypeArguments.set(name, type);
      }
    } else
      assert(!this.isInstance);
    for (let i: i32 = 0, k: i32 = parameters.length; i < k; ++i) {
      const parameter: Parameter = parameters[i];
      this.locals.set(parameter.name, new Local(prototype.program, parameter.name, localIndex++, parameter.type));
    }
  }

  /** Adds a local of the specified type, with an optional name. */
  addLocal(type: Type, name: string | null = null): Local {
    // if it has a name, check previously as this method will throw otherwise
    let localIndex = this.parameters.length + this.additionalLocals.length;
    if (this.isInstance) localIndex++; // plus 'this'
    const local: Local = new Local(this.prototype.program, name ? name : "anonymous$" + localIndex.toString(10), localIndex, type);
    if (name) {
      if (this.locals.has(<string>name))
        throw new Error("unexpected duplicate local name");
      this.locals.set(<string>name, local);
    }
    this.additionalLocals.push(type);
    return local;
  }

  private tempI32s: Local[] | null = null;
  private tempI64s: Local[] | null = null;
  private tempF32s: Local[] | null = null;
  private tempF64s: Local[] | null = null;

  /** Gets a free temporary local of the specified type. */
  getTempLocal(type: Type): Local {
    let temps: Local[] | null;
    switch (type.toNativeType()) {
      case NativeType.I32: temps = this.tempI32s; break;
      case NativeType.I64: temps = this.tempI64s; break;
      case NativeType.F32: temps = this.tempF32s; break;
      case NativeType.F64: temps = this.tempF64s; break;
      default: throw new Error("unexpected type");
    }
    if (temps && temps.length > 0)
      return temps.pop();
    return this.addLocal(type);
  }

  /** Frees the temporary local for reuse. */
  freeTempLocal(local: Local): void {
    let temps: Local[];
    switch (local.type.toNativeType()) {
      case NativeType.I32: temps = this.tempI32s || (this.tempI32s = []); break;
      case NativeType.I64: temps = this.tempI64s || (this.tempI64s = []); break;
      case NativeType.F32: temps = this.tempF32s || (this.tempF32s = []); break;
      case NativeType.F64: temps = this.tempF64s || (this.tempF64s = []); break;
      default: throw new Error("unexpected type");
    }
    temps.push(local);
  }

  /** Gets and immediately frees a temporary local of the specified type. */
  getAndFreeTempLocal(type: Type): Local {
    let temps: Local[];
    switch (type.toNativeType()) {
      case NativeType.I32: temps = this.tempI32s || (this.tempI32s = []); break;
      case NativeType.I64: temps = this.tempI64s || (this.tempI64s = []); break;
      case NativeType.F32: temps = this.tempF32s || (this.tempF32s = []); break;
      case NativeType.F64: temps = this.tempF64s || (this.tempF64s = []); break;
      default: throw new Error("unexpected type");
    }
    if (temps.length > 0)
      return temps[temps.length - 1];
    let local: Local = this.addLocal(type);
    temps.push(local);
    return local;
  }

  /** Enters a(nother) break context. */
  enterBreakContext(): string {
    const id: i32 = this.nextBreakId++;
    if (!this.breakStack)
      this.breakStack = [ id ];
    else
      this.breakStack.push(id);
    return this.breakContext = id.toString(10);
  }

  /** Leaves the current break context. */
  leaveBreakContext(): void {
    assert(this.breakStack != null);
    const length: i32 = (<i32[]>this.breakStack).length;
    assert(length > 0);
    (<i32[]>this.breakStack).pop();
    if (length > 1) {
      this.breakContext = (<i32[]>this.breakStack)[length - 2].toString(10);
    } else {
      this.breakContext = null;
      this.breakStack = null;
    }
  }

  /** Finalizes the function once compiled, releasing no longer needed resources. */
  finalize(): void {
    assert(!this.breakStack || !this.breakStack.length, "break stack is not empty");
    this.breakStack = null;
    this.breakContext = null;
    this.tempI32s = this.tempI64s = this.tempF32s = this.tempF64s = null;
  }

  /** Returns the TypeScript representation of this function. */
  toString(): string { return this.prototype.simpleName; }

  /** Returns the function type TypeScript representation of this function.*/
  toTypeString(): string { throw new Error("not implemented"); }
}

/** A yet unresolved instance field prototype. */
export class FieldPrototype extends Element {

  kind = ElementKind.FIELD_PROTOTYPE;

  /** Declaration reference. */
  declaration: FieldDeclaration | null;
  /** Parent class prototype. */
  classPrototype: ClassPrototype;

  /** Constructs a new field prototype. */
  constructor(classPrototype: ClassPrototype, internalName: string, declaration: FieldDeclaration | null = null) {
    super(classPrototype.program, internalName);
    this.classPrototype = classPrototype;
    if ((this.declaration = declaration) && this.declaration.modifiers) {
      for (let i: i32 = 0, k = this.declaration.modifiers.length; i < k; ++i) {
        switch (this.declaration.modifiers[i].modifierKind) {
          case ModifierKind.EXPORT: this.isExported = true; break;
          case ModifierKind.READONLY: this.isReadonly = true; break;
          case ModifierKind.PRIVATE:
          case ModifierKind.PROTECTED:
          case ModifierKind.PUBLIC:
          case ModifierKind.STATIC: break; // already handled
          default: assert(false);
        }
      }
    }
  }

  /** Whether the field is read-only or not. */
  get isReadonly(): bool { return (this.flags & ElementFlags.READONLY) != 0; }
  set isReadonly(is: bool) { if (is) this.flags |= ElementFlags.READONLY; else this.flags &= ~ElementFlags.READONLY; }
}

/** A resolved instance field. */
export class Field extends Element {

  kind = ElementKind.FIELD;

  /** Field prototype reference. */
  prototype: FieldPrototype;
  /** Resolved type. */
  type: Type;
  /** Constant integer value, if applicable. */
  constantIntegerValue: I64 | null = null;
  /** Constant float value, if applicable. */
  constantFloatValue: f64 = 0;

  /** Constructs a new field. */
  constructor(prototype: FieldPrototype, internalName: string, type: Type) {
    super(prototype.program, internalName);
    this.flags = prototype.flags;
    this.type = type;
  }
}

/** A yet unresolved property. */
export class PropertyPrototype extends Element {

  kind = ElementKind.PROPERTY_PROTOTYPE;

  /** Simple name. */
  simpleName: string;
  /** Parent class prototype. */
  classPrototype: ClassPrototype;
  /** Getter declaration reference. */
  getterDeclaration: FunctionDeclaration | null;
  /** Setter declaration reference. */
  setterDeclaration: FunctionDeclaration | null;

  /** Constructs a new propery prototype. */
  constructor(classPrototype: ClassPrototype, simpleName: string, internalName: string, getterDeclaration: FunctionDeclaration | null = null, setterDeclaration: FunctionDeclaration | null = null) {
    super(classPrototype.program, internalName);
    this.simpleName = simpleName;
    this.classPrototype = classPrototype;

    let i: i32, k: i32;
    if ((this.getterDeclaration = getterDeclaration) && this.getterDeclaration.modifiers) {
      assert(this.getterDeclaration.typeParameters.length == 0);
      assert(this.getterDeclaration.parameters.length == 0);
      for (i = 0, k = this.getterDeclaration.modifiers.length; i < k; ++i) {
        switch (this.getterDeclaration.modifiers[i].modifierKind) {
          case ModifierKind.EXPORT: this.isExported = true; break;
          case ModifierKind.GET:
          case ModifierKind.STATIC: break; // already handled
          default: assert(false);
        }
      }
    }
    if ((this.setterDeclaration = setterDeclaration) && this.setterDeclaration.modifiers) {
      assert(this.setterDeclaration.typeParameters.length == 0);
      assert(this.setterDeclaration.parameters.length == 1);
      for (i = 0, k = this.setterDeclaration.modifiers.length; i < k; ++i) {
        switch (this.setterDeclaration.modifiers[i].modifierKind) {
          case ModifierKind.EXPORT: this.isExported = true; break;
          case ModifierKind.SET:
          case ModifierKind.STATIC: break; // already handled
          default: assert(false);
        }
      }
    }
  }
}

/** A resolved property. */
export class Property extends Element {

  kind = ElementKind.PROPERTY;

  /** Prototype reference. */
  prototype: PropertyPrototype;
  /** Property type. */
  type: Type;
  /** Getter function. */
  getter: Function | null = null;
  /** Setter function. */
  setter: Function | null = null;

  /** Constructs a new property. */
  constructor(prototype: PropertyPrototype, internalName: string, type: Type) {
    super(prototype.program, internalName);
    this.flags = prototype.flags;
    this.type = type;
  }
}

/** A yet unresolved class prototype. */
export class ClassPrototype extends Element {

  kind = ElementKind.CLASS_PROTOTYPE;

  /** Declaration reference. */
  declaration: ClassDeclaration | null;
  /** Resolved instances. */
  instances: Map<string,Class> = new Map();
  /** Instance member prototypes. */
  instanceMembers: Map<string,Element> | null = null;
  /** Simple name. */
  simpleName: string;

  constructor(program: Program, simpleName: string, internalName: string, declaration: ClassDeclaration | null = null) {
    super(program, internalName);
    this.simpleName = simpleName;
    if (this.declaration = declaration) {
      if (this.declaration.modifiers) {
        for (let i: i32 = 0, k: i32 = this.declaration.modifiers.length; i < k; ++i) {
          switch (this.declaration.modifiers[i].modifierKind) {
            case ModifierKind.IMPORT: this.isImported = true; break;
            case ModifierKind.EXPORT: this.isExported = true; break;
            case ModifierKind.DECLARE: this.isDeclared = true; break;
            default: throw new Error("unexpected modifier");
          }
        }
      }
      if (this.declaration.typeParameters.length)
        this.isGeneric = true;
    }
  }

  resolve(typeArguments: Type[], contextualTypeArguments: Map<string,Type> | null): Class {
    const instanceKey: string = typesToString(typeArguments, "", "");
    let instance: Class | null = <Class | null>this.instances.get(instanceKey);
    if (instance)
      return instance;
    const declaration: ClassDeclaration | null = this.declaration;
    if (!declaration)
      throw new Error("unexpected instantiation of internal class");

    // override call specific contextual type arguments
    let i: i32, k: i32 = typeArguments.length;
    if (k) {
      const inheritedTypeArguments: Map<string,Type> | null = contextualTypeArguments;
      contextualTypeArguments = new Map();
      if (inheritedTypeArguments)
        for (let [name, type] of inheritedTypeArguments)
          contextualTypeArguments.set(name, type);
      for (i = 0; i < k; ++i)
        contextualTypeArguments.set(declaration.typeParameters[i].identifier.name, typeArguments[i]);
    }

    // TODO: set up instance fields and methods
    if (this.instanceMembers)
      for (let [key, member] of this.instanceMembers) {
        switch (member.kind) {
          case ElementKind.FIELD_PROTOTYPE: break;
          case ElementKind.FUNCTION_PROTOTYPE: break;
          default: throw new Error("unexpected instance member");
        }
      }

    let internalName: string = this.internalName;
    if (instanceKey.length)
      internalName += "<" + instanceKey + ">";
    instance = new Class(this, internalName, typeArguments, null); // TODO: base class
    instance.contextualTypeArguments = contextualTypeArguments;
    this.instances.set(instanceKey, instance);
    return instance;
  }

  resolveInclTypeArguments(typeArgumentNodes: TypeNode[] | null, contextualTypeArguments: Map<string,Type> | null, alternativeReportNode: Node | null): Class | null {
    let resolvedTypeArguments: Type[] | null;
    if (this.isGeneric) {
      assert(typeArgumentNodes != null && typeArgumentNodes.length != 0);
      if (!this.declaration)
        throw new Error("missing declaration"); // generic built-in
      resolvedTypeArguments = this.program.resolveTypeArguments(this.declaration.typeParameters, typeArgumentNodes, contextualTypeArguments, alternativeReportNode);
      if (!resolvedTypeArguments)
        return null;
    } else {
      assert(typeArgumentNodes == null || !typeArgumentNodes.length);
      resolvedTypeArguments = [];
    }
    return this.resolve(resolvedTypeArguments, contextualTypeArguments);
  }

  toString(): string { return this.simpleName; }
}

/** A resolved class. */
export class Class extends Element {

  kind = ElementKind.CLASS;

  /** Prototype reference. */
  prototype: ClassPrototype;
  /** Resolved type arguments. */
  typeArguments: Type[];
  /** Resolved class type. */
  type: Type;
  /** Base class, if applicable. */
  base: Class | null;
  /** Contextual type arguments for fields and methods. */
  contextualTypeArguments: Map<string,Type> | null = null;

  /** Constructs a new class. */
  constructor(prototype: ClassPrototype, internalName: string, typeArguments: Type[] = [], base: Class | null = null) {
    super(prototype.program, internalName);
    this.prototype = prototype;
    this.flags = prototype.flags;
    this.typeArguments = typeArguments;
    this.type = (prototype.program.target == Target.WASM64 ? Type.usize64 : Type.usize32).asClass(this);
    this.base = base;

    // inherit contextual type arguments from base class
    if (base && base.contextualTypeArguments) {
      if (!this.contextualTypeArguments) this.contextualTypeArguments = new Map();
      for (let [name, type] of base.contextualTypeArguments)
        this.contextualTypeArguments.set(name, type);
    }

    // apply instance-specific contextual type arguments
    const declaration: ClassDeclaration | null = this.prototype.declaration;
    if (declaration) { // irrelevant for built-ins
      const typeParameters: TypeParameter[] = declaration.typeParameters;
      if (typeParameters.length != typeArguments.length)
        throw new Error("unexpected type argument count mismatch");
      const k: i32 = typeArguments.length;
      if (k) {
        if (!this.contextualTypeArguments) this.contextualTypeArguments = new Map();
        for (let i: i32 = 0; i < k; ++i)
          this.contextualTypeArguments.set(typeParameters[i].identifier.name, typeArguments[i]);
      }
    }
  }

  toString(): string { return this.prototype.simpleName; }
}

/** A yet unresolved interface. */
export class InterfacePrototype extends ClassPrototype {

  kind = ElementKind.INTERFACE_PROTOTYPE;

  /** Declaration reference. */
  declaration: InterfaceDeclaration | null; // more specific

  /** Constructs a new interface prototype. */
  constructor(program: Program, simpleName: string, internalName: string, declaration: InterfaceDeclaration | null = null) {
    super(program, simpleName, internalName, declaration);
  }
}

/** A resolved interface. */
export class Interface extends Class {

  kind = ElementKind.INTERFACE;

  /** Prototype reference. */
  prototype: InterfacePrototype; // more specific
  /** Base interface, if applcable. */
  base: Interface | null; // more specific

  /** Constructs a new interface. */
  constructor(prototype: InterfacePrototype, internalName: string, typeArguments: Type[] = [], base: Interface | null = null) {
    super(prototype, internalName, typeArguments, base);
  }
}
