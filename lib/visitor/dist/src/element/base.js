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
var assemblyscript_1 = require("assemblyscript");
var visitor_1 = require("../visitor");
var assemblyscript_2 = require("assemblyscript");
var BaseElementVisitor = /** @class */ (function (_super) {
    __extends(BaseElementVisitor, _super);
    function BaseElementVisitor() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    BaseElementVisitor.prototype.visitFile = function (node) {
        console.log(node.name + "-----");
        var declares;
        debugger;
        declares = node.source.statements.filter(function (s) { return s instanceof assemblyscript_2.DeclarationStatement; });
        this.visit(declares.map(function (stmt) { return node.program.elementsByDeclaration.get(stmt); }));
        // this.visit(node.members);
        // this.visit(node.program.elementsByName);
        debugger;
    };
    BaseElementVisitor.prototype.visitNode = function (node) {
        this.astVisitor.visit(node);
    };
    // visit(element: Element | Element[] | null ): void {
    //   if (element) {
    //     if (element instanceof Element) {
    //       element.visit(this);
    //     }else {
    //       element.map(this.visit);
    //     }
    //   }
    // }
    // visitMemebers(map: Map<any, Element> | null): void {
    //   if (map) {
    //     for (let element of map.values()) {
    //       element.visit(this);
    //     }
    //   }
    // }
    BaseElementVisitor.prototype.visitInterfaces = function (files) {
        var e_1, _a, e_2, _b;
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
                    catch (e_2_1) { e_2 = { error: e_2_1 }; }
                    finally {
                        try {
                            if (_d && !_d.done && (_b = _c.return)) _b.call(_c);
                        }
                        finally { if (e_2) throw e_2.error; }
                    }
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
    };
    BaseElementVisitor.prototype.visitTypeDefinition = function (node) { };
    BaseElementVisitor.prototype.visitNamespace = function (node) {
        this.visit(node.members);
    };
    BaseElementVisitor.prototype.visitEnum = function (node) {
        this.visit(node.members);
    };
    BaseElementVisitor.prototype.visitEnumValue = function (node) { };
    BaseElementVisitor.prototype.visitGlobal = function (node) { };
    BaseElementVisitor.prototype.visitLocal = function (node) { };
    BaseElementVisitor.prototype.visitFunctionPrototype = function (node) {
        if (node.parent instanceof assemblyscript_1.Function) {
            node.parent.visit(this);
        }
        else {
            this.visit(node.members);
        }
    };
    BaseElementVisitor.prototype.visitFunction = function (node) {
        this.visit(node.members);
    };
    BaseElementVisitor.prototype.visitFunctionTarget = function (node) { };
    BaseElementVisitor.prototype.visitFieldPrototype = function (node) {
        if (node.parent instanceof assemblyscript_1.Field) {
            node.parent.visit(this);
        }
    };
    BaseElementVisitor.prototype.visitField = function (node) { };
    BaseElementVisitor.prototype.visitPropertyPrototype = function (node) {
        if (node.parent instanceof assemblyscript_1.Property) {
            node.parent.visit(this);
        }
        else {
            this.visit(node.getterPrototype);
            this.visit(node.setterPrototype);
        }
    };
    BaseElementVisitor.prototype.visitProperty = function (node) {
        this.visit(node.getterInstance);
        this.visit(node.setterInstance);
    };
    BaseElementVisitor.prototype.visitClassPrototype = function (node) {
        if (node.parent instanceof assemblyscript_1.Class) {
            node.parent.visit(this);
        }
        else {
            this.visit(node.instanceMembers);
        }
    };
    BaseElementVisitor.prototype.visitClass = function (node) {
        this.visit(node.members);
    };
    BaseElementVisitor.prototype.visitInterfacePrototype = function (node) { };
    BaseElementVisitor.prototype.visitInterface = function (node) {
        this.visit(node.prototype.instanceMembers);
    };
    return BaseElementVisitor;
}(visitor_1.AbstractVisitor));
exports.BaseElementVisitor = BaseElementVisitor;
