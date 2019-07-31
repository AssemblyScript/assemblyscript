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
    function BaseElementVisitor(parser, compiler, writer) {
        var _this = _super.call(this) || this;
        _this.parser = parser;
        _this.compiler = compiler;
        _this.writer = writer;
        return _this;
    }
    Object.defineProperty(BaseElementVisitor.prototype, "files", {
        get: function () {
            return this.parser.program.filesByName.values();
        },
        enumerable: true,
        configurable: true
    });
    BaseElementVisitor.prototype.getFunctionByName = function (name) {
        return this.compiler.program.instancesByName.get(name);
    };
    BaseElementVisitor.prototype.start = function () {
        this.visit(this.files);
    };
    BaseElementVisitor.prototype.visitFile = function (node) {
        var declares;
        // tslint:disable-next-line: as-types
        declares = node.source.statements.filter(function (s) { return s instanceof assemblyscript_2.DeclarationStatement; });
        this.visit(declares.map(function (stmt) { return node.program.elementsByDeclaration.get(stmt); }));
        // this.visit(node.members);
        // this.visit(node.program.elementsByName);
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
    BaseElementVisitor.prototype.visitManagedClasses = function (files, visitor) {
        this.visitElements(files, assemblyscript_1.ElementKind.CLASS, visitor);
    };
    BaseElementVisitor.prototype.visitInterfaces = function (files, visitor) {
        this.visitElements(files, assemblyscript_1.ElementKind.INTERFACE_PROTOTYPE, visitor);
    };
    BaseElementVisitor.prototype.visitElements = function (files, elementKind, visitor) {
        var e_1, _a, e_2, _b;
        try {
            for (var files_1 = __values(files), files_1_1 = files_1.next(); !files_1_1.done; files_1_1 = files_1.next()) {
                var file = files_1_1.value;
                if (!file.name.startsWith("~lib")) {
                    if (file.members) {
                        try {
                            for (var _c = __values(file.members.values()), _d = _c.next(); !_d.done; _d = _c.next()) {
                                var element = _d.value;
                                if (element.kind == elementKind) {
                                    if (visitor) {
                                        visitor(element);
                                    }
                                    else {
                                        element.visit(this);
                                    }
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYmFzZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uL3NyYy9lbGVtZW50L2Jhc2UudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFBLGlEQTBCd0I7QUFFeEIsc0NBQWtFO0FBRWxFLGlEQUFzRDtBQU10RDtJQUFpRCxzQ0FBd0I7SUFLdkUsNEJBQW1CLE1BQWMsRUFBUyxRQUFrQixFQUFTLE1BQWM7UUFBbkYsWUFDRSxpQkFBTyxTQUNSO1FBRmtCLFlBQU0sR0FBTixNQUFNLENBQVE7UUFBUyxjQUFRLEdBQVIsUUFBUSxDQUFVO1FBQVMsWUFBTSxHQUFOLE1BQU0sQ0FBUTs7SUFFbkYsQ0FBQztJQUVELHNCQUFJLHFDQUFLO2FBQVQ7WUFDRSxPQUFPLElBQUksQ0FBQyxNQUFNLENBQUMsT0FBTyxDQUFDLFdBQVcsQ0FBQyxNQUFNLEVBQUUsQ0FBQztRQUNsRCxDQUFDOzs7T0FBQTtJQUVELDhDQUFpQixHQUFqQixVQUFrQixJQUFZO1FBQzVCLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQWEsQ0FBQztJQUNyRSxDQUFDO0lBRUQsa0NBQUssR0FBTDtRQUNFLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQ3pCLENBQUM7SUFFRCxzQ0FBUyxHQUFULFVBQVUsSUFBVTtRQUNsQixJQUFJLFFBQWdDLENBQUM7UUFDckMscUNBQXFDO1FBQ3JDLFFBQVEsR0FBRyxJQUFJLENBQUMsTUFBTSxDQUFDLFVBQVUsQ0FBQyxNQUFNLENBQUMsVUFBQSxDQUFDLElBQUksT0FBQSxDQUFDLFlBQVkscUNBQW9CLEVBQWpDLENBQWlDLENBQTJCLENBQUM7UUFDM0csSUFBSSxDQUFDLEtBQUssQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLFVBQUEsSUFBSSxJQUFJLE9BQUEsSUFBSSxDQUFDLE9BQU8sQ0FB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MUQsMkNBQWMsR0FBZCxVQUFlLElBQWU7UUFDNUIsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLGVBQWUsQ0FBQyxDQUFDO0lBQzdDLENBQUM7SUFDSCx5QkFBQztBQUFELENBQUMsQUFuSUQsQ0FBaUQseUJBQWUsR0FtSS9EO0FBbklxQixnREFBa0IiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1xuICBFbGVtZW50VmlzaXRvciBhcyBJVmlzaXRvcixcbiAgRmlsZSxcbiAgVHlwZURlZmluaXRpb24sXG4gIE5hbWVzcGFjZSxcbiAgRW51bSxcbiAgRW51bVZhbHVlLFxuICBHbG9iYWwsXG4gIExvY2FsLFxuICBGdW5jdGlvblByb3RvdHlwZSxcbiAgRnVuY3Rpb24sXG4gIEZ1bmN0aW9uVGFyZ2V0LFxuICBGaWVsZFByb3RvdHlwZSxcbiAgRmllbGQsXG4gIFByb3BlcnR5UHJvdG90eXBlLFxuICBQcm9wZXJ0eSxcbiAgQ2xhc3NQcm90b3R5cGUsXG4gIENsYXNzLFxuICBJbnRlcmZhY2VQcm90b3R5cGUsXG4gIEludGVyZmFjZSxcbiAgRWxlbWVudCxcbiAgTm9kZSxcbiAgTm9kZUtpbmQsXG4gIEVsZW1lbnRLaW5kLFxuICBQYXJzZXIsXG4gIENvbXBpbGVyXG59IGZyb20gXCJhc3NlbWJseXNjcmlwdFwiO1xuXG5pbXBvcnQgeyBWaXNpdG9yLCBBYnN0cmFjdFZpc2l0b3IsIENvbGxlY3Rpb24gfSBmcm9tIFwiLi4vdmlzaXRvclwiO1xuaW1wb3J0IHsgQVNUVmlzaXRvciB9IGZyb20gXCIuLi9hc3QvaW5kZXhcIjtcbmltcG9ydCB7IERlY2xhcmF0aW9uU3RhdGVtZW50IH0gZnJvbSBcImFzc2VtYmx5c2NyaXB0XCI7XG5pbXBvcnQgeyBEZWNsYXJlZEVsZW1lbnQgfSBmcm9tIFwiYXNzZW1ibHlzY3JpcHRcIjtcbmltcG9ydCB7IFdyaXRlciB9IGZyb20gXCIuLlwiO1xuXG5pbnRlcmZhY2UgRWxlbWVudFZpc2l0b3IgZXh0ZW5kcyBWaXNpdG9yPEVsZW1lbnQ+LCBJVmlzaXRvciB7fVxuXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgQmFzZUVsZW1lbnRWaXNpdG9yIGV4dGVuZHMgQWJzdHJhY3RWaXNpdG9yPEVsZW1lbnQ+XG4gIGltcGxlbWVudHMgRWxlbWVudFZpc2l0b3Ige1xuXG4gIGFzdFZpc2l0b3I6IEFTVFZpc2l0b3I7XG5cbiAgY29uc3RydWN0b3IocHVibGljIHBhcnNlcjogUGFyc2VyLCBwdWJsaWMgY29tcGlsZXI6IENvbXBpbGVyLCBwdWJsaWMgd3JpdGVyOiBXcml0ZXIpIHtcbiAgICBzdXBlcigpO1xuICB9XG5cbiAgZ2V0IGZpbGVzKCk6IEl0ZXJhYmxlPEZpbGU+IHtcbiAgICByZXR1cm4gdGhpcy5wYXJzZXIucHJvZ3JhbS5maWxlc0J5TmFtZS52YWx1ZXMoKTtcbiAgfVxuXG4gIGdldEZ1bmN0aW9uQnlOYW1lKG5hbWU6IHN0cmluZyk6IEZ1bmN0aW9uIHtcbiAgICByZXR1cm4gdGhpcy5jb21waWxlci5wcm9ncmFtLmluc3RhbmNlc0J5TmFtZS5nZXQobmFtZSkgYXMgRnVuY3Rpb247XG4gIH1cblxuICBzdGFydCgpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KHRoaXMuZmlsZXMpO1xuICB9XG5cbiAgdmlzaXRGaWxlKG5vZGU6IEZpbGUpOiB2b2lkIHtcbiAgICB2YXIgZGVjbGFyZXM6IERlY2xhcmF0aW9uU3RhdGVtZW50W107XG4gICAgLy8gdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOiBhcy10eXBlc1xuICAgIGRlY2xhcmVzID0gbm9kZS5zb3VyY2Uuc3RhdGVtZW50cy5maWx0ZXIocyA9PiBzIGluc3RhbmNlb2YgRGVjbGFyYXRpb25TdGF0ZW1lbnQpIGFzIERlY2xhcmF0aW9uU3RhdGVtZW50W107XG4gICAgdGhpcy52aXNpdChkZWNsYXJlcy5tYXAoc3RtdCA9PiBub2RlLnByb2dyYW0uZWxlbWVudHNCeURlY2xhcmF0aW9uLmdldChzdG10KSkgYXMgRGVjbGFyZWRFbGVtZW50W10pO1xuICAgIC8vIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgICAvLyB0aGlzLnZpc2l0KG5vZGUucHJvZ3JhbS5lbGVtZW50c0J5TmFtZSk7XG4gIH1cblxuICB2aXNpdE5vZGUobm9kZTogQ29sbGVjdGlvbjxOb2RlPik6IHZvaWQge1xuICAgIHRoaXMuYXN0VmlzaXRvci52aXNpdChub2RlKTtcbiAgfVxuXG4gIC8vIHZpc2l0KGVsZW1lbnQ6IEVsZW1lbnQgfCBFbGVtZW50W10gfCBudWxsICk6IHZvaWQge1xuICAvLyAgIGlmIChlbGVtZW50KSB7XG4gIC8vICAgICBpZiAoZWxlbWVudCBpbnN0YW5jZW9mIEVsZW1lbnQpIHtcbiAgLy8gICAgICAgZWxlbWVudC52aXNpdCh0aGlzKTtcbiAgLy8gICAgIH1lbHNlIHtcbiAgLy8gICAgICAgZWxlbWVudC5tYXAodGhpcy52aXNpdCk7XG4gIC8vICAgICB9XG4gIC8vICAgfVxuICAvLyB9XG5cbiAgLy8gdmlzaXRNZW1lYmVycyhtYXA6IE1hcDxhbnksIEVsZW1lbnQ+IHwgbnVsbCk6IHZvaWQge1xuICAvLyAgIGlmIChtYXApIHtcbiAgLy8gICAgIGZvciAobGV0IGVsZW1lbnQgb2YgbWFwLnZhbHVlcygpKSB7XG4gIC8vICAgICAgIGVsZW1lbnQudmlzaXQodGhpcyk7XG4gIC8vICAgICB9XG4gIC8vICAgfVxuICAvLyB9XG5cbiAgdmlzaXRNYW5hZ2VkQ2xhc3NlcyhmaWxlczogSXRlcmFibGU8RmlsZT4sIHZpc2l0b3I/OiAoYzogQ2xhc3MpID0+IHZvaWQpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0RWxlbWVudHMoZmlsZXMsIEVsZW1lbnRLaW5kLkNMQVNTLCB2aXNpdG9yKTtcbiAgfVxuXG4gIHZpc2l0SW50ZXJmYWNlcyhmaWxlczogSXRlcmFibGU8RmlsZT4sIHZpc2l0b3I/OiAoKGk6IEludGVyZmFjZVByb3RvdHlwZSkgPT4gdm9pZCkpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0RWxlbWVudHMoZmlsZXMsIEVsZW1lbnRLaW5kLklOVEVSRkFDRV9QUk9UT1RZUEUgLCB2aXNpdG9yKTtcbiAgfVxuXG4gIHByaXZhdGUgdmlzaXRFbGVtZW50cyhmaWxlczogSXRlcmFibGU8RmlsZT4sIGVsZW1lbnRLaW5kOiBFbGVtZW50S2luZCwgdmlzaXRvcj86ICgoZTogRGVjbGFyZWRFbGVtZW50KSA9PiB2b2lkKSk6IHZvaWQge1xuICAgIGZvciAobGV0IGZpbGUgb2YgZmlsZXMpIHtcbiAgICAgIGlmICghZmlsZS5uYW1lLnN0YXJ0c1dpdGgoXCJ+bGliXCIpKSB7XG4gICAgICAgIGlmIChmaWxlLm1lbWJlcnMpIHtcbiAgICAgICAgICBmb3IgKGxldCBlbGVtZW50IG9mIGZpbGUubWVtYmVycy52YWx1ZXMoKSkge1xuICAgICAgICAgICAgaWYgKGVsZW1lbnQua2luZCA9PSBlbGVtZW50S2luZCkge1xuICAgICAgICAgICAgICBpZiAodmlzaXRvcikge1xuICAgICAgICAgICAgICAgIHZpc2l0b3IoZWxlbWVudCk7XG4gICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgZWxlbWVudC52aXNpdCh0aGlzKTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHZpc2l0VHlwZURlZmluaXRpb24obm9kZTogVHlwZURlZmluaXRpb24pOiB2b2lkIHt9XG4gIHZpc2l0TmFtZXNwYWNlKG5vZGU6IE5hbWVzcGFjZSk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgfVxuICB2aXNpdEVudW0obm9kZTogRW51bSk6IHZvaWQge1xuICAgIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgfVxuICB2aXNpdEVudW1WYWx1ZShub2RlOiBFbnVtVmFsdWUpOiB2b2lkIHt9XG4gIHZpc2l0R2xvYmFsKG5vZGU6IEdsb2JhbCk6IHZvaWQge31cbiAgdmlzaXRMb2NhbChub2RlOiBMb2NhbCk6IHZvaWQge31cbiAgdmlzaXRGdW5jdGlvblByb3RvdHlwZShub2RlOiBGdW5jdGlvblByb3RvdHlwZSk6IHZvaWQge1xuICAgIGlmIChub2RlLnBhcmVudCBpbnN0YW5jZW9mIEZ1bmN0aW9uKSB7XG4gICAgICBub2RlLnBhcmVudC52aXNpdCh0aGlzKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy52aXNpdChub2RlLm1lbWJlcnMpO1xuICAgIH1cbiAgfVxuICB2aXNpdEZ1bmN0aW9uKG5vZGU6IEZ1bmN0aW9uKTogdm9pZCB7XG4gICAgdGhpcy52aXNpdChub2RlLm1lbWJlcnMpO1xuICB9XG4gIHZpc2l0RnVuY3Rpb25UYXJnZXQobm9kZTogRnVuY3Rpb25UYXJnZXQpOiB2b2lkIHt9XG4gIHZpc2l0RmllbGRQcm90b3R5cGUobm9kZTogRmllbGRQcm90b3R5cGUpOiB2b2lkIHtcbiAgICBpZiAobm9kZS5wYXJlbnQgaW5zdGFuY2VvZiBGaWVsZCkge1xuICAgICAgbm9kZS5wYXJlbnQudmlzaXQodGhpcyk7XG4gICAgfVxuICB9XG4gIHZpc2l0RmllbGQobm9kZTogRmllbGQpOiB2b2lkIHt9XG4gIHZpc2l0UHJvcGVydHlQcm90b3R5cGUobm9kZTogUHJvcGVydHlQcm90b3R5cGUpOiB2b2lkIHtcbiAgICBpZiAobm9kZS5wYXJlbnQgaW5zdGFuY2VvZiBQcm9wZXJ0eSkge1xuICAgICAgbm9kZS5wYXJlbnQudmlzaXQodGhpcyk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMudmlzaXQobm9kZS5nZXR0ZXJQcm90b3R5cGUpO1xuICAgICAgdGhpcy52aXNpdChub2RlLnNldHRlclByb3RvdHlwZSk7XG4gICAgfVxuICB9XG4gIHZpc2l0UHJvcGVydHkobm9kZTogUHJvcGVydHkpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUuZ2V0dGVySW5zdGFuY2UpO1xuICAgIHRoaXMudmlzaXQobm9kZS5zZXR0ZXJJbnN0YW5jZSk7XG4gIH1cbiAgdmlzaXRDbGFzc1Byb3RvdHlwZShub2RlOiBDbGFzc1Byb3RvdHlwZSk6IHZvaWQge1xuICAgIGlmIChub2RlLnBhcmVudCBpbnN0YW5jZW9mIENsYXNzKSB7XG4gICAgICBub2RlLnBhcmVudC52aXNpdCh0aGlzKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy52aXNpdChub2RlLmluc3RhbmNlTWVtYmVycyk7XG4gICAgfVxuICB9XG4gIHZpc2l0Q2xhc3Mobm9kZTogQ2xhc3MpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUubWVtYmVycyk7XG4gIH1cbiAgdmlzaXRJbnRlcmZhY2VQcm90b3R5cGUobm9kZTogSW50ZXJmYWNlUHJvdG90eXBlKTogdm9pZCB7fVxuICB2aXNpdEludGVyZmFjZShub2RlOiBJbnRlcmZhY2UpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0KG5vZGUucHJvdG90eXBlLmluc3RhbmNlTWVtYmVycyk7XG4gIH1cbn1cbiJdfQ==