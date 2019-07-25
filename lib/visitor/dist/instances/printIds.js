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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicHJpbnRJZHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi9pbnN0YW5jZXMvcHJpbnRJZHMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQVNBLDBDQUFvRDtBQUVwRDtJQUFzQyw0QkFBa0I7SUFHdEQsa0JBQ1UsTUFBYyxFQUNkLFFBQWtCLEVBQ25CLE1BQWM7O1FBSHZCLFlBS0UsaUJBQU8sU0FJUjtRQVJTLFlBQU0sR0FBTixNQUFNLENBQVE7UUFDZCxjQUFRLEdBQVIsUUFBUSxDQUFVO1FBQ25CLFlBQU0sR0FBTixNQUFNLENBQVE7UUFMdkIsVUFBSSxHQUFlLElBQUksR0FBRyxFQUFFLENBQUM7O1lBUTNCLEtBQW1CLElBQUEsS0FBQSxTQUFBLFFBQVEsQ0FBQyxPQUFPLENBQUMsY0FBYyxDQUFDLE1BQU0sRUFBRSxDQUFBLGdCQUFBLDRCQUFFO2dCQUF4RCxJQUFJLE1BQU0sV0FBQTtnQkFDYixNQUFNLENBQUMsS0FBSyxDQUFDLEtBQUksQ0FBQyxDQUFDO2FBQ3BCOzs7Ozs7Ozs7O0lBQ0gsQ0FBQztJQUVELHdCQUFLLEdBQUwsVUFBTSxHQUFXLEVBQUUsT0FBd0I7UUFBeEIsd0JBQUEsRUFBQSxlQUF3QjtRQUN6QyxJQUFJLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxHQUFHLEdBQUcsQ0FBQyxPQUFPLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQztJQUNsRCxDQUFDO0lBRUQsNkJBQVUsR0FBVixVQUFXLElBQVc7UUFDcEIsSUFBSSxJQUFJLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsRUFBRTtZQUN2QixPQUFPO1NBQ1I7UUFDRCxJQUFJLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUNwQixJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxJQUFJLEdBQUcsSUFBSSxHQUFHLElBQUksQ0FBQyxFQUFFLENBQUMsUUFBUSxFQUFFLEVBQUUsSUFBSSxDQUFDLENBQUM7UUFDeEQsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7SUFDM0IsQ0FBQztJQUVELDZCQUFVLEdBQVYsVUFBVyxJQUFXO1FBQ3BCLElBQUksQ0FBQyxLQUFLLENBQ1IsWUFBWSxHQUFHLElBQUksQ0FBQyxJQUFJLEdBQUcsSUFBSSxHQUFHLElBQUksQ0FBQyxRQUFTLENBQUMsUUFBUSxFQUFFLEVBQzNELElBQUksQ0FDTCxDQUFDO0lBQ0osQ0FBQztJQUVELGdDQUFhLEdBQWIsVUFBYyxJQUFjO1FBQzFCLElBQUksUUFBUSxHQUFHLElBQUksQ0FBQyxRQUFRO1lBQzFCLENBQUMsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsRUFBRTtZQUMxQixDQUFDLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxRQUFRLEVBQUUsQ0FBQztRQUN6QixJQUFJLENBQUMsS0FBSyxDQUFDLGVBQWUsR0FBRyxJQUFJLENBQUMsSUFBSSxHQUFHLElBQUksR0FBRyxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUM7SUFDbEUsQ0FBQztJQUNILGVBQUM7QUFBRCxDQUFDLEFBeENELENBQXNDLDRCQUFrQixHQXdDdkQiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1xuICBFbGVtZW50VmlzaXRvcixcbiAgQ2xhc3MsXG4gIENvbXBpbGVyLFxuICBQYXJzZXIsXG4gIEZpZWxkLFxuICBQcm9wZXJ0eVxufSBmcm9tIFwiYXNzZW1ibHlzY3JpcHRcIjtcblxuaW1wb3J0IHsgQmFzZUVsZW1lbnRWaXNpdG9yIH0gZnJvbSBcIi4uL3NyYy9lbGVtZW50XCI7XG5cbmV4cG9ydCBkZWZhdWx0IGNsYXNzIFByaW50SURzIGV4dGVuZHMgQmFzZUVsZW1lbnRWaXNpdG9yIHtcbiAgc2VlbjogU2V0PENsYXNzPiA9IG5ldyBTZXQoKTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICBwcml2YXRlIHBhcnNlcjogUGFyc2VyLFxuICAgIHByaXZhdGUgY29tcGlsZXI6IENvbXBpbGVyLFxuICAgIHB1YmxpYyB3cml0ZXI6IFdyaXRlclxuICApIHtcbiAgICBzdXBlcigpO1xuICAgIGZvciAobGV0IF9jbGFzcyBvZiBjb21waWxlci5wcm9ncmFtLm1hbmFnZWRDbGFzc2VzLnZhbHVlcygpKSB7XG4gICAgICBfY2xhc3MudmlzaXQodGhpcyk7XG4gICAgfVxuICB9XG5cbiAgd3JpdGUoc3RyOiBzdHJpbmcsIG5ld2xpbmU6IGJvb2xlYW4gPSBmYWxzZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGVyLndyaXRlKHN0ciArIChuZXdsaW5lID8gXCJcXG5cIiA6IFwiIFwiKSk7XG4gIH1cblxuICB2aXNpdENsYXNzKG5vZGU6IENsYXNzKTogdm9pZCB7XG4gICAgaWYgKHRoaXMuc2Vlbi5oYXMobm9kZSkpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgdGhpcy5zZWVuLmFkZChub2RlKTtcbiAgICB0aGlzLndyaXRlKG5vZGUubmFtZSArIFwiOiBcIiArIG5vZGUuaWQudG9TdHJpbmcoKSwgdHJ1ZSk7XG4gICAgdGhpcy52aXNpdChub2RlLm1lbWJlcnMpO1xuICB9XG5cbiAgdmlzaXRGaWVsZChub2RlOiBGaWVsZCk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXG4gICAgICBcIiAgRmllbGQ6XFx0XCIgKyBub2RlLm5hbWUgKyBcIjogXCIgKyBub2RlLnR5cGVOb2RlIS50b1N0cmluZygpLFxuICAgICAgdHJ1ZVxuICAgICk7XG4gIH1cblxuICB2aXNpdFByb3BlcnR5KG5vZGU6IFByb3BlcnR5KTogdm9pZCB7XG4gICAgbGV0IHR5cGVOYW1lID0gbm9kZS50eXBlTm9kZVxuICAgICAgPyBub2RlLnR5cGVOb2RlLnRvU3RyaW5nKClcbiAgICAgIDogbm9kZS50eXBlLnRvU3RyaW5nKCk7XG4gICAgdGhpcy53cml0ZShcIiAgUHJvcGVydHk6XFx0XCIgKyBub2RlLm5hbWUgKyBcIjogXCIgKyB0eXBlTmFtZSwgdHJ1ZSk7XG4gIH1cbn1cbiJdfQ==