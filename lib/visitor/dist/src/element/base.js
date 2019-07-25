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
                if (!file.name.startsWith("~lib"))
                    if (file.members) {
                        try {
                            for (var _c = __values(file.members.values()), _d = _c.next(); !_d.done; _d = _c.next()) {
                                var element = _d.value;
                                if (element.kind === assemblyscript_1.ElementKind.INTERFACE
                                    || element.kind === assemblyscript_1.ElementKind.INTERFACE_PROTOTYPE) {
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYmFzZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uL3NyYy9lbGVtZW50L2Jhc2UudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFBLGlEQXdCd0I7QUFFeEIsc0NBQWtFO0FBRWxFLGlEQUFzRDtBQUt0RDtJQUF3QyxzQ0FBd0I7SUFBaEU7O0lBMEdBLENBQUM7SUF0R0Msc0NBQVMsR0FBVCxVQUFVLElBQVU7UUFDbEIsT0FBTyxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsSUFBSSxHQUFHLE9BQU8sQ0FBQyxDQUFBO1FBQ2hDLElBQUksUUFBZ0MsQ0FBQztRQUNyQyxRQUFRLENBQUM7UUFDVCxRQUFRLEdBQUcsSUFBSSxDQUFDLE1BQU0sQ0FBQyxVQUFVLENBQUMsTUFBTSxDQUFDLFVBQUEsQ0FBQyxJQUFJLE9BQUEsQ0FBQyxZQUFZLHFDQUFvQixFQUFqQyxDQUFpQyxDQUEyQixDQUFDO1FBQzNHLElBQUksQ0FBQyxLQUFLLENBQUMsUUFBUSxDQUFDLEdBQUcsQ0FBQyxVQUFBLElBQUksSUFBSSxPQUFBLElBQUksQ0FBQyxPQUFPLENBQUMscUJBQXFCLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxFQUE1QyxDQUE0QyxDQUFzQixDQUFDLENBQUM7UUFDcEcsNEJBQTRCO1FBQzVCLDJDQUEyQztRQUMzQyxRQUFRLENBQUM7SUFDWCxDQUFDO0lBSUQsc0NBQVMsR0FBVCxVQUFVLElBQXNCO1FBQzlCLElBQUksQ0FBQyxVQUFVLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQzlCLENBQUM7SUFFRCxzREFBc0Q7SUFDdEQsbUJBQW1CO0lBQ25CLHdDQUF3QztJQUN4Qyw2QkFBNkI7SUFDN0IsY0FBYztJQUNkLGlDQUFpQztJQUNqQyxRQUFRO0lBQ1IsTUFBTTtJQUNOLElBQUk7SUFFSix1REFBdUQ7SUFDdkQsZUFBZTtJQUNmLDBDQUEwQztJQUMxQyw2QkFBNkI7SUFDN0IsUUFBUTtJQUNSLE1BQU07SUFDTixJQUFJO0lBRUosNENBQWUsR0FBZixVQUFnQixLQUFxQjs7O1lBQ25DLEtBQWlCLElBQUEsVUFBQSxTQUFBLEtBQUssQ0FBQSw0QkFBQSwrQ0FBRTtnQkFBbkIsSUFBSSxJQUFJLGtCQUFBO2dCQUNYLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxNQUFNLENBQUM7b0JBQ2pDLElBQUksSUFBSSxDQUFDLE9BQU8sRUFBRTs7NEJBQ2hCLEtBQW9CLElBQUEsS0FBQSxTQUFBLElBQUksQ0FBQyxPQUFPLENBQUMsTUFBTSxFQUFFLENBQUEsZ0JBQUEsNEJBQUU7Z0NBQXRDLElBQUksT0FBTyxXQUFBO2dDQUNkLElBQUksT0FBTyxDQUFDLElBQUksS0FBSyw0QkFBVyxDQUFDLFNBQVM7dUNBQ3JDLE9BQU8sQ0FBQyxJQUFJLEtBQUssNEJBQVcsQ0FBQyxtQkFBbUIsRUFBRztvQ0FDdEQsT0FBTyxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztpQ0FDckI7NkJBQ0Y7Ozs7Ozs7OztxQkFDRjthQUNGOzs7Ozs7Ozs7SUFDSCxDQUFDO0lBRUQsZ0RBQW1CLEdBQW5CLFVBQW9CLElBQW9CLElBQVMsQ0FBQztJQUNsRCwyQ0FBYyxHQUFkLFVBQWUsSUFBZTtRQUM1QixJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsQ0FBQztJQUMzQixDQUFDO0lBQ0Qsc0NBQVMsR0FBVCxVQUFVLElBQVU7UUFDbEIsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7SUFDM0IsQ0FBQztJQUNELDJDQUFjLEdBQWQsVUFBZSxJQUFlLElBQVMsQ0FBQztJQUN4Qyx3Q0FBVyxHQUFYLFVBQVksSUFBWSxJQUFTLENBQUM7SUFDbEMsdUNBQVUsR0FBVixVQUFXLElBQVcsSUFBUyxDQUFDO0lBQ2hDLG1EQUFzQixHQUF0QixVQUF1QixJQUF1QjtRQUM1QyxJQUFJLElBQUksQ0FBQyxNQUFNLFlBQVkseUJBQVEsRUFBRTtZQUNuQyxJQUFJLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztTQUN6QjthQUFNO1lBQ0wsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7U0FDMUI7SUFDSCxDQUFDO0lBQ0QsMENBQWEsR0FBYixVQUFjLElBQWM7UUFDMUIsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7SUFDM0IsQ0FBQztJQUNELGdEQUFtQixHQUFuQixVQUFvQixJQUFvQixJQUFTLENBQUM7SUFDbEQsZ0RBQW1CLEdBQW5CLFVBQW9CLElBQW9CO1FBQ3RDLElBQUksSUFBSSxDQUFDLE1BQU0sWUFBWSxzQkFBSyxFQUFFO1lBQ2hDLElBQUksQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO1NBQ3pCO0lBQ0gsQ0FBQztJQUNELHVDQUFVLEdBQVYsVUFBVyxJQUFXLElBQVMsQ0FBQztJQUNoQyxtREFBc0IsR0FBdEIsVUFBdUIsSUFBdUI7UUFDNUMsSUFBSSxJQUFJLENBQUMsTUFBTSxZQUFZLHlCQUFRLEVBQUU7WUFDbkMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7U0FDekI7YUFBTTtZQUNMLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLGVBQWUsQ0FBQyxDQUFDO1lBQ2pDLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLGVBQWUsQ0FBQyxDQUFDO1NBQ2xDO0lBQ0gsQ0FBQztJQUNELDBDQUFhLEdBQWIsVUFBYyxJQUFjO1FBQzFCLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLGNBQWMsQ0FBQyxDQUFDO1FBQ2hDLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLGNBQWMsQ0FBQyxDQUFDO0lBQ2xDLENBQUM7SUFDRCxnREFBbUIsR0FBbkIsVUFBb0IsSUFBb0I7UUFDdEMsSUFBSSxJQUFJLENBQUMsTUFBTSxZQUFZLHNCQUFLLEVBQUU7WUFDaEMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7U0FDekI7YUFBTTtZQUNMLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLGVBQWUsQ0FBQyxDQUFDO1NBQ2xDO0lBQ0gsQ0FBQztJQUNELHVDQUFVLEdBQVYsVUFBVyxJQUFXO1FBQ3BCLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDO0lBQzNCLENBQUM7SUFDRCxvREFBdUIsR0FBdkIsVUFBd0IsSUFBd0IsSUFBUyxDQUFDO0lBQzFELDJDQUFjLEdBQWQsVUFBZSxJQUFlO1FBQzVCLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxlQUFlLENBQUMsQ0FBQztJQUM3QyxDQUFDO0lBQ0gseUJBQUM7QUFBRCxDQUFDLEFBMUdELENBQXdDLHlCQUFlLEdBMEd0RDtBQTFHWSxnREFBa0IiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1xuICBFbGVtZW50VmlzaXRvciBhcyBJVmlzaXRvcixcbiAgRmlsZSxcbiAgVHlwZURlZmluaXRpb24sXG4gIE5hbWVzcGFjZSxcbiAgRW51bSxcbiAgRW51bVZhbHVlLFxuICBHbG9iYWwsXG4gIExvY2FsLFxuICBGdW5jdGlvblByb3RvdHlwZSxcbiAgRnVuY3Rpb24sXG4gIEZ1bmN0aW9uVGFyZ2V0LFxuICBGaWVsZFByb3RvdHlwZSxcbiAgRmllbGQsXG4gIFByb3BlcnR5UHJvdG90eXBlLFxuICBQcm9wZXJ0eSxcbiAgQ2xhc3NQcm90b3R5cGUsXG4gIENsYXNzLFxuICBJbnRlcmZhY2VQcm90b3R5cGUsXG4gIEludGVyZmFjZSxcbiAgRWxlbWVudCxcbiAgTm9kZSxcbiAgTm9kZUtpbmQsXG4gIEVsZW1lbnRLaW5kXG59IGZyb20gXCJhc3NlbWJseXNjcmlwdFwiO1xuXG5pbXBvcnQgeyBWaXNpdG9yLCBBYnN0cmFjdFZpc2l0b3IsIENvbGxlY3Rpb24gfSBmcm9tIFwiLi4vdmlzaXRvclwiO1xuaW1wb3J0IHsgQVNUVmlzaXRvciB9IGZyb20gXCIuLi9hc3QvaW5kZXhcIjtcbmltcG9ydCB7IERlY2xhcmF0aW9uU3RhdGVtZW50IH0gZnJvbSAnYXNzZW1ibHlzY3JpcHQnO1xuaW1wb3J0IHsgRGVjbGFyZWRFbGVtZW50IH0gZnJvbSAnYXNzZW1ibHlzY3JpcHQnO1xuXG5pbnRlcmZhY2UgRWxlbWVudFZpc2l0b3IgZXh0ZW5kcyBWaXNpdG9yPEVsZW1lbnQ+LCBJVmlzaXRvciB7fVxuXG5leHBvcnQgY2xhc3MgQmFzZUVsZW1lbnRWaXNpdG9yIGV4dGVuZHMgQWJzdHJhY3RWaXNpdG9yPEVsZW1lbnQ+XG4gIGltcGxlbWVudHMgRWxlbWVudFZpc2l0b3Ige1xuICBhc3RWaXNpdG9yOiBBU1RWaXNpdG9yO1xuICBcbiAgdmlzaXRGaWxlKG5vZGU6IEZpbGUpOiB2b2lkIHtcbiAgICBjb25zb2xlLmxvZyhub2RlLm5hbWUgKyBcIi0tLS0tXCIpXG4gICAgbGV0IGRlY2xhcmVzOiBEZWNsYXJhdGlvblN0YXRlbWVudFtdO1xuICAgIGRlYnVnZ2VyO1xuICAgIGRlY2xhcmVzID0gbm9kZS5zb3VyY2Uuc3RhdGVtZW50cy5maWx0ZXIocyA9PiBzIGluc3RhbmNlb2YgRGVjbGFyYXRpb25TdGF0ZW1lbnQpIGFzIERlY2xhcmF0aW9uU3RhdGVtZW50W107XG4gICAgdGhpcy52aXNpdChkZWNsYXJlcy5tYXAoc3RtdCA9PiBub2RlLnByb2dyYW0uZWxlbWVudHNCeURlY2xhcmF0aW9uLmdldChzdG10KSkgYXMgRGVjbGFyZWRFbGVtZW50W10pO1xuICAgIC8vIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgICAvLyB0aGlzLnZpc2l0KG5vZGUucHJvZ3JhbS5lbGVtZW50c0J5TmFtZSk7XG4gICAgZGVidWdnZXI7XG4gIH1cblxuXG5cbiAgdmlzaXROb2RlKG5vZGU6IENvbGxlY3Rpb248Tm9kZT4pOiB2b2lkIHtcbiAgICB0aGlzLmFzdFZpc2l0b3IudmlzaXQobm9kZSk7XG4gIH1cblxuICAvLyB2aXNpdChlbGVtZW50OiBFbGVtZW50IHwgRWxlbWVudFtdIHwgbnVsbCApOiB2b2lkIHtcbiAgLy8gICBpZiAoZWxlbWVudCkge1xuICAvLyAgICAgaWYgKGVsZW1lbnQgaW5zdGFuY2VvZiBFbGVtZW50KSB7XG4gIC8vICAgICAgIGVsZW1lbnQudmlzaXQodGhpcyk7XG4gIC8vICAgICB9ZWxzZSB7XG4gIC8vICAgICAgIGVsZW1lbnQubWFwKHRoaXMudmlzaXQpO1xuICAvLyAgICAgfVxuICAvLyAgIH1cbiAgLy8gfVxuXG4gIC8vIHZpc2l0TWVtZWJlcnMobWFwOiBNYXA8YW55LCBFbGVtZW50PiB8IG51bGwpOiB2b2lkIHtcbiAgLy8gICBpZiAobWFwKSB7XG4gIC8vICAgICBmb3IgKGxldCBlbGVtZW50IG9mIG1hcC52YWx1ZXMoKSkge1xuICAvLyAgICAgICBlbGVtZW50LnZpc2l0KHRoaXMpO1xuICAvLyAgICAgfVxuICAvLyAgIH1cbiAgLy8gfVxuXG4gIHZpc2l0SW50ZXJmYWNlcyhmaWxlczogSXRlcmFibGU8RmlsZT4pOiB2b2lkIHtcbiAgICBmb3IgKGxldCBmaWxlIG9mIGZpbGVzKSB7XG4gICAgICBpZiAoIWZpbGUubmFtZS5zdGFydHNXaXRoKFwifmxpYlwiKSlcbiAgICAgIGlmIChmaWxlLm1lbWJlcnMpIHtcbiAgICAgICAgZm9yIChsZXQgZWxlbWVudCBvZiBmaWxlLm1lbWJlcnMudmFsdWVzKCkpIHtcbiAgICAgICAgICBpZiAoZWxlbWVudC5raW5kID09PSBFbGVtZW50S2luZC5JTlRFUkZBQ0UgXG4gICAgICAgICAgICB8fCBlbGVtZW50LmtpbmQgPT09IEVsZW1lbnRLaW5kLklOVEVSRkFDRV9QUk9UT1RZUEUgKSB7XG4gICAgICAgICAgICBlbGVtZW50LnZpc2l0KHRoaXMpO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHZpc2l0VHlwZURlZmluaXRpb24obm9kZTogVHlwZURlZmluaXRpb24pOiB2b2lkIHt9XG4gIHZpc2l0TmFtZXNwYWNlKG5vZGU6IE5hbWVzcGFjZSk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgfVxuICB2aXNpdEVudW0obm9kZTogRW51bSk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgfVxuICB2aXNpdEVudW1WYWx1ZShub2RlOiBFbnVtVmFsdWUpOiB2b2lkIHt9XG4gIHZpc2l0R2xvYmFsKG5vZGU6IEdsb2JhbCk6IHZvaWQge31cbiAgdmlzaXRMb2NhbChub2RlOiBMb2NhbCk6IHZvaWQge31cbiAgdmlzaXRGdW5jdGlvblByb3RvdHlwZShub2RlOiBGdW5jdGlvblByb3RvdHlwZSk6IHZvaWQge1xuICAgIGlmIChub2RlLnBhcmVudCBpbnN0YW5jZW9mIEZ1bmN0aW9uKSB7XG4gICAgICBub2RlLnBhcmVudC52aXNpdCh0aGlzKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy52aXNpdChub2RlLm1lbWJlcnMpO1xuICAgIH1cbiAgfVxuICB2aXNpdEZ1bmN0aW9uKG5vZGU6IEZ1bmN0aW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLm1lbWJlcnMpO1xuICB9XG4gIHZpc2l0RnVuY3Rpb25UYXJnZXQobm9kZTogRnVuY3Rpb25UYXJnZXQpOiB2b2lkIHt9XG4gIHZpc2l0RmllbGRQcm90b3R5cGUobm9kZTogRmllbGRQcm90b3R5cGUpOiB2b2lkIHtcbiAgICBpZiAobm9kZS5wYXJlbnQgaW5zdGFuY2VvZiBGaWVsZCkge1xuICAgICAgbm9kZS5wYXJlbnQudmlzaXQodGhpcyk7XG4gICAgfVxuICB9XG4gIHZpc2l0RmllbGQobm9kZTogRmllbGQpOiB2b2lkIHt9XG4gIHZpc2l0UHJvcGVydHlQcm90b3R5cGUobm9kZTogUHJvcGVydHlQcm90b3R5cGUpOiB2b2lkIHtcbiAgICBpZiAobm9kZS5wYXJlbnQgaW5zdGFuY2VvZiBQcm9wZXJ0eSkge1xuICAgICAgbm9kZS5wYXJlbnQudmlzaXQodGhpcyk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMudmlzaXQobm9kZS5nZXR0ZXJQcm90b3R5cGUpO1xuICAgICAgdGhpcy52aXNpdChub2RlLnNldHRlclByb3RvdHlwZSk7XG4gICAgfVxuICB9XG4gIHZpc2l0UHJvcGVydHkobm9kZTogUHJvcGVydHkpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZ2V0dGVySW5zdGFuY2UpO1xuICAgIHRoaXMudmlzaXQobm9kZS5zZXR0ZXJJbnN0YW5jZSk7XG4gIH1cbiAgdmlzaXRDbGFzc1Byb3RvdHlwZShub2RlOiBDbGFzc1Byb3RvdHlwZSk6IHZvaWQge1xuICAgIGlmIChub2RlLnBhcmVudCBpbnN0YW5jZW9mIENsYXNzKSB7XG4gICAgICBub2RlLnBhcmVudC52aXNpdCh0aGlzKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy52aXNpdChub2RlLmluc3RhbmNlTWVtYmVycyk7XG4gICAgfVxuICB9XG4gIHZpc2l0Q2xhc3Mobm9kZTogQ2xhc3MpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUubWVtYmVycyk7XG4gIH1cbiAgdmlzaXRJbnRlcmZhY2VQcm90b3R5cGUobm9kZTogSW50ZXJmYWNlUHJvdG90eXBlKTogdm9pZCB7fVxuICB2aXNpdEludGVyZmFjZShub2RlOiBJbnRlcmZhY2UpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUucHJvdG90eXBlLmluc3RhbmNlTWVtYmVycyk7XG4gIH1cbn1cbiJdfQ==