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
  IdentifierExpression,
  FunctionDeclaration,
  ClassDeclaration,
  Parser,
  BinaryOp,
  NativeType,
  Signature,
  ElementKind,
  TypeFlags
} from "assemblyscript";
import { BaseElementVisitor } from "../element";
import { PrinterVisitor } from "./astPrinter";
import { ASTVisitor } from "../ast";
import { Writer } from "..";

type memberid = number;
type classid = number;
type fnPtr = number;

type virtualMethod = [classid, fnPtr];

export default class Virtualizer extends BaseElementVisitor
  implements ElementVisitor {
  interfaceMethods: Map<string, memberid> = new Map();
  classIds: Map<memberid, virtualMethod[]> = new Map();
  log = false;

  constructor(parser: Parser, compiler: Compiler, writer: Writer) {
    super(parser, compiler, writer);
    debugger;
  }

  start(): void {
    var compiler = this.compiler;
    this.astVisitor = new PrinterVisitor(this.parser, this.writer);
    this.visitInterfaces(this.files);

    var managedClasses = [];
    for (let _class of compiler.program.managedClasses.values()) {
      managedClasses.push(_class.id);
      if (!_class.file.name.startsWith("~") && _class.prototype.implementsNodes != null) {
        _class.visit(this);
      }
    }
    this.write(this.compiler.functionTable.join(" "), true);
    this.createVitualFunction();
    var module = compiler.module;

    const updateInterfaceMethods = (i: InterfacePrototype): void => {
      if (i.instanceMembers == null) return;
      for (let member of i.instanceMembers.values()) {
        if (member.kind != ElementKind.FUNCTION_PROTOTYPE) continue;
        let func: Function = this.getFunctionByName(member.internalName);
        let signature = func.signature;
        let _type = this.compiler.ensureFunctionType(
          signature.parameterTypes,
          signature.returnType,
          signature.thisType
        );
        let loadMethodID = module.i32(
          this.interfaceMethods.get(func.prototype.signature)!
        );
        // let target = this.compiler.program.instancesByName("virtual");
        let loadClass = module.load(
          4,
          false,
          module.binary(
            BinaryOp.SubI32,
            module.local_get(0, NativeType.I32),
            module.i32(8)
          ),
          NativeType.I32
        );
        let callVirtual = module.call(
          "~lib/virtual/virtual",
          [loadMethodID, loadClass],
          NativeType.I32
        );
        module.removeFunction(member.internalName);
        
        let callIndirect = module.call_indirect(
          callVirtual,
          func.localsByIndex.map<number>(local => module.local_get(local.index, local.type.toNativeType())),

          Signature.makeSignatureString(
            func.signature.parameterTypes,
            func.signature.returnType,
            func.signature.thisType
          ));

        let body = module.block(null ,[ callIndirect ], func.signature.returnType.toNativeType());

        module.addFunction(
          member.internalName,
          _type,
          null,
          body
        );
      }
      debugger;
    };

    try {
      this.visitInterfaces(this.files, updateInterfaceMethods);
    } catch (e) {
      this.write(e.toString());
    }
  }

  createVitualFunction(): void {
    var module = this.compiler.module;
    var functionTable = this.compiler.functionTable;
    module.setFunctionTable(functionTable.length, 0xffffffff, functionTable);
    this.write(functionTable.join("\n"), true);
    let methodIDCases = [];
    let dummyMethodId: number=0, dummyClassid : number = 0;
    for (let [id, classes] of this.classIds.entries()) {
      let str = ["case ", id.toString(), ": {\n\tswitch (classID) {\n"];
      dummyMethodId = id;
      for (let [classID, fnPtr] of classes) {
        dummyClassid = classID;
        str.push("\t\tcase " + classID.toString() + ": return ");
        str.push(fnPtr.toString() + ";\n");
      }
      str.push("\t}");
      str.push("\n}");
      methodIDCases.push(str.join(""));
    }

    var funcSourc = `
      @global
      function virtual(methodID: usize, classID: usize): usize {
        switch (methodID){
           ${methodIDCases.join("")}
        }
        unreachable();
        return 0;
      }
      virtual(${dummyMethodId}, ${dummyClassid});
      `;
    this.parser.parseFile(funcSourc, "~lib/virtual", false);
    this.parser.program.initialize(this.compiler.options);
    var sources = this.parser.program.sources;
    var file: File = new File(this.parser.program, sources[sources.length - 1]);
    this.parser.program.initializeFunction(
      <FunctionDeclaration>file.source.statements[0],
      file
    );
    this.compiler.compileFile(file);
    // this.compiler.module.removeFunction("~lib/virtual");
  }

  write(str: string, newline: boolean = false): void {
    if (this.log) {
      this.writer.write(str + (newline ? "\n" : " "));
    }
  }

  visitFunctionPrototype(node: FunctionPrototype): void {
    if (node.isBound) {
      let _class = <Class> node.parent;
      let signature = node.signature;
      let id = this.interfaceMethods.get(signature);
      if (id != null) {
        let classId = _class.id;
        this.write("Parent: " + _class.name, true);
        this.write("visiting function " + node.internalName, false);
        this.write(signature + " has methodID: " + id, true);
        let fnPtr = this.compiler.functionTable.length;
        this.compiler.functionTable.push(node.internalName);
        let entry: virtualMethod = [classId, fnPtr];
        this.classIds.get(id)!.push(entry);
        // let funcPtr = this.compiler.ensureFunctionTableEntry(this.compiler.program.instancesByName)
      }
    }
  }
  visitFunction(node: Function): void {
    this.write("visiting function: " + node.name);
    this.write(node.signature.toString(), true);
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
    var interfaces = (<ClassDeclaration>node.declaration).implementsTypes;
    if (interfaces) {
      this.write("implements " + interfaces.join(", "));
    }
    this.write("", true);
    for (let mem of node.members!.values()) {
      mem.visit(this);
    }
  }
  visitInterfacePrototype(node: InterfacePrototype): void {
    this.write("Interface Prototype", true);
    this.write(node.name);
    for (let [key, value] of node.instanceMembers!.entries()) {
      if (value instanceof FunctionPrototype) {
        this.write(key + " " + value.toString());
        let id = this.interfaceMethods.size;
        if (!this.interfaceMethods.has(value.signature)) {
          this.interfaceMethods.set(value.signature, id);
          this.classIds.set(id, []);
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
