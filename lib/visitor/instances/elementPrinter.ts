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
  ClassDeclaration
} from "assemblyscript";
import { BaseElementVisitor } from "../src/element";
import { PrinterVisitor } from "./astPrinter";
import { ASTVisitor } from "../src/ast";

type memberid = number;
type classid = number;
type fnPtr = number;

type virtualMethod = [classid, fnPtr];

export class ProgramPrinter extends BaseElementVisitor
  implements ElementVisitor {
  astVisitor: ASTVisitor;

  constructor(private compiler: Compiler, public writer: Writer) {
    super();
    this.astVisitor = new PrinterVisitor(writer);
    
  }

  write(str: string, newline: boolean = false): void {
    this.writer.write(str + (newline ? "\n" : " "));
  }

  visitFile(node: File): void {
    this.write("visiting file ", true);
    node.startFunction.visit(this);
  }
  visitTypeDefinition(node: TypeDefinition): void {
    this.write(node.type.toString())
    this.astVisitor.visit(node.typeParameterNodes)
  }
  visitNamespace(node: Namespace): void {}
  visitEnum(node: Enum): void {}
  visitEnumValue(node: EnumValue): void {}
  visitGlobal(node: Global): void {}
  visitLocal(node: Local): void {}
  visitFunctionPrototype(node: FunctionPrototype): void {
    this.write(node.toString());
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
  visitClassPrototype(node: ClassPrototype): void {}
  visitClass(node: Class): void {
    this.write(node.name);
    // this.write(node.members!.size.toString());
    let interfaces = (<ClassDeclaration>node.declaration).implementsTypes;
    if (interfaces) {
      this.write("implements " + interfaces.join(", "));
    }
    this.write("", true);
    for (let mem of node.members!.values()) {
      mem.visit(this);
    }
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
