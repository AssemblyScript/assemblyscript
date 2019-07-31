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
var PrintIDs = /** @class */ (function (_super) {
    __extends(PrintIDs, _super);
    function PrintIDs() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
        _this.seen = new Set();
        return _this;
    }
    PrintIDs.prototype.start = function () {
        this.visitManagedClasses(this.files);
    };
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicHJpbnRJZHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi9zcmMvaW5zdGFuY2VzL3ByaW50SWRzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7OztBQVNBLHNDQUFnRDtBQUVoRDtJQUFzQyw0QkFBa0I7SUFBeEQ7UUFBQSxxRUFpQ0M7UUFoQ0MsVUFBSSxHQUFlLElBQUksR0FBRyxFQUFFLENBQUM7O0lBZ0MvQixDQUFDO0lBOUJDLHdCQUFLLEdBQUw7UUFDRSxJQUFJLENBQUMsbUJBQW1CLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQ3ZDLENBQUM7SUFFRCx3QkFBSyxHQUFMLFVBQU0sR0FBVyxFQUFFLE9BQXdCO1FBQXhCLHdCQUFBLEVBQUEsZUFBd0I7UUFDekMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMsR0FBRyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7SUFDbEQsQ0FBQztJQUVELDZCQUFVLEdBQVYsVUFBVyxJQUFXO1FBQ3BCLElBQUksSUFBSSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLEVBQUU7WUFDdkIsT0FBTztTQUNSO1FBQ0QsSUFBSSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDcEIsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsSUFBSSxHQUFHLElBQUksR0FBRyxJQUFJLENBQUMsRUFBRSxDQUFDLFFBQVEsRUFBRSxFQUFFLElBQUksQ0FBQyxDQUFDO1FBQ3hELElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDO0lBQzNCLENBQUM7SUFFRCw2QkFBVSxHQUFWLFVBQVcsSUFBVztRQUNwQixJQUFJLENBQUMsS0FBSyxDQUNSLFlBQVksR0FBRyxJQUFJLENBQUMsSUFBSSxHQUFHLElBQUksR0FBRyxJQUFJLENBQUMsUUFBUyxDQUFDLFFBQVEsRUFBRSxFQUMzRCxJQUFJLENBQ0wsQ0FBQztJQUNKLENBQUM7SUFFRCxnQ0FBYSxHQUFiLFVBQWMsSUFBYztRQUMxQixJQUFJLFFBQVEsR0FBRyxJQUFJLENBQUMsUUFBUTtZQUMxQixDQUFDLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLEVBQUU7WUFDMUIsQ0FBQyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsUUFBUSxFQUFFLENBQUM7UUFDekIsSUFBSSxDQUFDLEtBQUssQ0FBQyxlQUFlLEdBQUcsSUFBSSxDQUFDLElBQUksR0FBRyxJQUFJLEdBQUcsUUFBUSxFQUFFLElBQUksQ0FBQyxDQUFDO0lBQ2xFLENBQUM7SUFDSCxlQUFDO0FBQUQsQ0FBQyxBQWpDRCxDQUFzQyw0QkFBa0IsR0FpQ3ZEIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgRWxlbWVudFZpc2l0b3IsXG4gIENsYXNzLFxuICBDb21waWxlcixcbiAgUGFyc2VyLFxuICBGaWVsZCxcbiAgUHJvcGVydHlcbn0gZnJvbSBcImFzc2VtYmx5c2NyaXB0XCI7XG5cbmltcG9ydCB7IEJhc2VFbGVtZW50VmlzaXRvciB9IGZyb20gXCIuLi9lbGVtZW50XCI7XG5cbmV4cG9ydCBkZWZhdWx0IGNsYXNzIFByaW50SURzIGV4dGVuZHMgQmFzZUVsZW1lbnRWaXNpdG9yIHtcbiAgc2VlbjogU2V0PENsYXNzPiA9IG5ldyBTZXQoKTtcblxuICBzdGFydCgpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0TWFuYWdlZENsYXNzZXModGhpcy5maWxlcyk7XG4gIH1cblxuICB3cml0ZShzdHI6IHN0cmluZywgbmV3bGluZTogYm9vbGVhbiA9IGZhbHNlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZXIud3JpdGUoc3RyICsgKG5ld2xpbmUgPyBcIlxcblwiIDogXCIgXCIpKTtcbiAgfVxuXG4gIHZpc2l0Q2xhc3Mobm9kZTogQ2xhc3MpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5zZWVuLmhhcyhub2RlKSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cbiAgICB0aGlzLnNlZW4uYWRkKG5vZGUpO1xuICAgIHRoaXMud3JpdGUobm9kZS5uYW1lICsgXCI6IFwiICsgbm9kZS5pZC50b1N0cmluZygpLCB0cnVlKTtcbiAgICB0aGlzLnZpc2l0KG5vZGUubWVtYmVycyk7XG4gIH1cblxuICB2aXNpdEZpZWxkKG5vZGU6IEZpZWxkKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcbiAgICAgIFwiICBGaWVsZDpcXHRcIiArIG5vZGUubmFtZSArIFwiOiBcIiArIG5vZGUudHlwZU5vZGUhLnRvU3RyaW5nKCksXG4gICAgICB0cnVlXG4gICAgKTtcbiAgfVxuXG4gIHZpc2l0UHJvcGVydHkobm9kZTogUHJvcGVydHkpOiB2b2lkIHtcbiAgICBsZXQgdHlwZU5hbWUgPSBub2RlLnR5cGVOb2RlXG4gICAgICA/IG5vZGUudHlwZU5vZGUudG9TdHJpbmcoKVxuICAgICAgOiBub2RlLnR5cGUudG9TdHJpbmcoKTtcbiAgICB0aGlzLndyaXRlKFwiICBQcm9wZXJ0eTpcXHRcIiArIG5vZGUubmFtZSArIFwiOiBcIiArIHR5cGVOYW1lLCB0cnVlKTtcbiAgfVxufVxuIl19