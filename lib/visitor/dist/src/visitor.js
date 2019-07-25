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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlzaXRvci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uL3NyYy92aXNpdG9yLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVNBO0lBQUE7SUFpQkEsQ0FBQztJQWhCQywrQkFBSyxHQUFMLFVBQU0sSUFBbUI7UUFBekIsaUJBZUM7O1FBZEMsSUFBSSxJQUFJLEVBQUU7WUFDUixJQUFJLElBQUksWUFBWSxLQUFLLEVBQUU7Z0JBQ3pCLElBQUksQ0FBQyxHQUFHLENBQUMsVUFBQSxJQUFJLElBQUksT0FBQSxLQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxFQUFoQixDQUFnQixDQUFDLENBQUM7YUFDcEM7aUJBQU0sSUFBSSxJQUFJLFlBQVksR0FBRyxFQUFFO2dCQUM5QixJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxNQUFNLEVBQUUsQ0FBQyxDQUFDO2FBQzNCO2lCQUFNLElBQVUsSUFBSyxDQUFDLElBQUksRUFBRTs7b0JBQ3pCLDJDQUEyQztvQkFDN0MsS0FBYyxJQUFBLFNBQUEsU0FBQSxJQUFJLENBQUEsMEJBQUEsNENBQUU7d0JBQWYsSUFBSSxDQUFDLGlCQUFBO3dCQUNOLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUM7cUJBQ2Y7Ozs7Ozs7OzthQUNKO2lCQUFLO2dCQUNBLElBQUssQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7YUFDdkI7U0FDRjtJQUNILENBQUM7SUFDSCxzQkFBQztBQUFELENBQUMsQUFqQkQsSUFpQkM7QUFqQlksMENBQWU7QUFtQjVCLGtEQUFrRDtBQUNsRCxrQ0FBa0M7QUFDbEMsSUFBSTtBQUVKLDhDQUE4QztBQUM5Qyx5Q0FBeUM7QUFFekMsd0NBQXdDO0FBQ3hDLHdDQUF3QztBQUN4QyxnQkFBZ0I7QUFDaEIsOEJBQThCO0FBQzlCLE1BQU07QUFDTixJQUFJO0FBR0osd0VBQXdFO0FBQ3hFLHFDQUFxQztBQUNyQyxrQ0FBa0M7QUFDbEMsUUFBUTtBQUNSLElBQUk7QUFFSixrREFBa0Q7QUFDbEQscUNBQXFDO0FBQ3JDLG1DQUFtQztBQUNuQyw4QkFBOEI7QUFDOUIsUUFBUTtBQUNSLElBQUk7QUFHSix3QkFBd0I7QUFDeEIsa0NBQWtDO0FBQ2xDLG1DQUFtQztBQUNuQyxxQ0FBcUM7QUFFckMsd0VBQXdFO0FBQ3hFLDZCQUE2QjtBQUM3QixZQUFZO0FBQ1osb0NBQW9DO0FBQ3BDLG1CQUFtQjtBQUNuQixzQkFBc0IiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgaW50ZXJmYWNlIFZpc2l0b3I8VD4ge1xuICB2aXNpdCh0OiBDb2xsZWN0aW9uPFQ+KTogdm9pZDtcbn1cblxuaW50ZXJmYWNlIFZpc2l0PFQ+IHtcbiAgICB2aXNpdCh2aXNpdG9yOiBhbnkpOiB2b2lkO1xufVxuZXhwb3J0IHR5cGUgQ29sbGVjdGlvbjxUPiA9IFQgfCBUW10gfCBNYXA8c3RyaW5nLCBUPiB8IEl0ZXJhYmxlPFQ+IHwgbnVsbDtcblxuZXhwb3J0IGNsYXNzIEFic3RyYWN0VmlzaXRvcjxUIGV4dGVuZHMgVmlzaXQ8VD4+IHtcbiAgdmlzaXQobm9kZTogQ29sbGVjdGlvbjxUPik6IHZvaWQge1xuICAgIGlmIChub2RlKSB7XG4gICAgICBpZiAobm9kZSBpbnN0YW5jZW9mIEFycmF5KSB7XG4gICAgICAgIG5vZGUubWFwKG5vZGUgPT4gdGhpcy52aXNpdChub2RlKSk7XG4gICAgICB9IGVsc2UgaWYgKG5vZGUgaW5zdGFuY2VvZiBNYXApIHtcbiAgICAgICAgdGhpcy52aXNpdChub2RlLnZhbHVlcygpKTtcbiAgICAgIH0gZWxzZSBpZiAoKDxhbnk+bm9kZSkubmV4dCkgeyBcbiAgICAgICAgICAvL1RPRE86IEZpbmQgYmV0dGVyIHdheSB0byB0ZXN0IGlmIGl0ZXJhYmxlXG4gICAgICAgIGZvciAobGV0IG4gb2Ygbm9kZSkge1xuICAgICAgICAgICAgdGhpcy52aXNpdChuKTtcbiAgICAgICAgICB9XG4gICAgICB9ZWxzZSB7XG4gICAgICAgICg8VD5ub2RlKS52aXNpdCh0aGlzKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuLy8gaW50ZXJmYWNlIE5vZGVWaXNpdG9yIGV4dGVuZHMgVmlzaXQ8dGVzdE5vZGU+IHtcbi8vICAgICB2aXNpdE5vZGUodDogdGVzdE5vZGUpOnZvaWRcbi8vIH1cblxuLy8gY2xhc3MgdGVzdE5vZGUgaW1wbGVtZW50cyBWaXNpdDx0ZXN0Tm9kZT4ge1xuLy8gICBjb25zdHJ1Y3Rvcihwcml2YXRlIG5hbWU6IHN0cmluZykge31cblxuLy8gICB2aXNpdCh2aXNpdG9yOiBOb2RlVmlzaXRvcik6IHZvaWQge1xuLy8gICAgIC8vIGNvbnNvbGUubG9nKFwiaW5cIiArIHRoaXMubmFtZSk7XG4vLyAgICAgZGVidWdnZXI7XG4vLyAgICAgdmlzaXRvci52aXNpdE5vZGUodGhpcylcbi8vICAgfVxuLy8gfVxuXG5cbi8vIGNsYXNzIEJhc2UgZXh0ZW5kcyBBYnN0cmFjdFZpc2l0b3I8dGVzdE5vZGU+IGltcGxlbWVudHMgTm9kZVZpc2l0b3Ige1xuLy8gICAgIHZpc2l0Tm9kZSh0OiB0ZXN0Tm9kZSk6IHZvaWQge1xuLy8gICAgICAgICBjb25zb2xlLmxvZyhcImluIHN1cGVyXCIpXG4vLyAgICAgfVxuLy8gfVxuXG4vLyBjbGFzcyBTdWIgZXh0ZW5kcyBCYXNlIGltcGxlbWVudHMgTm9kZVZpc2l0b3Ige1xuLy8gICAgIHZpc2l0Tm9kZSh0OiB0ZXN0Tm9kZSk6IHZvaWQge1xuLy8gICAgICAgICBjb25zb2xlLmxvZyhcImluIGNoaWxkXCIpO1xuLy8gICAgICAgICBzdXBlci52aXNpdE5vZGUodCk7XG4vLyAgICAgfVxuLy8gfVxuXG5cbi8vIGxldCB0ZXN0ID0gbmV3IFN1YigpO1xuLy8gbGV0IG5vZGUgPSBuZXcgdGVzdE5vZGUoXCJvbmVcIik7XG4vLyBsZXQgbm9kZTIgPSBuZXcgdGVzdE5vZGUoXCJ0d29cIik7XG4vLyBsZXQgbm9kZTMgPSBuZXcgdGVzdE5vZGUoXCJ0aHJlZVwiKTtcblxuLy8gbGV0IG1hcCA9IG5ldyBNYXAoW1tcIm9uZVwiLCBub2RlXSwgW1widHdvXCIsIG5vZGUyXSwgW1widGhyZWVcIiwgbm9kZTNdXSk7XG4vLyBsZXQgdmFsdWVzID0gbWFwLnZhbHVlcygpO1xuLy8gZGVidWdnZXI7XG4vLyB0ZXN0LnZpc2l0KFtub2RlLCBub2RlMiwgbm9kZTNdKTtcbi8vIHRlc3QudmlzaXQobWFwKTtcbi8vIHRlc3QudmlzaXQodmFsdWVzKTtcbiJdfQ==