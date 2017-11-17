import { Target } from "./compiler";
import { GETTER_PREFIX, SETTER_PREFIX, PATH_DELIMITER } from "./constants";
import { DiagnosticCode, DiagnosticMessage, DiagnosticEmitter } from "./diagnostics";
import { Type, typesToString } from "./types";
import { I64 } from "./util";
import {

  ModifierKind,
  Node,
  NodeKind,
  Source,
  Range,

  TypeNode,
  Expression,
  IdentifierExpression,
  LiteralExpression,
  LiteralKind,
  PropertyAccessExpression,
  StringLiteralExpression,

  ClassDeclaration,
  DeclarationStatement,
  DecoratorStatement,
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
  Modifier,
  NamespaceDeclaration,
  Statement,
  TypeParameter,
  VariableLikeDeclarationStatement,
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

const reusableTypesStub: Map<string,Type> = new Map();

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
  types: Map<string,Type> = reusableTypesStub;
  /** Exports of individual files by internal name. Not global exports. */
  exports: Map<string,Element> = new Map();

  constructor(diagnostics: DiagnosticMessage[] | null = null) {
    super(diagnostics);
    this.sources = new Array();
  }

  /** Initializes the program and its elements prior to compilation. */
  initialize(target: Target = Target.WASM32): void {
    this.target = target;
    this.types = new Map([ // replaces typesStub
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
    for (let [exportName, queuedExport] of queuedExports) { // all file-level exports
      if (queuedExport.isForeign) {
        const seen: Set<QueuedExport> = new Set();
        while (queuedExports.has(queuedExport.referencedName)) {
          queuedExport = <QueuedExport>queuedExports.get(queuedExport.referencedName);
          if (seen.has(queuedExport))
            break;
          seen.add(queuedExport);
        }
        if (this.exports.has(queuedExport.referencedName)) {
          const element: Element = <Element>this.exports.get(queuedExport.referencedName);
          if (!this.exports.has(exportName))
            this.exports.set(exportName, element);
          if (queuedExport.member.range.source.isEntry)
            element.globalExportName = queuedExport.member.externalIdentifier.name;
        } else
          this.error(DiagnosticCode.Cannot_find_name_0, queuedExport.member.externalIdentifier.range, queuedExport.referencedName);
      } else /* local */ {
        if (this.elements.has(queuedExport.referencedName)) {
          const element: Element = <Element>this.elements.get(queuedExport.referencedName);
          if (!this.exports.has(exportName))
            this.exports.set(exportName, element);
          if (queuedExport.member.range.source.isEntry)
            element.globalExportName = queuedExport.member.externalIdentifier.name;
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
        if (this.elements.has(internalName))
          this.error(DiagnosticCode.Duplicate_identifier_0, queuedImport.declaration.identifier.range, internalName);
        else {
          const element: Element = <Element>this.exports.get(importName);
          this.elements.set(internalName, element);
        }
      } else
        this.error(DiagnosticCode.Cannot_find_name_0, queuedImport.declaration.externalIdentifier.range, importName);
    }
  }

  private initializeClass(declaration: ClassDeclaration): void {
    const internalName: string = declaration.internalName;
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName);
      return;
    }
    const prototype: ClassPrototype = new ClassPrototype(this, internalName, declaration);
    this.elements.set(internalName, prototype);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers)) {
      if (this.exports.has(internalName))
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, declaration.identifier.range, internalName);
      else
        this.exports.set(internalName, prototype);
    }
    const memberDeclarations: DeclarationStatement[] = declaration.members;
    for (let j: i32 = 0, l: i32 = memberDeclarations.length; j < l; ++j) {
      const memberDeclaration: DeclarationStatement = memberDeclarations[j];
      if (memberDeclaration.kind == NodeKind.FIELD)
        this.initializeField(<FieldDeclaration>memberDeclaration, prototype);
      else if (memberDeclaration.kind == NodeKind.METHOD)
        this.initializeMethod(<MethodDeclaration>memberDeclaration, prototype);
      else
        throw new Error("unexpected class member");
    }
  }

  private initializeField(declaration: FieldDeclaration, classPrototype: ClassPrototype): void {
    const name: string = declaration.identifier.name;
    if (classPrototype.members.has(name)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, declaration.internalName);
      return;
    }
    const internalName: string = declaration.internalName;
    if (hasModifier(ModifierKind.STATIC, declaration.modifiers)) { // static fields become globals
      const global: Global = new Global(this, internalName, declaration, null);
      classPrototype.members.set(name, global);
    } else {
      const field: FieldPrototype = new FieldPrototype(classPrototype, internalName, declaration);
      classPrototype.members.set(name, field);
    }
  }

  private initializeMethod(declaration: MethodDeclaration, classPrototype: ClassPrototype): void {
    let name: string = declaration.identifier.name;
    const internalName: string = declaration.internalName;
    if (classPrototype.members.has(name)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName);
      return;
    }
    const func: FunctionPrototype = new FunctionPrototype(this, internalName, declaration, hasModifier(ModifierKind.STATIC, declaration.modifiers) ? null : classPrototype);
    let modifiers: Modifier[] | null;
    if (modifiers = declaration.modifiers) {
      for (let i: i32 = 0, k: i32 = modifiers.length; i < k; ++i) {
        const modifier: Modifier = modifiers[i];
        if (modifier.modifierKind == ModifierKind.GET) {
          name = GETTER_PREFIX + name;
          break;
        } else if (modifier.modifierKind == ModifierKind.SET) {
          name = SETTER_PREFIX + name;
          break;
        }
      }
    }
    classPrototype.members.set(name, func);
  }

  private initializeEnum(declaration: EnumDeclaration): void {
    const internalName: string = declaration.internalName;
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName);
      return;
    }
    const enm: Enum = new Enum(this, internalName, declaration);
    this.elements.set(internalName, enm);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers)) {
      if (this.exports.has(internalName))
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, declaration.identifier.range, internalName);
      else
        this.exports.set(internalName, enm);
    }
    const values: EnumValueDeclaration[] = declaration.members;
    for (let i: i32 = 0, k: i32 = values.length; i < k; ++i)
      this.initializeEnumValue(values[i], enm);
  }

  private initializeEnumValue(declaration: EnumValueDeclaration, enm: Enum): void {
    const name: string = declaration.identifier.name;
    const internalName: string = declaration.internalName;
    if (enm.members.has(name)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName);
      return;
    }
    const value: EnumValue = new EnumValue(enm, this, internalName, declaration);
    enm.members.set(name, value);
  }

  private initializeExports(statement: ExportStatement, queuedExports: Map<string,QueuedExport>): void {
    const members: ExportMember[] = statement.members;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i)
      this.initializeExport(members[i], statement.internalPath, queuedExports);
  }

  private initializeExport(member: ExportMember, internalPath: string | null, queuedExports: Map<string,QueuedExport>): void {
    const exportName: string = member.range.source.internalPath + PATH_DELIMITER + member.externalIdentifier.name;
    if (queuedExports.has(exportName)) {
      this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, member.externalIdentifier.range, exportName);
      return;
    }
    const queuedExport: QueuedExport = new QueuedExport();
    if (internalPath == null) {
      queuedExport.isForeign = false;
      queuedExport.referencedName = member.range.source.internalPath + PATH_DELIMITER + member.identifier.name;
    } else {
      queuedExport.isForeign = true;
      queuedExport.referencedName = (<string>internalPath) + PATH_DELIMITER + member.identifier.name;
    }
    queuedExport.member = member;
    queuedExports.set(exportName, queuedExport);
  }

  private initializeFunction(declaration: FunctionDeclaration): void {
    const internalName: string = declaration.internalName;
    const prototype: FunctionPrototype = new FunctionPrototype(this, internalName, declaration, null);
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName);
      return;
    }
    this.elements.set(internalName, prototype);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers)) {
      if (this.exports.has(internalName))
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, declaration.identifier.range, internalName);
      else
        this.exports.set(internalName, prototype);
    }
  }

  private initializeImports(statement: ImportStatement, queuedExports: Map<string,QueuedExport>, queuedImports: QueuedImport[]): void {
    const members: ImportDeclaration[] = statement.declarations;
    for (let i: i32 = 0, k: i32 = members.length; i < k; ++i) {
      const declaration: ImportDeclaration = members[i];
      this.initializeImport(declaration, statement.internalPath, queuedExports, queuedImports);
    }
  }

  private initializeImport(declaration: ImportDeclaration, internalPath: string, queuedExports: Map<string,QueuedExport>, queuedImports: QueuedImport[]): void {
    const importName: string = internalPath + PATH_DELIMITER + declaration.externalIdentifier.name;
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
      if (this.elements.has(internalName))
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName);
      else
        this.elements.set(internalName, <Element>this.exports.get(resolvedImportName));
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
    const interfacePrototype: InterfacePrototype = new InterfacePrototype(this, internalName, declaration);
    if (this.elements.has(internalName))
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName);
    else
      this.elements.set(internalName, interfacePrototype);
    if (hasModifier(ModifierKind.EXPORT, declaration.modifiers)) {
      if (this.exports.has(internalName))
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, declaration.identifier.range, internalName);
      else
        this.exports.set(internalName, interfacePrototype);
    }
    const memberDeclarations: DeclarationStatement[] = declaration.members;
    for (let j: i32 = 0, l: i32 = memberDeclarations.length; j < l; ++j) {
      const memberDeclaration: DeclarationStatement = memberDeclarations[j];
      switch (memberDeclaration.kind) {

        case NodeKind.FIELD:
          this.initializeField(<FieldDeclaration>memberDeclaration, interfacePrototype);
          break;

        case NodeKind.METHOD:
          this.initializeMethod(<MethodDeclaration>memberDeclaration, interfacePrototype);
          break;

        default:
          throw new Error("unexpected interface member");
      }
    }
  }

  private initializeNamespace(declaration: NamespaceDeclaration): void {
    const internalName: string = declaration.internalName;
    const namespace: Namespace = new Namespace(this, internalName, declaration);
    if (this.elements.has(internalName))
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName);
    else {
      this.elements.set(internalName, namespace);
      if (hasModifier(ModifierKind.EXPORT, declaration.modifiers)) {
        if (this.exports.has(internalName))
          this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, declaration.identifier.range, internalName);
        else
          this.exports.set(internalName, namespace);
      }
    }
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
      const global: Global = new Global(this, internalName, declaration, null);
      if (this.elements.has(internalName))
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName);
      else {
        this.elements.set(internalName, global);
        if (isExport) {
          if (this.exports.has(internalName))
            this.error(DiagnosticCode.Duplicate_identifier_0, declaration.identifier.range, internalName);
          else
            this.exports.set(internalName, global);
        }
      }
    }
  }

  resolveType(node: TypeNode, contextualTypeArguments: Map<string,Type> | null = null, reportNotFound: bool = true): Type | null {

    // resolve parameters
    const k: i32 = node.parameters.length;
    const paramTypes: Type[] = new Array(k);
    for (let i: i32 = 0; i < k; ++i) {
      const paramType: Type | null = this.resolveType(node.parameters[i], contextualTypeArguments, reportNotFound);
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

    if (reportNotFound)
      this.error(DiagnosticCode.Cannot_find_name_0, node.identifier.range, globalName);

    return null;
  }

  resolveTypeArguments(typeParameters: TypeParameter[], typeArgumentNodes: TypeNode[], contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): Type[] | null {
    const parameterCount: i32 = typeParameters.length;
    const argumentCount: i32 = typeArgumentNodes.length;
    if (parameterCount != argumentCount) {
      if (argumentCount)
        this.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, Range.join(typeArgumentNodes[0].range, typeArgumentNodes[argumentCount - 1].range), parameterCount.toString(10), argumentCount.toString(10));
      else if (alternativeReportNode)
        this.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, alternativeReportNode.range.atEnd, parameterCount.toString(10), "0");
      return null;
    }
    const typeArguments: Type[] = new Array(parameterCount);
    for (let i: i32 = 0; i < parameterCount; ++i) {
      const type: Type | null = this.resolveType(typeArgumentNodes[i], contextualTypeArguments, true); // reports
      if (!type)
        return null;
      // TODO: check extendsType
      typeArguments[i] = type;
    }
    return typeArguments;
  }

  resolveElement(expression: Expression, contextualFunction: Function): Element | null {

    // this
    if (expression.kind == NodeKind.THIS) {
      if (contextualFunction.instanceMethodOf)
        return contextualFunction.instanceMethodOf;
      this.error(DiagnosticCode._this_cannot_be_referenced_in_current_location, expression.range);
      return null;
    }

    // local or global name
    if (expression.kind == NodeKind.IDENTIFIER) {
      const name: string = (<IdentifierExpression>expression).name;
      const local: Local | null = <Local | null>contextualFunction.locals.get(name);
      if (local)
        return local;
      const fileGlobalElement: Element | null = <Element | null>this.elements.get(expression.range.source.internalPath + PATH_DELIMITER + name);
      if (fileGlobalElement)
        return fileGlobalElement;
      const programGlobalElement: Element | null = <Element | null>this.elements.get(name);
      if (programGlobalElement)
        return programGlobalElement;
      this.error(DiagnosticCode.Cannot_find_name_0, expression.range, name);
      return null;

    // static or instance property (incl. enum values) or method
    } else if (expression.kind == NodeKind.PROPERTYACCESS) {
      const target: Element | null = this.resolveElement((<PropertyAccessExpression>expression).expression, contextualFunction); // reports
      let member: Element | null = null;
      if (!target)
        return null;
      const propertyName: string = (<PropertyAccessExpression>expression).property.name;
      if (target.kind == ElementKind.ENUM)
        member = <EnumValue | null>(<Enum>target).members.get(propertyName);
      else if (target.kind == ElementKind.CLASS_PROTOTYPE)
        member = <Element | null>(<ClassPrototype>target).members.get(propertyName);
      else if (target.kind == ElementKind.CLASS)
        member = <Element | null>(<Class>target).members.get(propertyName);
      else if (target.kind == ElementKind.NAMESPACE)
        member = <Element | null>(<Namespace>target).members.get(propertyName);
      if (member)
        return member;
      this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, expression.range, (<PropertyAccessExpression>expression).property.name, target.internalName);
      return null;
    }

    throw new Error("not implemented: " + expression.kind);
  }
}

function checkGlobalDecorator(decorators: DecoratorStatement[]): string | null {
  for (let i: i32 = 0, k: i32 = decorators.length; i < k; ++i) {
    const decorator: DecoratorStatement = decorators[i];
    const expression: Expression = decorator.expression;
    const args: Expression[] = decorator.arguments;
    if (expression.kind == NodeKind.IDENTIFIER && args.length <= 1 && (<IdentifierExpression>expression).name == "global") {
      if (args.length) {
        const firstArg: Expression = args[0];
        if (firstArg.kind == NodeKind.LITERAL && (<LiteralExpression>firstArg).literalKind == LiteralKind.STRING)
          return (<StringLiteralExpression>firstArg).value;
      } else
        return ""; // instead inherits declaration identifier
    }
  }
  return null;
}

export enum ElementKind {
  CLASS_PROTOTYPE,
  CLASS,
  ENUM,
  ENUMVALUE,
  FIELD_PROTOTYPE,
  FIELD,
  FUNCTION_PROTOTYPE,
  FUNCTION,
  GLOBAL,
  INTERFACE_PROTOTYPE,
  INTERFACE,
  LOCAL,
  NAMESPACE
}

/** Base class of all program elements. */
export abstract class Element {

  kind: ElementKind;
  program: Program;
  internalName: string;
  globalExportName: string | null = null;
  compiled: bool = false;

  constructor(program: Program, internalName: string) {
    this.program = program;
    this.internalName = internalName;
  }
}

/** A namespace. Also the base class of other namespace-like program elements. */
export class Namespace extends Element {

  kind = ElementKind.NAMESPACE;
  declaration: NamespaceDeclaration | null;
  members: Map<string,Element> = new Map();

  constructor(program: Program, internalName: string, declaration: NamespaceDeclaration | null) {
    super(program, internalName);
    this.declaration = declaration;
  }

  get isExport(): bool { return this.declaration ? hasModifier(ModifierKind.EXPORT, this.declaration.modifiers) : false; }
  get isGlobalExport(): bool { return this.declaration ? this.globalExportName != null : /* internals aren't exports */ false; }
}

/** An enum. */
export class Enum extends Namespace {

  kind = ElementKind.ENUM;
  declaration: EnumDeclaration | null;
  members: Map<string,EnumValue> = new Map(); // more specific

  constructor(program: Program, internalName: string, declaration: EnumDeclaration | null = null) {
    super(program, internalName, null);
    this.declaration = declaration;
  }

  get isExport(): bool { return this.declaration ? hasModifier(ModifierKind.EXPORT, this.declaration.modifiers) : /* internals aren't exports */ false; }
  get isGlobalExport(): bool { return this.globalExportName != null; }
  get isConstant(): bool { return this.declaration ? hasModifier(ModifierKind.CONST, this.declaration.modifiers) : /* internals are const */ true; }
}

/** An enum value. */
export class EnumValue extends Element {

  kind = ElementKind.ENUMVALUE;
  declaration: EnumValueDeclaration | null;
  enum: Enum;
  hasConstantValue: bool;
  constantValue: i32 = 0;

  constructor(enm: Enum, program: Program, internalName: string, declaration: EnumValueDeclaration | null = null) {
    super(program, internalName);
    this.enum = enm;
    if (!(this.declaration = declaration)) this.hasConstantValue = true;
  }
}

/** A global variable. */
export class Global extends Element {

  kind = ElementKind.GLOBAL;
  declaration: VariableLikeDeclarationStatement | null;
  type: Type | null;
  hasConstantValue: bool = false;
  constantIntegerValue: I64 | null = null;
  constantFloatValue: f64 = 0;

  constructor(program: Program, internalName: string, declaration: VariableLikeDeclarationStatement | null, type: Type | null) {
    super(program, internalName);
    if (!(this.declaration = declaration)) this.hasConstantValue = true;
    this.type = type; // resolved later if `null`, also updates constantKind
  }

  get isExport(): bool { return this.declaration ? hasModifier(ModifierKind.EXPORT, this.declaration.modifiers) : /* internals aren't exports */ false; }
  get isGlobalExport(): bool { return this.globalExportName != null; }
  get isMutable(): bool { return this.declaration ? hasModifier(ModifierKind.CONST, this.declaration.modifiers) : /* internals are immutable */ false; }
}

/** A function parameter. */
export class Parameter {

  name: string;
  type: Type;

  constructor(name: string, type: Type) {
    this.name = name;
    this.type = type;
  }
}

/** A function local. */
export class Local extends Element {

  kind = ElementKind.LOCAL;
  index: i32;
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
  declaration: FunctionDeclaration | null;
  classPrototype: ClassPrototype | null;
  instances: Map<string,Function> = new Map();
  isGeneric: bool;

  constructor(program: Program, internalName: string, declaration: FunctionDeclaration | null, classPrototype: ClassPrototype | null = null) {
    super(program, internalName);
    this.declaration = declaration;
    this.classPrototype = classPrototype;
    this.isGeneric = declaration ? declaration.typeParameters.length > 0 : false; // builtins set this
  }

  get isExport(): bool { return this.declaration ? hasModifier(ModifierKind.EXPORT, this.declaration.modifiers) : /* internals aren't file-level exports */ false; }
  get isGlobalExport(): bool { return this.declaration ? this.globalExportName != null : /* internals aren't global exports */ false; }
  get isInstance(): bool { return this.classPrototype != null; }
  get isGetter(): bool { return this.declaration ? hasModifier(ModifierKind.GET, this.declaration.modifiers) : /* internals aren't getters */ false; }
  get isSetter(): bool { return this.declaration ? hasModifier(ModifierKind.SET, this.declaration.modifiers) : /* internals aren't setters */ false; }

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
    for (let i = 0; i < k; ++i) {
      const typeNode: TypeNode | null = declaration.parameters[i].type;
      if (typeNode) {
        const type: Type | null = this.program.resolveType(<TypeNode>typeNode, contextualTypeArguments, true); // reports
        if (type) {
          parameters[i] = new Parameter(declaration.parameters[i].identifier.name, type);
          parameterTypes[i] = <Type>type;
        } else
          return null;
      } else
        return null; // TODO: infer type? (currently reported by parser)
    }

    // resolve return type
    const typeNode: TypeNode | null = declaration.returnType;
    let returnType: Type;
    if (typeNode) {
      const type: Type | null = this.program.resolveType(<TypeNode>typeNode, contextualTypeArguments, true); // reports
      if (type)
        returnType = <Type>type;
      else
        return null;
    } else
      return null; // TODO: infer type? (currently reported by parser)

    let internalName: string = this.internalName;
    if (instanceKey.length)
      internalName += "<" + instanceKey + ">";
    instance = new Function(this, internalName, typeArguments, parameters, returnType, null); // TODO: class
    this.instances.set(instanceKey, instance);
    return instance;
  }
}

/** A resolved function. */
export class Function extends Element {

  kind = ElementKind.FUNCTION;
  template: FunctionPrototype;
  typeArguments: Type[];
  parameters: Parameter[];
  returnType: Type;
  instanceMethodOf: Class | null;
  locals: Map<string,Local> = new Map();
  additionalLocals: Type[] = []; // without parameters
  breakContext: string | null = null;

  contextualTypeArguments: Map<string,Type> = new Map();

  private breakMajor: i32 = 0;
  private breakMinor: i32 = 0;

  constructor(template: FunctionPrototype, internalName: string, typeArguments: Type[], parameters: Parameter[], returnType: Type, instanceMethodOf: Class | null) {
    super(template.program, internalName);
    this.template = template;
    this.typeArguments = typeArguments;
    this.parameters = parameters;
    this.returnType = returnType;
    this.instanceMethodOf = instanceMethodOf;
    let localIndex: i32 = 0;
    if (instanceMethodOf) {
      this.locals.set("this", new Local(template.program, "this", localIndex++, instanceMethodOf.type));
      for (let [name, type] of instanceMethodOf.contextualTypeArguments)
        this.contextualTypeArguments.set(name, type);
    }
    for (let i: i32 = 0, k: i32 = parameters.length; i < k; ++i) {
      const parameter: Parameter = parameters[i];
      this.locals.set(parameter.name, new Local(template.program, parameter.name, localIndex++, parameter.type));
    }
  }

  get isInstance(): bool { return this.instanceMethodOf != null; }

  addLocal(type: Type, name: string | null = null): Local {
    // if it has a name, check previously as this method will throw otherwise
    let localIndex = this.parameters.length + this.additionalLocals.length;
    if (this.instanceMethodOf) localIndex++; // plus 'this'
    const local: Local = new Local(this.template.program, name ? name : "anonymous$" + localIndex.toString(10), localIndex, type);
    if (name) {
      if (this.locals.has(<string>name))
        throw new Error("unexpected duplicate local name");
      this.locals.set(<string>name, local);
    }
    this.additionalLocals.push(type);
    return local;
  }

  enterBreakContext(): string {
    if (!this.breakMinor)
      this.breakMajor++;
    return this.breakContext = this.breakMajor.toString(10) + "." + (++this.breakMinor).toString(10);
  }

  leaveBreakContext(): void {
    if (--this.breakMinor < 0)
      throw new Error("unexpected unbalanced break context");
    if (this.breakMinor == 0 && !--this.breakMajor)
      this.breakContext = null;
  }
}

/** A yet unresolved instance field prototype. */
export class FieldPrototype extends Element {

  kind = ElementKind.FIELD_PROTOTYPE;
  declaration: FieldDeclaration | null;
  classPrototype: ClassPrototype;

  constructor(classPrototype: ClassPrototype, internalName: string, declaration: FieldDeclaration | null) {
    super(classPrototype.program, internalName);
    this.classPrototype = classPrototype;
  }

  get isExport(): bool { return this.declaration ? hasModifier(ModifierKind.EXPORT, this.declaration.modifiers) : /* internals aren't file-level exports */ false; }
  get isGlobalExport(): bool { return this.declaration ? this.globalExportName != null : /* internals aren't global exports */ false; }
}

/** A resolved instance field. */
export class Field extends Element {

  kind = ElementKind.FIELD;
  template: FieldPrototype;
  type: Type;
  hasConstantValue: bool = false;
  constantIntegerValue: I64 | null = null;
  constantFloatValue: f64 = 0;

  constructor(template: FieldPrototype, internalName: string, type: Type) {
    super(template.program, internalName);
    if (!this.template.declaration) this.hasConstantValue = true;
    this.type = type;
  }
}

/** A yet unresolved class prototype. */
export class ClassPrototype extends Namespace {

  kind = ElementKind.CLASS_PROTOTYPE;
  declaration: ClassDeclaration | null;
  instances: Map<string,Class>;
  isGeneric: bool;

  constructor(program: Program, internalName: string, declaration: ClassDeclaration | null = null) {
    super(program, internalName, null);
    this.declaration = declaration;
    this.instances = new Map();
    this.isGeneric = declaration ? declaration.typeParameters.length > 0 : false; // builtins can set this
  }

  get isExport(): bool { return this.declaration ? hasModifier(ModifierKind.EXPORT, this.declaration.modifiers) : /* internals aren't file-level exports */ false; }
  get isGlobalExport(): bool { return this.declaration ? this.globalExportName != null : /* internals aren't global exports */ false; }

  resolve(typeArguments: Type[], contextualTypeArguments: Map<string,Type> | null): Class {
    const key: string = typesToString(typeArguments, "", "");
    let instance: Class | null = <Class | null>this.instances.get(key);
    if (instance)
      return instance;
    if (!this.declaration)
      throw new Error("unexpected instantiation of internal class");
    throw new Error("not implemented");
  }
}

/** A resolved class. */
export class Class extends Namespace {

  kind = ElementKind.CLASS;
  declaration: ClassDeclaration | null;
  template: ClassPrototype;
  typeArguments: Type[];
  base: Class | null;
  type: Type;

  contextualTypeArguments: Map<string,Type> = new Map();

  constructor(template: ClassPrototype, internalName: string, typeArguments: Type[], base: Class | null) {
    super(template.program, internalName, template.declaration);
    this.template = template;
    this.typeArguments = typeArguments;
    this.base = base;
    this.type = (template.program.target == Target.WASM64 ? Type.usize64 : Type.usize32).asClass(this);

    // inherit base class contextual type arguments
    if (base)
      for (let [name, type] of base.contextualTypeArguments)
        this.contextualTypeArguments.set(name, type);

    // apply instance-specific contextual type arguments
    const declaration: ClassDeclaration | null = this.template.declaration;
    if (declaration) { // irrelevant for builtins
      const typeParameters: TypeParameter[] = declaration.typeParameters;
      if (typeParameters.length != typeArguments.length)
        throw new Error("unexpected type argument count mismatch");
      for (let i: i32 = 0, k: i32 = typeArguments.length; i < k; ++i)
        this.contextualTypeArguments.set(typeParameters[i].identifier.name, typeArguments[i]);
    }
  }
}

/** A yet unresvoled interface. */
export class InterfacePrototype extends ClassPrototype {

  kind = ElementKind.INTERFACE_PROTOTYPE;
  declaration: InterfaceDeclaration | null;

  constructor(program: Program, internalName: string, declaration: InterfaceDeclaration | null) {
    super(program, internalName, declaration);
  }
}

/** A resolved interface. */
export class Interface extends Class {

  kind = ElementKind.INTERFACE;
  template: InterfacePrototype;
  base: Interface | null;

  constructor(template: InterfacePrototype, internalName: string, typeArguments: Type[], base: Interface | null) {
    super(template, internalName, typeArguments, base);
  }
}
