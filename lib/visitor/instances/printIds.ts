import {
  ElementVisitor,
  Class,
  Compiler,
  Parser,
  Field,
  Property
} from "assemblyscript";

import { BaseElementVisitor } from "../src/element";

export default class PrintIDs extends BaseElementVisitor {
  seen: Set<Class> = new Set();

  constructor(
    private parser: Parser,
    private compiler: Compiler,
    public writer: Writer
  ) {
    super();
    for (let _class of compiler.program.managedClasses.values()) {
      _class.visit(this);
    }
  }

  write(str: string, newline: boolean = false): void {
    this.writer.write(str + (newline ? "\n" : " "));
  }

  visitClass(node: Class): void {
    if (this.seen.has(node)) {
      return;
    }
    this.seen.add(node);
    this.write(node.name + ": " + node.id.toString(), true);
    this.visit(node.members);
  }

  visitField(node: Field): void {
    this.write(
      "  Field:\t" + node.name + ": " + node.typeNode!.toString(),
      true
    );
  }

  visitProperty(node: Property): void {
    let typeName = node.typeNode
      ? node.typeNode.toString()
      : node.type.toString();
    this.write("  Property:\t" + node.name + ": " + typeName, true);
  }
}
