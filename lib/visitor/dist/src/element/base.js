"use strict";
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
var assemblyscript_1 = require("assemblyscript");
var BaseElementVisitor = /** @class */ (function () {
    function BaseElementVisitor() {
    }
    BaseElementVisitor.prototype.visitFile = function (node) {
        node.startFunction.visit(this);
    };
    BaseElementVisitor.prototype.visitMemebers = function (map) {
        var e_1, _a;
        if (map) {
            try {
                for (var _b = __values(map.values()), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var element = _c.value;
                    element.visit(this);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
        }
    };
    BaseElementVisitor.prototype.visitInterfaces = function (files) {
        var e_2, _a, e_3, _b;
        try {
            for (var files_1 = __values(files), files_1_1 = files_1.next(); !files_1_1.done; files_1_1 = files_1.next()) {
                var file = files_1_1.value;
                if (file.members) {
                    try {
                        for (var _c = __values(file.members), _d = _c.next(); !_d.done; _d = _c.next()) {
                            var element = _d.value;
                            if (element instanceof assemblyscript_1.InterfacePrototype) {
                                element.visit(this);
                            }
                        }
                    }
                    catch (e_3_1) { e_3 = { error: e_3_1 }; }
                    finally {
                        try {
                            if (_d && !_d.done && (_b = _c.return)) _b.call(_c);
                        }
                        finally { if (e_3) throw e_3.error; }
                    }
                }
            }
        }
        catch (e_2_1) { e_2 = { error: e_2_1 }; }
        finally {
            try {
                if (files_1_1 && !files_1_1.done && (_a = files_1.return)) _a.call(files_1);
            }
            finally { if (e_2) throw e_2.error; }
        }
    };
    BaseElementVisitor.prototype.visitTypeDefinition = function (node) { };
    BaseElementVisitor.prototype.visitNamespace = function (node) { };
    BaseElementVisitor.prototype.visitEnum = function (node) { };
    BaseElementVisitor.prototype.visitEnumValue = function (node) { };
    BaseElementVisitor.prototype.visitGlobal = function (node) { };
    BaseElementVisitor.prototype.visitLocal = function (node) { };
    BaseElementVisitor.prototype.visitFunctionPrototype = function (node) { };
    BaseElementVisitor.prototype.visitFunction = function (node) { };
    BaseElementVisitor.prototype.visitFunctionTarget = function (node) { };
    BaseElementVisitor.prototype.visitFieldPrototype = function (node) { };
    BaseElementVisitor.prototype.visitField = function (node) { };
    BaseElementVisitor.prototype.visitPropertyPrototype = function (node) { };
    BaseElementVisitor.prototype.visitProperty = function (node) { };
    BaseElementVisitor.prototype.visitClassPrototype = function (node) { };
    BaseElementVisitor.prototype.visitClass = function (node) { };
    BaseElementVisitor.prototype.visitInterfacePrototype = function (node) { };
    BaseElementVisitor.prototype.visitInterface = function (node) { };
    return BaseElementVisitor;
}());
exports.BaseElementVisitor = BaseElementVisitor;
