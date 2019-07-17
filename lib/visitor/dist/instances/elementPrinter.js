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
Object.defineProperty(exports, "__esModule", { value: true });
var element_1 = require("../src/element");
var astPrinter_1 = require("./astPrinter");
var ProgramPrinter = /** @class */ (function (_super) {
    __extends(ProgramPrinter, _super);
    function ProgramPrinter(parser, compiler, writer) {
        var _this = _super.call(this) || this;
        _this.parser = parser;
        _this.compiler = compiler;
        _this.writer = writer;
        _this.depth = 0;
        _this.astVisitor = new astPrinter_1.PrinterVisitor(writer);
        _this.visit(compiler.program.filesByName);
        return _this;
        // debugger;
        // this.visit(compiler.program.elementsByName);
    }
    ProgramPrinter.prototype.visit = function (node) {
        if (node && node.name && node.internalName.startsWith("~")) {
            return;
        }
        _super.prototype.visit.call(this, node);
    };
    ProgramPrinter.prototype.write = function (str, newline) {
        if (newline === void 0) { newline = false; }
        this.writer.write("  ".repeat(this.depth) + str + (newline ? "\n" : " "));
    };
    ProgramPrinter.prototype.visitFile = function (node) {
        if (node.name.startsWith("~")) {
            return;
        }
        this.write("visiting file: " + node.name, true);
        this.depth++;
        _super.prototype.visitFile.call(this, node);
        this.depth--;
    };
    ProgramPrinter.prototype.visitTypeDefinition = function (node) {
        this.write(node.type.toString());
        this.astVisitor.visit(node.typeParameterNodes);
    };
    ProgramPrinter.prototype.visitNamespace = function (node) {
        this.write("Namespace: " + node.name, true);
        _super.prototype.visitNamespace.call(this, node);
    };
    ProgramPrinter.prototype.visitEnum = function (node) {
        this.write("Enum: " + node, true);
        _super.prototype.visitNamespace.call(this, node);
    };
    ProgramPrinter.prototype.visitEnumValue = function (node) {
        this.astVisitor.visit(node.valueNode);
    };
    ProgramPrinter.prototype.visitGlobal = function (node) {
        this.write("Global: ");
        this.visitNode(node.declaration);
        // this.astVisitor.visit(node.identifierNode);
        // this.visitNode(node.typeNode);
        // this.visitNode(node.initializerNode);
        // this.astVisitor.write(this.astVisitor.flush(": "));
    };
    ProgramPrinter.prototype.visitLocal = function (node) {
        this.write("Local: " + node.name, true);
        this.visitNode(node.identifierNode);
        this.visitNode(node.initializerNode);
    };
    ProgramPrinter.prototype.visitFunctionPrototype = function (node) {
        this.write("Function ProtoType:" + node.signature);
        _super.prototype.visitFunctionPrototype.call(this, node);
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
    ProgramPrinter.prototype.visitClassPrototype = function (node) {
        _super.prototype.visitClassPrototype.call(this, node);
        this.write("", true);
    };
    ProgramPrinter.prototype.visitClass = function (node) {
        this.write(node.name);
        // this.write(node.members!.size.toString());
        var interfaces = node.declaration.implementsTypes;
        if (interfaces) {
            this.write("implements " + interfaces.join(", "));
        }
        this.write("", true);
        this.visit(node.members);
    };
    ProgramPrinter.prototype.visitInterfacePrototype = function (node) {
        this.write("Interface Prototype: ");
        this.write(node.name, true);
        _super.prototype.visitInterfacePrototype.call(this, node);
    };
    ProgramPrinter.prototype.visitInterface = function (node) {
        this.write("Interface: " + node.name);
        _super.prototype.visitInterface.call(this, node);
        // for (let [key, value] of node.members!.entries()) {
        //   this.write(key + " " + value.toString());
        // }
    };
    return ProgramPrinter;
}(element_1.BaseElementVisitor));
exports.default = ProgramPrinter;
