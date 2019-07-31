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
var element_1 = require("../element");
var astPrinter_1 = require("./astPrinter");
var ProgramPrinter = /** @class */ (function (_super) {
    __extends(ProgramPrinter, _super);
    function ProgramPrinter() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
        _this.depth = 0;
        _this.astVisitor = new astPrinter_1.PrinterVisitor(_this.parser, _this.writer);
        return _this;
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZWxlbWVudFByaW50ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi9zcmMvaW5zdGFuY2VzL2VsZW1lbnRQcmludGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7OztBQTBCQSxzQ0FBZ0Q7QUFDaEQsMkNBQThDO0FBRzlDO0lBQTRDLGtDQUFrQjtJQUE5RDtRQUFBLHFFQW1HQztRQWpHQyxXQUFLLEdBQVcsQ0FBQyxDQUFDO1FBQ2xCLGdCQUFVLEdBQW9CLElBQUksMkJBQWMsQ0FBQyxLQUFJLENBQUMsTUFBTSxFQUFFLEtBQUksQ0FBQyxNQUFNLENBQUMsQ0FBQzs7SUFnRzdFLENBQUM7SUE3RkMsOEJBQUssR0FBTCxVQUFNLElBQXlCO1FBQzdCLElBQUksSUFBSSxJQUFjLElBQUssQ0FBQyxJQUFJLElBQWMsSUFBSyxDQUFDLFlBQVksQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLEVBQUU7WUFDaEYsT0FBTztTQUNSO1FBQ0QsaUJBQU0sS0FBSyxZQUFDLElBQUksQ0FBQyxDQUFDO0lBQ3BCLENBQUM7SUFFRCw4QkFBSyxHQUFMLFVBQU0sR0FBVyxFQUFFLE9BQXdCO1FBQXhCLHdCQUFBLEVBQUEsZUFBd0I7UUFDekMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLEdBQUcsR0FBRyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7SUFDNUUsQ0FBQztJQUVELGtDQUFTLEdBQVQsVUFBVSxJQUFVO1FBQ2xCLElBQUksSUFBSSxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLEVBQUU7WUFDN0IsT0FBTztTQUNSO1FBQ0QsSUFBSSxDQUFDLEtBQUssQ0FBQyxpQkFBaUIsR0FBRyxJQUFJLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxDQUFD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LENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ3RCLDZDQUE2QztRQUM3QyxJQUFJLFVBQVUsR0FBc0IsSUFBSSxDQUFDLFdBQVksQ0FBQyxlQUFlLENBQUM7UUFDdEUsSUFBSSxVQUFVLEVBQUU7WUFDZCxJQUFJLENBQUMsS0FBSyxDQUFDLGFBQWEsR0FBRyxVQUFVLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7U0FDbkQ7UUFDRCxJQUFJLENBQUMsS0FBSyxDQUFDLEVBQUUsRUFBRSxJQUFJLENBQUMsQ0FBQztRQUNyQixJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsQ0FBQztJQUMzQixDQUFDO0lBQ0QsZ0RBQXVCLEdBQXZCLFVBQXdCLElBQXdCO1FBQzlDLElBQUksQ0FBQyxLQUFLLENBQUMsdUJBQXVCLENBQUMsQ0FBQztRQUNwQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLENBQUM7UUFDNUIsaUJBQU0sdUJBQXVCLFlBQUMsSUFBSSxDQUFDLENBQUM7SUFDdEMsQ0FBQztJQUVELHVDQUFjLEdBQWQsVUFBZSxJQUFlO1FBQzVCLElBQUksQ0FBQyxLQUFLLENBQUMsYUFBYSxHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUN0QyxpQkFBTSxjQUFjLFlBQUMsSUFBSSxDQUFDLENBQUM7UUFDM0Isc0RBQXNEO1FBQ3RELDhDQUE4QztRQUM5QyxJQUFJO0lBQ04sQ0FBQztJQUNILHFCQUFDO0FBQUQsQ0FBQyxBQW5HRCxDQUE0Qyw0QkFBa0IsR0FtRzdEIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgRWxlbWVudFZpc2l0b3IsXG4gIEZpbGUsXG4gIFR5cGVEZWZpbml0aW9uLFxuICBOYW1lc3BhY2UsXG4gIEVudW0sXG4gIEVudW1WYWx1ZSxcbiAgR2xvYmFsLFxuICBMb2NhbCxcbiAgRnVuY3Rpb25Qcm90b3R5cGUsXG4gIEZ1bmN0aW9uVGFyZ2V0LFxuICBGaWVsZFByb3RvdHlwZSxcbiAgRmllbGQsXG4gIFByb3BlcnR5UHJvdG90eXBlLFxuICBQcm9wZXJ0eSxcbiAgQ2xhc3NQcm90b3R5cGUsXG4gIENsYXNzLFxuICBJbnRlcmZhY2VQcm90b3R5cGUsXG4gIEludGVyZmFjZSxcbiAgRnVuY3Rpb24sXG4gIFByb2dyYW0sXG4gIENvbXBpbGVyLFxuICBDbGFzc0RlY2xhcmF0aW9uLFxuICBQYXJzZXIsXG4gIEVsZW1lbnRcbn0gZnJvbSBcImFzc2VtYmx5c2NyaXB0XCI7XG5pbXBvcnQgeyBCYXNlRWxlbWVudFZpc2l0b3IgfSBmcm9tIFwiLi4vZWxlbWVudFwiO1xuaW1wb3J0IHsgUHJpbnRlclZpc2l0b3IgfSBmcm9tIFwiLi9hc3RQcmludGVyXCI7XG5pbXBvcnQgeyBDb2xsZWN0aW9uIH0gZnJvbSBcIi4uL3Zpc2l0b3JcIjtcblxuZXhwb3J0IGRlZmF1bHQgY2xhc3MgUHJvZ3JhbVByaW50ZXIgZXh0ZW5kcyBCYXNlRWxlbWVudFZpc2l0b3JcbiAgaW1wbGVtZW50cyBFbGVtZW50VmlzaXRvciB7XG4gIGRlcHRoOiBudW1iZXIgPSAwO1xuICBhc3RWaXNpdG9yOiBQcmludGVyVmlzaXRvciAgPSBuZXcgUHJpbnRlclZpc2l0b3IodGhpcy5wYXJzZXIsIHRoaXMud3JpdGVyKTtcblxuXG4gIHZpc2l0KG5vZGU6IENvbGxlY3Rpb248RWxlbWVudD4pOiB2b2lkIHtcbiAgICBpZiAobm9kZSAmJiAoPEVsZW1lbnQ+bm9kZSkubmFtZSAmJiAoPEVsZW1lbnQ+bm9kZSkuaW50ZXJuYWxOYW1lLnN0YXJ0c1dpdGgoXCJ+XCIpKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIHN1cGVyLnZpc2l0KG5vZGUpO1xuICB9XG5cbiAgd3JpdGUoc3RyOiBzdHJpbmcsIG5ld2xpbmU6IGJvb2xlYW4gPSBmYWxzZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGVyLndyaXRlKFwiICBcIi5yZXBlYXQodGhpcy5kZXB0aCkgKyBzdHIgKyAobmV3bGluZSA/IFwiXFxuXCIgOiBcIiBcIikpO1xuICB9XG5cbiAgdmlzaXRGaWxlKG5vZGU6IEZpbGUpOiB2b2lkIHtcbiAgICBpZiAobm9kZS5uYW1lLnN0YXJ0c1dpdGgoXCJ+XCIpKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIHRoaXMud3JpdGUoXCJ2aXNpdGluZyBmaWxlOiBcIiArIG5vZGUubmFtZSwgdHJ1ZSk7XG4gICAgdGhpcy5kZXB0aCsrO1xuICAgIHN1cGVyLnZpc2l0RmlsZShub2RlKTtcbiAgICB0aGlzLmRlcHRoLS07XG4gIH1cbiAgdmlzaXRUeXBlRGVmaW5pdGlvbihub2RlOiBUeXBlRGVmaW5pdGlvbik6IHZvaWQge1xuICAgIHRoaXMud3JpdGUobm9kZS50eXBlLnRvU3RyaW5nKCkpO1xuICAgIHRoaXMuYXN0VmlzaXRvci52aXNpdChub2RlLnR5cGVQYXJhbWV0ZXJOb2Rlcyk7XG4gIH1cbiAgdmlzaXROYW1lc3BhY2Uobm9kZTogTmFtZXNwYWNlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIk5hbWVzcGFjZTogXCIgKyBub2RlLm5hbWUsIHRydWUpO1xuICAgIHN1cGVyLnZpc2l0TmFtZXNwYWNlKG5vZGUpO1xuICB9XG4gIHZpc2l0RW51bShub2RlOiBFbnVtKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkVudW06IFwiICsgbm9kZSwgdHJ1ZSk7XG4gICAgc3VwZXIudmlzaXROYW1lc3BhY2Uobm9kZSk7XG4gIH1cbiAgdmlzaXRFbnVtVmFsdWUobm9kZTogRW51bVZhbHVlKTogdm9pZCB7XG4gICAgdGhpcy5hc3RWaXNpdG9yLnZpc2l0KG5vZGUudmFsdWVOb2RlKTtcbiAgfVxuICB2aXNpdEdsb2JhbChub2RlOiBHbG9iYWwpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiR2xvYmFsOiBcIik7XG4gICAgdGhpcy52aXNpdE5vZGUobm9kZS5kZWNsYXJhdGlvbik7XG4gICAgLy8gdGhpcy5hc3RWaXNpdG9yLnZpc2l0KG5vZGUuaWRlbnRpZmllck5vZGUpO1xuICAgIC8vIHRoaXMudmlzaXROb2RlKG5vZGUudHlwZU5vZGUpO1xuICAgIC8vIHRoaXMudmlzaXROb2RlKG5vZGUuaW5pdGlhbGl6ZXJOb2RlKTtcbiAgICAvLyB0aGlzLmFzdFZpc2l0b3Iud3JpdGUodGhpcy5hc3RWaXNpdG9yLmZsdXNoKFwiOiBcIikpO1xuICB9XG4gIHZpc2l0TG9jYWwobm9kZTogTG9jYWwpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiTG9jYWw6IFwiICsgbm9kZS5uYW1lLCB0cnVlKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmlkZW50aWZpZXJOb2RlKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmluaXRpYWxpemVyTm9kZSk7XG4gIH1cbiAgdmlzaXRGdW5jdGlvblByb3RvdHlwZShub2RlOiBGdW5jdGlvblByb3RvdHlwZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJGdW5jdGlvbiBQcm90b1R5cGU6XCIgKyBub2RlLnNpZ25hdHVyZSk7XG4gICAgc3VwZXIudmlzaXRGdW5jdGlvblByb3RvdHlwZShub2RlKTtcbiAgfVxuICB2aXNpdEZ1bmN0aW9uKG5vZGU6IEZ1bmN0aW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcInZpc2l0aW5nIGZ1bmN0aW9uOiBcIiArIG5vZGUubmFtZSk7XG4gICAgdGhpcy53cml0ZShub2RlLnNpZ25hdHVyZS50b1N0cmluZygpLCB0cnVlKTtcbiAgICAvLyB0aGlzLndyaXRlKG5vZGUudG9TdHJpbmcoKSk7XG4gICAgLy8gaWYobWVtcylcbiAgICAvLyBmb3IgKGxldCBtZW0gb2YgbWVtcy52YWx1ZXMoKSl7XG4gICAgLy8gICAgIHRoaXMud3JpdGUobWVtLnRvU3RyaW5nKCksIHRydWUpXG4gICAgLy8gfVxuICB9XG4gIHZpc2l0RnVuY3Rpb25UYXJnZXQobm9kZTogRnVuY3Rpb25UYXJnZXQpOiB2b2lkIHt9XG4gIHZpc2l0RmllbGRQcm90b3R5cGUobm9kZTogRmllbGRQcm90b3R5cGUpOiB2b2lkIHt9XG4gIHZpc2l0RmllbGQobm9kZTogRmllbGQpOiB2b2lkIHt9XG4gIHZpc2l0UHJvcGVydHlQcm90b3R5cGUobm9kZTogUHJvcGVydHlQcm90b3R5cGUpOiB2b2lkIHt9XG4gIHZpc2l0UHJvcGVydHkobm9kZTogUHJvcGVydHkpOiB2b2lkIHt9XG4gIHZpc2l0Q2xhc3NQcm90b3R5cGUobm9kZTogQ2xhc3NQcm90b3R5cGUpOiB2b2lkIHtcbiAgICBzdXBlci52aXNpdENsYXNzUHJvdG90eXBlKG5vZGUpO1xuICAgIHRoaXMud3JpdGUoXCJcIiwgdHJ1ZSk7XG4gIH1cbiAgdmlzaXRDbGFzcyhub2RlOiBDbGFzcyk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUobm9kZS5uYW1lKTtcbiAgICAvLyB0aGlzLndyaXRlKG5vZGUubWVtYmVycyEuc2l6ZS50b1N0cmluZygpKTtcbiAgICBsZXQgaW50ZXJmYWNlcyA9ICg8Q2xhc3NEZWNsYXJhdGlvbj5ub2RlLmRlY2xhcmF0aW9uKS5pbXBsZW1lbnRzVHlwZXM7XG4gICAgaWYgKGludGVyZmFjZXMpIHtcbiAgICAgIHRoaXMud3JpdGUoXCJpbXBsZW1lbnRzIFwiICsgaW50ZXJmYWNlcy5qb2luKFwiLCBcIikpO1xuICAgIH1cbiAgICB0aGlzLndyaXRlKFwiXCIsIHRydWUpO1xuICAgIHRoaXMudmlzaXQobm9kZS5tZW1iZXJzKTtcbiAgfVxuICB2aXNpdEludGVyZmFjZVByb3RvdHlwZShub2RlOiBJbnRlcmZhY2VQcm90b3R5cGUpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiSW50ZXJmYWNlIFByb3RvdHlwZTogXCIpO1xuICAgIHRoaXMud3JpdGUobm9kZS5uYW1lLCB0cnVlKTtcbiAgICBzdXBlci52aXNpdEludGVyZmFjZVByb3RvdHlwZShub2RlKTtcbiAgfVxuXG4gIHZpc2l0SW50ZXJmYWNlKG5vZGU6IEludGVyZmFjZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJJbnRlcmZhY2U6IFwiICsgbm9kZS5uYW1lKTtcbiAgICBzdXBlci52aXNpdEludGVyZmFjZShub2RlKTtcbiAgICAvLyBmb3IgKGxldCBba2V5LCB2YWx1ZV0gb2Ygbm9kZS5tZW1iZXJzIS5lbnRyaWVzKCkpIHtcbiAgICAvLyAgIHRoaXMud3JpdGUoa2V5ICsgXCIgXCIgKyB2YWx1ZS50b1N0cmluZygpKTtcbiAgICAvLyB9XG4gIH1cbn1cbiJdfQ==