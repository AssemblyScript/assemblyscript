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
Object.defineProperty(exports, "__esModule", { value: true });
var element_1 = require("../src/element");
var PrintIDs = /** @class */ (function (_super) {
    __extends(PrintIDs, _super);
    function PrintIDs(parser, compiler, writer) {
        var e_1, _a;
        var _this = _super.call(this) || this;
        _this.parser = parser;
        _this.compiler = compiler;
        _this.writer = writer;
        _this.seen = new Set();
        try {
            for (var _b = __values(compiler.program.managedClasses.values()), _c = _b.next(); !_c.done; _c = _b.next()) {
                var _class = _c.value;
                _class.visit(_this);
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_1) throw e_1.error; }
        }
        return _this;
    }
    PrintIDs.prototype.write = function (str, newline) {
        if (newline === void 0) { newline = false; }
        this.writer.write(str + (newline ? "\n" : " "));
    };
    PrintIDs.prototype.visitClass = function (node) {
        if (this.seen.has(node)) {
            return;
        }
        this.seen.add(node);
        this.write(node.name + ": " + node.id.toString(), true);
        this.visit(node.members);
    };
    PrintIDs.prototype.visitField = function (node) {
        this.write("  Field:\t" + node.name + ": " + node.typeNode.toString(), true);
    };
    PrintIDs.prototype.visitProperty = function (node) {
        var typeName = node.typeNode
            ? node.typeNode.toString()
            : node.type.toString();
        this.write("  Property:\t" + node.name + ": " + typeName, true);
    };
    return PrintIDs;
}(element_1.BaseElementVisitor));
exports.default = PrintIDs;
