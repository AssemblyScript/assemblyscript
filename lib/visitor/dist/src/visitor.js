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
var AbstractVisitor = /** @class */ (function () {
    function AbstractVisitor() {
    }
    AbstractVisitor.prototype.visit = function (node) {
        var _this = this;
        var e_1, _a;
        if (node) {
            if (node instanceof Array) {
                node.map(function (node) { return _this.visit(node); });
            }
            else if (node instanceof Map) {
                this.visit(node.values());
            }
            else if (node.next) {
                try {
                    //TODO: Find better way to test if iterable
                    for (var node_1 = __values(node), node_1_1 = node_1.next(); !node_1_1.done; node_1_1 = node_1.next()) {
                        var n = node_1_1.value;
                        this.visit(n);
                    }
                }
                catch (e_1_1) { e_1 = { error: e_1_1 }; }
                finally {
                    try {
                        if (node_1_1 && !node_1_1.done && (_a = node_1.return)) _a.call(node_1);
                    }
                    finally { if (e_1) throw e_1.error; }
                }
            }
            else {
                node.visit(this);
            }
        }
    };
    return AbstractVisitor;
}());
exports.AbstractVisitor = AbstractVisitor;
// interface NodeVisitor extends Visit<testNode> {
//     visitNode(t: testNode):void
// }
// class testNode implements Visit<testNode> {
//   constructor(private name: string) {}
//   visit(visitor: NodeVisitor): void {
//     // console.log("in" + this.name);
//     debugger;
//     visitor.visitNode(this)
//   }
// }
// class Base extends AbstractVisitor<testNode> implements NodeVisitor {
//     visitNode(t: testNode): void {
//         console.log("in super")
//     }
// }
// class Sub extends Base implements NodeVisitor {
//     visitNode(t: testNode): void {
//         console.log("in child");
//         super.visitNode(t);
//     }
// }
// let test = new Sub();
// let node = new testNode("one");
// let node2 = new testNode("two");
// let node3 = new testNode("three");
// let map = new Map([["one", node], ["two", node2], ["three", node3]]);
// let values = map.values();
// debugger;
// test.visit([node, node2, node3]);
// test.visit(map);
// test.visit(values);
