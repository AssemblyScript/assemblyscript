/// <reference no-default-lib="true"/>


///// <reference path="./index.d.ts" />
/// <reference path="../../../dist/assemblyscript.d.ts" />
/// <reference path="../../../std/portable/index.d.ts" />
declare var require: any
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
    PrinterVisitor
  } from "assemblyscript";
import { BaseElementVisitor } from "assemblyscript";
import { ASTVisitor, NodeKind, Statement, ClassDeclaration, FunctionDeclaration } from "assemblyscript";

let ast = require("assemblyscript/dist/assemblyscript");
debugger;
// import * as ast from "assemblyscript/src/ast"; 
// import { PrinterVisitor } from "assemblyscript/src/visitor/ast/printer";
// import { Compiler } from "assemblyscript/src/compiler";
// import { Type, TypeKind, TypeFlags, Signature } from "assemblyscript/src/types";
// import { NativeType, BinaryOp, Module } from "assemblyscript/src/module";
import { Parser } from "assemblyscript";

interface Writer {
    write(str: any): void;
  }
  
  type memberid = number
  type classid = number;
  type fnPtr = number;
  
  type virtualMethod = [classid, fnPtr];
  
  export default class Virtualizer extends BaseElementVisitor implements ElementVisitor {
    astVisitor: ASTVisitor;
    interfaceMethods: Map<string, memberid> = new Map();
    classIds: Map<memberid, virtualMethod[]> = new Map();
  
    constructor(private parser: Parser, private compiler: Compiler, public writer: Writer) {
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
      let managedClasses = [];
      for (let _class of compiler.program.managedClasses.values()) {
        managedClasses.push(_class.id);
        if (!_class.file.name.startsWith("~")) {
          _class.visit(this);
        }
      }
      let module = this.compiler.module;
      this.write(compiler.functionTable.join(" "), true);
      module.setFunctionTable(compiler.functionTable.length, 0xffffffff, compiler.functionTable);
      let funcSourc = 
      `
      @global
      function virtual(methodID: usize, classID: usize): usize {
        switch (methodID){
          case 0: {
            switch (classID) {
              case 3:
                return 4;
              case 4:
                return 5;
            
            }
          }
        }
        unreachable();
        return 0;
      }
      virtual(0,3);
      `
      let names = managedClasses.map(id => id.toString());
      let condition = new ast.IdentifierExpression();
      condition.symbol="methodID";
      parser.parseFile(funcSourc, "~lib/virtual", false)
      parser.program.initialize(this.compiler.options);
      let file: File = new File(parser.program, parser.program.sources[parser.program.sources.length - 1]);
      parser.program.initializeFunction(<FunctionDeclaration>file.source.statements[0], file);

      this.compiler.compileFile(file);
      // this.compiler.module.addFunction(
      //   "virtual",
      //   this.compiler.ensureFunctionType([Type.usize32, Type.usize32], Type.void, null),
      //   null,
      //   this.compiler.compileSwitchStatement(stmt)
      // )

      // let source = parser.program.sources[0];
      debugger;
      // let body: number[] = [];
      // let func: FunctionDeclaration = <FunctionDeclaration> source.statements[0];
      // let stmt = this.compiler.compileStatement(func.body!)
      // let stmt = new ast.SwitchStatement();
      // stmt.condition = condition;

      // let defaultCase = new ast.SwitchCase();
      // defaultCase.label = null
      // let unreachable = new ast.AssertionExpression();
      // unreachable.expression = new ast.FalseExpression();
      // defaultCase.statements = [unreachable];
      // stmt.cases = [defaultCase];

      // let blockLabels = []
      // let block = module.block("classIdInvalid", [
      //     module.switch(names, "classIdInvalid", module.local_get(1, NativeType.I32)),
      //     NativeType.I32
      //   ]
      //   )
      // for (let id of this.classIds.keys()) {
      //   blockLabels.push(id.toString());
      //   let classIds = this.classIds.get(id)!;
      //   let innerexprs = names.map(name => module.unreachable());
      //   for (let [classid, fnPtr] of classIds){
      //     let num = module.i32(fnPtr);
      //     let name = "$class"+classid.toString();
      //     names.push(name);
      //     innerexprs[classid] = module.i32(num);
      //   }
      //   debugger;
      //   innerexprs.map((expr, i) => {
      //     block = module.block(names[i],[block, expr], NativeType.I32);
      //   })
        
      // }

      // block = module.block(null, [block, module.local_get(0, NativeType.I32)], NativeType.I32);



    //   for (let file of compiler.program.filesByName.values()) {
    //     if (!file.name.startsWith("~"))
    //       if (file.members)
    //         for (let mem of file.members.values()) {
    //           if (mem instanceof InterfacePrototype) {
    //             this.write("interface " + mem.name, true);
    //             if (mem.instanceMembers) {
    //               for (let member of mem.instanceMembers.values()) {
    //                 let func: Function = this.compiler.program.instancesByName.get(member.internalName)! as Function;
    //                 let signature = func.signature
                    
    //                 let _type = this.compiler.ensureFunctionType(signature.parameterTypes, signature.returnType, signature.thisType);
    //                 let loadMethodID =  module.i32(this.interfaceMethods.get(func.prototype.signature)!);
    //                 let loadClass =  module.load(4, false,
    //                   module.binary(BinaryOp.SubI32,
    //                     module.local_get(0, NativeType.I32),
    //                     module.i32(this.compiler.program.runtimeHeaderSize)
    //                   ),NativeType.I32);
    //                 let callVirtual = module.call("virtual",[loadMethodID, loadClass], NativeType.I32);
    //                 module.removeFunction(member.internalName)
    //                 module.addFunction(member.internalName, _type, null, module.block(null, 
    //                   [
    //                     module.call_indirect(callVirtual,  func.localsByIndex.map(local => module.local_get(local.index, local.type.toNativeType())),
    //                     Signature.makeSignatureString(func.signature.parameterTypes,func.signature.returnType, func.signature.thisType))
    //                   ]))
    //               }
    //             }
    //           }
    //         }
    //   }
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
        if (id != null) {
          let classId = (<Class>_class).id;
          this.write("Parent: " + _class.name, true);
          this.write("visiting function "+ node.internalName, false);
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
      // this.write(node.toString());
      // if(mems)
      // for (let mem of mems.values()){
      //     this.write(mem.toString(), true)
      // }
    }
    visitFunctionTarget(node: FunctionTarget): void {}
    visitFieldPrototype(node: FieldPrototype): void {}
    visitField(node: Field): void {
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
  