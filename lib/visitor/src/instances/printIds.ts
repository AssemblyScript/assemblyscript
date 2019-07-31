import {
  ElementVisitor,
  Class,
  Compiler,
  Parser,
  Field,
  Property
} from "assemblyscript";

import { BaseElementVisitor } from "../element";

export default class PrintIDs extends BaseElementVisitor {
  seen: Set<Class> = new Set();

  start(): void {
    this.visitManagedClasses(this.files);
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
