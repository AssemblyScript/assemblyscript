"use strict";
/// <reference no-default-lib="true"/>
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var __values = (this && this.__values) || function (o) {
    var m = typeof Symbol === "function" && o[Symbol.iterator], i = 0;
    if (m) return m.call(o);
    return {
        next: function () {
            if (o && i >= o.length) o = void 0;
            return { value: o && o[i++], done: !o };
        }
    };
};
var __read = (this && this.__read) || function (o, n) {
    var m = typeof Symbol === "function" && o[Symbol.iterator];
    if (!m) return o;
    var i = m.call(o), r, ar = [], e;
    try {
        while ((n === void 0 || n-- > 0) && !(r = i.next()).done) ar.push(r.value);
    }
    catch (error) { e = { error: error }; }
    finally {
        try {
            if (r && !r.done && (m = i["return"])) m.call(i);
        }
        finally { if (e) throw e.error; }
    }
    return ar;
};
Object.defineProperty(exports, "__esModule", { value: true });
/// <reference path="../../../dist/assemblyscript.d.ts" />
/// <reference path="../../../std/portable/index.d.ts" />
var assemblyscript_1 = require("assemblyscript");
var assemblyscript_2 = require("assemblyscript");
var ast = require("assemblyscript/dist/assemblyscript");
debugger;
var Virtualizer = /** @class */ (function (_super) {
    __extends(Virtualizer, _super);
    function Virtualizer(parser, compiler, writer) {
        var e_1, _a, e_2, _b, e_3, _c;
        var _this = _super.call(this) || this;
        _this.parser = parser;
        _this.compiler = compiler;
        _this.writer = writer;
        _this.interfaceMethods = new Map();
        _this.classIds = new Map();
        _this.astVisitor = new assemblyscript_1.PrinterVisitor(writer);
        writer.write("Visiting Program with Printer\n");
        var files = compiler.program.filesByName.values();
        try {
            for (var files_1 = __values(files), files_1_1 = files_1.next(); !files_1_1.done; files_1_1 = files_1.next()) {
                var file_1 = files_1_1.value;
                if (!file_1.name.startsWith("~"))
                    if (file_1.members)
                        try {
                            for (var _d = __values(file_1.members.values()), _e = _d.next(); !_e.done; _e = _d.next()) {
                                var mem = _e.value;
                                if (mem instanceof assemblyscript_1.Interface || mem instanceof assemblyscript_1.InterfacePrototype) {
                                    _this.write("interface " + mem.name, true);
                                    mem.visit(_this);
                                }
                            }
                        }
                        catch (e_2_1) { e_2 = { error: e_2_1 }; }
                        finally {
                            try {
                                if (_e && !_e.done && (_b = _d.return)) _b.call(_d);
                            }
                            finally { if (e_2) throw e_2.error; }
                        }
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (files_1_1 && !files_1_1.done && (_a = files_1.return)) _a.call(files_1);
            }
            finally { if (e_1) throw e_1.error; }
        }
        var managedClasses = [];
        try {
            for (var _f = __values(compiler.program.managedClasses.values()), _g = _f.next(); !_g.done; _g = _f.next()) {
                var _class = _g.value;
                managedClasses.push(_class.id);
                if (!_class.file.name.startsWith("~")) {
                    _class.visit(_this);
                }
            }
        }
        catch (e_3_1) { e_3 = { error: e_3_1 }; }
        finally {
            try {
                if (_g && !_g.done && (_c = _f.return)) _c.call(_f);
            }
            finally { if (e_3) throw e_3.error; }
        }
        var module = _this.compiler.module;
        _this.write(compiler.functionTable.join(" "), true);
        module.setFunctionTable(compiler.functionTable.length, 0xffffffff, compiler.functionTable);
        var funcSourc = "\n      @global\n      function virtual(methodID: usize, classID: usize): usize {\n        switch (methodID){\n          case 0: {\n            switch (classID) {\n              case 3:\n                return 4;\n              case 4:\n                return 5;\n            \n            }\n          }\n        }\n        unreachable();\n        return 0;\n      }\n      virtual(0,3);\n      ";
        var names = managedClasses.map(function (id) { return id.toString(); });
        var condition = new ast.IdentifierExpression();
        condition.symbol = "methodID";
        parser.parseFile(funcSourc, "~lib/virtual", false);
        parser.program.initialize(_this.compiler.options);
        var file = new assemblyscript_1.File(parser.program, parser.program.sources[parser.program.sources.length - 1]);
        parser.program.initializeFunction(file.source.statements[0], file);
        _this.compiler.compileFile(file);
        // this.compiler.module.addFunction(
        //   "virtual",
        //   this.compiler.ensureFunctionType([Type.usize32, Type.usize32], Type.void, null),
        //   null,
        //   this.compiler.compileSwitchStatement(stmt)
        // )
        // let source = parser.program.sources[0];
        debugger;
        return _this;
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
    Virtualizer.prototype.write = function (str, newline) {
        if (newline === void 0) { newline = false; }
        this.writer.write(str + (newline ? "\n" : " "));
    };
    Virtualizer.prototype.visitFile = function (node) {
        this.write("visiting file ", true);
        node.startFunction.visit(this);
    };
    Virtualizer.prototype.visitTypeDefinition = function (node) { };
    Virtualizer.prototype.visitNamespace = function (node) { };
    Virtualizer.prototype.visitEnum = function (node) { };
    Virtualizer.prototype.visitEnumValue = function (node) { };
    Virtualizer.prototype.visitGlobal = function (node) { };
    Virtualizer.prototype.visitLocal = function (node) { };
    Virtualizer.prototype.visitFunctionPrototype = function (node) {
        if (node.isBound) {
            var _class = node.parent;
            var signature = node.signature;
            var id = this.interfaceMethods.get(signature);
            if (id != null) {
                var classId = _class.id;
                this.write("Parent: " + _class.name, true);
                this.write("visiting function " + node.internalName, false);
                this.write(signature + " has methodID: " + id, true);
                var fnPtr = this.compiler.functionTable.length;
                this.compiler.functionTable.push(node.internalName);
                var entry = [classId, fnPtr];
                this.classIds.get(id).push(entry);
                // let funcPtr = this.compiler.ensureFunctionTableEntry(this.compiler.program.instancesByName)
            }
        }
    };
    Virtualizer.prototype.visitFunction = function (node) {
        this.write("visiting function: " + node.name);
        this.write(node.signature.toString(), true);
        // this.write(node.toString());
        // if(mems)
        // for (let mem of mems.values()){
        //     this.write(mem.toString(), true)
        // }
    };
    Virtualizer.prototype.visitFunctionTarget = function (node) { };
    Virtualizer.prototype.visitFieldPrototype = function (node) { };
    Virtualizer.prototype.visitField = function (node) {
    };
    Virtualizer.prototype.visitPropertyPrototype = function (node) { };
    Virtualizer.prototype.visitProperty = function (node) { };
    Virtualizer.prototype.visitClassPrototype = function (node) { };
    Virtualizer.prototype.visitClass = function (node) {
        var e_4, _a;
        this.write(node.name);
        // this.write(node.members!.size.toString());
        var interfaces = node.declaration.implementsTypes;
        if (interfaces) {
            this.write("implements " + interfaces.join(", "));
        }
        this.write("", true);
        try {
            for (var _b = __values(node.members.values()), _c = _b.next(); !_c.done; _c = _b.next()) {
                var mem = _c.value;
                mem.visit(this);
            }
        }
        catch (e_4_1) { e_4 = { error: e_4_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_4) throw e_4.error; }
        }
    };
    Virtualizer.prototype.visitInterfacePrototype = function (node) {
        var e_5, _a;
        this.write("Interface Prototype", true);
        this.write(node.name);
        try {
            for (var _b = __values(node.instanceMembers.entries()), _c = _b.next(); !_c.done; _c = _b.next()) {
                var _d = __read(_c.value, 2), key = _d[0], value = _d[1];
                if (value instanceof assemblyscript_1.FunctionPrototype) {
                    this.write(key + " " + value.toString());
                    var id = this.interfaceMethods.size;
                    if (!this.interfaceMethods.has(value.signature)) {
                        this.interfaceMethods.set(value.signature, id);
                        this.classIds.set(id, []);
                        this.write(value.signature, true);
                    }
                }
            }
        }
        catch (e_5_1) { e_5 = { error: e_5_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_5) throw e_5.error; }
        }
        this.write("", true);
    };
    Virtualizer.prototype.visitInterface = function (node) {
        var e_6, _a;
        this.write(node.name);
        try {
            for (var _b = __values(node.members.entries()), _c = _b.next(); !_c.done; _c = _b.next()) {
                var _d = __read(_c.value, 2), key = _d[0], value = _d[1];
                this.write(key + " " + value.toString());
            }
        }
        catch (e_6_1) { e_6 = { error: e_6_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_6) throw e_6.error; }
        }
    };
    return Virtualizer;
}(assemblyscript_2.BaseElementVisitor));
exports.default = Virtualizer;
