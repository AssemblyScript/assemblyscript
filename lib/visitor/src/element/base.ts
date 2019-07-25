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
  Element,
  Node,
  NodeKind,
  ElementKind
} from "assemblyscript";

import { Visitor, AbstractVisitor, Collection } from "../visitor";
import { ASTVisitor } from "../ast/index";
import { DeclarationStatement } from 'assemblyscript';
import { DeclaredElement } from 'assemblyscript';

interface ElementVisitor extends Visitor<Element>, IVisitor {}

export class BaseElementVisitor extends AbstractVisitor<Element>
  implements ElementVisitor {
  astVisitor: ASTVisitor;
  
  visitFile(node: File): void {
    console.log(node.name + "-----")
    let declares: DeclarationStatement[];
    debugger;
    declares = node.source.statements.filter(s => s instanceof DeclarationStatement) as DeclarationStatement[];
    this.visit(declares.map(stmt => node.program.elementsByDeclaration.get(stmt)) as DeclaredElement[]);
    // this.visit(node.members);
    // this.visit(node.program.elementsByName);
    debugger;
  }



  visitNode(node: Collection<Node>): void {
    this.astVisitor.visit(node);
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
      if (!file.name.startsWith("~lib"))
      if (file.members) {
        for (let element of file.members.values()) {
          if (element.kind === ElementKind.INTERFACE 
            || element.kind === ElementKind.INTERFACE_PROTOTYPE ) {
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
  visitGlobal(node: Global): void {}
  visitLocal(node: Local): void {}
  visitFunctionPrototype(node: FunctionPrototype): void {
    if (node.parent instanceof Function) {
      node.parent.visit(this);
    } else {
      this.visit(node.members);
    }
  }
  visitFunction(node: Function): void {
    this.visit(node.members);
  }
  visitFunctionTarget(node: FunctionTarget): void {}
  visitFieldPrototype(node: FieldPrototype): void {
    if (node.parent instanceof Field) {
      node.parent.visit(this);
    }
  }
  visitField(node: Field): void {}
  visitPropertyPrototype(node: PropertyPrototype): void {
    if (node.parent instanceof Property) {
      node.parent.visit(this);
    } else {
      this.visit(node.getterPrototype);
      this.visit(node.setterPrototype);
    }
  }
  visitProperty(node: Property): void {
    this.visit(node.getterInstance);
    this.visit(node.setterInstance);
  }
  visitClassPrototype(node: ClassPrototype): void {
    if (node.parent instanceof Class) {
      node.parent.visit(this);
    } else {
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
