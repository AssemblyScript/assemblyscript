import {
  initialize as initializeBuiltins
} from "./builtins";

import {
  Target
} from "./compiler";

import {
  PATH_DELIMITER,
  GETTER_PREFIX,
  SETTER_PREFIX,
  STATIC_DELIMITER,
  INSTANCE_DELIMITER
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
  DecoratorKind,

  Expression,
  ElementAccessExpression,
  IdentifierExpression,
  LiteralExpression,
  LiteralKind,
  PropertyAccessExpression,
  StringLiteralExpression,
  SuperExpression,
  ThisExpression,
  CallExpression,
  NewExpression,

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

  hasDecorator,
  hasModifier,
  mangleInternalName,
  getFirstDecorator
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

const noTypesYet = new Map<string,Type>();

/** Represents an AssemblyScript program. */
export class Program extends DiagnosticEmitter {

  /** Array of source files. */
  sources: Source[];
  /** Diagnostic offset used where sequentially obtaining the next diagnostic. */
  diagnosticsOffset: i32 = 0;
  /** WebAssembly target. */
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
    this.sources = [];
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

    var queuedExports = new Map<string,QueuedExport>();
    var queuedImports = new Array<QueuedImport>();
    var queuedDerivedClasses = new Array<ClassPrototype>();

    // build initial lookup maps of internal names to declarations
    for (var i = 0, k = this.sources.length; i < k; ++i) {
      var source = this.sources[i];
      var statements = source.statements;
      for (var j = 0, l = statements.length; j < l; ++j) {
        var statement = statements[j];
        switch (statement.kind) {

          case NodeKind.CLASS:
            this.initializeClass(<ClassDeclaration>statement, queuedDerivedClasses);
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
            this.initializeNamespace(<NamespaceDeclaration>statement, queuedDerivedClasses, null);
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

    var element: Element | null;

    // queued imports should be resolvable now through traversing exports and queued exports
    for (i = 0; i < queuedImports.length;) {
      var queuedImport = queuedImports[i];
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
    for (var [exportName, queuedExport] of queuedExports) {
      var currentExport: QueuedExport | null = queuedExport; // nullable below
      do {
        if (currentExport.isReExport) {
          element = this.exports.get(currentExport.referencedName);
          if (element) {
            this.exports.set(exportName, element);
            break;
          }
          currentExport = queuedExports.get(currentExport.referencedName);
          if (!currentExport)
            this.error(DiagnosticCode.Module_0_has_no_exported_member_1, queuedExport.member.externalIdentifier.range, (<StringLiteralExpression>(<ExportStatement>queuedExport.member.parent).path).value, queuedExport.member.externalIdentifier.name);
        } else {
          element = this.elements.get(currentExport.referencedName);
          if (element)
            this.exports.set(exportName, element);
          else
            this.error(DiagnosticCode.Cannot_find_name_0, queuedExport.member.range, queuedExport.member.identifier.name);
          break;
        }
      } while (currentExport);
    }

    // resolve base prototypes of derived classes
    for (i = 0, k = queuedDerivedClasses.length; i < k; ++i) {
      var derivedDeclaration = queuedDerivedClasses[i].declaration;
      assert(derivedDeclaration != null);
      var derivedType = (<ClassDeclaration>derivedDeclaration).extendsType;
      assert(derivedType != null);
      var resolved = this.resolveIdentifier((<TypeNode>derivedType).identifier, null); // reports
      if (resolved) {
        if (resolved.element.kind != ElementKind.CLASS_PROTOTYPE) {
          this.error(DiagnosticCode.A_class_may_only_extend_another_class, (<TypeNode>derivedType).range);
          continue;
        }
        queuedDerivedClasses[i].basePrototype = <ClassPrototype>resolved.element;
      }
    }
  }

  /** Tries to resolve an import by traversing exports and queued exports. */
  private tryResolveImport(referencedName: string, queuedExports: Map<string,QueuedExport>): Element | null {
    var element: Element | null;
    do {
      element = this.exports.get(referencedName);
      if (element)
        return element;
      var queuedExport = queuedExports.get(referencedName);
      if (!queuedExport)
        return null;
      if (queuedExport.isReExport) {
        referencedName = queuedExport.referencedName;
        continue;
      }
      return this.elements.get(queuedExport.referencedName);
    } while (true);
  }

  private checkGlobalAlias(element: Element, declaration: DeclarationStatement) {
    if (hasDecorator("global", declaration.decorators) || (declaration.range.source.isStdlib && assert(declaration.parent).kind == NodeKind.SOURCE && element.isExported)) {
      if (this.elements.has(declaration.name.name))
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, element.internalName);
      else
        this.elements.set(declaration.name.name, element);
    }
  }

  private initializeClass(declaration: ClassDeclaration, queuedDerivedClasses: ClassPrototype[], namespace: Element | null = null): void {
    var internalName = declaration.internalName;
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      return;
    }
    var prototype = new ClassPrototype(this, declaration.name.name, internalName, declaration);
    prototype.namespace = namespace;
    this.elements.set(internalName, prototype);

    this.checkGlobalAlias(prototype, declaration);

    if (hasDecorator("explicit", declaration.decorators)) {
      prototype.isExplicit = true;
      if (declaration.implementsTypes && declaration.implementsTypes.length)
        this.error(DiagnosticCode.Structs_cannot_implement_interfaces, Range.join(declaration.name.range, declaration.implementsTypes[declaration.implementsTypes.length - 1].range));
    } else if (declaration.implementsTypes.length)
      throw new Error("not implemented");

    // remember classes that extend another one
    if (declaration.extendsType)
      queuedDerivedClasses.push(prototype);

    // add as namespace member if applicable
    if (namespace) {
      if (namespace.members) {
        if (namespace.members.has(declaration.name.name)) {
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
          return;
        }
      } else
        namespace.members = new Map();
      namespace.members.set(declaration.name.name, prototype);

    // otherwise add to file-level exports if exported
    } else if (prototype.isExported) {
      if (this.exports.has(internalName)) {
        this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, declaration.name.range, internalName);
        return;
      }
      this.exports.set(internalName, prototype);
    }

    // initialize members
    var memberDeclarations = declaration.members;
    for (var i = 0, k = memberDeclarations.length; i < k; ++i) {
      var memberDeclaration = memberDeclarations[i];
      switch (memberDeclaration.kind) {

        case NodeKind.FIELD:
          this.initializeField(<FieldDeclaration>memberDeclaration, prototype);
          break;

        case NodeKind.METHOD:
          var isGetter: bool;
          if ((isGetter = hasModifier(ModifierKind.GET, memberDeclaration.modifiers)) || hasModifier(ModifierKind.SET, memberDeclaration.modifiers))
            this.initializeAccessor(<MethodDeclaration>memberDeclaration, prototype, isGetter);
          else
            this.initializeMethod(<MethodDeclaration>memberDeclaration, prototype);
          break;

        default:
          throw new Error("class member expected");
      }
    }
  }

  private initializeField(declaration: FieldDeclaration, classPrototype: ClassPrototype): void {
    var name = declaration.name.name;
    var internalName = declaration.internalName;

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
      var staticField = new Global(this, name, internalName, declaration, Type.void);
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
      var instanceField = new FieldPrototype(classPrototype, name, internalName, declaration);
      classPrototype.instanceMembers.set(name, instanceField);
    }
  }

  private initializeMethod(declaration: MethodDeclaration, classPrototype: ClassPrototype): void {
    var name = declaration.name.name;
    var internalName = declaration.internalName;
    var instancePrototype: FunctionPrototype | null = null;

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
      var staticPrototype = new FunctionPrototype(this, name, internalName, declaration, null);
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
      instancePrototype = new FunctionPrototype(this, name, internalName, declaration, classPrototype);
      // if (classPrototype.isExplicit && instancePrototype.isAbstract) {
      //   this.error( Explicit classes cannot declare abstract methods. );
      // }
      classPrototype.instanceMembers.set(name, instancePrototype);
    }

    // handle operator annotations. operators are instance methods taking a second argument of the
    // instance's type. return values vary depending on the operation.
    if (declaration.decorators) {
      for (var i = 0, k = declaration.decorators.length; i < k; ++i) {
        var decorator = declaration.decorators[i];
        if (decorator.decoratorKind == DecoratorKind.OPERATOR) {
          if (!instancePrototype) {
            this.error(DiagnosticCode.Operation_not_supported, decorator.range);
            continue;
          }
          var numArgs = decorator.arguments && decorator.arguments.length || 0;
          if (numArgs == 1) {
            var firstArg = (<Expression[]>decorator.arguments)[0];
            if (firstArg.kind == NodeKind.LITERAL && (<LiteralExpression>firstArg).literalKind == LiteralKind.STRING) {
              switch ((<StringLiteralExpression>firstArg).value) {

                case "[]":
                  classPrototype.fnIndexedGet = instancePrototype.simpleName;
                  break;

                case "[]=":
                  classPrototype.fnIndexedSet = instancePrototype.simpleName;
                  break;

                case "+":
                  classPrototype.fnConcat = instancePrototype.simpleName;
                  break;

                case "==":
                  classPrototype.fnEquals = instancePrototype.simpleName;
                  break;

                default: // TBD: does it make sense to provide more, even though not JS/TS-compatible?
                  this.error(DiagnosticCode.Operation_not_supported, firstArg.range);
              }
            } else
              this.error(DiagnosticCode.String_literal_expected, firstArg.range);
          } else
            this.error(DiagnosticCode.Expected_0_arguments_but_got_1, decorator.range, "1", numArgs.toString(0));
        } else if (decorator.decoratorKind != DecoratorKind.CUSTOM) // methods support @operator only
          this.error(DiagnosticCode.Operation_not_supported, decorator.range);
      }
    }
  }

  private initializeAccessor(declaration: MethodDeclaration, classPrototype: ClassPrototype, isGetter: bool): void {
    var propertyName = declaration.name.name;
    var internalPropertyName = declaration.internalName;

    var propertyElement = this.elements.get(internalPropertyName);
    if (propertyElement) {
      if (propertyElement.kind != ElementKind.PROPERTY || (isGetter ? (<Property>propertyElement).getterPrototype : (<Property>propertyElement).setterPrototype)) {
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalPropertyName);
        return;
      }
    } else
      propertyElement = new Property(this, propertyName, internalPropertyName, classPrototype);

    var name = (isGetter ? GETTER_PREFIX : SETTER_PREFIX) + propertyName;

    // static accessors become global functions
    if (hasModifier(ModifierKind.STATIC, declaration.modifiers)) {
      var internalStaticName = classPrototype.internalName + STATIC_DELIMITER + name;
      if (this.elements.has(internalStaticName)) {
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalStaticName);
        return;
      }
      var staticPrototype = new FunctionPrototype(this, name, internalStaticName, declaration, null);
      if (isGetter)
        (<Property>propertyElement).getterPrototype = staticPrototype;
      else
        (<Property>propertyElement).setterPrototype = staticPrototype;
      if (!classPrototype.members)
        classPrototype.members = new Map();
      classPrototype.members.set(propertyName, propertyElement); // checked above
      this.elements.set(internalPropertyName, propertyElement);

    // instance accessors are remembered until resolved
    } else {
      var internalInstanceName = classPrototype.internalName + INSTANCE_DELIMITER + name;
      if (classPrototype.instanceMembers) {
        if (classPrototype.instanceMembers.has(name)) {
          this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, declaration.internalName);
          return;
        }
      } else
        classPrototype.instanceMembers = new Map();
      var instancePrototype = new FunctionPrototype(this, name, internalInstanceName, declaration, classPrototype);
      if (isGetter)
        (<Property>propertyElement).getterPrototype = instancePrototype;
      else
        (<Property>propertyElement).setterPrototype = instancePrototype;
      classPrototype.instanceMembers.set(name, propertyElement);
      this.elements.set(internalPropertyName, propertyElement);
    }
  }

  private initializeEnum(declaration: EnumDeclaration, namespace: Element | null = null): void {
    var internalName = declaration.internalName;
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      return;
    }
    var enm = new Enum(this, declaration.name.name, internalName, declaration);
    enm.namespace = namespace;
    this.elements.set(internalName, enm);

    this.checkGlobalAlias(enm, declaration);

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

    var values = declaration.values;
    for (var i = 0, k = values.length; i < k; ++i)
      this.initializeEnumValue(values[i], enm);
  }

  private initializeEnumValue(declaration: EnumValueDeclaration, enm: Enum): void {
    var name = declaration.name.name;
    var internalName = declaration.internalName;
    if (enm.members) {
      if (enm.members.has(name)) {
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
        return;
      }
    } else
      enm.members = new Map();
    var value = new EnumValue(enm, this, name, internalName, declaration);
    enm.members.set(name, value);
  }

  private initializeExports(statement: ExportStatement, queuedExports: Map<string,QueuedExport>): void {
    var members = statement.members;
    for (var i = 0, k = members.length; i < k; ++i)
      this.initializeExport(members[i], statement.internalPath, queuedExports);
  }

  private initializeExport(member: ExportMember, internalPath: string | null, queuedExports: Map<string,QueuedExport>): void {
    var externalName = member.range.source.internalPath + PATH_DELIMITER + member.externalIdentifier.name;
    if (this.exports.has(externalName)) {
      this.error(DiagnosticCode.Export_declaration_conflicts_with_exported_declaration_of_0, member.externalIdentifier.range, externalName);
      return;
    }
    var referencedName: string;
    var queuedExport: QueuedExport | null;

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
      queuedExport = new QueuedExport();
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
      var seen = new Set<QueuedExport>();
      while (queuedExport = queuedExports.get(referencedName)) {
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
      queuedExport = new QueuedExport();
      queuedExport.isReExport = true;
      queuedExport.referencedName = referencedName; // -> export name
      queuedExport.member = member;
      queuedExports.set(externalName, queuedExport);
    }
  }

  private initializeFunction(declaration: FunctionDeclaration, namespace: Element | null = null): void {
    var internalName = declaration.internalName;
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      return;
    }
    var prototype = new FunctionPrototype(this, declaration.name.name, internalName, declaration, null);
    prototype.namespace = namespace;
    this.elements.set(internalName, prototype);

    this.checkGlobalAlias(prototype, declaration);

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
    var declarations = statement.declarations;
    if (declarations) {
      for (var i = 0, k = declarations.length; i < k; ++i)
        this.initializeImport(declarations[i], statement.internalPath, queuedExports, queuedImports);
    } else if (statement.namespaceName) {
      var internalName = statement.range.source.internalPath + "/" + statement.namespaceName.name;
      if (this.elements.has(internalName)) {
        this.error(DiagnosticCode.Duplicate_identifier_0, statement.namespaceName.range, internalName);
        return;
      }
      this.error(DiagnosticCode.Operation_not_supported, statement.range); // TODO
    }
  }

  private initializeImport(declaration: ImportDeclaration, internalPath: string, queuedExports: Map<string,QueuedExport>, queuedImports: QueuedImport[]): void {
    var internalName = declaration.internalName;
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      return;
    }

    var referencedName = internalPath + PATH_DELIMITER + declaration.externalIdentifier.name;

    // resolve right away if the export exists
    if (this.exports.has(referencedName)) {
      this.elements.set(internalName, <Element>this.exports.get(referencedName));
      return;
    }

    // walk already known queued exports
    var seen = new Set<QueuedExport>();
    var queuedExport: QueuedExport | null;
    while (queuedExport = queuedExports.get(referencedName)) {
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
    var queuedImport = new QueuedImport();
    queuedImport.internalName = internalName;
    queuedImport.referencedName = referencedName;
    queuedImport.declaration = declaration;
    queuedImports.push(queuedImport);
  }

  private initializeInterface(declaration: InterfaceDeclaration, namespace: Element | null = null): void {
    var internalName = declaration.internalName;
    if (this.elements.has(internalName)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
      return;
    }
    var prototype = new InterfacePrototype(this, declaration.name.name, internalName, declaration);
    prototype.namespace = namespace;
    this.elements.set(internalName, prototype);

    this.checkGlobalAlias(prototype, declaration);

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

    var memberDeclarations = declaration.members;
    for (var i = 0, k = memberDeclarations.length; i < k; ++i) {
      var memberDeclaration = memberDeclarations[i];
      switch (memberDeclaration.kind) {

        case NodeKind.FIELD:
          this.initializeField(<FieldDeclaration>memberDeclaration, prototype);
          break;

        case NodeKind.METHOD:
          var isGetter: bool;
          if ((isGetter = hasModifier(ModifierKind.GET, memberDeclaration.modifiers)) || hasModifier(ModifierKind.SET, memberDeclaration.modifiers))
            this.initializeAccessor(<MethodDeclaration>memberDeclaration, prototype, isGetter);
          else
            this.initializeMethod(<MethodDeclaration>memberDeclaration, prototype);
          break;

        default:
          throw new Error("interface member expected");
      }
    }
  }

  private initializeNamespace(declaration: NamespaceDeclaration, queuedExtendingClasses: ClassPrototype[], parentNamespace: Element | null = null): void {
    var internalName = declaration.internalName;

    var namespace = this.elements.get(internalName);
    if (!namespace) {
      namespace = new Namespace(this, declaration.name.name, internalName, declaration);
      namespace.namespace = parentNamespace;
      this.elements.set(internalName, namespace);
      this.checkGlobalAlias(namespace, declaration);
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

    var members = declaration.members;
    for (var i = 0, k = members.length; i < k; ++i) {
      switch (members[i].kind) {

        case NodeKind.CLASS:
          this.initializeClass(<ClassDeclaration>members[i], queuedExtendingClasses, namespace);
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
          this.initializeNamespace(<NamespaceDeclaration>members[i], queuedExtendingClasses, namespace);
          break;

        case NodeKind.TYPEDECLARATION:
          // this.initializeTypeAlias(<TypeDeclaration>members[i], namespace);
          // TODO: what about namespaced types?
          this.error(DiagnosticCode.Operation_not_supported, members[i].range);
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
    var name = declaration.name.name;
    if (this.types.has(name) || this.typeAliases.has(name)) {
      this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, name);
      return;
    }
    this.typeAliases.set(name, declaration.alias);
  }

  private initializeVariables(statement: VariableStatement, namespace: Element | null = null): void {
    var declarations = statement.declarations;
    for (var i = 0, k = declarations.length; i < k; ++i) {
      var declaration = declarations[i];
      var internalName = declaration.internalName;
      if (this.elements.has(internalName)) {
        this.error(DiagnosticCode.Duplicate_identifier_0, declaration.name.range, internalName);
        continue;
      }

      var global = new Global(this, declaration.name.name, internalName, declaration, /* resolved later */ Type.void);
      global.namespace = namespace;
      this.elements.set(internalName, global);

      // differs a bit from this.checkGlobalAlias in that it checks the statement's parent
      if (hasDecorator("global", declaration.decorators) || (declaration.range.source.isStdlib && assert(statement.parent).kind == NodeKind.SOURCE && global.isExported)) {
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
    var globalName = node.identifier.name;
    var localName = node.range.source.internalPath + PATH_DELIMITER + node.identifier.name;

    var element: Element | null;

    // check file-global / program-global element
    if ((element = this.elements.get(localName)) || (element = this.elements.get(globalName))) {
      switch (element.kind) {
        case ElementKind.CLASS_PROTOTYPE:
          var instance = (<ClassPrototype>element).resolveInclTypeArguments(node.typeArguments, contextualTypeArguments, null); // reports
          return instance ? instance.type : null;
      }
    }

    // resolve parameters
    var k = node.typeArguments.length;
    var paramTypes = new Array<Type>(k);
    for (var i = 0; i < k; ++i) {
      var paramType = this.resolveType(node.typeArguments[i], contextualTypeArguments, reportNotFound);
      if (!paramType)
        return null;
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
      if (placeholderType)
        return placeholderType;
    }

    var type: Type | null;

    // check file-global / program-global type
    if ((type = this.types.get(localName)) || (type = this.types.get(globalName)))
      return type;

    // check type alias
    var alias = this.typeAliases.get(globalName);
    if (alias && (type = this.resolveType(alias, null, reportNotFound)))
      return type;

    if (reportNotFound)
      this.error(DiagnosticCode.Cannot_find_name_0, node.identifier.range, globalName);

    return null;
  }

  /** Resolves an array of type parameters to concrete types. */
  resolveTypeArguments(typeParameters: TypeParameter[], typeArgumentNodes: TypeNode[] | null, contextualTypeArguments: Map<string,Type> | null = null, alternativeReportNode: Node | null = null): Type[] | null {
    var parameterCount = typeParameters.length;
    var argumentCount = typeArgumentNodes ? typeArgumentNodes.length : 0;
    if (parameterCount != argumentCount) {
      if (argumentCount)
        this.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, Range.join((<TypeNode[]>typeArgumentNodes)[0].range, (<TypeNode[]>typeArgumentNodes)[argumentCount - 1].range), parameterCount.toString(10), argumentCount.toString(10));
      else if (alternativeReportNode)
        this.error(DiagnosticCode.Expected_0_type_arguments_but_got_1, alternativeReportNode.range.atEnd, parameterCount.toString(10), "0");
      return null;
    }
    var typeArguments = new Array<Type>(parameterCount);
    for (var i = 0; i < parameterCount; ++i) {
      var type = this.resolveType((<TypeNode[]>typeArgumentNodes)[i], contextualTypeArguments, true); // reports
      if (!type)
        return null;
      // TODO: check extendsType
      typeArguments[i] = type;
    }
    return typeArguments;
  }

  /** Resolves an identifier to the element it refers to. */
  resolveIdentifier(identifier: IdentifierExpression, contextualFunction: Function | null): ResolvedElement | null {
    var name = identifier.name;

    var element: Element | null;
    var namespace: Element | null;

    if (contextualFunction) {
      // check locals
      var local = contextualFunction.locals.get(name);
      if (local)
        return (resolvedElement || (resolvedElement = new ResolvedElement())).set(local);

      // search contextual parent namespaces if applicable
      if (namespace = contextualFunction.prototype.namespace) {
        do {
          if (element = this.elements.get(namespace.internalName + STATIC_DELIMITER + name))
          // if ((namespace.members && (element = namespace.members.get(name))) || (element = this.elements.get(namespace.internalName + STATIC_DELIMITER + name)))
            return (resolvedElement || (resolvedElement = new ResolvedElement())).set(element);
        } while (namespace = namespace.namespace);
      }
    }

    // search current file
    if (element = this.elements.get(identifier.range.source.internalPath + PATH_DELIMITER + name))
      return (resolvedElement || (resolvedElement = new ResolvedElement())).set(element);

    // search global scope
    if (element = this.elements.get(name))
      return (resolvedElement || (resolvedElement = new ResolvedElement())).set(element);

    this.error(DiagnosticCode.Cannot_find_name_0, identifier.range, name);
    return null;
  }

  /** Resolves a property access to the element it refers to. */
  resolvePropertyAccess(propertyAccess: PropertyAccessExpression, contextualFunction: Function): ResolvedElement | null {
    // start by resolving the lhs target (expression before the last dot)
    var targetExpression = propertyAccess.expression;
    if (!(resolvedElement = this.resolveExpression(targetExpression, contextualFunction)))
      return null;
    var target = resolvedElement.element;

    // at this point we know exactly what the target is, so look up the element within
    var propertyName = propertyAccess.property.name;
    var targetType: Type;
    var member: Element | null;
    switch (target.kind) {

      case ElementKind.GLOBAL:
      case ElementKind.LOCAL:
      case ElementKind.FIELD:
        if (!(targetType = (<VariableLikeElement>target).type).classType)
          break;
        target = <Class>targetType.classType;
        // fall-through

      case ElementKind.CLASS_PROTOTYPE:
      case ElementKind.CLASS:
        do {
          if (target.members && (member = target.members.get(propertyName)))
            return resolvedElement.set(member).withTarget(target, targetExpression);
          // check inherited static members on the base prototype while target is a class prototype
          if (target.kind == ElementKind.CLASS_PROTOTYPE) {
            if ((<ClassPrototype>target).basePrototype)
              target = <ClassPrototype>(<ClassPrototype>target).basePrototype;
            else
              break;
          // or inherited instance members on the cbase class while target is a class instance
          } else if (target.kind == ElementKind.CLASS) {
            if ((<Class>target).base)
              target = <Class>(<Class>target).base;
            else
              break;
          } else
            break;
        } while (true);
        break;

      default: // enums or other namespace-like elements
        if (target.members && (member = target.members.get(propertyName)))
          return resolvedElement.set(member).withTarget(target, targetExpression);
        break;
    }
    this.error(DiagnosticCode.Property_0_does_not_exist_on_type_1, propertyAccess.property.range, propertyName, target.internalName);
    return null;
  }

  resolveElementAccess(elementAccess: ElementAccessExpression, contextualFunction: Function): ResolvedElement | null {
    // start by resolving the lhs target (expression before the last dot)
    var targetExpression = elementAccess.expression;
    if (!(resolvedElement = this.resolveExpression(targetExpression, contextualFunction)))
      return null;
    var target = resolvedElement.element;
    switch (target.kind) {

      case ElementKind.GLOBAL:
      case ElementKind.LOCAL:
      case ElementKind.FIELD:
        var type = (<VariableLikeElement>target).type;
        if (type.classType) {
          var indexedGetName = (target = type.classType).prototype.fnIndexedGet;
          var indexedGet: Element | null;
          if (indexedGetName != null && target.members && (indexedGet = target.members.get(indexedGetName)) && indexedGet.kind == ElementKind.FUNCTION_PROTOTYPE)
            return resolvedElement.set(indexedGet).withTarget(type.classType, targetExpression);
        }
        break;
    }
    this.error(DiagnosticCode.Index_signature_is_missing_in_type_0, targetExpression.range, target.internalName);
    return null;
  }

  resolveExpression(expression: Expression, contextualFunction: Function): ResolvedElement | null {
    var classType: Class | null;
    switch (expression.kind) {

      case NodeKind.THIS: // -> Class
        if (classType = contextualFunction.instanceMethodOf)
          return (resolvedElement || (resolvedElement = new ResolvedElement())).set(classType);
        this.error(DiagnosticCode._this_cannot_be_referenced_in_current_location, expression.range);
        return null;

      case NodeKind.SUPER: // -> Class
        if ((classType = contextualFunction.instanceMethodOf) && (classType = classType.base))
          return (resolvedElement || (resolvedElement = new ResolvedElement())).set(classType);
        this.error(DiagnosticCode._super_can_only_be_referenced_in_a_derived_class, expression.range);
        return null;

      case NodeKind.IDENTIFIER:
        return this.resolveIdentifier(<IdentifierExpression>expression, contextualFunction);

      case NodeKind.PROPERTYACCESS:
        return this.resolvePropertyAccess(<PropertyAccessExpression>expression, contextualFunction);

      case NodeKind.ELEMENTACCESS:
        return this.resolveElementAccess(<ElementAccessExpression>expression, contextualFunction);
    }
    this.error(DiagnosticCode.Operation_not_supported, expression.range);
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
  /** A {@link PropertyContainer}. */
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
  PRIVATE = 1 << 15,
  /** Is an abstract member. */
  ABSTRACT = 1 << 16,
  /** Is an explicitly layed out and allocated class with limited capabilites. */
  EXPLICIT = 1 << 17,
  /** Has already inherited base class static members. */
  HAS_STATIC_BASE_MEMBERS = 1 << 18
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

  // All elements have namespace semantics. This is an explicitly declared one.
  kind = ElementKind.NAMESPACE;

  /** Declaration reference. */
  declaration: NamespaceDeclaration | null; // more specific

  /** Constructs a new namespace. */
  constructor(program: Program, simpleName: string, internalName: string, declaration: NamespaceDeclaration | null = null) {
    super(program, simpleName, internalName);
    if ((this.declaration = declaration) && this.declaration.modifiers) {
      for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
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
  constructor(program: Program, simpleName: string, internalName: string, declaration: EnumDeclaration | null = null) {
    super(program, simpleName, internalName);
    if ((this.declaration = declaration) && this.declaration.modifiers) {
      for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
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

  constructor(enm: Enum, program: Program, simpleName: string, internalName: string, declaration: EnumValueDeclaration | null = null) {
    super(program, simpleName, internalName);
    this.enum = enm;
    this.declaration = declaration;
  }
}

export class VariableLikeElement extends Element {

  // kind varies

  /** Declaration reference. */
  declaration: VariableLikeDeclarationStatement | null;
  /** Variable type. Is {@link Type.void} for type-inferred {@link Global}s before compilation. */
  type: Type;
  /** Constant integer value, if applicable. */
  constantIntegerValue: I64 | null = null;
  /** Constant float value, if applicable. */
  constantFloatValue: f64 = 0;

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

/** A global variable. */
export class Global extends VariableLikeElement {

  kind = ElementKind.GLOBAL;

  constructor(program: Program, simpleName: string, internalName: string, declaration: VariableLikeDeclarationStatement | null = null, type: Type) {
    super(program, simpleName, internalName);
    if (this.declaration = declaration) {
      if (this.declaration.modifiers) {
        for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
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
  declaration: FunctionDeclaration | null;
  /** If an instance method, the class prototype reference. */
  classPrototype: ClassPrototype | null;
  /** Resolved instances. */
  instances: Map<string,Function> = new Map();
  /** Class type arguments, if a partially resolved method of a generic class. */
  classTypeArguments: Type[] | null = null;

  /** Constructs a new function prototype. */
  constructor(program: Program, simpleName: string, internalName: string, declaration: FunctionDeclaration | null, classPrototype: ClassPrototype | null = null) {
    super(program, simpleName, internalName);
    if (this.declaration = declaration) {
      if (this.declaration.modifiers)
        for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
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
    if (this.classPrototype = classPrototype)
      this.isInstance = true;
  }

  /** Whether a getter function or not. */
  get isGetter(): bool { return (this.flags & ElementFlags.GETTER) != 0; }
  set isGetter(is: bool) { if (is) this.flags |= ElementFlags.GETTER; else this.flags &= ~ElementFlags.GETTER; }

  /** Whether a setter function or not. */
  get isSetter(): bool { return (this.flags & ElementFlags.SETTER) != 0; }
  set isSetter(is: bool) { if (is) this.flags |= ElementFlags.SETTER; else this.flags &= ~ElementFlags.SETTER; }

  // Whether a getter/setter function or not.
  get isAccessor(): bool { return (this.flags & (ElementFlags.GETTER | ElementFlags.SETTER)) != 0; }

  resolve(functionTypeArguments: Type[] | null = null, contextualTypeArguments: Map<string,Type> | null = null): Function | null {
    var instanceKey = functionTypeArguments ? typesToString(functionTypeArguments) : "";
    var instance = this.instances.get(instanceKey);
    if (instance)
      return instance;

    var declaration = this.declaration;
    if (!declaration)
      throw new Error("cannot resolve built-ins");

    // inherit contextual type arguments
    var inheritedTypeArguments = contextualTypeArguments;
    contextualTypeArguments = new Map();
    if (inheritedTypeArguments)
      for (var [inheritedName, inheritedType] of inheritedTypeArguments)
        contextualTypeArguments.set(inheritedName, inheritedType);

    var i: i32, k: i32;

    // inherit class type arguments if a partially resolved instance method (classTypeArguments is set)
    if (this.classTypeArguments) {
      if (!this.classPrototype)
        throw new Error("partially resolved instance method must reference its class prototype");
      var classDeclaration = (<ClassPrototype>this.classPrototype).declaration;
      if (!classDeclaration)
        throw new Error("cannot resolve built-ins");
      var classTypeParameters = classDeclaration.typeParameters;
      if ((k = this.classTypeArguments.length) != classTypeParameters.length)
        throw new Error("type argument count mismatch");
      for (i = 0; i < k; ++i)
        contextualTypeArguments.set(classTypeParameters[i].identifier.name, this.classTypeArguments[i]);
    }

    // override call specific contextual type arguments
    var functionTypeParameters = declaration.typeParameters;
    if (functionTypeArguments && (k = functionTypeArguments.length)) {
      if (k != functionTypeParameters.length)
        throw new Error("type argument count mismatch");
      for (i = 0; i < k; ++i)
        contextualTypeArguments.set(functionTypeParameters[i].identifier.name, functionTypeArguments[i]);
    }

    // resolve parameters
    // TODO: 'this' type
    k = declaration.parameters.length;
    var parameters = new Array<Parameter>(k);
    var parameterTypes = new Array<Type>(k);
    var typeNode: TypeNode | null;
    for (i = 0; i < k; ++i) {
      if (typeNode = declaration.parameters[i].type) {
        var parameterType = this.program.resolveType(typeNode, contextualTypeArguments, true); // reports
        if (parameterType) {
          parameters[i] = new Parameter(declaration.parameters[i].name.name, parameterType);
          parameterTypes[i] = parameterType;
        } else
          return null;
      } else
        return null;
    }

    // resolve return type
    // TODO: 'this' type
    var returnType: Type;
    if (this.isSetter) {
      returnType = Type.void; // not annotated
    } else {
      if (typeNode = declaration.returnType) {
        var type = this.program.resolveType(<TypeNode>typeNode, contextualTypeArguments, true); // reports
        if (type)
          returnType = type;
        else
          return null;
      } else
        return null;
    }

    var internalName = this.internalName;
    if (instanceKey.length)
      internalName += "<" + instanceKey + ">";
    var classInstance: Class | null = null;
    if (this.classPrototype) {
      classInstance = this.classPrototype.resolve(this.classTypeArguments, contextualTypeArguments); // reports
      if (!classInstance)
        return null;
    }
    instance = new Function(this, internalName, functionTypeArguments, parameters, returnType, classInstance);
    instance.contextualTypeArguments = contextualTypeArguments;
    this.instances.set(instanceKey, instance);
    return instance;
  }

  resolveInclTypeArguments(typeArgumentNodes: TypeNode[] | null, contextualTypeArguments: Map<string,Type> | null, alternativeReportNode: Node | null): Function | null {
    var resolvedTypeArguments: Type[] | null = null;
    if (this.isGeneric) {
      assert(typeArgumentNodes != null && typeArgumentNodes.length != 0);
      if (!this.declaration)
        throw new Error("cannot resolve built-ins");
      resolvedTypeArguments = this.program.resolveTypeArguments(this.declaration.typeParameters, typeArgumentNodes, contextualTypeArguments, alternativeReportNode);
      if (!resolvedTypeArguments)
        return null;
    }
    return this.resolve(resolvedTypeArguments, contextualTypeArguments);
  }

  resolvePartial(classTypeArguments: Type[] | null): FunctionPrototype | null {
    if (!this.classPrototype)
      throw new Error("partially resolved instance method must reference its class prototype");
    if (classTypeArguments && classTypeArguments.length) {
      var partialPrototype = new FunctionPrototype(this.program, this.simpleName, this.internalName, this.declaration, this.classPrototype);
      partialPrototype.flags = this.flags;
      partialPrototype.classTypeArguments = classTypeArguments;
      return partialPrototype;
    }
    return this; // no need to clone
  }

  toString(): string { return this.simpleName; }
}

/** A resolved function. */
export class Function extends Element {

  kind = ElementKind.FUNCTION;

  /** Prototype reference. */
  prototype: FunctionPrototype;
  /** Concrete type arguments. */
  typeArguments: Type[] | null;
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
  constructor(prototype: FunctionPrototype, internalName: string, typeArguments: Type[] | null, parameters: Parameter[], returnType: Type, instanceMethodOf: Class | null) {
    super(prototype.program, prototype.simpleName, internalName);
    this.prototype = prototype;
    this.typeArguments = typeArguments;
    this.parameters = parameters;
    this.returnType = returnType;
    this.instanceMethodOf = instanceMethodOf;
    this.flags = prototype.flags;
    var localIndex = 0;
    if (instanceMethodOf) {
      assert(this.isInstance); // internal error
      this.locals.set("this", new Local(prototype.program, "this", localIndex++, instanceMethodOf.type));
      if (instanceMethodOf.contextualTypeArguments) {
        if (!this.contextualTypeArguments)
          this.contextualTypeArguments = new Map();
        for (var [inheritedName, inheritedType] of instanceMethodOf.contextualTypeArguments)
          this.contextualTypeArguments.set(inheritedName, inheritedType);
      }
    } else
      assert(!this.isInstance); // internal error
    for (var i = 0, k = parameters.length; i < k; ++i) {
      var parameter = parameters[i];
      this.locals.set(parameter.name, new Local(prototype.program, parameter.name, localIndex++, parameter.type));
    }
  }

  /** Adds a local of the specified type, with an optional name. */
  addLocal(type: Type, name: string | null = null): Local {
    // if it has a name, check previously as this method will throw otherwise
    var localIndex = this.parameters.length + this.additionalLocals.length;
    if (this.isInstance) localIndex++; // plus 'this'
    var local = new Local(this.prototype.program, name ? name : "anonymous$" + localIndex.toString(10), localIndex, type);
    if (name) {
      if (this.locals.has(name))
        throw new Error("duplicate local name");
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
    return temps && temps.length > 0
      ? temps.pop()
      : this.addLocal(type);
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
    if (temps.length > 0)
      return temps[temps.length - 1];
    var local: Local = this.addLocal(type);
    temps.push(local);
    return local;
  }

  /** Enters a(nother) break context. */
  enterBreakContext(): string {
    var id = this.nextBreakId++;
    if (!this.breakStack)
      this.breakStack = [ id ];
    else
      this.breakStack.push(id);
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
  finalize(): void {
    assert(!this.breakStack || !this.breakStack.length); // internal error
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
export class FieldPrototype extends VariableLikeElement {

  kind = ElementKind.FIELD_PROTOTYPE;

  /** Parent class prototype. */
  classPrototype: ClassPrototype;

  /** Constructs a new field prototype. */
  constructor(classPrototype: ClassPrototype, simpleName: string, internalName: string, declaration: FieldDeclaration | null = null) {
    super(classPrototype.program, simpleName, internalName);
    this.classPrototype = classPrototype;
    if ((this.declaration = declaration) && this.declaration.modifiers) {
      for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
        switch (this.declaration.modifiers[i].modifierKind) {
          case ModifierKind.EXPORT: this.isExported = true; break;
          case ModifierKind.READONLY: this.isReadonly = true; break;
          case ModifierKind.PRIVATE:
          case ModifierKind.PROTECTED:
          case ModifierKind.PUBLIC:
          case ModifierKind.STATIC: break; // already handled
          default: throw new Error("unexpected modifier");
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
  /** Constant integer value, if a constant static integer. */
  constantIntegerValue: I64 | null = null;
  /** Constant float value, if a constant static float. */
  constantFloatValue: f64 = 0;
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
  constructor(program: Program, simpleName: string, internalName: string, parent: ClassPrototype) {
    super(program, simpleName, internalName);
    this.parent = parent;
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
  /** Base class prototype, if applicable. */
  basePrototype: ClassPrototype | null = null; // set in Program#initialize

  /** Overloaded indexed get method, if any. */
  fnIndexedGet: string | null = null;
  /** Overloaded indexed set method, if any. */
  fnIndexedSet: string | null = null;
  /** Overloaded concatenation method, if any. */
  fnConcat: string | null = null;
  /** Overloaded equality comparison method, if any. */
  fnEquals: string | null = null;

  constructor(program: Program, simpleName: string, internalName: string, declaration: ClassDeclaration | null = null) {
    super(program, simpleName, internalName);
    if (this.declaration = declaration) {
      if (this.declaration.modifiers) {
        for (var i = 0, k = this.declaration.modifiers.length; i < k; ++i) {
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

  /** Whether explicitly layed out and allocated */
  get isExplicit(): bool { return (this.flags & ElementFlags.EXPLICIT) != 0; }
  set isExplicit(is: bool) { if (is) this.flags |= ElementFlags.EXPLICIT; else this.flags &= ~ElementFlags.EXPLICIT; }

  resolve(typeArguments: Type[] | null, contextualTypeArguments: Map<string,Type> | null = null): Class | null {
    var instanceKey = typeArguments ? typesToString(typeArguments) : "";
    var instance = this.instances.get(instanceKey);
    if (instance)
      return instance;

    var declaration = this.declaration;
    if (!declaration)
      throw new Error("cannot resolve built-ins");

    // inherit contextual type arguments
    var inheritedTypeArguments = contextualTypeArguments;
    contextualTypeArguments = new Map();
    if (inheritedTypeArguments)
      for (var [inheritedName, inheritedType] of inheritedTypeArguments)
        contextualTypeArguments.set(inheritedName, inheritedType);

    var baseClass: Class | null = null;
    if (declaration.extendsType) {
      var baseClassType = this.program.resolveType(declaration.extendsType, null); // reports
      if (!baseClassType)
        return null;
      if (!(baseClass = baseClassType.classType)) {
        this.program.error(DiagnosticCode.A_class_may_only_extend_another_class, declaration.extendsType.range);
        return null;
      }
      if (baseClass.prototype.isExplicit != this.isExplicit) {
        this.program.error(DiagnosticCode.Structs_cannot_extend_classes_and_vice_versa, Range.join(declaration.name.range, declaration.extendsType.range));
        return null;
      }
    } else
      this.flags |= ElementFlags.HAS_STATIC_BASE_MEMBERS; // fwiw

    // override call specific contextual type arguments if provided
    var i: i32, k: i32;
    if (typeArguments) {
      if ((k = typeArguments.length) != declaration.typeParameters.length)
        throw new Error("type argument count mismatch");
      for (var i = 0; i < k; ++i)
        contextualTypeArguments.set(declaration.typeParameters[i].identifier.name, typeArguments[i]);
    } else if (declaration.typeParameters.length)
      throw new Error("type argument count mismatch");

    var internalName = this.internalName;
    if (instanceKey.length)
      internalName += "<" + instanceKey + ">";
    instance = new Class(this, internalName, typeArguments, baseClass);
    instance.contextualTypeArguments = contextualTypeArguments;
    this.instances.set(instanceKey, instance);

    var memoryOffset: u32 = 0;
    if (baseClass) {
      memoryOffset = baseClass.currentMemoryOffset;
      if (baseClass.members) {
        if (!instance.members)
          instance.members = new Map();
        for (var inheritedMember of baseClass.members.values())
          instance.members.set(inheritedMember.simpleName, inheritedMember);
      }
    }

    if (this.instanceMembers)
      for (var member of this.instanceMembers.values()) {
        switch (member.kind) {

          case ElementKind.FIELD_PROTOTYPE: // fields are layed out in advance
            if (!instance.members)
              instance.members = new Map();
            var fieldDeclaration = (<FieldPrototype>member).declaration;
            if (!fieldDeclaration)
              throw new Error("cannot resolve built-ins");
            if (!fieldDeclaration.type)
              throw new Error("type expected"); // TODO: check if parent class defines a type for it already
            var fieldType = this.program.resolveType(fieldDeclaration.type, instance.contextualTypeArguments); // reports
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
            if (!instance.members)
              instance.members = new Map();
            var methodPrototype = (<FunctionPrototype>member).resolvePartial(typeArguments); // reports
            if (methodPrototype)
              instance.members.set(member.simpleName, methodPrototype);
            break;

          case ElementKind.PROPERTY: // instance properties are just copied because there is nothing to partially-resolve
            if (!instance.members)
              instance.members = new Map();
            instance.members.set(member.simpleName, member);
            break;

          default:
            throw new Error("instance member expected: " + member.kind);
        }
      }

    instance.currentMemoryOffset = memoryOffset; // sizeof<this>() is its byte size in memory
    return instance;
  }

  resolveInclTypeArguments(typeArgumentNodes: TypeNode[] | null, contextualTypeArguments: Map<string,Type> | null, alternativeReportNode: Node | null): Class | null {
    var resolvedTypeArguments: Type[] | null = null;
    if (this.isGeneric) {
      assert(typeArgumentNodes != null && typeArgumentNodes.length != 0);
      if (!this.declaration)
        throw new Error("cannot resolve built-ins");
      resolvedTypeArguments = this.program.resolveTypeArguments(this.declaration.typeParameters, typeArgumentNodes, contextualTypeArguments, alternativeReportNode);
      if (!resolvedTypeArguments)
        return null;
    } else
      assert(typeArgumentNodes == null || !typeArgumentNodes.length);
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
  typeArguments: Type[] | null;
  /** Resolved class type. */
  type: Type;
  /** Base class, if applicable. */
  base: Class | null;
  /** Contextual type arguments for fields and methods. */
  contextualTypeArguments: Map<string,Type> | null = null;
  /** Current member memory offset. */
  currentMemoryOffset: u32 = 0;

  /** Constructs a new class. */
  constructor(prototype: ClassPrototype, internalName: string, typeArguments: Type[] | null = null, base: Class | null = null) {
    super(prototype.program, prototype.simpleName, internalName);
    this.prototype = prototype;
    this.flags = prototype.flags;
    this.typeArguments = typeArguments;
    this.type = (prototype.program.target == Target.WASM64 ? Type.usize64 : Type.usize32).asClass(this);
    this.base = base;

    // inherit static members and contextual type arguments from base class
    if (base) {
      if (base.contextualTypeArguments) {
        if (!this.contextualTypeArguments)
          this.contextualTypeArguments = new Map();
        for (var [baseName, baseType] of base.contextualTypeArguments)
          this.contextualTypeArguments.set(baseName, baseType);
      }
    }

    // apply instance-specific contextual type arguments
    var declaration = this.prototype.declaration;
    var i: i32, k: i32;
    if (declaration) { // irrelevant for built-ins
      var typeParameters = declaration.typeParameters;
      if (typeArguments) {
        if ((k = typeArguments.length) != typeParameters.length)
          throw new Error("type argument count mismatch");
        if (k) {
          if (!this.contextualTypeArguments)
            this.contextualTypeArguments = new Map();
          for (i = 0; i < k; ++i)
            this.contextualTypeArguments.set(typeParameters[i].identifier.name, typeArguments[i]);
        }
      } else if (typeParameters.length)
        throw new Error("type argument count mismatch");
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
