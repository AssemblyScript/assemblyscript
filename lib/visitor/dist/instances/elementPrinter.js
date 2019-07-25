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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZWxlbWVudFByaW50ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi9pbnN0YW5jZXMvZWxlbWVudFByaW50ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7O0FBMEJBLDBDQUFvRDtBQUNwRCwyQ0FBOEM7QUFHOUM7SUFBNEMsa0NBQWtCO0lBSzVELHdCQUNVLE1BQWMsRUFDZCxRQUFrQixFQUNuQixNQUFjO1FBSHZCLFlBS0UsaUJBQU8sU0FLUjtRQVRTLFlBQU0sR0FBTixNQUFNLENBQVE7UUFDZCxjQUFRLEdBQVIsUUFBUSxDQUFVO1FBQ25CLFlBQU0sR0FBTixNQUFNLENBQVE7UUFOdkIsV0FBSyxHQUFXLENBQUMsQ0FBQztRQVNoQixLQUFJLENBQUMsVUFBVSxHQUFHLElBQUksMkJBQWMsQ0FBQyxNQUFNLENBQUMsQ0FBQztRQUM3QyxLQUFJLENBQUMsS0FBSyxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsV0FBVyxDQUFDLENBQUM7O1FBQ3pDLFlBQVk7UUFDWiwrQ0FBK0M7SUFDakQsQ0FBQztJQUVELDhCQUFLLEdBQUwsVUFBTSxJQUF5QjtRQUM3QixJQUFJLElBQUksSUFBVSxJQUFLLENBQUMsSUFBSSxJQUFjLElBQUssQ0FBQyxZQUFZLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxFQUFFO1lBQzVFLE9BQU87U0FDUjtRQUNELGlCQUFNLEtBQUssWUFBQyxJQUFJLENBQUMsQ0FBQztJQUNwQixDQUFDO0lBRUQsOEJBQUssR0FBTCxVQUFNLEdBQVcsRUFBRSxPQUF3QjtRQUF4Qix3QkFBQSxFQUFBLGVBQXdCO1FBQ3pDLElBQUksQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxHQUFHLEdBQUcsR0FBRyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDO0lBQzVF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ZW50IjpbImltcG9ydCB7XG4gIEVsZW1lbnRWaXNpdG9yLFxuICBGaWxlLFxuICBUeXBlRGVmaW5pdGlvbixcbiAgTmFtZXNwYWNlLFxuICBFbnVtLFxuICBFbnVtVmFsdWUsXG4gIEdsb2JhbCxcbiAgTG9jYWwsXG4gIEZ1bmN0aW9uUHJvdG90eXBlLFxuICBGdW5jdGlvblRhcmdldCxcbiAgRmllbGRQcm90b3R5cGUsXG4gIEZpZWxkLFxuICBQcm9wZXJ0eVByb3RvdHlwZSxcbiAgUHJvcGVydHksXG4gIENsYXNzUHJvdG90eXBlLFxuICBDbGFzcyxcbiAgSW50ZXJmYWNlUHJvdG90eXBlLFxuICBJbnRlcmZhY2UsXG4gIEZ1bmN0aW9uLFxuICBQcm9ncmFtLFxuICBDb21waWxlcixcbiAgQ2xhc3NEZWNsYXJhdGlvbixcbiAgUGFyc2VyLFxuICBFbGVtZW50XG59IGZyb20gXCJhc3NlbWJseXNjcmlwdFwiO1xuaW1wb3J0IHsgQmFzZUVsZW1lbnRWaXNpdG9yIH0gZnJvbSBcIi4uL3NyYy9lbGVtZW50XCI7XG5pbXBvcnQgeyBQcmludGVyVmlzaXRvciB9IGZyb20gXCIuL2FzdFByaW50ZXJcIjtcbmltcG9ydCB7IENvbGxlY3Rpb24gfSBmcm9tIFwiLi4vc3JjL3Zpc2l0b3JcIjtcblxuZXhwb3J0IGRlZmF1bHQgY2xhc3MgUHJvZ3JhbVByaW50ZXIgZXh0ZW5kcyBCYXNlRWxlbWVudFZpc2l0b3JcbiAgaW1wbGVtZW50cyBFbGVtZW50VmlzaXRvciB7XG4gIGRlcHRoOiBudW1iZXIgPSAwO1xuICBhc3RWaXNpdG9yOiBQcmludGVyVmlzaXRvcjtcblxuICBjb25zdHJ1Y3RvcihcbiAgICBwcml2YXRlIHBhcnNlcjogUGFyc2VyLFxuICAgIHByaXZhdGUgY29tcGlsZXI6IENvbXBpbGVyLFxuICAgIHB1YmxpYyB3cml0ZXI6IFdyaXRlclxuICApIHtcbiAgICBzdXBlcigpO1xuICAgIHRoaXMuYXN0VmlzaXRvciA9IG5ldyBQcmludGVyVmlzaXRvcih3cml0ZXIpO1xuICAgIHRoaXMudmlzaXQoY29tcGlsZXIucHJvZ3JhbS5maWxlc0J5TmFtZSk7XG4gICAgLy8gZGVidWdnZXI7XG4gICAgLy8gdGhpcy52aXNpdChjb21waWxlci5wcm9ncmFtLmVsZW1lbnRzQnlOYW1lKTtcbiAgfVxuXG4gIHZpc2l0KG5vZGU6IENvbGxlY3Rpb248RWxlbWVudD4pOiB2b2lkIHtcbiAgICBpZiAobm9kZSAmJiAoPGFueT5ub2RlKS5uYW1lICYmICg8RWxlbWVudD5ub2RlKS5pbnRlcm5hbE5hbWUuc3RhcnRzV2l0aChcIn5cIikpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgc3VwZXIudmlzaXQobm9kZSk7XG4gIH1cblxuICB3cml0ZShzdHI6IHN0cmluZywgbmV3bGluZTogYm9vbGVhbiA9IGZhbHNlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZXIud3JpdGUoXCIgIFwiLnJlcGVhdCh0aGlzLmRlcHRoKSArIHN0ciArIChuZXdsaW5lID8gXCJcXG5cIiA6IFwiIFwiKSk7XG4gIH1cblxuICB2aXNpdEZpbGUobm9kZTogRmlsZSk6IHZvaWQge1xuICAgIGlmIChub2RlLm5hbWUuc3RhcnRzV2l0aChcIn5cIikpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgdGhpcy53cml0ZShcInZpc2l0aW5nIGZpbGU6IFwiICsgbm9kZS5uYW1lLCB0cnVlKTtcbiAgICB0aGlzLmRlcHRoKys7XG4gICAgc3VwZXIudmlzaXRGaWxlKG5vZGUpO1xuICAgIHRoaXMuZGVwdGgtLTtcbiAgfVxuICB2aXNpdFR5cGVEZWZpbml0aW9uKG5vZGU6IFR5cGVEZWZpbml0aW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShub2RlLnR5cGUudG9TdHJpbmcoKSk7XG4gICAgdGhpcy5hc3RWaXNpdG9yLnZpc2l0KG5vZGUudHlwZVBhcmFtZXRlck5vZGVzKTtcbiAgfVxuICB2aXNpdE5hbWVzcGFjZShub2RlOiBOYW1lc3BhY2UpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiTmFtZXNwYWNlOiBcIiArIG5vZGUubmFtZSwgdHJ1ZSk7XG4gICAgc3VwZXIudmlzaXROYW1lc3BhY2Uobm9kZSk7XG4gIH1cbiAgdmlzaXRFbnVtKG5vZGU6IEVudW0pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwiRW51bTogXCIgKyBub2RlLCB0cnVlKTtcbiAgICBzdXBlci52aXNpdE5hbWVzcGFjZShub2RlKTtcbiAgfVxuICB2aXNpdEVudW1WYWx1ZShub2RlOiBFbnVtVmFsdWUpOiB2b2lkIHtcbiAgICB0aGlzLmFzdFZpc2l0b3IudmlzaXQobm9kZS52YWx1ZU5vZGUpO1xuICB9XG4gIHZpc2l0R2xvYmFsKG5vZGU6IEdsb2JhbCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJHbG9iYWw6IFwiKTtcbiAgICB0aGlzLnZpc2l0Tm9kZShub2RlLmRlY2xhcmF0aW9uKTtcbiAgICAvLyB0aGlzLmFzdFZpc2l0b3IudmlzaXQobm9kZS5pZGVudGlmaWVyTm9kZSk7XG4gICAgLy8gdGhpcy52aXNpdE5vZGUobm9kZS50eXBlTm9kZSk7XG4gICAgLy8gdGhpcy52aXNpdE5vZGUobm9kZS5pbml0aWFsaXplck5vZGUpO1xuICAgIC8vIHRoaXMuYXN0VmlzaXRvci53cml0ZSh0aGlzLmFzdFZpc2l0b3IuZmx1c2goXCI6IFwiKSk7XG4gIH1cbiAgdmlzaXRMb2NhbChub2RlOiBMb2NhbCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJMb2NhbDogXCIgKyBub2RlLm5hbWUsIHRydWUpO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuaWRlbnRpZmllck5vZGUpO1xuICAgIHRoaXMudmlzaXROb2RlKG5vZGUuaW5pdGlhbGl6ZXJOb2RlKTtcbiAgfVxuICB2aXNpdEZ1bmN0aW9uUHJvdG90eXBlKG5vZGU6IEZ1bmN0aW9uUHJvdG90eXBlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkZ1bmN0aW9uIFByb3RvVHlwZTpcIiArIG5vZGUuc2lnbmF0dXJlKTtcbiAgICBzdXBlci52aXNpdEZ1bmN0aW9uUHJvdG90eXBlKG5vZGUpO1xuICB9XG4gIHZpc2l0RnVuY3Rpb24obm9kZTogRnVuY3Rpb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwidmlzaXRpbmcgZnVuY3Rpb246IFwiICsgbm9kZS5uYW1lKTtcbiAgICB0aGlzLndyaXRlKG5vZGUuc2lnbmF0dXJlLnRvU3RyaW5nKCksIHRydWUpO1xuICAgIC8vIHRoaXMud3JpdGUobm9kZS50b1N0cmluZygpKTtcbiAgICAvLyBpZihtZW1zKVxuICAgIC8vIGZvciAobGV0IG1lbSBvZiBtZW1zLnZhbHVlcygpKXtcbiAgICAvLyAgICAgdGhpcy53cml0ZShtZW0udG9TdHJpbmcoKSwgdHJ1ZSlcbiAgICAvLyB9XG4gIH1cbiAgdmlzaXRGdW5jdGlvblRhcmdldChub2RlOiBGdW5jdGlvblRhcmdldCk6IHZvaWQge31cbiAgdmlzaXRGaWVsZFByb3RvdHlwZShub2RlOiBGaWVsZFByb3RvdHlwZSk6IHZvaWQge31cbiAgdmlzaXRGaWVsZChub2RlOiBGaWVsZCk6IHZvaWQge31cbiAgdmlzaXRQcm9wZXJ0eVByb3RvdHlwZShub2RlOiBQcm9wZXJ0eVByb3RvdHlwZSk6IHZvaWQge31cbiAgdmlzaXRQcm9wZXJ0eShub2RlOiBQcm9wZXJ0eSk6IHZvaWQge31cbiAgdmlzaXRDbGFzc1Byb3RvdHlwZShub2RlOiBDbGFzc1Byb3RvdHlwZSk6IHZvaWQge1xuICAgIHN1cGVyLnZpc2l0Q2xhc3NQcm90b3R5cGUobm9kZSk7XG4gICAgdGhpcy53cml0ZShcIlwiLCB0cnVlKTtcbiAgfVxuICB2aXNpdENsYXNzKG5vZGU6IENsYXNzKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShub2RlLm5hbWUpO1xuICAgIC8vIHRoaXMud3JpdGUobm9kZS5tZW1iZXJzIS5zaXplLnRvU3RyaW5nKCkpO1xuICAgIGxldCBpbnRlcmZhY2VzID0gKDxDbGFzc0RlY2xhcmF0aW9uPm5vZGUuZGVjbGFyYXRpb24pLmltcGxlbWVudHNUeXBlcztcbiAgICBpZiAoaW50ZXJmYWNlcykge1xuICAgICAgdGhpcy53cml0ZShcImltcGxlbWVudHMgXCIgKyBpbnRlcmZhY2VzLmpvaW4oXCIsIFwiKSk7XG4gICAgfVxuICAgIHRoaXMud3JpdGUoXCJcIiwgdHJ1ZSk7XG4gICAgdGhpcy52aXNpdChub2RlLm1lbWJlcnMpO1xuICB9XG4gIHZpc2l0SW50ZXJmYWNlUHJvdG90eXBlKG5vZGU6IEludGVyZmFjZVByb3RvdHlwZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJJbnRlcmZhY2UgUHJvdG90eXBlOiBcIik7XG4gICAgdGhpcy53cml0ZShub2RlLm5hbWUsIHRydWUpO1xuICAgIHN1cGVyLnZpc2l0SW50ZXJmYWNlUHJvdG90eXBlKG5vZGUpO1xuICB9XG5cbiAgdmlzaXRJbnRlcmZhY2Uobm9kZTogSW50ZXJmYWNlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkludGVyZmFjZTogXCIgKyBub2RlLm5hbWUpO1xuICAgIHN1cGVyLnZpc2l0SW50ZXJmYWNlKG5vZGUpO1xuICAgIC8vIGZvciAobGV0IFtrZXksIHZhbHVlXSBvZiBub2RlLm1lbWJlcnMhLmVudHJpZXMoKSkge1xuICAgIC8vICAgdGhpcy53cml0ZShrZXkgKyBcIiBcIiArIHZhbHVlLnRvU3RyaW5nKCkpO1xuICAgIC8vIH1cbiAgfVxufVxuIl19