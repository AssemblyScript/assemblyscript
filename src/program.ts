import {
  Options
} from "./compiler";

import {
  DiagnosticCode,
  DiagnosticMessage,
  DiagnosticEmitter
} from "./diagnostics";

import {
  Type,
  Signature,

  typesToString
} from "./types";

import {
  Node,
  NodeKind,
  Source,
  Range,
  TypeNode,
  TypeParameterNode,
  // ParameterNode,
  // ParameterKind,
  // SignatureNode,
  DecoratorNode,
  DecoratorKind,
  ModifierKind,

  Expression,
  AssertionExpression,
  ElementAccessExpression,
  IdentifierExpression,
  LiteralExpression,
  LiteralKind,
  ParenthesizedExpression,
  PropertyAccessExpression,
  StringLiteralExpression,
  CallExpression,

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
  VariableStatement,

  hasDecorator,
  hasModifier,
  ParameterKind
} from "./ast";

import {
  Module,
  NativeType,
  FunctionRef,
} from "./module";

/** Path delimiter inserted between file system levels. */
export const PATH_DELIMITER = "/";
/** Substitution used to indicate the parent directory. */
export const PARENT_SUBST = "..";
/** Function name prefix used for getters. */
export const GETTER_PREFIX = "get:";
/** Function name prefix used for setters. */
export const SETTER_PREFIX = "set:";
/** Delimiter used between class names and instance members. */
export const INSTANCE_DELIMITER = "#";
/** Delimiter used between class and namespace names and static members. */
export const STATIC_DELIMITER = ".";
/** Substitution used to indicate a library directory. */
export const LIBRARY_SUBST = "(lib)";
/** Library directory prefix. */
export const LIBRARY_PREFIX = LIBRARY_SUBST + PATH_DELIMITER;

/** Represents a yet unresolved export. */
class QueuedExport {
  isReExport: bool;
  referencedName: string;
  member: ExportMember;
}

/** Represents a yet unresolved import. */
class QueuedImport {
  internalName: string;
  referencedName: string;
  referencedNameAlt: string;
  declaration: ImportDeclaration;
}

const noTypesYet = new Map<string,Type>();

/** Represents an AssemblyScript program. */
export class Program extends DiagnosticEmitter {

  /** Array of source files. */
  sources: Source[];
  /** Diagnostic offset used where repeatedly obtaining the next diagnostic. */
  diagnosticsOffset: i32 = 0;
  /** Compiler options. */
  options: Options;
  /** Elements by internal name. */
  elements: Map<string,Element> = new Map();
  /** Types by internal name. */
  types: Map<string,Type> = noTypesYet;
  /** Declared type aliases. */
  typeAliases: Map<string,TypeNode> = new Map();
  /** Exports of individual files by exported name. Not global exports. */
  exports: Map<string,Element> = new Map();

  /** Constructs a new program, optionally inheriting parser diagnostics. */
  constructor(diagnostics: DiagnosticMessage[] | null = null) {
    super(diagnostics);
    this.sources = [];
  }

  /** Initializes the program and its elements prior to compilation. */
  initialize(options: Options): void {
    this.options = options;
    this.types = new Map([
      ["i8", Type.i8],
      ["i16", Type.i16],
      ["i32", Type.i32],
      ["i64", Type.i64],
      ["isize", options.isizeType],
      ["u8", Type.u8],
      ["u16", Type.u16],
      ["u32", Type.u32],
      ["u64", Type.u64],
      ["usize", options.usizeType],
      ["bool", Type.bool],
      ["f32", Type.f32],
      ["f64", Type.f64],
      ["void", Type.void],
      ["number", Type.f64],
      ["boolean", Type.bool]
    ]);

    var queuedExports = new Map<string,QueuedExport>();
    var queuedImports = new Array<QueuedImport>();
    var queuedDerivedClasses = new Array<ClassPrototype>();

    // build initial lookup maps of internal names to declarations
    for (let i = 0, k = this.sources.length; i < k; ++i) {
      let source = this.sources[i];
      let statements = source.statements;
      for (let j = 0, l = statements.length; j < l; ++j) {
        let statement = statements[j];
        switch (statement.kind) {

          case NodeKind.CLASSDECLARATION:
            this.initializeClass(<ClassDeclaration>statement, queuedDerivedClasses);
            break;

          case NodeKind.ENUMDECLARATION:
            this.initializeEnum(<EnumDeclaration>statement);
            break;

          case NodeKind.EXPORT:
            this.initializeExports(<ExportStatement>statement, queuedExports);
            break;

          case NodeKind.FUNCTIONDECLARATION:
            this.initializeFunction(<FunctionDeclaration>statement);
            break;

          case NodeKind.IMPORT:
            this.initializeImports(<ImportStatement>statement, queuedExports, queuedImports);
            break;

          case NodeKind.INTERFACEDECLARATION:
            this.initializeInterface(<InterfaceDeclaration>statement);
            break;

          case NodeKind.NAMESPACEDECLARATION:
            this.initializeNamespace(<NamespaceDeclaration>statement, queuedDerivedClasses);
            break;

          case NodeKind.TYPEDECLARATION:
            this.initializeTypeAlias(<TypeDeclaration>statement);
            break;

          case NodeKind.VARIABLE:
            this.initializeVariables(<VariableStatement>statement);
            break;
        }
      }
    }

    // queued imports should be resolvable now through traversing exports and queued exports
    for (let i = 0; i < queuedImports.length;) {
      let queuedImport = queuedImports[i];
      let element = this.tryResolveImport(queuedImport.referencedName, queuedExports);
      if (element) {
        this.elements.set(queuedImport.internalName, element);
        queuedImports.splice(i, 1);
      } else {
        if (element = this.tryResolveImport(queuedImport.referencedNameAlt, queuedExports)) {
          this.elements.set(queuedImport.internalName, element);
          queuedImports.splice(i, 1);
        } else {
          this.error(
            DiagnosticCode.Module_0_has_no_exported_member_1,
            queuedImport.declaration.range,
            (<ImportStatement>queuedImport.declaration.parent).path.value,
            queuedImport.declaration.externalName.text
          );
          ++i;
        }
      }
    }

    // queued exports should be resolvable now that imports are finalized
    for (let [exportName, queuedExport] of queuedExports) {
      let currentExport: QueuedExport | null = queuedExport; // nullable below
      let element: Element | null;
      do {
        if (currentExport.isReExport) {
          if (element = this.exports.get(currentExport.referencedName)) {
            this.setExportAndCheckLibrary(
              exportName,
              element,
              currentExport.member.externalName
            );
            break;
          }
          currentExport = queuedExports.get(currentExport.referencedName);
          if (!currentExport) {
            this.error(
              DiagnosticCode.Module_0_has_no_exported_member_1,
              queuedExport.member.externalName.range,
              (<StringLiteralExpression>(<ExportStatement>queuedExport.member.parent).path).value,
              queuedExport.member.externalName.text
            );
          }
        } else {
          if (
            // normal export
            (element = this.elements.get(currentExport.referencedName)) ||
            // library re-export
            (element = this.elements.get(currentExport.member.name.text))
          ) {
            this.setExportAndCheckLibrary(
              exportName,
              element,
              currentExport.member.externalName
            );
          } else {
            this.error(
              DiagnosticCode.Cannot_find_name_0,
              queuedExport.member.range, queuedExport.member.name.text
            );
          }
          break;
        }
      } while (currentExport);
    }

    // resolve base prototypes of derived classes
    for (let i = 0, k = queuedDerivedClasses.length; i < k; ++i) {
      let derivedDeclaration = queuedDerivedClasses[i].declaration;
      let derivedType = assert(derivedDeclaration.extendsType);
      let resolved = this.resolveIdentifier(derivedType.name, null);
      if (resolved) {
        if (resolved.element.kind != ElementKind.CLASS_PROTOTYPE) {
          this.error(
            DiagnosticCode.A_class_may_only_extend_another_class,
            derivedType.range
          );
          continue;
        }
        queuedDerivedClasses[i].basePrototype = (
          <ClassPrototype>resolved.element
        );
      }
    }
  }

  /** Tries to resolve an import by traversing exports and queued exports. */
  private tryResolveImport(
    referencedName: string,
    queuedExports: Map<string,QueuedExport>
  ): Element | null {
    var element: Element | null;
    do {
      if (element = this.exports.get(referencedName)) return element;
      var queuedExport = queuedExports.get(referencedName);
      if (!queuedExport) return null;
      if (queuedExport.isReExport) {
        referencedName = queuedExport.referencedName;
        continue;
      }
      return this.elements.get(queuedExport.referencedName);
    } while (true);
  }

  private checkInternalDecorators(
    element: Element,
    declaration: DeclarationStatement
  ): void {
    var isBuiltin: bool = hasDecorator("builtin", declaration.decorators);
    if (isBuiltin) element.set(ElementFlags.BUILTIN);
    if (
      hasDecorator("global", declaration.decorators) ||
      (
        declaration.range.source.isLibrary &&
        element.is(ElementFlags.EXPORTED) &&
        (
          assert(declaration.parent).kind == NodeKind.SOURCE ||
          (
            <Node>declaration.parent).kind == NodeKind.VARIABLE &&
            assert((<Node>declaration.parent).parent).kind == NodeKind.SOURCE
          )
        )
    ) {
      element.set(ElementFlags.GLOBAL);
      if (this.elements.has(declaration.name.text)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, element.internalName
        );
      } else {
        this.elements.set(declaration.name.text, element);
        this.exports.set(declaration.name.text, element);
        if (isBuiltin) {
          element.internalName = declaration.name.text;
        }
      }
    }
  }

  private initializeClass(
    declaration: ClassDeclaration,
    queuedDerivedClasses: ClassPrototype[],
    namespace: Element | null = null
  ): void {
    var internalName = declaration.fileLevelInternalName;
    if (this.elements.has(internalName)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, internalName
      );
      return;
    }
    var prototype = new ClassPrototype(
      this,
      declaration.name.text,
      internalName,
      declaration
    );
    prototype.namespace = namespace;
    this.elements.set(internalName, prototype);

    this.checkInternalDecorators(prototype, declaration);

    if (hasDecorator("unmanaged", declaration.decorators)) {
      prototype.isUnmanaged = true;
      if (declaration.implementsTypes && declaration.implementsTypes.length) {
        this.error(
          DiagnosticCode.Structs_cannot_implement_interfaces,
          Range.join(
            declaration.name.range,
            declaration.implementsTypes[declaration.implementsTypes.length - 1].range
          )
        );
      }
    } else if (declaration.implementsTypes.length) {
      throw new Error("not implemented");
    }

    // remember classes that extend another one
    if (declaration.extendsType) {
      queuedDerivedClasses.push(prototype);
    }

    // add as namespace member if applicable
    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(declaration.name.text)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        namespace.members = new Map();
      }
      namespace.members.set(declaration.name.text, prototype);

    // otherwise add to file-level exports if exported
    } else if (prototype.is(ElementFlags.EXPORTED)) {
      if (this.exports.has(internalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          declaration.name.range, internalName
        );
        return;
      }
      this.exports.set(internalName, prototype);
    }

    // initialize members
    var memberDeclarations = declaration.members;
    for (let i = 0, k = memberDeclarations.length; i < k; ++i) {
      let memberDeclaration = memberDeclarations[i];
      switch (memberDeclaration.kind) {

        case NodeKind.FIELDDECLARATION:
          this.initializeField(<FieldDeclaration>memberDeclaration, prototype);
          break;

        case NodeKind.METHODDECLARATION:
          let isGetter = hasModifier(
            ModifierKind.GET,
            memberDeclaration.modifiers
          );
          if (
            isGetter ||
            hasModifier(ModifierKind.SET, memberDeclaration.modifiers)
          ) {
            this.initializeAccessor(
              <MethodDeclaration>memberDeclaration,
              prototype,
              isGetter
            );
          } else {
            this.initializeMethod(
              <MethodDeclaration>memberDeclaration,
              prototype
            );
          }
          break;

        default:
          throw new Error("class member expected");
      }
    }

    // check and possibly register string type
    if (
      prototype.is(ElementFlags.GLOBAL) &&
      declaration.name.text == "String"
    ) {
      if (!this.types.has("string")) {
        let instance = prototype.resolve(null);
        if (instance) this.types.set("string", instance.type);
      } else {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, declaration.programLevelInternalName
        );
      }
    }
  }

  private initializeField(
    declaration: FieldDeclaration,
    classPrototype: ClassPrototype
  ): void {
    var name = declaration.name.text;
    var internalName = declaration.fileLevelInternalName;

    // static fields become global variables
    if (hasModifier(ModifierKind.STATIC, declaration.modifiers)) {
      if (this.elements.has(internalName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, internalName
        );
        return;
      }
      if (classPrototype.members) {
        if (classPrototype.members.has(name)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        classPrototype.members = new Map();
      }
      var staticField = new Global(
        this, name, internalName, declaration, Type.void
      );
      classPrototype.members.set(name, staticField);
      this.elements.set(internalName, staticField);

    // instance fields are remembered until resolved
    } else {
      if (classPrototype.instanceMembers) {
        if (classPrototype.instanceMembers.has(name)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        classPrototype.instanceMembers = new Map();
      }
      var instanceField = new FieldPrototype(
        classPrototype,
        name, internalName,
        declaration
      );
      classPrototype.instanceMembers.set(name, instanceField);
    }
  }

  private initializeMethod(
    declaration: MethodDeclaration,
    classPrototype: ClassPrototype
  ): void {
    var name = declaration.name.text;
    var internalName = declaration.fileLevelInternalName;
    var prototype: FunctionPrototype | null = null;

    // static methods become global functions
    if (hasModifier(ModifierKind.STATIC, declaration.modifiers)) {
      assert(declaration.name.kind != NodeKind.CONSTRUCTOR);

      if (this.elements.has(internalName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0, declaration.name.range,
          internalName
        );
        return;
      }
      if (classPrototype.members) {
        if (classPrototype.members.has(name)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        classPrototype.members = new Map();
      }
      prototype = new FunctionPrototype(
        this,
        name, internalName,
        declaration,
        null
      );
      classPrototype.members.set(name, prototype);
      this.elements.set(internalName, prototype);

    // instance methods are remembered until resolved
    } else {
      if (classPrototype.instanceMembers) {
        if (classPrototype.instanceMembers.has(name)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        classPrototype.instanceMembers = new Map();
      }
      prototype = new FunctionPrototype(
        this,
        name, internalName,
        declaration,
        classPrototype
      );
      // if (classPrototype.isUnmanaged && instancePrototype.isAbstract) {
      //   this.error( Unmanaged classes cannot declare abstract methods. );
      // }
      if (declaration.name.kind == NodeKind.CONSTRUCTOR) {
        if (classPrototype.constructorPrototype) {
          this.error(
            DiagnosticCode.Multiple_constructor_implementations_are_not_allowed,
            declaration.name.range
          );
        } else {
          prototype.set(ElementFlags.CONSTRUCTOR);
          classPrototype.constructorPrototype = prototype;
        }
      } else {
        classPrototype.instanceMembers.set(name, prototype);
      }
    }

    this.checkOperators(declaration.decorators, prototype, classPrototype);
  }

  private checkOperators(
    decorators: DecoratorNode[] | null,
    prototype: FunctionPrototype,
    classPrototype: ClassPrototype
  ) {
    // handle operator annotations. operators are either instance methods taking
    // a second argument of the instance's type or static methods taking two
    // arguments of the instance's type. return values vary depending on the
    // operation.
    if (decorators) {
      for (var i = 0, k = decorators.length; i < k; ++i) {
        var decorator = decorators[i];
        if (decorator.decoratorKind == DecoratorKind.OPERATOR) {
          if (!prototype) {
            this.error(
              DiagnosticCode.Operation_not_supported,
              decorator.range
            );
            continue;
          }
          var numArgs = decorator.arguments && decorator.arguments.length || 0;
          if (numArgs == 1) {
            var firstArg = (<Expression[]>decorator.arguments)[0];
            if (
              firstArg.kind == NodeKind.LITERAL &&
              (<LiteralExpression>firstArg).literalKind == LiteralKind.STRING
            ) {
              switch ((<StringLiteralExpression>firstArg).value) {

                case "[]":
                  classPrototype.fnIndexedGet = prototype.simpleName;
                  break;

                case "[]=":
                  classPrototype.fnIndexedSet = prototype.simpleName;
                  break;

                case "+":
                  classPrototype.fnConcat = prototype.simpleName;
                  break;

                case "==":
                  classPrototype.fnEquals = prototype.simpleName;
                  break;

                default:
                  this.error(
                    DiagnosticCode.Operation_not_supported,
                    firstArg.range
                  );
              }
            } else {
              this.error(
                DiagnosticCode.String_literal_expected,
                firstArg.range
              );
            }
          } else {
            this.error(
              DiagnosticCode.Expected_0_arguments_but_got_1,
              decorator.range, "1", numArgs.toString(0)
            );
          }
        } else if (decorator.decoratorKind != DecoratorKind.CUSTOM) {
          // methods support built-in @operator only
          this.error(
            DiagnosticCode.Operation_not_supported,
            decorator.range
          );
        }
      }
    }
  }

  private initializeAccessor(
    declaration: MethodDeclaration,
    classPrototype: ClassPrototype,
    isGetter: bool
  ): void {
    var propertyName = declaration.name.text;
    var internalPropertyName = declaration.fileLevelInternalName;

    var propertyElement = this.elements.get(internalPropertyName);
    if (propertyElement) {
      if (
        propertyElement.kind != ElementKind.PROPERTY ||
        (isGetter
          ? (<Property>propertyElement).getterPrototype
          : (<Property>propertyElement).setterPrototype
        )
      ) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, internalPropertyName
        );
        return;
      }
    } else {
      propertyElement = new Property(
        this,
        propertyName, internalPropertyName,
        classPrototype
      );
    }

    var name = (isGetter ? GETTER_PREFIX : SETTER_PREFIX) + propertyName;

    // static accessors become global functions
    if (hasModifier(ModifierKind.STATIC, declaration.modifiers)) {
      var staticName = classPrototype.internalName + STATIC_DELIMITER + name;
      if (this.elements.has(staticName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, staticName
        );
        return;
      }
      var staticPrototype = new FunctionPrototype(
        this,
        name, staticName,
        declaration,
        null
      );
      if (isGetter) {
        (<Property>propertyElement).getterPrototype = staticPrototype;
      } else {
        (<Property>propertyElement).setterPrototype = staticPrototype;
      }
      if (!classPrototype.members) {
        classPrototype.members = new Map();
      }
      classPrototype.members.set(propertyName, propertyElement); // check above
      this.elements.set(internalPropertyName, propertyElement);

    // instance accessors are remembered until resolved
    } else {
      var instanceName = classPrototype.internalName + INSTANCE_DELIMITER + name;
      if (classPrototype.instanceMembers) {
        if (classPrototype.instanceMembers.has(name)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalPropertyName
          );
          return;
        }
      } else {
        classPrototype.instanceMembers = new Map();
      }
      var instancePrototype = new FunctionPrototype(
        this,
        name, instanceName,
        declaration,
        classPrototype
      );
      if (isGetter) {
        (<Property>propertyElement).getterPrototype = instancePrototype;
      } else {
        (<Property>propertyElement).setterPrototype = instancePrototype;
      }
      classPrototype.instanceMembers.set(name, propertyElement);
      this.elements.set(internalPropertyName, propertyElement);
    }
  }

  private initializeEnum(
    declaration: EnumDeclaration,
    namespace: Element | null = null
  ): void {
    var internalName = declaration.fileLevelInternalName;
    if (this.elements.has(internalName)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, internalName
      );
      return;
    }
    var enm = new Enum(this, declaration.name.text, internalName, declaration);
    enm.namespace = namespace;
    this.elements.set(internalName, enm);

    this.checkInternalDecorators(enm, declaration);

    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(declaration.name.text)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        namespace.members = new Map();
      }
      namespace.members.set(declaration.name.text, enm);
    } else if (enm.is(ElementFlags.EXPORTED)) {
      if (this.exports.has(internalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          declaration.name.range, internalName
        );
        return;
      }
      this.exports.set(internalName, enm);
    }

    var values = declaration.values;
    for (var i = 0, k = values.length; i < k; ++i) {
      this.initializeEnumValue(values[i], enm);
    }
  }

  private initializeEnumValue(
    declaration: EnumValueDeclaration,
    enm: Enum
  ): void {
    var name = declaration.name.text;
    var internalName = declaration.fileLevelInternalName;
    if (enm.members) {
      if (enm.members.has(name)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, internalName
        );
        return;
      }
    } else {
      enm.members = new Map();
    }
    var value = new EnumValue(enm, this, name, internalName, declaration);
    enm.members.set(name, value);
  }

  private initializeExports(
    statement: ExportStatement,
    queuedExports: Map<string,QueuedExport>
  ): void {
    var members = statement.members;
    for (var i = 0, k = members.length; i < k; ++i) {
      this.initializeExport(members[i], statement.internalPath, queuedExports);
    }
  }

  private setExportAndCheckLibrary(
    name: string,
    element: Element,
    identifier: IdentifierExpression
  ): void {
    this.exports.set(name, element);
    if (identifier.range.source.isLibrary) { // add global alias
      if (this.elements.has(identifier.text)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          identifier.range, identifier.text
        );
      } else {
        element.internalName = identifier.text;
        this.elements.set(identifier.text, element);
      }
    }
  }

  private initializeExport(
    member: ExportMember,
    internalPath: string | null,
    queuedExports: Map<string,QueuedExport>
  ): void {
    var externalName = member.range.source.internalPath + PATH_DELIMITER + member.externalName.text;
    if (this.exports.has(externalName)) {
      this.error(
        DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
        member.externalName.range, externalName
      );
      return;
    }
    var referencedName: string;
    var referencedElement: Element | null;
    var queuedExport: QueuedExport | null;

    // export local element
    if (internalPath == null) {
      referencedName = member.range.source.internalPath + PATH_DELIMITER + member.name.text;

      // resolve right away if the element exists
      if (referencedElement = this.elements.get(referencedName)) {
        this.setExportAndCheckLibrary(
          externalName,
          referencedElement,
          member.externalName
        );
        return;
      }

      // otherwise queue it
      if (queuedExports.has(externalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          member.externalName.range, externalName
        );
        return;
      }
      queuedExport = new QueuedExport();
      queuedExport.isReExport = false;
      queuedExport.referencedName = referencedName; // -> internal name
      queuedExport.member = member;
      queuedExports.set(externalName, queuedExport);

    // export external element
    } else {
      referencedName = internalPath + PATH_DELIMITER + member.name.text;

      // resolve right away if the export exists
      referencedElement = this.elements.get(referencedName);
      if (referencedElement) {
        this.setExportAndCheckLibrary(
          externalName,
          referencedElement,
          member.externalName
        );
        return;
      }

      // walk already known queued exports
      var seen = new Set<QueuedExport>();
      while (queuedExport = queuedExports.get(referencedName)) {
        if (queuedExport.isReExport) {
          referencedElement = this.exports.get(queuedExport.referencedName);
          if (referencedElement) {
            this.setExportAndCheckLibrary(
              externalName,
              referencedElement,
              member.externalName
            );
            return;
          }
          referencedName = queuedExport.referencedName;
          if (seen.has(queuedExport)) break;
          seen.add(queuedExport);
        } else {
          referencedElement = this.elements.get(queuedExport.referencedName);
          if (referencedElement) {
            this.setExportAndCheckLibrary(
              externalName,
              referencedElement,
              member.externalName
            );
            return;
          }
          break;
        }
      }

      // otherwise queue it
      if (queuedExports.has(externalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          member.externalName.range, externalName
        );
        return;
      }
      queuedExport = new QueuedExport();
      queuedExport.isReExport = true;
      queuedExport.referencedName = referencedName; // -> export name
      queuedExport.member = member;
      queuedExports.set(externalName, queuedExport);
    }
  }

  private initializeFunction(
    declaration: FunctionDeclaration,
    namespace: Element | null = null
  ): void {
    var internalName = declaration.fileLevelInternalName;
    if (this.elements.has(internalName)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, internalName
      );
      return;
    }
    var prototype = new FunctionPrototype(
      this,
      declaration.name.text, internalName,
      declaration,
      null
    );
    prototype.namespace = namespace;
    this.elements.set(internalName, prototype);

    this.checkInternalDecorators(prototype, declaration);

    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(declaration.name.text)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        namespace.members = new Map();
      }
      namespace.members.set(declaration.name.text, prototype);
    } else if (prototype.is(ElementFlags.EXPORTED)) {
      if (this.exports.has(internalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          declaration.name.range, internalName
        );
        return;
      }
      this.exports.set(internalName, prototype);
    }
  }

  private initializeImports(
    statement: ImportStatement,
    queuedExports: Map<string,QueuedExport>,
    queuedImports: QueuedImport[]
  ): void {
    var declarations = statement.declarations;
    if (declarations) {
      for (var i = 0, k = declarations.length; i < k; ++i) {
        this.initializeImport(
          declarations[i],
          statement.internalPath,
          queuedExports, queuedImports
        );
      }
    } else if (statement.namespaceName) {
      var internalName = (
        statement.range.source.internalPath +
        PATH_DELIMITER +
        statement.namespaceName.text
      );
      if (this.elements.has(internalName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          statement.namespaceName.range,
          internalName
        );
        return;
      }
      this.error( // TODO
        DiagnosticCode.Operation_not_supported,
        statement.range
      );
    }
  }

  private initializeImport(
    declaration: ImportDeclaration,
    internalPath: string,
    queuedExports: Map<string,QueuedExport>,
    queuedImports: QueuedImport[]
  ): void {
    var internalName = declaration.fileLevelInternalName;
    if (this.elements.has(internalName)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, internalName
      );
      return;
    }

    var referencedName = internalPath + PATH_DELIMITER + declaration.externalName.text;

    // resolve right away if the exact export exists
    var element: Element | null;
    if (element = this.exports.get(referencedName)) {
      this.elements.set(internalName, element);
      return;
    }

    // otherwise queue it
    var indexPart = PATH_DELIMITER + "index";
    var queuedImport = new QueuedImport();
    queuedImport.internalName = internalName;
    if (internalPath.endsWith(indexPart)) {
      queuedImport.referencedName = referencedName; // try exact first
      queuedImport.referencedNameAlt = (
        internalPath.substring(0, internalPath.length - indexPart.length + 1) +
        declaration.externalName.text
      );
    } else {
      queuedImport.referencedName = referencedName; // try exact first
      queuedImport.referencedNameAlt = (
        internalPath +
        indexPart +
        PATH_DELIMITER +
        declaration.externalName.text
      );
    }
    queuedImport.declaration = declaration;
    queuedImports.push(queuedImport);
  }

  private initializeInterface(declaration: InterfaceDeclaration, namespace: Element | null = null): void {
    var internalName = declaration.fileLevelInternalName;
    if (this.elements.has(internalName)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, internalName
      );
      return;
    }
    var prototype = new InterfacePrototype(this, declaration.name.text, internalName, declaration);
    prototype.namespace = namespace;
    this.elements.set(internalName, prototype);

    this.checkInternalDecorators(prototype, declaration);

    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(prototype.internalName)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        namespace.members = new Map();
      }
      namespace.members.set(prototype.internalName, prototype);
    } else if (prototype.is(ElementFlags.EXPORTED)) {
      if (this.exports.has(internalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          declaration.name.range, internalName
        );
        return;
      }
      this.exports.set(internalName, prototype);
    }

    var memberDeclarations = declaration.members;
    for (var i = 0, k = memberDeclarations.length; i < k; ++i) {
      var memberDeclaration = memberDeclarations[i];
      switch (memberDeclaration.kind) {

        case NodeKind.FIELDDECLARATION:
          this.initializeField(<FieldDeclaration>memberDeclaration, prototype);
          break;

        case NodeKind.METHODDECLARATION:
          var isGetter = hasModifier(ModifierKind.GET, memberDeclaration.modifiers);
          if (isGetter || hasModifier(ModifierKind.SET, memberDeclaration.modifiers)) {
            this.initializeAccessor(<MethodDeclaration>memberDeclaration, prototype, isGetter);
          } else {
            this.initializeMethod(<MethodDeclaration>memberDeclaration, prototype);
          }
          break;

        default:
          throw new Error("interface member expected");
      }
    }
  }

  private initializeNamespace(
    declaration: NamespaceDeclaration,
    queuedExtendingClasses: ClassPrototype[],
    parentNamespace: Element | null = null
  ): void {
    var internalName = declaration.fileLevelInternalName;

    var namespace = this.elements.get(internalName);
    if (!namespace) {
      namespace = new Namespace(this, declaration.name.text, internalName, declaration);
      namespace.namespace = parentNamespace;
      this.elements.set(internalName, namespace);
      this.checkInternalDecorators(namespace, declaration);
    }

    if (parentNamespace) {
      if (parentNamespace.members) {
        if (parentNamespace.members.has(declaration.name.text)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
          return;
        }
      } else {
        parentNamespace.members = new Map();
      }
      parentNamespace.members.set(declaration.name.text, namespace);
    } else if (namespace.is(ElementFlags.EXPORTED)) {
      if (this.exports.has(internalName)) {
        this.error(
          DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0,
          declaration.name.range, internalName
        );
        return;
      }
      this.exports.set(internalName, namespace);
    }

    var members = declaration.members;
    for (var i = 0, k = members.length; i < k; ++i) {
      switch (members[i].kind) {

        case NodeKind.CLASSDECLARATION:
          this.initializeClass(<ClassDeclaration>members[i], queuedExtendingClasses, namespace);
          break;

        case NodeKind.ENUMDECLARATION:
          this.initializeEnum(<EnumDeclaration>members[i], namespace);
          break;

        case NodeKind.FUNCTIONDECLARATION:
          this.initializeFunction(<FunctionDeclaration>members[i], namespace);
          break;

        case NodeKind.INTERFACEDECLARATION:
          this.initializeInterface(<InterfaceDeclaration>members[i], namespace);
          break;

        case NodeKind.NAMESPACEDECLARATION:
          this.initializeNamespace(<NamespaceDeclaration>members[i], queuedExtendingClasses, namespace);
          break;

        case NodeKind.TYPEDECLARATION:
          // this.initializeTypeAlias(<TypeDeclaration>members[i], namespace);
          // TODO: what about namespaced types?
          this.error(
            DiagnosticCode.Operation_not_supported,
            members[i].range
          );
          break;

        case NodeKind.VARIABLE:
          this.initializeVariables(<VariableStatement>members[i], namespace);
          break;

        default:
          throw new Error("namespace member expected");
      }
    }
  }

  private initializeTypeAlias(declaration: TypeDeclaration, namespace: Element | null = null): void {
    // type aliases are program globals
    // TODO: what about namespaced types?
    var name = declaration.name.text;
    if (this.types.has(name) || this.typeAliases.has(name)) {
      this.error(
        DiagnosticCode.Duplicate_identifier_0,
        declaration.name.range, name
      );
      return;
    }
    this.typeAliases.set(name, declaration.alias);
  }

  private initializeVariables(statement: VariableStatement, namespace: Element | null = null): void {
    var declarations = statement.declarations;
    for (var i = 0, k = declarations.length; i < k; ++i) {
      var declaration = declarations[i];
      var internalName = declaration.fileLevelInternalName;
      if (this.elements.has(internalName)) {
        this.error(
          DiagnosticCode.Duplicate_identifier_0,
          declaration.name.range, internalName
        );
        continue;
      }

      var global = new Global(
        this,
        declaration.name.text,
        internalName,
        declaration,
        Type.void // resolved later on
      );
      global.namespace = namespace;
      this.elements.set(internalName, global);

      this.checkInternalDecorators(global, declaration);

      if (namespace) {
        if (namespace.members) {
          if (namespace.members.has(declaration.name.text)) {
            this.error(
              DiagnosticCode.Duplicate_identifier_0,
              declaration.name.range, internalName
            );
            continue;
          }
        } else {
          namespace.members = new Map();
        }
        namespace.members.set(declaration.name.text, global);
      } else if (global.is(ElementFlags.EXPORTED)) {
        if (this.exports.has(internalName)) {
          this.error(
            DiagnosticCode.Duplicate_identifier_0,
            declaration.name.range, internalName
          );
        } else {
          this.exports.set(internalName, global);
        }
      }
    }
  }

  /** Resolves a {@link TypeNode} to a concrete {@link Type}. */
  resolveType(
    node: TypeNode,
    contextualTypeArguments: Map<string,Type> | null = null,
    reportNotFound: bool = true
  ): Type | null {
    var globalName = node.name.text;
    var localName = node.range.source.internalPath + PATH_DELIMITER + node.name.text;

    var element: Element | null;

    // check file-global / program-global element
    if ((element = this.elements.get(localName)) || (element = this.elements.get(globalName))) {
      switch (element.kind) {
        case ElementKind.CLASS_PROTOTYPE:
          var instance = (<ClassPrototype>element).resolveUsingTypeArguments(
            node.typeArguments,
            contextualTypeArguments,
            null
          ); // reports
          return instance ? instance.type : null;
      }
    }

    // resolve parameters
    if (node.typeArguments) {
      var k = node.typeArguments.length;
      var paramTypes = new Array<Type>(k);
      for (var i = 0; i < k; ++i) {
        var paramType = this.resolveType( // reports
          node.typeArguments[i],
          contextualTypeArguments,
          reportNotFound
        );
        if (!paramType) return null;
        paramTypes[i] = paramType;
      }

      if (k) { // can't be a placeholder if it has parameters
        var instanceKey = typesToString(paramTypes);
        if (instanceKey.length) {
          localName += "<" + instanceKey + ">";
          globalName += "<" + instanceKey + ">";
        }
      } else if (contextualTypeArguments) {
        var placeholderType = contextualTypeArguments.get(globalName);
        if (placeholderType) return placeholderType;
      }
    }

    var type: Type | null;

    // check file-global / program-global type
    if ((type = this.types.get(localName)) || (type = this.types.get(globalName))) {
      return type;
    }

    // check type alias
    var alias = this.typeAliases.get(globalName);
    if (alias && (type = this.resolveType(alias, null, reportNotFound))) {
      return type;
    }

    if (reportNotFound) {
      this.error(
        DiagnosticCode.Cannot_find_name_0,
        node.name.range, globalName
      );
    }
    return null;
  }

  /** Resolves an array of type arguments to concrete types. */
  resolveTypeArguments(
    typeParameters: TypeParameterNode[],
    typeArgumentNodes: TypeNode[] | null,
    contextualTypeArguments: Map<string,Type> | null = null,
    alternativeReportNode: Node | null = null
  ): Type[] | null {
    var parameterCount = typeParameters.length;
    var argumentCount = typeArgumentNodes ? typeArgumentNodes.length : 0;
    if (parameterCount != argumentCount) {
      if (argumentCount) {
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          Range.join(
            (<TypeNode[]>typeArgumentNodes)[0].range,
            (<TypeNode[]>typeArgumentNodes)[argumentCount - 1].range
          ),
          parameterCount.toString(10), argumentCount.toString(10)
        );
      } else if (alternativeReportNode) {
        this.error(
          DiagnosticCode.Expected_0_type_arguments_but_got_1,
          alternativeReportNode.range.atEnd, parameterCount.toString(10), "0"
        );
      }
      return null;
    }
    var typeArguments = new Array<Type>(parameterCount);
    for (var i = 0; i < parameterCount; ++i) {
      var type = this.resolveType( // reports
        (<TypeNode[]>typeArgumentNodes)[i],
        contextualTypeArguments,
        true
      );
      if (!type) return null;
      // TODO: check extendsType
      typeArguments[i] = type;
    }
    return typeArguments;
  }

  /** Resolves an identifier to the element it refers to. */
  resolveIdentifier(
    identifier: IdentifierExpression,
    contextualFunction: Function | null,
    contextualEnum: Enum | null = null
  ): ResolvedElement | null {
    var name = identifier.text;

    var element: Element | null;
    var namespace: Element | null;

    // check siblings
    if (contextualEnum) {

      if (
        contextualEnum.members &&
        (element = contextualEnum.members.get(name)) &&
        element.kind == ElementKind.ENUMVALUE
      ) {
        if (!resolvedElement) resolvedElement = new ResolvedElement();
        return resolvedElement.set(element);
      }

    } else if (contextualFunction) {

      // check locals
      if (element = contextualFunction.flow.getScopedLocal(name)) {
        if (!resolvedElement) resolvedElement = new ResolvedElement();
        return resolvedElement.set(element);
      }

      // search contextual parent namespaces if applicable
      if (namespace = contextualFunction.prototype.namespace) {
        do {
          if (element = this.elements.get(namespace.internalName + STATIC_DELIMITER + name)) {
            if (!resolvedElement) resolvedElement = new ResolvedElement();
            return resolvedElement.set(element);
          }
        } while (namespace = namespace.namespace);
      }
    }

    // search current file
    if (element = this.elements.get(identifier.range.source.internalPath + PATH_DELIMITER + name)) {
      if (!resolvedElement) resolvedElement = new ResolvedElement();
      return resolvedElement.set(element);
    }

    // search global scope
    if (element = this.elements.get(name)) {
      if (!resolvedElement) resolvedElement = new ResolvedElement();
      return resolvedElement.set(element);
    }

    this.error(
      DiagnosticCode.Cannot_find_name_0,
      identifier.range, name
    );
    return null;
  }

  /** Resolves a property access to the element it refers to. */
  resolvePropertyAccess(
    propertyAccess: PropertyAccessExpression,
    contextualFunction: Function
  ): ResolvedElement | null {
    // start by resolving the lhs target (expression before the last dot)
    var targetExpression = propertyAccess.expression;
    resolvedElement = this.resolveExpression( // reports
      targetExpression,
      contextualFunction
    );
    if (!resolvedElement) return null;
    var target = resolvedElement.element;

    // at this point we know exactly what the target is, so look up the element within
    var propertyName = propertyAccess.property.text;
    var targetType: Type;
    var member: Element | null;

    // Resolve variable-likes to their class type first
    switch (target.kind) {

      case ElementKind.GLOBAL:
      case ElementKind.LOCAL:
      case ElementKind.FIELD:
        if (!(targetType = (<VariableLikeElement>target).type).classType) {
          this.error(
            DiagnosticCode.Property_0_does_not_exist_on_type_1,
            propertyAccess.property.range, propertyName, targetType.toString()
          );
          return null;
        }
        target = <Class>targetType.classType;
        break;

      case ElementKind.PROPERTY:
        var getter = assert((<Property>target).getterPrototype).resolve(); // reports
        if (!getter) return null;
        if (!(targetType = getter.signature.returnType).classType) {
          this.error(
            DiagnosticCode.Property_0_does_not_exist_on_type_1,
            propertyAccess.property.range, propertyName, targetType.toString()
          );
          return null;
        }
        target = <Class>targetType.classType;
        break;
    }

    // Look up the member within
    switch (target.kind) {

      case ElementKind.CLASS_PROTOTYPE:
      case ElementKind.CLASS:
        do {
          if (target.members && (member = target.members.get(propertyName))) {
            return resolvedElement.set(member).withTarget(target, targetExpression);
          }
          // check inherited static members on the base prototype while target is a class prototype
          if (target.kind == ElementKind.CLASS_PROTOTYPE) {
            if ((<ClassPrototype>target).basePrototype) {
              target = <ClassPrototype>(<ClassPrototype>target).basePrototype;
            } else {
              break;
            }
          // or inherited instance members on the cbase class while target is a class instance
          } else if (target.kind == ElementKind.CLASS) {
            if ((<Class>target).base) {
              target = <Class>(<Class>target).base;
            } else {
              break;
            }
          } else {
            break;
          }
        } while (true);
        break;

      default: // enums or other namespace-like elements
        if (target.members && (member = target.members.get(propertyName))) {
          return resolvedElement.set(member).withTarget(target, targetExpression);
        }
        break;
    }
    this.error(
      DiagnosticCode.Property_0_does_not_exist_on_type_1,
      propertyAccess.property.range, propertyName, target.internalName
    );
    return null;
  }

  resolveElementAccess(
    elementAccess: ElementAccessExpression,
    contextualFunction: Function
  ): ResolvedElement | null {
    // start by resolving the lhs target (expression before the last dot)
    var targetExpression = elementAccess.expression;
    resolvedElement = this.resolveExpression(
      targetExpression,
      contextualFunction
    );
    if (!resolvedElement) return null;
    var target = resolvedElement.element;
    switch (target.kind) {

      case ElementKind.GLOBAL:
      case ElementKind.LOCAL:
      case ElementKind.FIELD:
        var type = (<VariableLikeElement>target).type;
        if (type.classType) {
          var indexedGetName = (target = type.classType).prototype.fnIndexedGet;
          var indexedGet: Element | null;
          if (
            indexedGetName != null &&
            target.members &&
            (indexedGet = target.members.get(indexedGetName)) &&
            indexedGet.kind == ElementKind.FUNCTION_PROTOTYPE
          ) {
            return resolvedElement.set(indexedGet).withTarget(type.classType, targetExpression);
          }
        }
        break;
    }
    this.error(
      DiagnosticCode.Index_signature_is_missing_in_type_0,
      targetExpression.range, target.internalName
    );
    return null;
  }

  resolveExpression(
    expression: Expression,
    contextualFunction: Function
  ): ResolvedElement | null {
    var classType: Class | null;

    while (expression.kind == NodeKind.PARENTHESIZED) {
      expression = (<ParenthesizedExpression>expression).expression;
    }

    switch (expression.kind) {

      case NodeKind.ASSERTION:
        var type = this.resolveType((<AssertionExpression>expression).toType); // reports
        if (type && (classType = type.classType)) {
          if (!resolvedElement) resolvedElement = new ResolvedElement();
          return resolvedElement.set(classType);
        }
        return null;

      case NodeKind.BINARY:
        // TODO: string concatenation, mostly
        throw new Error("not implemented");

      case NodeKind.THIS: // -> Class
        if (classType = contextualFunction.instanceMethodOf) {
          if (!resolvedElement) resolvedElement = new ResolvedElement();
          return resolvedElement.set(classType);
        }
        this.error(
          DiagnosticCode._this_cannot_be_referenced_in_current_location,
          expression.range
        );
        return null;

      case NodeKind.SUPER: // -> Class
        if ((classType = contextualFunction.instanceMethodOf) && (classType = classType.base)) {
          if (!resolvedElement) resolvedElement = new ResolvedElement();
          return resolvedElement.set(classType);
        }
        this.error(
          DiagnosticCode._super_can_only_be_referenced_in_a_derived_class,
          expression.range
        );
        return null;

      case NodeKind.IDENTIFIER:
        return this.resolveIdentifier(<IdentifierExpression>expression, contextualFunction);

      case NodeKind.PROPERTYACCESS:
        return this.resolvePropertyAccess(
          <PropertyAccessExpression>expression,
          contextualFunction
        );

      case NodeKind.ELEMENTACCESS:
        return this.resolveElementAccess(
          <ElementAccessExpression>expression,
          contextualFunction
        );

      case NodeKind.CALL:
        var resolved = this.resolveExpression(
          (<CallExpression>expression).expression,
          contextualFunction
        );
        if (resolved) {
          var element = resolved.element;
          if (element && element.kind == ElementKind.FUNCTION_PROTOTYPE) {
            var instance = (<FunctionPrototype>element).resolveUsingTypeArguments(
              (<CallExpression>expression).typeArguments,
              null,
              expression
            );
            if (instance && (classType = instance.signature.returnType.classType)) {
              if (!resolvedElement) resolvedElement = new ResolvedElement();
              return resolvedElement.set(classType);
            }
          }
        }
        break;
    }
    this.error(
      DiagnosticCode.Operation_not_supported,
      expression.range
    );
    return null;
  }
}

/** Common result structure returned when calling any of the resolve functions on a {@link Program}. */
export class ResolvedElement {

  /** The target element, if a property or element access */
  target: Element | null;
  /** The target element's expression, if a property or element access. */
  targetExpression: Expression | null;
  /** The element being accessed. */
  element: Element;

  /** Clears the target and sets the resolved element. */
  set(element: Element): this {
    this.target = null;
    this.targetExpression = null;
    this.element = element;
    return this;
  }

  /** Sets the resolved target in addition to the previously set element. */
  withTarget(target: Element, targetExpression: Expression): this {
    this.target = target;
    this.targetExpression = targetExpression;
    return this;
  }

  /** Tests if the target is a valid instance target. */
  get isInstanceTarget(): bool {
    return (
      this.target != null &&
      this.target.kind == ElementKind.CLASS &&
      this.targetExpression != null
    );
  }
}

// Cached result structure instance
var resolvedElement: ResolvedElement | null;

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
  /** Has a constant value and is therefore inlined. */
  INLINED = 1 << 7,
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
  PRIVATE = 1 << 15,
  /** Is an abstract member. */
  ABSTRACT = 1 << 16,
  /** Is a constructor. */
  CONSTRUCTOR = 1 << 17,
  /** Is an unmanaged class with limited capabilites. */
  UNMANAGED = 1 << 18,
  /** Is scoped. */
  SCOPED = 1 << 19,
  /** Is the start function. */
  START = 1 << 20
}

/** Base class of all program elements. */
export abstract class Element {

  /** Specific element kind. */
  kind: ElementKind;
  /** Containing {@link Program}. */
  program: Program;
  /** Simple name. */
  simpleName: string;
  /** Internal name referring to this element. */
  internalName: string;
  /** Element flags. */
  flags: ElementFlags = ElementFlags.NONE;
  /** Namespaced member elements. */
  members: Map<string,Element> | null = null;
  /** Parent namespace, if applicable. */
  namespace: Element | null = null;

  /** Constructs a new element, linking it to its containing {@link Program}. */
  protected constructor(program: Program, simpleName: string, internalName: string) {
    this.program = program;
    this.simpleName = simpleName;
    this.internalName = internalName;
  }

  /** Tests if this element has a specific flag or flags. */
  is(flag: ElementFlags): bool { return (this.flags & flag) == flag; }

  /** Sets a specific flag or flags. */
  set(flag: ElementFlags): void { this.flags |= flag; }
}

/** A namespace. */
export class Namespace extends Element {

  // All elements have namespace semantics. This is an explicitly declared one.
  kind = ElementKind.NAMESPACE;

  /** Declaration reference. */
  declaration: NamespaceDeclaration; // more specific

  /** Constructs a new namespace. */
  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: NamespaceDeclaration
  ) {
    super(program, simpleName, internalName);
    this.declaration = declaration;
    if (this.declaration.modifiers) {
      for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
        switch (this.declaration.modifiers[i].modifierKind) {
          case ModifierKind.IMPORT: this.set(ElementFlags.IMPORTED); break;
          case ModifierKind.EXPORT: this.set(ElementFlags.EXPORTED); break;
          case ModifierKind.DECLARE: this.set(ElementFlags.DECLARED); break;
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
  declaration: EnumDeclaration;

  /** Constructs a new enum. */
  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: EnumDeclaration
  ) {
    super(program, simpleName, internalName);
    this.declaration = declaration;
    if (this.declaration.modifiers) {
      for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
        switch (this.declaration.modifiers[i].modifierKind) {
          case ModifierKind.EXPORT: this.set(ElementFlags.EXPORTED); break;
          case ModifierKind.IMPORT: this.set(ElementFlags.IMPORTED); break;
          case ModifierKind.DECLARE: this.set(ElementFlags.DECLARED); break;
          case ModifierKind.CONST: this.set(ElementFlags.CONSTANT); break;
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
  declaration: EnumValueDeclaration;
  /** Parent enum. */
  enum: Enum;
  /** Constant value, if applicable. */
  constantValue: i32 = 0;

  constructor(
    enm: Enum,
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: EnumValueDeclaration
  ) {
    super(program, simpleName, internalName);
    this.enum = enm;
    this.declaration = declaration;
  }
}

export const enum ConstantValueKind {
  NONE,
  INTEGER,
  FLOAT
}

export class VariableLikeElement extends Element {

  // kind varies

  /** Declaration reference. */
  declaration: VariableLikeDeclarationStatement;
  /** Variable type. Is {@link Type.void} for type-inferred {@link Global}s before compilation. */
  type: Type;
  /** Constant value kind. */
  constantValueKind: ConstantValueKind = ConstantValueKind.NONE;
  /** Constant integer value, if applicable. */
  constantIntegerValue: I64;
  /** Constant float value, if applicable. */
  constantFloatValue: f64;

  withConstantIntegerValue(lo: i32, hi: i32): this {
    this.constantValueKind = ConstantValueKind.INTEGER;
    this.constantIntegerValue = i64_new(lo, hi);
    this.set(ElementFlags.CONSTANT | ElementFlags.INLINED);
    return this;
  }

  withConstantFloatValue(value: f64): this {
    this.constantValueKind = ConstantValueKind.FLOAT;
    this.constantFloatValue = value;
    this.set(ElementFlags.CONSTANT | ElementFlags.INLINED);
    return this;
  }
}

/** A global variable. */
export class Global extends VariableLikeElement {

  kind = ElementKind.GLOBAL;

  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: VariableLikeDeclarationStatement,
    type: Type
  ) {
    super(program, simpleName, internalName);
    this.declaration = declaration;
    if (this.declaration.modifiers) {
      for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
        switch (this.declaration.modifiers[i].modifierKind) {

          case ModifierKind.IMPORT:
            this.set(ElementFlags.IMPORTED);
            break;

          case ModifierKind.EXPORT:
            this.set(ElementFlags.EXPORTED);
            break;

          case ModifierKind.CONST:
            this.set(ElementFlags.CONSTANT);
            break;

          case ModifierKind.LET:
            this.set(ElementFlags.SCOPED);
            break;

          case ModifierKind.DECLARE:
            this.set(ElementFlags.DECLARED);
            break;

          case ModifierKind.READONLY:
            this.set(this.declaration.initializer
              ? ElementFlags.CONSTANT | ElementFlags.READONLY
              : ElementFlags.READONLY
            );
            break;

          case ModifierKind.PUBLIC:
          case ModifierKind.PRIVATE:
          case ModifierKind.PROTECTED:
          case ModifierKind.STATIC:
            break; // static fields become globals

          default:
            throw new Error("unexpected modifier");
        }
      }
    }
    this.type = type; // resolved later if `void`
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
export class Local extends VariableLikeElement {

  kind = ElementKind.LOCAL;

  /** Local index. */
  index: i32;

  constructor(program: Program, simpleName: string, index: i32, type: Type) {
    super(program, simpleName, simpleName);
    this.index = index;
    this.type = type;
  }
}

/** A yet unresolved function prototype. */
export class FunctionPrototype extends Element {

  kind = ElementKind.FUNCTION_PROTOTYPE;

  /** Declaration reference. */
  declaration: FunctionDeclaration;
  /** If an instance method, the class prototype reference. */
  classPrototype: ClassPrototype | null;
  /** Resolved instances. */
  instances: Map<string,Function> = new Map();
  /** Class type arguments, if a partially resolved method of a generic class. Not set otherwise. */
  classTypeArguments: Type[] | null = null;

  /** Constructs a new function prototype. */
  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: FunctionDeclaration,
    classPrototype: ClassPrototype | null = null
  ) {
    super(program, simpleName, internalName);
    this.declaration = declaration;
    if (this.declaration.modifiers) {
      for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
        switch (this.declaration.modifiers[i].modifierKind) {

          case ModifierKind.IMPORT:
            this.set(ElementFlags.IMPORTED);
            break;

          case ModifierKind.EXPORT:
            this.set(ElementFlags.EXPORTED);
            break;

          case ModifierKind.DECLARE:
            this.set(ElementFlags.DECLARED);
            break;

          case ModifierKind.GET:
            this.set(ElementFlags.GETTER);
            break;

          case ModifierKind.SET:
            this.set(ElementFlags.SETTER);
            break;

          case ModifierKind.STATIC:
          case ModifierKind.ABSTRACT:
          case ModifierKind.PRIVATE:
          case ModifierKind.PROTECTED:
          case ModifierKind.PUBLIC:
            break; // already handled

          default:
            throw new Error("unexpected modifier");
        }
      }
    }
    if (this.declaration.isGeneric) {
      this.set(ElementFlags.GENERIC);
    }
    if (this.classPrototype = classPrototype) {
      this.set(ElementFlags.INSTANCE);
    }
  }

  /** Resolves this prototype to an instance using the specified concrete type arguments. */
  resolve(
    functionTypeArguments: Type[] | null = null,
    contextualTypeArguments: Map<string,Type> | null = null
  ): Function | null {
    var instanceKey = functionTypeArguments ? typesToString(functionTypeArguments) : "";
    var instance = this.instances.get(instanceKey);
    if (instance) return instance;

    var declaration = this.declaration;
    var isInstance = this.is(ElementFlags.INSTANCE);

    // inherit contextual type arguments as provided. might be be overridden.
    var inheritedTypeArguments = contextualTypeArguments;
    contextualTypeArguments = new Map();
    if (inheritedTypeArguments) {
      for (let [inheritedName, inheritedType] of inheritedTypeArguments) {
        contextualTypeArguments.set(
          inheritedName,
          inheritedType
        );
      }
    }

    // override with class type arguments if a partially resolved instance method
    var classTypeArguments = this.classTypeArguments;
    if (classTypeArguments) { // set only if partially resolved
      let classDeclaration = (<ClassPrototype>assert(this.classPrototype)).declaration;
      let classTypeParameters = classDeclaration.typeParameters;
      let numClassTypeParameters = classTypeParameters.length;
      assert(numClassTypeParameters == classTypeArguments.length);
      for (let i = 0; i < numClassTypeParameters; ++i) {
        contextualTypeArguments.set(
          classTypeParameters[i].name.text,
          classTypeArguments[i]
        );
      }
    } else {
      assert(!classTypeArguments);
    }

    // override with function specific type arguments
    var signatureNode = declaration.signature;
    var functionTypeParameters = signatureNode.typeParameters;
    var numFunctionTypeArguments: i32;
    if (functionTypeArguments && (numFunctionTypeArguments = functionTypeArguments.length)) {
      assert(functionTypeParameters && numFunctionTypeArguments == functionTypeParameters.length);
      for (let i = 0; i < numFunctionTypeArguments; ++i) {
        contextualTypeArguments.set(
          (<TypeParameterNode[]>functionTypeParameters)[i].name.text,
          functionTypeArguments[i]
        );
      }
    } else {
      assert(!functionTypeParameters || functionTypeParameters.length == 0);
    }

    // resolve class if an instance method
    var classInstance: Class | null = null;
    var thisType: Type | null = null;
    if (isInstance) {
      let classPrototype = assert(this.classPrototype);
      classInstance = classPrototype.resolve(classTypeArguments, contextualTypeArguments); // reports
      if (!classInstance) return null;
      thisType = classInstance.type;
    } else {
      assert(!this.classPrototype);
    }

    // resolve signature node
    var signatureParameters = signatureNode.parameters;
    var signatureParameterCount = signatureParameters.length;
    var parameterTypes = new Array<Type>(signatureParameterCount);
    var parameterNames = new Array<string>(signatureParameterCount);
    var requiredParameters = 0;
    for (let i = 0; i < signatureParameterCount; ++i) {
      let parameterDeclaration = signatureParameters[i];
      if (parameterDeclaration.parameterKind == ParameterKind.DEFAULT) {
        requiredParameters = i + 1;
      }
      let typeNode = assert(parameterDeclaration.type);
      let parameterType = this.program.resolveType(typeNode, contextualTypeArguments, true); // reports
      if (!parameterType) return null;
      parameterTypes[i] = parameterType;
      parameterNames[i] = parameterDeclaration.name.text;
    }

    var returnType: Type;
    if (this.is(ElementFlags.SETTER) || this.is(ElementFlags.CONSTRUCTOR)) {
      returnType = Type.void; // not annotated
    } else {
      let typeNode = assert(signatureNode.returnType);
      let type = this.program.resolveType(typeNode, contextualTypeArguments, true); // reports
      if (!type) return null;
      returnType = type;
    }

    var signature = new Signature(parameterTypes, returnType, thisType);
    signature.parameterNames = parameterNames;
    signature.requiredParameters = requiredParameters;

    var internalName = this.internalName;
    if (instanceKey.length) internalName += "<" + instanceKey + ">";
    instance = new Function(this, internalName, signature, classInstance);
    instance.contextualTypeArguments = contextualTypeArguments;
    this.instances.set(instanceKey, instance);
    return instance;
  }

  /** Resolves this prototype partially by applying the specified inherited class type arguments. */
  resolvePartial(classTypeArguments: Type[] | null): FunctionPrototype | null {
    if (!this.classPrototype) {
      throw new Error("partially resolved instance method must reference its class prototype");
    }
    if (classTypeArguments && classTypeArguments.length) {
      var partialPrototype = new FunctionPrototype(
        this.program,
        this.simpleName,
        this.internalName,
        this.declaration,
        this.classPrototype
      );
      partialPrototype.flags = this.flags;
      partialPrototype.classTypeArguments = classTypeArguments;
      return partialPrototype;
    }
    return this; // no need to clone
  }

  /** Resolves the specified type arguments prior to resolving this prototype to an instance. */
  resolveUsingTypeArguments(
    typeArgumentNodes: TypeNode[] | null,
    contextualTypeArguments: Map<string,Type> | null,
    reportNode: Node
  ): Function | null {
    var resolvedTypeArguments: Type[] | null = null;
    if (this.is(ElementFlags.GENERIC)) {
      assert(typeArgumentNodes != null && typeArgumentNodes.length != 0);
      resolvedTypeArguments = this.program.resolveTypeArguments(
        assert(this.declaration.signature.typeParameters),
        typeArgumentNodes,
        contextualTypeArguments,
        reportNode
      );
      if (!resolvedTypeArguments) return null;
    }
    return this.resolve(resolvedTypeArguments, contextualTypeArguments);
  }

  /** Resolves the type arguments to use when compiling a built-in call. Must be a built-in. */
  resolveBuiltinTypeArguments(
    typeArgumentNodes: TypeNode[] | null,
    contextualTypeArguments: Map<string,Type> | null
  ): Type[] | null {
    assert(this.is(ElementFlags.BUILTIN));
    var resolvedTypeArguments: Type[] | null = null;
    if (typeArgumentNodes) {
      var k = typeArgumentNodes.length;
      resolvedTypeArguments = new Array<Type>(k);
      for (var i = 0; i < k; ++i) {
        var resolvedType = this.program.resolveType( // reports
          typeArgumentNodes[i],
          contextualTypeArguments,
          true
        );
        if (!resolvedType) return null;
        resolvedTypeArguments[i] = resolvedType;
      }
    }
    return resolvedTypeArguments;
  }

  toString(): string { return this.simpleName; }
}

/** A resolved function. */
export class Function extends Element {

  kind = ElementKind.FUNCTION;

  /** Prototype reference. */
  prototype: FunctionPrototype;
  /** Function signature. */
  signature: Signature;
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
  /** Current control flow. */
  flow: Flow;
  /** Remembered debug locations. */
  debugLocations: Range[] | null = null;
  /** Function reference, if compiled. */
  ref: FunctionRef = 0;
  /** Function table index, if any. */
  functionTableIndex: i32 = -1;
  /** Trampoline functions for calling with omitted arguments. */
  trampolines: Map<i32,Function> | null = null;

  private nextBreakId: i32 = 0;
  private breakStack: i32[] | null = null;

  /** Constructs a new concrete function. */
  constructor(
    prototype: FunctionPrototype,
    internalName: string,
    signature: Signature,
    instanceMethodOf: Class | null = null
  ) {
    super(prototype.program, prototype.simpleName, internalName);
    this.prototype = prototype;
    this.signature = signature;
    this.instanceMethodOf = instanceMethodOf;
    this.flags = prototype.flags;
    if (!(prototype.is(ElementFlags.BUILTIN) || prototype.is(ElementFlags.DECLARED))) {
      let localIndex = 0;
      if (instanceMethodOf) {
        assert(this.is(ElementFlags.INSTANCE));
        this.locals.set(
          "this",
          new Local(
            prototype.program,
            "this",
            localIndex++,
            assert(signature.thisType)
          )
        );
        if (instanceMethodOf.contextualTypeArguments) {
          if (!this.contextualTypeArguments) {
            this.contextualTypeArguments = new Map();
          }
          for (let [inheritedName, inheritedType] of instanceMethodOf.contextualTypeArguments) {
            this.contextualTypeArguments.set(inheritedName, inheritedType);
          }
        }
      } else {
        assert(!this.is(ElementFlags.INSTANCE)); // internal error
      }
      let parameterTypes = signature.parameterTypes;
      for (let i = 0, k = parameterTypes.length; i < k; ++i) {
        let parameterType = parameterTypes[i];
        let parameterName = signature.getParameterName(i);
        this.locals.set(
          parameterName,
          new Local(
            prototype.program,
            parameterName,
            localIndex++,
            parameterType
          )
        );
      }
    }
    this.flow = Flow.create(this);
  }

  /** Adds a local of the specified type, with an optional name. */
  addLocal(type: Type, name: string | null = null): Local {
    // if it has a name, check previously as this method will throw otherwise
    var localIndex = this.signature.parameterTypes.length + this.additionalLocals.length;
    if (this.is(ElementFlags.INSTANCE)) ++localIndex;
    var local = new Local(
      this.prototype.program,
      name
        ? name
        : "var$" + localIndex.toString(10),
      localIndex,
      type
    );
    if (name) {
      if (this.locals.has(name)) throw new Error("duplicate local name");
      this.locals.set(name, local);
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
    var temps: Local[] | null;
    switch (type.toNativeType()) {
      case NativeType.I32: temps = this.tempI32s; break;
      case NativeType.I64: temps = this.tempI64s; break;
      case NativeType.F32: temps = this.tempF32s; break;
      case NativeType.F64: temps = this.tempF64s; break;
      default: throw new Error("concrete type expected");
    }
    if (temps && temps.length) {
      var ret = temps.pop();
      ret.type = type;
      return ret;
    }
    return this.addLocal(type);
  }

  /** Frees the temporary local for reuse. */
  freeTempLocal(local: Local): void {
    var temps: Local[];
    assert(local.type != null); // internal error
    switch ((<Type>local.type).toNativeType()) {
      case NativeType.I32: temps = this.tempI32s || (this.tempI32s = []); break;
      case NativeType.I64: temps = this.tempI64s || (this.tempI64s = []); break;
      case NativeType.F32: temps = this.tempF32s || (this.tempF32s = []); break;
      case NativeType.F64: temps = this.tempF64s || (this.tempF64s = []); break;
      default: throw new Error("concrete type expected");
    }
    temps.push(local);
  }

  /** Gets and immediately frees a temporary local of the specified type. */
  getAndFreeTempLocal(type: Type): Local {
    var temps: Local[];
    switch (type.toNativeType()) {
      case NativeType.I32: temps = this.tempI32s || (this.tempI32s = []); break;
      case NativeType.I64: temps = this.tempI64s || (this.tempI64s = []); break;
      case NativeType.F32: temps = this.tempF32s || (this.tempF32s = []); break;
      case NativeType.F64: temps = this.tempF64s || (this.tempF64s = []); break;
      default: throw new Error("concrete type expected");
    }
    if (temps.length > 0) {
      return temps[temps.length - 1];
    }
    var local: Local = this.addLocal(type);
    temps.push(local);
    return local;
  }

  /** Enters a(nother) break context. */
  enterBreakContext(): string {
    var id = this.nextBreakId++;
    if (!this.breakStack) {
      this.breakStack = [ id ];
    } else {
      this.breakStack.push(id);
    }
    return this.breakContext = id.toString(10);
  }

  /** Leaves the current break context. */
  leaveBreakContext(): void {
    assert(this.breakStack != null);
    var length = (<i32[]>this.breakStack).length;
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
  finalize(module: Module, ref: FunctionRef): void {
    this.ref = ref;
    assert(!this.breakStack || !this.breakStack.length); // internal error
    this.breakStack = null;
    this.breakContext = null;
    this.tempI32s = this.tempI64s = this.tempF32s = this.tempF64s = null;
    if (this.program.options.sourceMap) {
      var debugLocations = this.debugLocations;
      if (debugLocations) {
        for (var i = 0, k = debugLocations.length; i < k; ++i) {
          var debugLocation = debugLocations[i];
          module.setDebugLocation(
            ref,
            debugLocation.debugInfoRef,
            debugLocation.source.debugInfoIndex,
            debugLocation.line,
            debugLocation.column
          );
        }
      }
    }
    this.debugLocations = null;
  }

  /** Returns the TypeScript representation of this function. */
  toString(): string { return this.prototype.simpleName; }
}

/** A yet unresolved instance field prototype. */
export class FieldPrototype extends Element {

  kind = ElementKind.FIELD_PROTOTYPE;

  /** Declaration reference. */
  declaration: FieldDeclaration;
  /** Parent class prototype. */
  classPrototype: ClassPrototype;

  /** Constructs a new field prototype. */
  constructor(
    classPrototype: ClassPrototype,
    simpleName: string,
    internalName: string,
    declaration: FieldDeclaration
  ) {
    super(classPrototype.program, simpleName, internalName);
    this.classPrototype = classPrototype;
    this.declaration = declaration;
    if (this.declaration.modifiers) {
      for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
        switch (this.declaration.modifiers[i].modifierKind) {

          case ModifierKind.EXPORT:
            this.set(ElementFlags.EXPORTED);
            break;

          case ModifierKind.READONLY:
            this.set(ElementFlags.READONLY);
            break;

          case ModifierKind.PRIVATE:
          case ModifierKind.PROTECTED:
          case ModifierKind.PUBLIC:
          case ModifierKind.STATIC:
            break; // already handled

          default:
            throw new Error("unexpected modifier");
        }
      }
    }
  }

  /** Whether the field is read-only or not. */
  get isReadonly(): bool {
    return (this.flags & ElementFlags.READONLY) != 0;
  }
  set isReadonly(is: bool) {
    if (is) {
      this.flags |= ElementFlags.READONLY;
    } else {
      this.flags &= ~ElementFlags.READONLY;
    }
  }
}

/** A resolved instance field. */
export class Field extends VariableLikeElement {

  kind = ElementKind.FIELD;

  /** Field prototype reference. */
  prototype: FieldPrototype;
  /** Field memory offset, if an instance field. */
  memoryOffset: i32 = -1;

  /** Constructs a new field. */
  constructor(prototype: FieldPrototype, internalName: string, type: Type) {
    super(prototype.program, prototype.simpleName, internalName);
    this.prototype = prototype;
    this.flags = prototype.flags;
    this.type = type;
  }
}

/** A property comprised of a getter and a setter function. */
export class Property extends Element {

  kind = ElementKind.PROPERTY;

  /** Parent class prototype. */
  parent: ClassPrototype;
  /** Getter prototype. */
  getterPrototype: FunctionPrototype | null = null;
  /** Setter prototype. */
  setterPrototype: FunctionPrototype | null = null;

  /** Constructs a new property prototype. */
  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    parent: ClassPrototype
  ) {
    super(program, simpleName, internalName);
    this.parent = parent;
  }
}

/** A yet unresolved class prototype. */
export class ClassPrototype extends Element {

  kind = ElementKind.CLASS_PROTOTYPE;

  /** Declaration reference. */
  declaration: ClassDeclaration;
  /** Resolved instances. */
  instances: Map<string,Class> = new Map();
  /** Instance member prototypes. */
  instanceMembers: Map<string,Element> | null = null;
  /** Base class prototype, if applicable. */
  basePrototype: ClassPrototype | null = null; // set in Program#initialize
  /** Constructor prototype. */
  constructorPrototype: FunctionPrototype | null = null;

  /** Overloaded indexed get method, if any. */
  fnIndexedGet: string | null = null;
  /** Overloaded indexed set method, if any. */
  fnIndexedSet: string | null = null;
  /** Overloaded concatenation method, if any. */
  fnConcat: string | null = null;
  /** Overloaded equality comparison method, if any. */
  fnEquals: string | null = null;

  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: ClassDeclaration
  ) {
    super(program, simpleName, internalName);
    this.declaration = declaration;
    if (this.declaration.modifiers) {
      for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
        switch (this.declaration.modifiers[i].modifierKind) {
          case ModifierKind.IMPORT: this.set(ElementFlags.IMPORTED); break;
          case ModifierKind.EXPORT: this.set(ElementFlags.EXPORTED); break;
          case ModifierKind.DECLARE: this.set(ElementFlags.DECLARED); break;
          default: throw new Error("unexpected modifier");
        }
      }
    }
    if (this.declaration.typeParameters.length) {
      this.set(ElementFlags.GENERIC);
    }
  }

  /** Whether an unamanaged class or not. */
  get isUnmanaged(): bool {
    return (this.flags & ElementFlags.UNMANAGED) != 0;
  }
  set isUnmanaged(is: bool) {
    if (is) {
      this.flags |= ElementFlags.UNMANAGED;
    } else {
      this.flags &= ~ElementFlags.UNMANAGED;
    }
  }

  /** Resolves this prototype to an instance using the specified concrete type arguments. */
  resolve(
    typeArguments: Type[] | null,
    contextualTypeArguments: Map<string,Type> | null = null
  ): Class | null {
    var instanceKey = typeArguments ? typesToString(typeArguments) : "";
    var instance = this.instances.get(instanceKey);
    if (instance) return instance;

    // inherit contextual type arguments
    var inheritedTypeArguments = contextualTypeArguments;
    contextualTypeArguments = new Map();
    if (inheritedTypeArguments) {
      for (var [inheritedName, inheritedType] of inheritedTypeArguments) {
        contextualTypeArguments.set(inheritedName, inheritedType);
      }
    }

    var declaration = this.declaration;
    var baseClass: Class | null = null;
    if (declaration.extendsType) {
      var baseClassType = this.program.resolveType(declaration.extendsType, null); // reports
      if (!baseClassType) return null;
      if (!(baseClass = baseClassType.classType)) {
        this.program.error(
          DiagnosticCode.A_class_may_only_extend_another_class,
          declaration.extendsType.range
        );
        return null;
      }
      if (baseClass.prototype.isUnmanaged != this.isUnmanaged) {
        this.program.error(
          DiagnosticCode.Structs_cannot_extend_classes_and_vice_versa,
          Range.join(declaration.name.range, declaration.extendsType.range)
        );
        return null;
      }
    }

    // override call specific contextual type arguments if provided
    var i: i32, k: i32;
    if (typeArguments) {
      if ((k = typeArguments.length) != declaration.typeParameters.length) {
        throw new Error("type argument count mismatch");
      }
      for (i = 0; i < k; ++i) {
        contextualTypeArguments.set(declaration.typeParameters[i].name.text, typeArguments[i]);
      }
    } else if (declaration.typeParameters.length) {
      throw new Error("type argument count mismatch");
    }

    var internalName = this.internalName;
    if (instanceKey.length) {
      internalName += "<" + instanceKey + ">";
    }
    instance = new Class(this, internalName, typeArguments, baseClass);
    instance.contextualTypeArguments = contextualTypeArguments;
    this.instances.set(instanceKey, instance);

    var memoryOffset: u32 = 0;
    if (baseClass) {
      memoryOffset = baseClass.currentMemoryOffset;
      if (baseClass.members) {
        if (!instance.members) instance.members = new Map();
        for (var inheritedMember of baseClass.members.values()) {
          instance.members.set(inheritedMember.simpleName, inheritedMember);
        }
      }
    }

    if (this.constructorPrototype) {
      var partialConstructor = this.constructorPrototype.resolvePartial(typeArguments); // reports
      if (partialConstructor) {
        instance.constructorInstance = partialConstructor.resolve(); // reports
      }
      // TODO: ^ doesn't know the return type, hence returns null
    }

    if (this.instanceMembers) {
      for (var member of this.instanceMembers.values()) {
        switch (member.kind) {

          case ElementKind.FIELD_PROTOTYPE: // fields are layed out in advance
            if (!instance.members) instance.members = new Map();
            var fieldDeclaration = (<FieldPrototype>member).declaration;
            if (!fieldDeclaration.type) {
              throw new Error("type expected"); // TODO: check if parent class defines a type
            }
            var fieldType = this.program.resolveType( // reports
              fieldDeclaration.type,
              instance.contextualTypeArguments
            );
            if (fieldType) {
              var fieldInstance = new Field(<FieldPrototype>member, (<FieldPrototype>member).internalName, fieldType);
              switch (fieldType.byteSize) { // align
                case 1: break;
                case 2: if (memoryOffset & 1) ++memoryOffset; break;
                case 4: if (memoryOffset & 3) memoryOffset = (memoryOffset | 3) + 1; break;
                case 8: if (memoryOffset & 7) memoryOffset = (memoryOffset | 7) + 1; break;
                default: assert(false);
              }
              fieldInstance.memoryOffset = memoryOffset;
              memoryOffset += fieldType.byteSize;
              instance.members.set(member.simpleName, fieldInstance);
            }
            break;

          case ElementKind.FUNCTION_PROTOTYPE: // instance methods remain partially resolved prototypes until compiled
            if (!instance.members) instance.members = new Map();
            var methodPrototype = (<FunctionPrototype>member).resolvePartial(typeArguments); // reports
            if (methodPrototype) {
              instance.members.set(member.simpleName, methodPrototype);
            }
            break;

          case ElementKind.PROPERTY: // instance properties are cloned with partially resolved getters and setters
            if (!instance.members) instance.members = new Map();
            assert((<Property>member).getterPrototype);
            var instanceProperty = new Property(this.program, member.simpleName, member.internalName, this);
            instanceProperty.getterPrototype = (
              (<FunctionPrototype>(<Property>member).getterPrototype).resolvePartial(
                typeArguments
              )
            );
            if ((<Property>member).setterPrototype) {
              instanceProperty.setterPrototype = (
                (<FunctionPrototype>(<Property>member).setterPrototype).resolvePartial(
                  typeArguments
                )
              );
            }
            instance.members.set(member.simpleName, instanceProperty);
            break;

          default:
            throw new Error("instance member expected");
        }
      }
    }
    instance.currentMemoryOffset = memoryOffset; // sizeof<this>() is its byte size in memory
    return instance;
  }

  /** Resolves the specified type arguments prior to resolving this prototype to an instance. */
  resolveUsingTypeArguments(
    typeArgumentNodes: TypeNode[] | null,
    contextualTypeArguments: Map<string,Type> | null,
    alternativeReportNode: Node | null
  ): Class | null {
    var resolvedTypeArguments: Type[] | null = null;
    if (this.is(ElementFlags.GENERIC)) {
      assert(typeArgumentNodes != null && typeArgumentNodes.length != 0);
      resolvedTypeArguments = this.program.resolveTypeArguments(
        this.declaration.typeParameters,
        typeArgumentNodes,
        contextualTypeArguments,
        alternativeReportNode
      );
      if (!resolvedTypeArguments) return null;
    } else {
      assert(typeArgumentNodes == null || !typeArgumentNodes.length);
    }
    return this.resolve(resolvedTypeArguments, contextualTypeArguments);
  }

  toString(): string {
    return this.simpleName;
  }
}

/** A resolved class. */
export class Class extends Element {

  kind = ElementKind.CLASS;

  /** Prototype reference. */
  prototype: ClassPrototype;
  /** Resolved type arguments. */
  typeArguments: Type[] | null;
  /** Resolved class type. */
  type: Type;
  /** Base class, if applicable. */
  base: Class | null;
  /** Contextual type arguments for fields and methods. */
  contextualTypeArguments: Map<string,Type> | null = null;
  /** Current member memory offset. */
  currentMemoryOffset: u32 = 0;
  /** Constructor instance. */
  constructorInstance: Function | null = null;

  /** Constructs a new class. */
  constructor(
    prototype: ClassPrototype,
    internalName: string,
    typeArguments: Type[] | null = null,
    base: Class | null = null
  ) {
    super(prototype.program, prototype.simpleName, internalName);
    this.prototype = prototype;
    this.flags = prototype.flags;
    this.typeArguments = typeArguments;
    this.type = prototype.program.options.usizeType.asClass(this);
    this.base = base;

    // inherit static members and contextual type arguments from base class
    if (base) {
      if (base.contextualTypeArguments) {
        if (!this.contextualTypeArguments) this.contextualTypeArguments = new Map();
        for (var [baseName, baseType] of base.contextualTypeArguments) {
          this.contextualTypeArguments.set(baseName, baseType);
        }
      }
    }

    // apply instance-specific contextual type arguments
    var declaration = this.prototype.declaration;
    var i: i32, k: i32;
    if (declaration) { // irrelevant for built-ins
      var typeParameters = declaration.typeParameters;
      if (typeArguments) {
        if ((k = typeArguments.length) != typeParameters.length) {
          throw new Error("type argument count mismatch");
        }
        if (k) {
          if (!this.contextualTypeArguments) this.contextualTypeArguments = new Map();
          for (i = 0; i < k; ++i) {
            this.contextualTypeArguments.set(typeParameters[i].name.text, typeArguments[i]);
          }
        }
      } else if (typeParameters.length) {
        throw new Error("type argument count mismatch");
      }
    }
  }

  /** Tests if a value of this class type is assignable to a target of the specified class type. */
  isAssignableTo(target: Class): bool {
    var current: Class | null = this;
    do {
      if (current == target) {
        return true;
      }
    } while (current = current.base);
    return false;
  }

  toString(): string {
    return this.prototype.simpleName;
  }
}

/** A yet unresolved interface. */
export class InterfacePrototype extends ClassPrototype {

  kind = ElementKind.INTERFACE_PROTOTYPE;

  /** Declaration reference. */
  declaration: InterfaceDeclaration; // more specific

  /** Constructs a new interface prototype. */
  constructor(
    program: Program,
    simpleName: string,
    internalName: string,
    declaration: InterfaceDeclaration
  ) {
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
  constructor(
    prototype: InterfacePrototype,
    internalName: string,
    typeArguments: Type[] = [],
    base: Interface | null = null
  ) {
    super(prototype, internalName, typeArguments, base);
  }
}

/** Control flow flags indicating specific conditions. */
export const enum FlowFlags {
  /** No specific conditions. */
  NONE = 0,
  /** This branch always returns. */
  RETURNS = 1 << 0,
  /** This branch possibly throws. */
  POSSIBLY_THROWS = 1 << 1,
  /** This branch possible breaks. */
  POSSIBLY_BREAKS = 1 << 2,
  /** This branch possible continues. */
  POSSIBLY_CONTINUES = 1 << 3
}

/** A control flow evaluator. */
export class Flow {

  /** Parent flow. */
  parent: Flow | null;
  /** Flow flags indicating specific conditions. */
  flags: FlowFlags;
  /** Function this flow belongs to. */
  currentFunction: Function;
  /** The label we break to when encountering a continue statement. */
  continueLabel: string | null;
  /** The label we break to when encountering a break statement. */
  breakLabel: string | null;
  /** Scoped local variables. */
  scopedLocals: Map<string,Local> | null = null;

  /** Creates the parent flow of the specified function. */
  static create(currentFunction: Function): Flow {
    var parentFlow = new Flow();
    parentFlow.parent = null;
    parentFlow.flags = FlowFlags.NONE;
    parentFlow.currentFunction = currentFunction;
    parentFlow.continueLabel = null;
    parentFlow.breakLabel = null;
    return parentFlow;
  }

  private constructor() { }

  /** Tests if this flow has the specified flag or flags. */
  is(flag: FlowFlags): bool { return (this.flags & flag) == flag; }

  /** Sets the specified flag or flags. */
  set(flag: FlowFlags): void { this.flags |= flag; }

  /** Enters a new branch or scope and returns the new flow. */
  enterBranchOrScope(): Flow {
    var branchFlow = new Flow();
    branchFlow.parent = this;
    branchFlow.flags = this.flags;
    branchFlow.currentFunction = this.currentFunction;
    branchFlow.continueLabel = this.continueLabel;
    branchFlow.breakLabel = this.breakLabel;
    return branchFlow;
  }

  /** Leaves the current branch or scope and returns the parent flow. */
  leaveBranchOrScope(): Flow {
    var parent = assert(this.parent);

    // Free block-scoped locals
    if (this.scopedLocals) {
      for (var scopedLocal of this.scopedLocals.values()) {
        this.currentFunction.freeTempLocal(scopedLocal);
      }
      this.scopedLocals = null;
    }

    // Propagate flags to parent
    if (this.is(FlowFlags.POSSIBLY_THROWS)) {
      parent.set(FlowFlags.POSSIBLY_THROWS);
    }
    if (this.is(FlowFlags.POSSIBLY_BREAKS) && parent.breakLabel == this.breakLabel) {
      parent.set(FlowFlags.POSSIBLY_BREAKS);
    }
    if (this.is(FlowFlags.POSSIBLY_CONTINUES) && parent.continueLabel == this.continueLabel) {
      parent.set(FlowFlags.POSSIBLY_CONTINUES);
    }

    return parent;
  }

  /** Adds a new scoped local of the specified name. */
  addScopedLocal(name: string, type: Type, reportNode: Node): void {
    var scopedLocal = this.currentFunction.getTempLocal(type);
    if (!this.scopedLocals) this.scopedLocals = new Map();
    else if (this.scopedLocals.has(name)) {
      this.currentFunction.program.error(
        DiagnosticCode.Duplicate_identifier_0,
        reportNode.range
      );
      return;
    }
    this.scopedLocals.set(name, scopedLocal);
  }

  /** Gets the local of the specified name in the current scope. */
  getScopedLocal(name: string): Local | null {
    var local: Local | null;
    var current: Flow | null = this;
    do {
      if (current.scopedLocals && (local = current.scopedLocals.get(name))) {
        return local;
      }
    } while (current = current.parent);
    return this.currentFunction.locals.get(name);
  }

  /** Finalizes this flow. Must be the topmost parent flow of the function. */
  finalize(): bool {
    assert(this.parent == null, "must be the topmost parent flow");
    this.continueLabel = null;
    this.breakLabel = null;
    return this.is(FlowFlags.RETURNS);
  }
}
