import {
  SourceKind
} from "../ast";

import {
  CommonFlags
} from "../common";

import {
  ClassPrototype,
  Element,
  ElementKind,
  Function,
  Enum,
  Class,
  Interface,
  Field,
  File,
  FunctionPrototype,
  Global,
  Program,
  Property,
  PropertyPrototype
} from "../program";

/** Walker base class. */
export abstract class ExportsWalker {

  /** Program reference. */
  program: Program;
  /** Whether to include private members */
  includePrivate: bool;
  /** Already seen elements. */
  seen: Map<Element,string> = new Map();

  /** Constructs a new Element walker. */
  constructor(program: Program, includePrivate: bool = false) {
    this.program = program;
    this.includePrivate = includePrivate;
  }

  /** Walks all elements and calls the respective handlers. */
  walk(): void {
    // TODO: for (let file of this.program.filesByName.values()) {
    for (let _values = Map_values(this.program.filesByName), i = 0, k = _values.length; i < k; ++i) {
      let file = unchecked(_values[i]);
      if (file.source.sourceKind == SourceKind.USER_ENTRY) this.visitFile(file);
    }
  }

  /** Visits all exported elements of a file. */
  visitFile(file: File): void {
    var exports = file.exports;
    if (exports) {
      // TODO: for (let [memberName, member] of exports) {
      for (let _keys = Map_keys(exports), i = 0, k = _keys.length; i < k; ++i) {
        let memberName = unchecked(_keys[i]);
        let member = assert(exports.get(memberName));
        this.visitElement(memberName, member);
      }
    }
    var exportsStar = file.exportsStar;
    if (exportsStar) {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        let exportStar = unchecked(exportsStar[i]);
        this.visitFile(exportStar);
      }
    }
  }

  /** Visits an element.*/
  visitElement(name: string, element: Element): void {
    if (element.is(CommonFlags.PRIVATE) && !this.includePrivate) return;
    var seen = this.seen;
    if (!element.is(CommonFlags.INSTANCE) && seen.has(element)) {
      this.visitAlias(name, element, assert(seen.get(element)));
      return;
    }
    seen.set(element, name);
    switch (element.kind) {
      case ElementKind.GLOBAL: {
        if (element.is(CommonFlags.COMPILED)) this.visitGlobal(name, <Global>element);
        break;
      }
      case ElementKind.ENUM: {
        if (element.is(CommonFlags.COMPILED)) this.visitEnum(name, <Enum>element);
        break;
      }
      case ElementKind.ENUMVALUE: break; // handled by visitEnum
      case ElementKind.FUNCTION_PROTOTYPE: {
        this.visitFunctionInstances(name, <FunctionPrototype>element);
        break;
      }
      case ElementKind.CLASS_PROTOTYPE: {
        this.visitClassInstances(name, <ClassPrototype>element);
        break;
      }
      case ElementKind.FIELD: {
        let fieldInstance = <Field>element;
        if (fieldInstance.is(CommonFlags.COMPILED)) this.visitField(name, fieldInstance);
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        let propertyInstance = (<PropertyPrototype>element).instance;
        if (!propertyInstance) break;
        element = propertyInstance;
        // fall-through
      }
      case ElementKind.PROPERTY: {
        let propertyInstance = <Property>element;
        let getterInstance = propertyInstance.getterInstance;
        if (getterInstance) this.visitFunction(name, getterInstance);
        let setterInstance = propertyInstance.setterInstance;
        if (setterInstance) this.visitFunction(name, setterInstance);
        break;
      }
      case ElementKind.NAMESPACE: {
        if (hasCompiledMember(element)) this.visitNamespace(name, element);
        break;
      }
      case ElementKind.TYPEDEFINITION: break;
      default: assert(false);
    }
  }

  private visitFunctionInstances(name: string, element: FunctionPrototype): void {
    var instances = element.instances;
    if (instances) {
      // TODO: for (let instance of instances.values()) {
      for (let _values = Map_values(instances), i = 0, k = _values.length; i < k; ++i) {
        let instance = unchecked(_values[i]);
        if (instance.is(CommonFlags.COMPILED)) this.visitFunction(name, instance);
      }
    }
  }

  private visitClassInstances(name: string, element: ClassPrototype): void {
    var instances = element.instances;
    if (instances) {
      // TODO: for (let instance of instances.values()) {
      for (let _values = Map_values(instances), i = 0, k = _values.length; i < k; ++i) {
        let instance = unchecked(_values[i]);
        if (instance.is(CommonFlags.COMPILED)) this.visitClass(name, instance);
      }
    }
  }

  abstract visitGlobal(name: string, element: Global): void;
  abstract visitEnum(name: string, element: Enum): void;
  abstract visitFunction(name: string, element: Function): void;
  abstract visitClass(name: string, element: Class): void;
  abstract visitInterface(name: string, element: Interface): void;
  abstract visitField(name: string, element: Field): void;
  abstract visitNamespace(name: string, element: Element): void;
  abstract visitAlias(name: string, element: Element, originalName: string): void;
}

// Helpers

/** Tests if a namespace-like element has at least one compiled member. */
export function hasCompiledMember(element: Element): bool {
  var members = element.members;
  if (members) {
    // TODO: for (let member of members.values()) {
    for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
      let member = unchecked(_values[i]);
      switch (member.kind) {
        case ElementKind.FUNCTION_PROTOTYPE: {
          let instances = (<FunctionPrototype>member).instances;
          if (instances) {
            // TODO: for (let instance of instances.values()) {
            for (let _values = Map_values(instances), j = 0, l = _values.length; j < l; ++j) {
              let instance = unchecked(_values[j]);
              if (instance.is(CommonFlags.COMPILED)) return true;
            }
          }
          break;
        }
        case ElementKind.CLASS_PROTOTYPE: {
          let instances = (<ClassPrototype>member).instances;
          if (instances) {
            // TODO: for (let instance of instances.values()) {
            for (let _values = Map_values(instances), j = 0, l = _values.length; j < l; ++j) {
              let instance = unchecked(_values[j]);
              if (instance.is(CommonFlags.COMPILED)) return true;
            }
          }
          break;
        }
        default: {
          if (member.is(CommonFlags.COMPILED) || hasCompiledMember(member)) return true;
          break;
        }
      }
    }
  }
  return false;
}
