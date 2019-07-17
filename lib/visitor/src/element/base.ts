import {
  ElementVisitor as IVisitor,
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

import { Visitor, AbstractVisitor } from "../visitor";

interface ElementVisitor extends Visitor<Element>, IVisitor {

}

export class BaseElementVisitor extends AbstractVisitor<Element> implements ElementVisitor {
  visitFile(node: File): void {
    this.visit(node.members);
  }

  // visit(element: Element | Element[] | null ): void {
  //   if (element) {
  //     if (element instanceof Element) {
  //       element.visit(this);
  //     }else {
  //       element.map(this.visit);
  //     }
  //   }
  // }

  // visitMemebers(map: Map<any, Element> | null): void {
  //   if (map) {
  //     for (let element of map.values()) {
  //       element.visit(this);
  //     }
  //   }
  // }

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
  visitNamespace(node: Namespace): void {
    this.visit(node.members);
  }
  visitEnum(node: Enum): void {
    this.visit(node.members);
  }
  visitEnumValue(node: EnumValue): void {}
  visitGlobal(node: Global): void {

  }
  visitLocal(node: Local): void {}
  visitFunctionPrototype(node: FunctionPrototype): void {
    if (node.parent instanceof Function){
      node.parent.visit(this)
    }else {
      this.visit(node.members);
    }
  }
  visitFunction(node: Function): void {
    this.visit(node.members);
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
      this.visit(node.instanceMembers);
    }
  }
  visitClass(node: Class): void {
    this.visit(node.members);
  }
  visitInterfacePrototype(node: InterfacePrototype): void {}
  visitInterface(node: Interface): void {
    this.visit(node.prototype.instanceMembers);
  }
}
