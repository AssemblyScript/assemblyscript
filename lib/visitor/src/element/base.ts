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
  ElementKind,
  Parser,
  Compiler
} from "assemblyscript";

import { Visitor, AbstractVisitor, Collection } from "../visitor";
import { ASTVisitor } from "../ast/index";
import { DeclarationStatement } from "assemblyscript";
import { DeclaredElement } from "assemblyscript";
import { Writer } from "..";

interface ElementVisitor extends Visitor<Element>, IVisitor {}

export abstract class BaseElementVisitor extends AbstractVisitor<Element>
  implements ElementVisitor {

  astVisitor: ASTVisitor;

  constructor(public parser: Parser, public compiler: Compiler, public writer: Writer) {
    super();
  }

  get files(): Iterable<File> {
    return this.parser.program.filesByName.values();
  }

  getFunctionByName(name: string): Function {
    return this.compiler.program.instancesByName.get(name) as Function;
  }

  start(): void {
    this.visit(this.files);
  }

  visitFile(node: File): void {
    var declares: DeclarationStatement[];
    // tslint:disable-next-line: as-types
    declares = node.source.statements.filter(s => s instanceof DeclarationStatement) as DeclarationStatement[];
    this.visit(declares.map(stmt => node.program.elementsByDeclaration.get(stmt)) as DeclaredElement[]);
    // this.visit(node.members);
    // this.visit(node.program.elementsByName);
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

  visitManagedClasses(files: Iterable<File>, visitor?: (c: Class) => void): void {
    this.visitElements(files, ElementKind.CLASS, visitor);
  }

  visitInterfaces(files: Iterable<File>, visitor?: ((i: InterfacePrototype) => void)): void {
    this.visitElements(files, ElementKind.INTERFACE_PROTOTYPE , visitor);
  }

  private visitElements(files: Iterable<File>, elementKind: ElementKind, visitor?: ((e: DeclaredElement) => void)): void {
    for (let file of files) {
      if (!file.name.startsWith("~lib")) {
        if (file.members) {
          for (let element of file.members.values()) {
            if (element.kind == elementKind) {
              if (visitor) {
                visitor(element);
              } else {
                element.visit(this);
              }
            }
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
