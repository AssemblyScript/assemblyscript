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
var __read = (this && this.__read) || function (o, n) {
    var m = typeof Symbol === "function" && o[Symbol.iterator];
    if (!m) return o;
    var i = m.call(o), r, ar = [], e;
    try {
        while ((n === void 0 || n-- > 0) && !(r = i.next()).done) ar.push(r.value);
    }
    catch (error) { e = { error: error }; }
    finally {
        try {
            if (r && !r.done && (m = i["return"])) m.call(i);
        }
        finally { if (e) throw e.error; }
    }
    return ar;
};
Object.defineProperty(exports, "__esModule", { value: true });
var assemblyscript_1 = require("assemblyscript");
var element_1 = require("../element");
var astPrinter_1 = require("./astPrinter");
var Virtualizer = /** @class */ (function (_super) {
    __extends(Virtualizer, _super);
    function Virtualizer(parser, compiler, writer) {
        var _this = _super.call(this, parser, compiler, writer) || this;
        _this.interfaceMethods = new Map();
        _this.classIds = new Map();
        _this.log = false;
        debugger;
        return _this;
    }
    Virtualizer.prototype.start = function () {
        var _this = this;
        var e_1, _a;
        var compiler = this.compiler;
        this.astVisitor = new astPrinter_1.PrinterVisitor(this.parser, this.writer);
        this.visitInterfaces(this.files);
        var managedClasses = [];
        try {
            for (var _b = __values(compiler.program.managedClasses.values()), _c = _b.next(); !_c.done; _c = _b.next()) {
                var _class = _c.value;
                managedClasses.push(_class.id);
                if (!_class.file.name.startsWith("~") && _class.prototype.implementsNodes != null) {
                    _class.visit(this);
                }
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_1) throw e_1.error; }
        }
        this.write(this.compiler.functionTable.join(" "), true);
        this.createVitualFunction();
        var module = compiler.module;
        var updateInterfaceMethods = function (i) {
            var e_2, _a;
            if (i.instanceMembers == null)
                return;
            try {
                for (var _b = __values(i.instanceMembers.values()), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var member = _c.value;
                    if (member.kind != assemblyscript_1.ElementKind.FUNCTION_PROTOTYPE)
                        continue;
                    var func = _this.getFunctionByName(member.internalName);
                    var signature = func.signature;
                    var _type = _this.compiler.ensureFunctionType(signature.parameterTypes, signature.returnType, signature.thisType);
                    var loadMethodID = module.i32(_this.interfaceMethods.get(func.prototype.signature));
                    // let target = this.compiler.program.instancesByName("virtual");
                    var loadClass = module.load(4, false, module.binary(assemblyscript_1.BinaryOp.SubI32, module.local_get(0, assemblyscript_1.NativeType.I32), module.i32(8)), assemblyscript_1.NativeType.I32);
                    var callVirtual = module.call("~lib/virtual/virtual", [loadMethodID, loadClass], assemblyscript_1.NativeType.I32);
                    module.removeFunction(member.internalName);
                    var callIndirect = module.call_indirect(callVirtual, func.localsByIndex.map(function (local) { return module.local_get(local.index, local.type.toNativeType()); }), assemblyscript_1.Signature.makeSignatureString(func.signature.parameterTypes, func.signature.returnType, func.signature.thisType));
                    var body = module.block(null, [callIndirect], func.signature.returnType.toNativeType());
                    module.addFunction(member.internalName, _type, null, body);
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_2) throw e_2.error; }
            }
            debugger;
        };
        try {
            this.visitInterfaces(this.files, updateInterfaceMethods);
        }
        catch (e) {
            this.write(e.toString());
        }
    };
    Virtualizer.prototype.createVitualFunction = function () {
        var e_3, _a, e_4, _b;
        var module = this.compiler.module;
        var functionTable = this.compiler.functionTable;
        module.setFunctionTable(functionTable.length, 0xffffffff, functionTable);
        this.write(functionTable.join("\n"), true);
        var methodIDCases = [];
        var dummyMethodId = 0, dummyClassid = 0;
        try {
            for (var _c = __values(this.classIds.entries()), _d = _c.next(); !_d.done; _d = _c.next()) {
                var _e = __read(_d.value, 2), id = _e[0], classes = _e[1];
                var str = ["case ", id.toString(), ": {\n\tswitch (classID) {\n"];
                dummyMethodId = id;
                try {
                    for (var classes_1 = __values(classes), classes_1_1 = classes_1.next(); !classes_1_1.done; classes_1_1 = classes_1.next()) {
                        var _f = __read(classes_1_1.value, 2), classID = _f[0], fnPtr = _f[1];
                        dummyClassid = classID;
                        str.push("\t\tcase " + classID.toString() + ": return ");
                        str.push(fnPtr.toString() + ";\n");
                    }
                }
                catch (e_4_1) { e_4 = { error: e_4_1 }; }
                finally {
                    try {
                        if (classes_1_1 && !classes_1_1.done && (_b = classes_1.return)) _b.call(classes_1);
                    }
                    finally { if (e_4) throw e_4.error; }
                }
                str.push("\t}");
                str.push("\n}");
                methodIDCases.push(str.join(""));
            }
        }
        catch (e_3_1) { e_3 = { error: e_3_1 }; }
        finally {
            try {
                if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
            }
            finally { if (e_3) throw e_3.error; }
        }
        var funcSourc = "\n      @global\n      function virtual(methodID: usize, classID: usize): usize {\n        switch (methodID){\n           " + methodIDCases.join("") + "\n        }\n        unreachable();\n        return 0;\n      }\n      virtual(" + dummyMethodId + ", " + dummyClassid + ");\n      ";
        this.parser.parseFile(funcSourc, "~lib/virtual", false);
        this.parser.program.initialize(this.compiler.options);
        var sources = this.parser.program.sources;
        var file = new assemblyscript_1.File(this.parser.program, sources[sources.length - 1]);
        this.parser.program.initializeFunction(file.source.statements[0], file);
        this.compiler.compileFile(file);
        // this.compiler.module.removeFunction("~lib/virtual");
    };
    Virtualizer.prototype.write = function (str, newline) {
        if (newline === void 0) { newline = false; }
        if (this.log) {
            this.writer.write(str + (newline ? "\n" : " "));
        }
    };
    Virtualizer.prototype.visitFunctionPrototype = function (node) {
        if (node.isBound) {
            var _class = node.parent;
            var signature = node.signature;
            var id = this.interfaceMethods.get(signature);
            if (id != null) {
                var classId = _class.id;
                this.write("Parent: " + _class.name, true);
                this.write("visiting function " + node.internalName, false);
                this.write(signature + " has methodID: " + id, true);
                var fnPtr = this.compiler.functionTable.length;
                this.compiler.functionTable.push(node.internalName);
                var entry = [classId, fnPtr];
                this.classIds.get(id).push(entry);
                // let funcPtr = this.compiler.ensureFunctionTableEntry(this.compiler.program.instancesByName)
            }
        }
    };
    Virtualizer.prototype.visitFunction = function (node) {
        this.write("visiting function: " + node.name);
        this.write(node.signature.toString(), true);
    };
    Virtualizer.prototype.visitFunctionTarget = function (node) { };
    Virtualizer.prototype.visitFieldPrototype = function (node) { };
    Virtualizer.prototype.visitField = function (node) { };
    Virtualizer.prototype.visitPropertyPrototype = function (node) { };
    Virtualizer.prototype.visitProperty = function (node) { };
    Virtualizer.prototype.visitClassPrototype = function (node) { };
    Virtualizer.prototype.visitClass = function (node) {
        var e_5, _a;
        this.write(node.name);
        // this.write(node.members!.size.toString());
        var interfaces = node.declaration.implementsTypes;
        if (interfaces) {
            this.write("implements " + interfaces.join(", "));
        }
        this.write("", true);
        try {
            for (var _b = __values(node.members.values()), _c = _b.next(); !_c.done; _c = _b.next()) {
                var mem = _c.value;
                mem.visit(this);
            }
        }
        catch (e_5_1) { e_5 = { error: e_5_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_5) throw e_5.error; }
        }
    };
    Virtualizer.prototype.visitInterfacePrototype = function (node) {
        var e_6, _a;
        this.write("Interface Prototype", true);
        this.write(node.name);
        try {
            for (var _b = __values(node.instanceMembers.entries()), _c = _b.next(); !_c.done; _c = _b.next()) {
                var _d = __read(_c.value, 2), key = _d[0], value = _d[1];
                if (value instanceof assemblyscript_1.FunctionPrototype) {
                    this.write(key + " " + value.toString());
                    var id = this.interfaceMethods.size;
                    if (!this.interfaceMethods.has(value.signature)) {
                        this.interfaceMethods.set(value.signature, id);
                        this.classIds.set(id, []);
                        this.write(value.signature, true);
                    }
                }
            }
        }
        catch (e_6_1) { e_6 = { error: e_6_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_6) throw e_6.error; }
        }
        this.write("", true);
    };
    Virtualizer.prototype.visitInterface = function (node) {
        var e_7, _a;
        this.write(node.name);
        try {
            for (var _b = __values(node.members.entries()), _c = _b.next(); !_c.done; _c = _b.next()) {
                var _d = __read(_c.value, 2), key = _d[0], value = _d[1];
                this.write(key + " " + value.toString());
            }
        }
        catch (e_7_1) { e_7 = { error: e_7_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_7) throw e_7.error; }
        }
    };
    return Virtualizer;
}(element_1.BaseElementVisitor));
exports.default = Virtualizer;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlydHVhbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uL3NyYy9pbnN0YW5jZXMvdmlydHVhbC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFBLGlEQStCd0I7QUFDeEIsc0NBQWdEO0FBQ2hELDJDQUE4QztBQVU5QztJQUF5QywrQkFBa0I7SUFNekQscUJBQVksTUFBYyxFQUFFLFFBQWtCLEVBQUUsTUFBYztRQUE5RCxZQUNFLGtCQUFNLE1BQU0sRUFBRSxRQUFRLEVBQUUsTUFBTSxDQUFDLFNBRWhDO1FBUEQsc0JBQWdCLEdBQTBCLElBQUksR0FBRyxFQUFFLENBQUM7UUFDcEQsY0FBUSxHQUFtQyxJQUFJLEdBQUcsRUFBRSxDQUFDO1FBQ3JELFNBQUcsR0FBRyxLQUFLLENBQUM7UUFJVixRQUFRLENBQUM7O0lBQ1gsQ0FBQztJQUVELDJCQUFLLEdBQUw7UUFBQSxpQkEyRUM7O1FBMUVDLElBQUksUUFBUSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUM7UUFDN0IsSUFBSSxDQUFDLFVBQVUsR0FBRyxJQUFJLDJCQUFjLENBQUMsSUFBSSxDQUFDLE1BQU0sRUFBRSxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7UUFDL0QsSUFBSSxDQUFDLGVBQWUsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUM7UUFFakMsSUFBSSxjQUFjLEdBQUcsRUFBRSxDQUFDOztZQUN4QixLQUFtQixJQUFBLEtBQUEsU0FBQSxRQUFRLENBQUMsT0FBTyxDQUFDLGNBQWMsQ0FBQyxNQUFNLEVBQUUsQ0FBQSxnQkFBQSw0QkFBRTtnQkFBeEQsSUFBSSxNQUFNLFdBQUE7Z0JBQ2IsY0FBYyxDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsRUFBRSxDQUFDLENBQUM7Z0JBQy9CLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLElB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ZCxVQUFlLElBQWU7O1FBQzVCLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDOztZQUN0QixLQUF5QixJQUFBLEtBQUEsU0FBQSxJQUFJLENBQUMsT0FBUSxDQUFDLE9BQU8sRUFBRSxDQUFBLGdCQUFBLDRCQUFFO2dCQUF6QyxJQUFBLHdCQUFZLEVBQVgsV0FBRyxFQUFFLGFBQUs7Z0JBQ2xCLElBQUksQ0FBQyxLQUFLLENBQUMsR0FBRyxHQUFHLEdBQUcsR0FBRyxLQUFLLENBQUMsUUFBUSxFQUFFLENBQUMsQ0FBQzthQUMxQzs7Ozs7Ozs7O0lBQ0gsQ0FBQztJQUNILGtCQUFDO0FBQUQsQ0FBQyxBQXhNRCxDQUF5Qyw0QkFBa0IsR0F3TTFEIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgRWxlbWVudFZpc2l0b3IsXG4gIEZpbGUsXG4gIFR5cGVEZWZpbml0aW9uLFxuICBOYW1lc3BhY2UsXG4gIEVudW0sXG4gIEVudW1WYWx1ZSxcbiAgR2xvYmFsLFxuICBMb2NhbCxcbiAgRnVuY3Rpb25Qcm90b3R5cGUsXG4gIEZ1bmN0aW9uVGFyZ2V0LFxuICBGaWVsZFByb3RvdHlwZSxcbiAgRmllbGQsXG4gIFByb3BlcnR5UHJvdG90eXBlLFxuICBQcm9wZXJ0eSxcbiAgQ2xhc3NQcm90b3R5cGUsXG4gIENsYXNzLFxuICBJbnRlcmZhY2VQcm90b3R5cGUsXG4gIEludGVyZmFjZSxcbiAgRnVuY3Rpb24sXG4gIFByb2dyYW0sXG4gIENvbXBpbGVyLFxuICBJZGVudGlmaWVyRXhwcmVzc2lvbixcbiAgRnVuY3Rpb25EZWNsYXJhdGlvbixcbiAgQ2xhc3NEZWNsYXJhdGlvbixcbiAgUGFyc2VyLFxuICBCaW5hcnlPcCxcbiAgTmF0aXZlVHlwZSxcbiAgU2lnbmF0dXJlLFxuICBFbGVtZW50S2luZCxcbiAgVHlwZUZsYWdzXG59IGZyb20gXCJhc3NlbWJseXNjcmlwdFwiO1xuaW1wb3J0IHsgQmFzZUVsZW1lbnRWaXNpdG9yIH0gZnJvbSBcIi4uL2VsZW1lbnRcIjtcbmltcG9ydCB7IFByaW50ZXJWaXNpdG9yIH0gZnJvbSBcIi4vYXN0UHJpbnRlclwiO1xuaW1wb3J0IHsgQVNUVmlzaXRvciB9IGZyb20gXCIuLi9hc3RcIjtcbmltcG9ydCB7IFdyaXRlciB9IGZyb20gXCIuLlwiO1xuXG50eXBlIG1lbWJlcmlkID0gbnVtYmVyO1xudHlwZSBjbGFzc2lkID0gbnVtYmVyO1xudHlwZSBmblB0ciA9IG51bWJlcjtcblxudHlwZSB2aXJ0dWFsTWV0aG9kID0gW2NsYXNzaWQsIGZuUHRyXTtcblxuZXhwb3J0IGRlZmF1bHQgY2xhc3MgVmlydHVhbGl6ZXIgZXh0ZW5kcyBCYXNlRWxlbWVudFZpc2l0b3JcbiAgaW1wbGVtZW50cyBFbGVtZW50VmlzaXRvciB7XG4gIGludGVyZmFjZU1ldGhvZHM6IE1hcDxzdHJpbmcsIG1lbWJlcmlkPiA9IG5ldyBNYXAoKTtcbiAgY2xhc3NJZHM6IE1hcDxtZW1iZXJpZCwgdmlydHVhbE1ldGhvZFtdPiA9IG5ldyBNYXAoKTtcbiAgbG9nID0gZmFsc2U7XG5cbiAgY29uc3RydWN0b3IocGFyc2VyOiBQYXJzZXIsIGNvbXBpbGVyOiBDb21waWxlciwgd3JpdGVyOiBXcml0ZXIpIHtcbiAgICBzdXBlcihwYXJzZXIsIGNvbXBpbGVyLCB3cml0ZXIpO1xuICAgIGRlYnVnZ2VyO1xuICB9XG5cbiAgc3RhcnQoKTogdm9pZCB7XG4gICAgdmFyIGNvbXBpbGVyID0gdGhpcy5jb21waWxlcjtcbiAgICB0aGlzLmFzdFZpc2l0b3IgPSBuZXcgUHJpbnRlclZpc2l0b3IodGhpcy5wYXJzZXIsIHRoaXMud3JpdGVyKTtcbiAgICB0aGlzLnZpc2l0SW50ZXJmYWNlcyh0aGlzLmZpbGVzKTtcblxuICAgIHZhciBtYW5hZ2VkQ2xhc3NlcyA9IFtdO1xuICAgIGZvciAobGV0IF9jbGFzcyBvZiBjb21waWxlci5wcm9ncmFtLm1hbmFnZWRDbGFzc2VzLnZhbHVlcygpKSB7XG4gICAgICBtYW5hZ2VkQ2xhc3Nlcy5wdXNoKF9jbGFzcy5pZCk7XG4gICAgICBpZiAoIV9jbGFzcy5maWxlLm5hbWUuc3RhcnRzV2l0aChcIn5cIikgJiYgX2NsYXNzLnByb3RvdHlwZS5pbXBsZW1lbnRzTm9kZXMgIT0gbnVsbCkge1xuICAgICAgICBfY2xhc3MudmlzaXQodGhpcyk7XG4gICAgICB9XG4gICAgfVxuICAgIHRoaXMud3JpdGUodGhpcy5jb21waWxlci5mdW5jdGlvblRhYmxlLmpvaW4oXCIgXCIpLCB0cnVlKTtcbiAgICB0aGlzLmNyZWF0ZVZpdHVhbEZ1bmN0aW9uKCk7XG4gICAgdmFyIG1vZHVsZSA9IGNvbXBpbGVyLm1vZHVsZTtcblxuICAgIGNvbnN0IHVwZGF0ZUludGVyZmFjZU1ldGhvZHMgPSAoaTogSW50ZXJmYWNlUHJvdG90eXBlKTogdm9pZCA9PiB7XG4gICAgICBpZiAoaS5pbnN0YW5jZU1lbWJlcnMgPT0gbnVsbCkgcmV0dXJuO1xuICAgICAgZm9yIChsZXQgbWVtYmVyIG9mIGkuaW5zdGFuY2VNZW1iZXJzLnZhbHVlcygpKSB7XG4gICAgICAgIGlmIChtZW1iZXIua2luZCAhPSBFbGVtZW50S2luZC5GVU5DVElPTl9QUk9UT1RZUEUpIGNvbnRpbnVlO1xuICAgICAgICBsZXQgZnVuYzogRnVuY3Rpb24gPSB0aGlzLmdldEZ1bmN0aW9uQnlOYW1lKG1lbWJlci5pbnRlcm5hbE5hbWUpO1xuICAgICAgICBsZXQgc2lnbmF0dXJlID0gZnVuYy5zaWduYXR1cmU7XG4gICAgICAgIGxldCBfdHlwZSA9IHRoaXMuY29tcGlsZXIuZW5zdXJlRnVuY3Rpb25UeXBlKFxuICAgICAgICAgIHNpZ25hdHVyZS5wYXJhbWV0ZXJUeXBlcyxcbiAgICAgICAgICBzaWduYXR1cmUucmV0dXJuVHlwZSxcbiAgICAgICAgICBzaWduYXR1cmUudGhpc1R5cGVcbiAgICAgICAgKTtcbiAgICAgICAgbGV0IGxvYWRNZXRob2RJRCA9IG1vZHVsZS5pMzIoXG4gICAgICAgICAgdGhpcy5pbnRlcmZhY2VNZXRob2RzLmdldChmdW5jLnByb3RvdHlwZS5zaWduYXR1cmUpIVxuICAgICAgICApO1xuICAgICAgICAvLyBsZXQgdGFyZ2V0ID0gdGhpcy5jb21waWxlci5wcm9ncmFtLmluc3RhbmNlc0J5TmFtZShcInZpcnR1YWxcIik7XG4gICAgICAgIGxldCBsb2FkQ2xhc3MgPSBtb2R1bGUubG9hZChcbiAgICAgICAgICA0LFxuICAgICAgICAgIGZhbHNlLFxuICAgICAgICAgIG1vZHVsZS5iaW5hcnkoXG4gICAgICAgICAgICBCaW5hcnlPcC5TdWJJMzIsXG4gICAgICAgICAgICBtb2R1bGUubG9jYWxfZ2V0KDAsIE5hdGl2ZVR5cGUuSTMyKSxcbiAgICAgICAgICAgIG1vZHVsZS5pMzIoOClcbiAgICAgICAgICApLFxuICAgICAgICAgIE5hdGl2ZVR5cGUuSTMyXG4gICAgICAgICk7XG4gICAgICAgIGxldCBjYWxsVmlydHVhbCA9IG1vZHVsZS5jYWxsKFxuICAgICAgICAgIFwifmxpYi92aXJ0dWFsL3ZpcnR1YWxcIixcbiAgICAgICAgICBbbG9hZE1ldGhvZElELCBsb2FkQ2xhc3NdLFxuICAgICAgICAgIE5hdGl2ZVR5cGUuSTMyXG4gICAgICAgICk7XG4gICAgICAgIG1vZHVsZS5yZW1vdmVGdW5jdGlvbihtZW1iZXIuaW50ZXJuYWxOYW1lKTtcbiAgICAgICAgXG4gICAgICAgIGxldCBjYWxsSW5kaXJlY3QgPSBtb2R1bGUuY2FsbF9pbmRpcmVjdChcbiAgICAgICAgICBjYWxsVmlydHVhbCxcbiAgICAgICAgICBmdW5jLmxvY2Fsc0J5SW5kZXgubWFwPG51bWJlcj4obG9jYWwgPT4gbW9kdWxlLmxvY2FsX2dldChsb2NhbC5pbmRleCwgbG9jYWwudHlwZS50b05hdGl2ZVR5cGUoKSkpLFxuXG4gICAgICAgICAgU2lnbmF0dXJlLm1ha2VTaWduYXR1cmVTdHJpbmcoXG4gICAgICAgICAgICBmdW5jLnNpZ25hdHVyZS5wYXJhbWV0ZXJUeXBlcyxcbiAgICAgICAgICAgIGZ1bmMuc2lnbmF0dXJlLnJldHVyblR5cGUsXG4gICAgICAgICAgICBmdW5jLnNpZ25hdHVyZS50aGlzVHlwZVxuICAgICAgICAgICkpO1xuXG4gICAgICAgIGxldCBib2R5ID0gbW9kdWxlLmJsb2NrKG51bGwgLFsgY2FsbEluZGlyZWN0IF0sIGZ1bmMuc2lnbmF0dXJlLnJldHVyblR5cGUudG9OYXRpdmVUeXBlKCkpO1xuXG4gICAgICAgIG1vZHVsZS5hZGRGdW5jdGlvbihcbiAgICAgICAgICBtZW1iZXIuaW50ZXJuYWxOYW1lLFxuICAgICAgICAgIF90eXBlLFxuICAgICAgICAgIG51bGwsXG4gICAgICAgICAgYm9keVxuICAgICAgICApO1xuICAgICAgfVxuICAgICAgZGVidWdnZXI7XG4gICAgfTtcblxuICAgIHRyeSB7XG4gICAgICB0aGlzLnZpc2l0SW50ZXJmYWNlcyh0aGlzLmZpbGVzLCB1cGRhdGVJbnRlcmZhY2VNZXRob2RzKTtcbiAgICB9IGNhdGNoIChlKSB7XG4gICAgICB0aGlzLndyaXRlKGUudG9TdHJpbmcoKSk7XG4gICAgfVxuICB9XG5cbiAgY3JlYXRlVml0dWFsRnVuY3Rpb24oKTogdm9pZCB7XG4gICAgdmFyIG1vZHVsZSA9IHRoaXMuY29tcGlsZXIubW9kdWxlO1xuICAgIHZhciBmdW5jdGlvblRhYmxlID0gdGhpcy5jb21waWxlci5mdW5jdGlvblRhYmxlO1xuICAgIG1vZHVsZS5zZXRGdW5jdGlvblRhYmxlKGZ1bmN0aW9uVGFibGUubGVuZ3RoLCAweGZmZmZmZmZmLCBmdW5jdGlvblRhYmxlKTtcbiAgICB0aGlzLndyaXRlKGZ1bmN0aW9uVGFibGUuam9pbihcIlxcblwiKSwgdHJ1ZSk7XG4gICAgbGV0IG1ldGhvZElEQ2FzZXMgPSBbXTtcbiAgICBsZXQgZHVtbXlNZXRob2RJZDogbnVtYmVyPTAsIGR1bW15Q2xhc3NpZCA6IG51bWJlciA9IDA7XG4gICAgZm9yIChsZXQgW2lkLCBjbGFzc2VzXSBvZiB0aGlzLmNsYXNzSWRzLmVudHJpZXMoKSkge1xuICAgICAgbGV0IHN0ciA9IFtcImNhc2UgXCIsIGlkLnRvU3RyaW5nKCksIFwiOiB7XFxuXFx0c3dpdGNoIChjbGFzc0lEKSB7XFxuXCJdO1xuICAgICAgZHVtbXlNZXRob2RJZCA9IGlkO1xuICAgICAgZm9yIChsZXQgW2NsYXNzSUQsIGZuUHRyXSBvZiBjbGFzc2VzKSB7XG4gICAgICAgIGR1bW15Q2xhc3NpZCA9IGNsYXNzSUQ7XG4gICAgICAgIHN0ci5wdXNoKFwiXFx0XFx0Y2FzZSBcIiArIGNsYXNzSUQudG9TdHJpbmcoKSArIFwiOiByZXR1cm4gXCIpO1xuICAgICAgICBzdHIucHVzaChmblB0ci50b1N0cmluZygpICsgXCI7XFxuXCIpO1xuICAgICAgfVxuICAgICAgc3RyLnB1c2goXCJcXHR9XCIpO1xuICAgICAgc3RyLnB1c2goXCJcXG59XCIpO1xuICAgICAgbWV0aG9kSURDYXNlcy5wdXNoKHN0ci5qb2luKFwiXCIpKTtcbiAgICB9XG5cbiAgICB2YXIgZnVuY1NvdXJjID0gYFxuICAgICAgQGdsb2JhbFxuICAgICAgZnVuY3Rpb24gdmlydHVhbChtZXRob2RJRDogdXNpemUsIGNsYXNzSUQ6IHVzaXplKTogdXNpemUge1xuICAgICAgICBzd2l0Y2ggKG1ldGhvZElEKXtcbiAgICAgICAgICAgJHttZXRob2RJRENhc2VzLmpvaW4oXCJcIil9XG4gICAgICAgIH1cbiAgICAgICAgdW5yZWFjaGFibGUoKTtcbiAgICAgICAgcmV0dXJuIDA7XG4gICAgICB9XG4gICAgICB2aXJ0dWFsKCR7ZHVtbXlNZXRob2RJZH0sICR7ZHVtbXlDbGFzc2lkfSk7XG4gICAgICBgO1xuICAgIHRoaXMucGFyc2VyLnBhcnNlRmlsZShmdW5jU291cmMsIFwifmxpYi92aXJ0dWFsXCIsIGZhbHNlKTtcbiAgICB0aGlzLnBhcnNlci5wcm9ncmFtLmluaXRpYWxpemUodGhpcy5jb21waWxlci5vcHRpb25zKTtcbiAgICB2YXIgc291cmNlcyA9IHRoaXMucGFyc2VyLnByb2dyYW0uc291cmNlcztcbiAgICB2YXIgZmlsZTogRmlsZSA9IG5ldyBGaWxlKHRoaXMucGFyc2VyLnByb2dyYW0sIHNvdXJjZXNbc291cmNlcy5sZW5ndGggLSAxXSk7XG4gICAgdGhpcy5wYXJzZXIucHJvZ3JhbS5pbml0aWFsaXplRnVuY3Rpb24oXG4gICAgICA8RnVuY3Rpb25EZWNsYXJhdGlvbj5maWxlLnNvdXJjZS5zdGF0ZW1lbnRzWzBdLFxuICAgICAgZmlsZVxuICAgICk7XG4gICAgdGhpcy5jb21waWxlci5jb21waWxlRmlsZShmaWxlKTtcbiAgICAvLyB0aGlzLmNvbXBpbGVyLm1vZHVsZS5yZW1vdmVGdW5jdGlvbihcIn5saWIvdmlydHVhbFwiKTtcbiAgfVxuXG4gIHdyaXRlKHN0cjogc3RyaW5nLCBuZXdsaW5lOiBib29sZWFuID0gZmFsc2UpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5sb2cpIHtcbiAgICAgIHRoaXMud3JpdGVyLndyaXRlKHN0ciArIChuZXdsaW5lID8gXCJcXG5cIiA6IFwiIFwiKSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRGdW5jdGlvblByb3RvdHlwZShub2RlOiBGdW5jdGlvblByb3RvdHlwZSk6IHZvaWQge1xuICAgIGlmIChub2RlLmlzQm91bmQpIHtcbiAgICAgIGxldCBfY2xhc3MgPSA8Q2xhc3M+IG5vZGUucGFyZW50O1xuICAgICAgbGV0IHNpZ25hdHVyZSA9IG5vZGUuc2lnbmF0dXJlO1xuICAgICAgbGV0IGlkID0gdGhpcy5pbnRlcmZhY2VNZXRob2RzLmdldChzaWduYXR1cmUpO1xuICAgICAgaWYgKGlkICE9IG51bGwpIHtcbiAgICAgICAgbGV0IGNsYXNzSWQgPSBfY2xhc3MuaWQ7XG4gICAgICAgIHRoaXMud3JpdGUoXCJQYXJlbnQ6IFwiICsgX2NsYXNzLm5hbWUsIHRydWUpO1xuICAgICAgICB0aGlzLndyaXRlKFwidmlzaXRpbmcgZnVuY3Rpb24gXCIgKyBub2RlLmludGVybmFsTmFtZSwgZmFsc2UpO1xuICAgICAgICB0aGlzLndyaXRlKHNpZ25hdHVyZSArIFwiIGhhcyBtZXRob2RJRDogXCIgKyBpZCwgdHJ1ZSk7XG4gICAgICAgIGxldCBmblB0ciA9IHRoaXMuY29tcGlsZXIuZnVuY3Rpb25UYWJsZS5sZW5ndGg7XG4gICAgICAgIHRoaXMuY29tcGlsZXIuZnVuY3Rpb25UYWJsZS5wdXNoKG5vZGUuaW50ZXJuYWxOYW1lKTtcbiAgICAgICAgbGV0IGVudHJ5OiB2aXJ0dWFsTWV0aG9kID0gW2NsYXNzSWQsIGZuUHRyXTtcbiAgICAgICAgdGhpcy5jbGFzc0lkcy5nZXQoaWQpIS5wdXNoKGVudHJ5KTtcbiAgICAgICAgLy8gbGV0IGZ1bmNQdHIgPSB0aGlzLmNvbXBpbGVyLmVuc3VyZUZ1bmN0aW9uVGFibGVFbnRyeSh0aGlzLmNvbXBpbGVyLnByb2dyYW0uaW5zdGFuY2VzQnlOYW1lKVxuICAgICAgfVxuICAgIH1cbiAgfVxuICB2aXNpdEZ1bmN0aW9uKG5vZGU6IEZ1bmN0aW9uKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcInZpc2l0aW5nIGZ1bmN0aW9uOiBcIiArIG5vZGUubmFtZSk7XG4gICAgdGhpcy53cml0ZShub2RlLnNpZ25hdHVyZS50b1N0cmluZygpLCB0cnVlKTtcbiAgfVxuICB2aXNpdEZ1bmN0aW9uVGFyZ2V0KG5vZGU6IEZ1bmN0aW9uVGFyZ2V0KTogdm9pZCB7fVxuICB2aXNpdEZpZWxkUHJvdG90eXBlKG5vZGU6IEZpZWxkUHJvdG90eXBlKTogdm9pZCB7fVxuICB2aXNpdEZpZWxkKG5vZGU6IEZpZWxkKTogdm9pZCB7fVxuICB2aXNpdFByb3BlcnR5UHJvdG90eXBlKG5vZGU6IFByb3BlcnR5UHJvdG90eXBlKTogdm9pZCB7fVxuICB2aXNpdFByb3BlcnR5KG5vZGU6IFByb3BlcnR5KTogdm9pZCB7fVxuICB2aXNpdENsYXNzUHJvdG90eXBlKG5vZGU6IENsYXNzUHJvdG90eXBlKTogdm9pZCB7fVxuICB2aXNpdENsYXNzKG5vZGU6IENsYXNzKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShub2RlLm5hbWUpO1xuICAgIC8vIHRoaXMud3JpdGUobm9kZS5tZW1iZXJzIS5zaXplLnRvU3RyaW5nKCkpO1xuICAgIHZhciBpbnRlcmZhY2VzID0gKDxDbGFzc0RlY2xhcmF0aW9uPm5vZGUuZGVjbGFyYXRpb24pLmltcGxlbWVudHNUeXBlcztcbiAgICBpZiAoaW50ZXJmYWNlcykge1xuICAgICAgdGhpcy53cml0ZShcImltcGxlbWVudHMgXCIgKyBpbnRlcmZhY2VzLmpvaW4oXCIsIFwiKSk7XG4gICAgfVxuICAgIHRoaXMud3JpdGUoXCJcIiwgdHJ1ZSk7XG4gICAgZm9yIChsZXQgbWVtIG9mIG5vZGUubWVtYmVycyEudmFsdWVzKCkpIHtcbiAgICAgIG1lbS52aXNpdCh0aGlzKTtcbiAgICB9XG4gIH1cbiAgdmlzaXRJbnRlcmZhY2VQcm90b3R5cGUobm9kZTogSW50ZXJmYWNlUHJvdG90eXBlKTogdm9pZCB7XG4gICAgdGhpcy53cml0ZShcIkludGVyZmFjZSBQcm90b3R5cGVcIiwgdHJ1ZSk7XG4gICAgdGhpcy53cml0ZShub2RlLm5hbWUpO1xuICAgIGZvciAobGV0IFtrZXksIHZhbHVlXSBvZiBub2RlLmluc3RhbmNlTWVtYmVycyEuZW50cmllcygpKSB7XG4gICAgICBpZiAodmFsdWUgaW5zdGFuY2VvZiBGdW5jdGlvblByb3RvdHlwZSkge1xuICAgICAgICB0aGlzLndyaXRlKGtleSArIFwiIFwiICsgdmFsdWUudG9TdHJpbmcoKSk7XG4gICAgICAgIGxldCBpZCA9IHRoaXMuaW50ZXJmYWNlTWV0aG9kcy5zaXplO1xuICAgICAgICBpZiAoIXRoaXMuaW50ZXJmYWNlTWV0aG9kcy5oYXModmFsdWUuc2lnbmF0dXJlKSkge1xuICAgICAgICAgIHRoaXMuaW50ZXJmYWNlTWV0aG9kcy5zZXQodmFsdWUuc2lnbmF0dXJlLCBpZCk7XG4gICAgICAgICAgdGhpcy5jbGFzc0lkcy5zZXQoaWQsIFtdKTtcbiAgICAgICAgICB0aGlzLndyaXRlKHZhbHVlLnNpZ25hdHVyZSwgdHJ1ZSk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgdGhpcy53cml0ZShcIlwiLCB0cnVlKTtcbiAgfVxuXG4gIHZpc2l0SW50ZXJmYWNlKG5vZGU6IEludGVyZmFjZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUobm9kZS5uYW1lKTtcbiAgICBmb3IgKGxldCBba2V5LCB2YWx1ZV0gb2Ygbm9kZS5tZW1iZXJzIS5lbnRyaWVzKCkpIHtcbiAgICAgIHRoaXMud3JpdGUoa2V5ICsgXCIgXCIgKyB2YWx1ZS50b1N0cmluZygpKTtcbiAgICB9XG4gIH1cbn1cbiJdfQ==