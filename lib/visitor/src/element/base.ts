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

  visit(element: Element | null): void {
    if (element) {
      element.visit(this);
    }
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
  visitEnum(node: Enum): void {
    this.visitMemebers(node.members);
  }
  visitEnumValue(node: EnumValue): void {}
  visitGlobal(node: Global): void {

  }
  visitLocal(node: Local): void {}
  visitFunctionPrototype(node: FunctionPrototype): void {
    if (node.parent instanceof Function){
      node.parent.visit(this)
    }else {
      this.visitMemebers(node.members);
    }
  }
  visitFunction(node: Function): void {
    this.visitMemebers(node.members);
  }
  visitFunctionTarget(node: FunctionTarget): void {}
  visitFieldPrototype(node: FieldPrototype): void {
    if (node.parent instanceof Field){
      node.parent.visit(this);
    }
  }
  visitField(node: Field): void {}
  visitPropertyPrototype(node: PropertyPrototype): void {
    if (node.parent instanceof Property){
      node.parent.visit(this);
    }else {
      this.visit(node.getterPrototype);
      this.visit(node.setterPrototype);
    } 
  }
  visitProperty(node: Property): void {
    this.visit(node.getterInstance);
    this.visit(node.setterInstance);
  }
  visitClassPrototype(node: ClassPrototype): void {
    if (node.parent instanceof Class){
      node.parent.visit(this);
    }else {
      this.visitMemebers(node.instanceMembers);
    }
  }
  visitClass(node: Class): void {
    this.visitMemebers(node.members);
  }
  visitInterfacePrototype(node: InterfacePrototype): void {}
  visitInterface(node: Interface): void {
    this.visitMemebers(node.prototype.instanceMembers);
  }
}
