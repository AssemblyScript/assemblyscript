import {
  ProgramVisitor,
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
  Program
} from "../../../program";
import { Base } from ".";
import { ASTVisitor, NodeKind, Statement, ClassDeclaration } from "../../../ast";
import { PrinterVisitor } from "../ast/printer";
import { Compiler } from "../../../compiler";

interface Writer {
  write(str: any): void;
}

type memberid = number
type classid = number;
type fnPtr = number;

type virtualMethod = [classid, fnPtr];

export class ProgramPrinter extends Base implements ProgramVisitor {
  astVisitor: ASTVisitor;
  interfaceMethods: Map<string, memberid> = new Map();
  classIds: Map<memberid, virtualMethod[]> = new Map();

  constructor(private compiler: Compiler, public writer: Writer) {
    super();
    this.astVisitor = new PrinterVisitor(writer);
    writer.write("Visiting Program with Printer\n");
    let files = compiler.program.filesByName.values();
    for (let file of files) {
      if (!file.name.startsWith("~"))
        if (file.members)
          for (let mem of file.members.values()) {
            if (mem instanceof Interface || mem instanceof InterfacePrototype) {
              this.write("interface " + mem.name, true);
              mem.visit(this);
            }
          }
    }
    // this.write(program.managedClasses.size.toString(), true);

    for (let _class of compiler.program.managedClasses.values()) {
      if (!_class.file.name.startsWith("~")) {
        _class.visit(this);
      }
    }
  }

  write(str: string, newline: boolean = false): void {
    this.writer.write(str + (newline ? "\n" : " "));
  }

  visitFile(node: File): void {
    this.write("visiting file ", true);
    node.startFunction.visit(this);
  }
  visitTypeDefinition(node: TypeDefinition): void {}
  visitNamespace(node: Namespace): void {}
  visitEnum(node: Enum): void {}
  visitEnumValue(node: EnumValue): void {}
  visitGlobal(node: Global): void {}
  visitLocal(node: Local): void {}
  visitFunctionPrototype(node: FunctionPrototype): void {
    if (node.isBound) {
      let _class = node.parent;
      let signature = node.signature;
      let id = this.interfaceMethods.get(signature);
      if (id) {
        let classId = (<Class>_class).id;
        this.write("Parent: " + _class.name, true);
        this.write("visiting function "+ node.internalName, false);
        this.write(signature + " has methodID: " + id, true);
        debugger;
        // let funcPtr = this.compiler.ensureFunctionTableEntry(this.compiler.program.instancesByName)
      }
    }
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
  visitField(node: Field): void {
    //   this.write("visiting Field: "+ node.name + ": " + node.type.toString(), true);
    //   debugger;
  }
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
      debugger;
      mem.visit(this);
    }
  }
  visitInterfacePrototype(node: InterfacePrototype): void {
    this.write("Interface Prototype", true);
    this.write(node.name);
    debugger;
    for (let [key, value] of node.instanceMembers!.entries()) {
      if (value instanceof FunctionPrototype) {
        this.write(key + " " + value.toString());
        let id =
          this.interfaceMethods.size + this.compiler.functionTable.length;
        if (!this.interfaceMethods.has(value.signature)) {
          this.interfaceMethods.set(value.signature, id);
          this.write(value.signature, true);
        }
      }
    }
    this.write("", true);
  }

  visitInterface(node: Interface): void {
    this.write(node.name);
    for (let [key, value] of node.members!.entries()) {
      this.write(key + " " + value.toString());
    }
  }
}
