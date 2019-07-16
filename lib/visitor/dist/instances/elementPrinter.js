"use strict";
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
var assemblyscript_1 = require("assemblyscript");
var element_1 = require("../src/element");
var astPrinter_1 = require("./astPrinter");
var ProgramPrinter = /** @class */ (function (_super) {
    __extends(ProgramPrinter, _super);
    function ProgramPrinter(compiler, writer) {
        var e_1, _a, e_2, _b, e_3, _c;
        var _this = _super.call(this) || this;
        _this.compiler = compiler;
        _this.writer = writer;
        _this.interfaceMethods = new Map();
        _this.classIds = new Map();
        _this.astVisitor = new astPrinter_1.PrinterVisitor(writer);
        writer.write("Visiting Program with Printer\n");
        var files = compiler.program.filesByName.values();
        try {
            for (var files_1 = __values(files), files_1_1 = files_1.next(); !files_1_1.done; files_1_1 = files_1.next()) {
                var file = files_1_1.value;
                if (!file.name.startsWith("~"))
                    if (file.members)
                        try {
                            for (var _d = __values(file.members.values()), _e = _d.next(); !_e.done; _e = _d.next()) {
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
        try {
            // this.write(program.managedClasses.size.toString(), true);
            for (var _f = __values(compiler.program.managedClasses.values()), _g = _f.next(); !_g.done; _g = _f.next()) {
                var _class = _g.value;
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
        return _this;
    }
    ProgramPrinter.prototype.write = function (str, newline) {
        if (newline === void 0) { newline = false; }
        this.writer.write(str + (newline ? "\n" : " "));
    };
    ProgramPrinter.prototype.visitFile = function (node) {
        this.write("visiting file ", true);
        node.startFunction.visit(this);
    };
    ProgramPrinter.prototype.visitTypeDefinition = function (node) { };
    ProgramPrinter.prototype.visitNamespace = function (node) { };
    ProgramPrinter.prototype.visitEnum = function (node) { };
    ProgramPrinter.prototype.visitEnumValue = function (node) { };
    ProgramPrinter.prototype.visitGlobal = function (node) { };
    ProgramPrinter.prototype.visitLocal = function (node) { };
    ProgramPrinter.prototype.visitFunctionPrototype = function (node) {
        if (node.isBound) {
            var _class = node.parent;
            var signature = node.signature;
            var id = this.interfaceMethods.get(signature);
            if (id) {
                var classId = _class.id;
                this.write("Parent: " + _class.name, true);
                this.write("visiting function " + node.internalName, false);
                this.write(signature + " has methodID: " + id, true);
            }
        }
    };
    ProgramPrinter.prototype.visitFunction = function (node) {
        this.write("visiting function: " + node.name);
        this.write(node.signature.toString(), true);
        // this.write(node.toString());
        // if(mems)
        // for (let mem of mems.values()){
        //     this.write(mem.toString(), true)
        // }
    };
    ProgramPrinter.prototype.visitFunctionTarget = function (node) { };
    ProgramPrinter.prototype.visitFieldPrototype = function (node) { };
    ProgramPrinter.prototype.visitField = function (node) { };
    ProgramPrinter.prototype.visitPropertyPrototype = function (node) { };
    ProgramPrinter.prototype.visitProperty = function (node) { };
    ProgramPrinter.prototype.visitClassPrototype = function (node) { };
    ProgramPrinter.prototype.visitClass = function (node) {
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
    ProgramPrinter.prototype.visitInterfacePrototype = function (node) {
        var e_5, _a;
        this.write("Interface Prototype", true);
        this.write(node.name);
        try {
            for (var _b = __values(node.instanceMembers.entries()), _c = _b.next(); !_c.done; _c = _b.next()) {
                var _d = __read(_c.value, 2), key = _d[0], value = _d[1];
                if (value instanceof assemblyscript_1.FunctionPrototype) {
                    this.write(key + " " + value.toString());
                    var id = this.interfaceMethods.size + this.compiler.functionTable.length;
                    if (!this.interfaceMethods.has(value.signature)) {
                        this.interfaceMethods.set(value.signature, id);
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
    ProgramPrinter.prototype.visitInterface = function (node) {
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
    return ProgramPrinter;
}(element_1.BaseElementVisitor));
exports.ProgramPrinter = ProgramPrinter;
