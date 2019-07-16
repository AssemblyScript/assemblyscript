import {
  ElementVisitor,
  File,
  TypeDefinition,
  Namespace,
  Enum,
  EnumValue,
  Global,
  Local,
  FunctionPrototype,
  Function,
  FunctionTarget,
  FieldPrototype,
  Field,
  PropertyPrototype,
  Property,
  ClassPrototype,
  Class,
  InterfacePrototype,
  Interface,
  Element
} from "assemblyscript";

export class BaseElementVisitor implements ElementVisitor {
  visitFile(node: File): void {
    node.startFunction.visit(this);
  }
  visitMemebers(map: Map<any, Element> | null): void {
    if (map) {
      for (let element of map.values()) {
        element.visit(this);
      }
    }
  }

  visitInterfaces(files: Iterable<File>): void {
    for (let file of files) {
      if (file.members) {
        for (let element of file.members) {
          if (element instanceof InterfacePrototype) {
            element.visit(this);
          }
        }
      }
    }
  }

  visitTypeDefinition(node: TypeDefinition): void {}
  visitNamespace(node: Namespace): void {}
  visitEnum(node: Enum): void {}
  visitEnumValue(node: EnumValue): void {}
  visitGlobal(node: Global): void {}
  visitLocal(node: Local): void {}
  visitFunctionPrototype(node: FunctionPrototype): void {}
  visitFunction(node: Function): void {}
  visitFunctionTarget(node: FunctionTarget): void {}
  visitFieldPrototype(node: FieldPrototype): void {}
  visitField(node: Field): void {}
  visitPropertyPrototype(node: PropertyPrototype): void {}
  visitProperty(node: Property): void {}
  visitClassPrototype(node: ClassPrototype): void {}
  visitClass(node: Class): void {}
  visitInterfacePrototype(node: InterfacePrototype): void {}
  visitInterface(node: Interface): void {}
}
