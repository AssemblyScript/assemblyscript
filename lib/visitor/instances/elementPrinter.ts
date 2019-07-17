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
  FunctionTarget,
  FieldPrototype,
  Field,
  PropertyPrototype,
  Property,
  ClassPrototype,
  Class,
  InterfacePrototype,
  Interface,
  Function,
  Program,
  Compiler,
  ClassDeclaration,
  Parser,
  Element
} from "assemblyscript";
import { BaseElementVisitor } from "../src/element";
import { PrinterVisitor } from "./astPrinter";
import { Collection } from "../src/visitor";

export default class ProgramPrinter extends BaseElementVisitor
  implements ElementVisitor {
  depth: number = 0;
  astVisitor: PrinterVisitor;

  constructor(
    private parser: Parser,
    private compiler: Compiler,
    public writer: Writer
  ) {
    super();
    this.astVisitor = new PrinterVisitor(writer);
    this.visit(compiler.program.filesByName);
    // debugger;
    // this.visit(compiler.program.elementsByName);
  }

  visit(node: Collection<Element>): void {
    if (node && (<any>node).name && (<Element>node).internalName.startsWith("~")) {
      return;
    }
    super.visit(node);
  }

  write(str: string, newline: boolean = false): void {
    this.writer.write("  ".repeat(this.depth) + str + (newline ? "\n" : " "));
  }

  visitFile(node: File): void {
    if (node.name.startsWith("~")) {
      return;
    }
    this.write("visiting file: " + node.name, true);
    this.depth++;
    super.visitFile(node);
    this.depth--;
  }
  visitTypeDefinition(node: TypeDefinition): void {
    this.write(node.type.toString());
    this.astVisitor.visit(node.typeParameterNodes);
  }
  visitNamespace(node: Namespace): void {
    this.write("Namespace: " + node.name, true);
    super.visitNamespace(node);
  }
  visitEnum(node: Enum): void {
    this.write("Enum: " + node, true);
    super.visitNamespace(node);
  }
  visitEnumValue(node: EnumValue): void {
    this.astVisitor.visit(node.valueNode);
  }
  visitGlobal(node: Global): void {
    this.write("Global: ");
    this.visitNode(node.declaration);
    // this.astVisitor.visit(node.identifierNode);
    // this.visitNode(node.typeNode);
    // this.visitNode(node.initializerNode);
    // this.astVisitor.write(this.astVisitor.flush(": "));
  }
  visitLocal(node: Local): void {
    this.write("Local: " + node.name, true);
    this.visitNode(node.identifierNode);
    this.visitNode(node.initializerNode);
  }
  visitFunctionPrototype(node: FunctionPrototype): void {
    this.write("Function ProtoType:" + node.signature);
    super.visitFunctionPrototype(node);
  }
  visitFunction(node: Function): void {
    this.write("visiting function: " + node.name);
    this.write(node.signature.toString(), true);
    // this.write(node.toString());
    // if(mems)
    // for (let mem of mems.values()){
    //     this.write(mem.toString(), true)
    // }
  }
  visitFunctionTarget(node: FunctionTarget): void {}
  visitFieldPrototype(node: FieldPrototype): void {}
  visitField(node: Field): void {}
  visitPropertyPrototype(node: PropertyPrototype): void {}
  visitProperty(node: Property): void {}
  visitClassPrototype(node: ClassPrototype): void {
    super.visitClassPrototype(node);
    this.write("", true);
  }
  visitClass(node: Class): void {
    this.write(node.name);
    // this.write(node.members!.size.toString());
    let interfaces = (<ClassDeclaration>node.declaration).implementsTypes;
    if (interfaces) {
      this.write("implements " + interfaces.join(", "));
    }
    this.write("", true);
    this.visit(node.members);
  }
  visitInterfacePrototype(node: InterfacePrototype): void {
    this.write("Interface Prototype: ");
    this.write(node.name, true);
    super.visitInterfacePrototype(node);
  }

  visitInterface(node: Interface): void {
    this.write("Interface: " + node.name);
    super.visitInterface(node);
    // for (let [key, value] of node.members!.entries()) {
    //   this.write(key + " " + value.toString());
    // }
  }
}
