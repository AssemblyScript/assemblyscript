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
var element_1 = require("../src/element");
var astPrinter_1 = require("./astPrinter");
var Virtualizer = /** @class */ (function (_super) {
    __extends(Virtualizer, _super);
    function Virtualizer(parser, compiler, writer) {
        var e_1, _a, e_2, _b, e_3, _c, e_4, _d;
        var _this = _super.call(this) || this;
        _this.parser = parser;
        _this.compiler = compiler;
        _this.writer = writer;
        _this.interfaceMethods = new Map();
        _this.classIds = new Map();
        _this.astVisitor = new astPrinter_1.PrinterVisitor(writer);
        writer.write("Visiting Program with Printer\n");
        var files = compiler.program.filesByName.values();
        _this.visitInterfaces(files);
        var managedClasses = [];
        try {
            for (var _e = __values(compiler.program.managedClasses.values()), _f = _e.next(); !_f.done; _f = _e.next()) {
                var _class = _f.value;
                managedClasses.push(_class.id);
                if (!_class.file.name.startsWith("~")) {
                    _class.visit(_this);
                }
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (_f && !_f.done && (_a = _e.return)) _a.call(_e);
            }
            finally { if (e_1) throw e_1.error; }
        }
        _this.write(compiler.functionTable.join(" "), true);
        _this.createVitualFunction();
        var module = compiler.module;
        // this.compiler.module.addFunction(
        //   "virtual",
        //   this.compiler.ensureFunctionType([Type.usize32, Type.usize32], Type.void, null),
        //   null,
        //   this.compiler.compileSwitchStatement(stmt)
        // )
        // let source = parser.program.sources[0];
        debugger;
        // let body: number[] = [];
        // let func: FunctionDeclaration = <FunctionDeclaration> source.statements[0];
        // let stmt = this.compiler.compileStatement(func.body!)
        // let stmt = new ast.SwitchStatement();
        // stmt.condition = condition;
        // let defaultCase = new ast.SwitchCase();
        // defaultCase.label = null
        // let unreachable = new ast.AssertionExpression();
        // unreachable.expression = new ast.FalseExpression();
        // defaultCase.statements = [unreachable];
        // stmt.cases = [defaultCase];
        // let blockLabels = []
        // let block = module.block("classIdInvalid", [
        //     module.switch(names, "classIdInvalid", module.local_get(1, NativeType.I32)),
        //     NativeType.I32
        //   ]
        //   )
        // for (let id of this.classIds.keys()) {
        //   blockLabels.push(id.toString());
        //   let classIds = this.classIds.get(id)!;
        //   let innerexprs = names.map(name => module.unreachable());
        //   for (let [classid, fnPtr] of classIds){
        //     let num = module.i32(fnPtr);
        //     let name = "$class"+classid.toString();
        //     names.push(name);
        //     innerexprs[classid] = module.i32(num);
        //   }
        //   debugger;
        //   innerexprs.map((expr, i) => {
        //     block = module.block(names[i],[block, expr], NativeType.I32);
        //   })
        // }
        // block = module.block(null, [block, module.local_get(0, NativeType.I32)], NativeType.I32);
        try {
            try {
                for (var _g = __values(compiler.program.filesByName.values()), _h = _g.next(); !_h.done; _h = _g.next()) {
                    var file = _h.value;
                    if (!file.name.startsWith("~"))
                        if (file.members)
                            try {
                                for (var _j = __values(file.members.values()), _k = _j.next(); !_k.done; _k = _j.next()) {
                                    var mem = _k.value;
                                    if (mem instanceof assemblyscript_1.InterfacePrototype) {
                                        _this.write("interface " + mem.name, true);
                                        if (mem.instanceMembers) {
                                            try {
                                                for (var _l = __values(mem.instanceMembers.values()), _m = _l.next(); !_m.done; _m = _l.next()) {
                                                    var member = _m.value;
                                                    var func = _this.compiler.program.instancesByName.get(member.internalName);
                                                    var signature = func.signature;
                                                    debugger;
                                                    var _type = _this.compiler.ensureFunctionType(signature.parameterTypes, signature.returnType, signature.thisType);
                                                    var loadMethodID = module.i32(_this.interfaceMethods.get(func.prototype.signature));
                                                    // let target = this.compiler.program.instancesByName("virtual");
                                                    debugger;
                                                    var loadClass = module.load(4, false, module.binary(assemblyscript_1.BinaryOp.SubI32, module.local_get(0, assemblyscript_1.NativeType.I32), module.i32(8)), assemblyscript_1.NativeType.I32);
                                                    var callVirtual = module.call("~lib/virtual/virtual", [loadMethodID, loadClass], assemblyscript_1.NativeType.I32);
                                                    module.removeFunction(member.internalName);
                                                    module.addFunction(member.internalName, _type, null, module.block(null, [
                                                        module.call_indirect(callVirtual, func.localsByIndex.map(function (local) { return module.local_get(local.index, local.type.toNativeType()); }), assemblyscript_1.Signature.makeSignatureString(func.signature.parameterTypes, func.signature.returnType, func.signature.thisType))
                                                    ]));
                                                }
                                            }
                                            catch (e_4_1) { e_4 = { error: e_4_1 }; }
                                            finally {
                                                try {
                                                    if (_m && !_m.done && (_d = _l.return)) _d.call(_l);
                                                }
                                                finally { if (e_4) throw e_4.error; }
                                            }
                                        }
                                    }
                                }
                            }
                            catch (e_3_1) { e_3 = { error: e_3_1 }; }
                            finally {
                                try {
                                    if (_k && !_k.done && (_c = _j.return)) _c.call(_j);
                                }
                                finally { if (e_3) throw e_3.error; }
                            }
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (_h && !_h.done && (_b = _g.return)) _b.call(_g);
                }
                finally { if (e_2) throw e_2.error; }
            }
        }
        catch (e) {
            _this.write(e.toString());
        }
        return _this;
    }
    Virtualizer.prototype.createVitualFunction = function () {
        var module = this.compiler.module;
        var functionTable = this.compiler.functionTable;
        module.setFunctionTable(functionTable.length, 0xffffffff, functionTable);
        this.write(functionTable.join("\n"), true);
        var funcSourc = "\n      @global\n      function virtual(methodID: usize, classID: usize): usize {\n        switch (methodID){\n          case 0: {\n            switch (classID) {\n              case 3:\n                return 4;\n              case 4:\n                return 5;\n            \n            }\n          }\n        }\n        unreachable();\n        return 0;\n      }\n      virtual(0,3);\n      ";
        var condition = new assemblyscript_1.IdentifierExpression();
        condition.symbol = "methodID";
        this.parser.parseFile(funcSourc, "~lib/virtual", false);
        this.parser.program.initialize(this.compiler.options);
        var sources = this.parser.program.sources;
        var file = new assemblyscript_1.File(this.parser.program, sources[sources.length - 1]);
        this.parser.program.initializeFunction(file.source.statements[0], file);
        this.compiler.compileFile(file);
    };
    Virtualizer.prototype.write = function (str, newline) {
        if (newline === void 0) { newline = false; }
        this.writer.write(str + (newline ? "\n" : " "));
    };
    Virtualizer.prototype.visitFile = function (node) {
        this.write("visiting file ", true);
        node.startFunction.visit(this);
    };
    Virtualizer.prototype.visitTypeDefinition = function (node) { };
    Virtualizer.prototype.visitNamespace = function (node) { };
    Virtualizer.prototype.visitEnum = function (node) { };
    Virtualizer.prototype.visitEnumValue = function (node) { };
    Virtualizer.prototype.visitGlobal = function (node) { };
    Virtualizer.prototype.visitLocal = function (node) { };
    Virtualizer.prototype.visitFunctionPrototype = function (node) {
        debugger;
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
        // this.write(node.toString());
        // if(mems)
        // for (let mem of mems.values()){
        //     this.write(mem.toString(), true)
        // }
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlydHVhbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uL2luc3RhbmNlcy92aXJ0dWFsLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBQUEsaURBNkJ3QjtBQUN4QiwwQ0FBb0Q7QUFDcEQsMkNBQThDO0FBUzlDO0lBQXlDLCtCQUFrQjtJQU16RCxxQkFDVSxNQUFjLEVBQ2QsUUFBa0IsRUFDbkIsTUFBYzs7UUFIdkIsWUFLRSxpQkFBTyxTQXFHUjtRQXpHUyxZQUFNLEdBQU4sTUFBTSxDQUFRO1FBQ2QsY0FBUSxHQUFSLFFBQVEsQ0FBVTtRQUNuQixZQUFNLEdBQU4sTUFBTSxDQUFRO1FBTnZCLHNCQUFnQixHQUEwQixJQUFJLEdBQUcsRUFBRSxDQUFDO1FBQ3BELGNBQVEsR0FBbUMsSUFBSSxHQUFHLEVBQUUsQ0FBQztRQVFuRCxLQUFJLENBQUMsVUFBVSxHQUFHLElBQUksMkJBQWMsQ0FBQyxNQUFNLENBQUMsQ0FBQztRQUM3QyxNQUFNLENBQUMsS0FBSyxDQUFDLGlDQUFpQyxDQUFDLENBQUM7UUFDaEQsSUFBSSxLQUFLLEdBQUcsUUFBUSxDQUFDLE9BQU8sQ0FBQyxXQUFXLENBQUMsTUFBTSxFQUFFLENBQUM7UUFDbEQsS0FBSSxDQUFDLGVBQWUsQ0FBQyxLQUFLLENBQUMsQ0FBQztRQUU1QixJQUFJLGNBQWMsR0FBRyxFQUFFLENBQUM7O1lBQ3hCLEtBQW1CLElBQUEsS0FBQSxTQUFBLFFBQVEsQ0FBQyxPQUFPLENBQUMsY0FBYyxDQUFDLE1BQU0sRUFBRSxDQUFBLGdCQUFBLDRCQUFFO2dCQUF4RCxJQUFJLE1BQU0sV0FBQTtnQkFDYixjQUFjLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxFQUFFLENBQUMsQ0FBQztnQkFDL0IsSUFBSSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxHQUFHLENBQUMsRUFBRTtvQkFD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RUFBRTt3QkFDL0MsSUFBSSxDQUFDLGdCQUFnQixDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQUMsU0FBUyxFQUFFLEVBQUUsQ0FBQyxDQUFDO3dCQUMvQyxJQUFJLENBQUMsUUFBUSxDQUFDLEdBQUcsQ0FBQyxFQUFFLEVBQUUsRUFBRSxDQUFDLENBQUM7d0JBQzFCLElBQUksQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLFNBQVMsRUFBRSxJQUFJLENBQUMsQ0FBQztxQkFDbkM7aUJBQ0Y7YUFDRjs7Ozs7Ozs7O1FBQ0QsSUFBSSxDQUFDLEtBQUssQ0FBQyxFQUFFLEVBQUUsSUFBSSxDQUFDLENBQUM7SUFDdkIsQ0FBQztJQUVELG9DQUFjLEdBQWQsVUFBZSxJQUFlOztRQUM1QixJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQzs7WUFDdEIsS0FBeUIsSUFBQSxLQUFBLFNBQUEsSUFBSSxDQUFDLE9BQVEsQ0FBQyxPQUFPLEVBQUUsQ0FBQSxnQkFBQSw0QkFBRTtnQkFBekMsSUFBQSx3QkFBWSxFQUFYLFdBQUcsRUFBRSxhQUFLO2dCQUNsQixJQUFJLENBQUMsS0FBSyxDQUFDLEdBQUcsR0FBRyxHQUFHLEdBQUcsS0FBSyxDQUFDLFFBQVEsRUFBRSxDQUFDLENBQUM7YUFDMUM7Ozs7Ozs7OztJQUNILENBQUM7SUFDSCxrQkFBQztBQUFELENBQUMsQUExT0QsQ0FBeUMsNEJBQWtCLEdBME8xRCIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7XG4gIEVsZW1lbnRWaXNpdG9yLFxuICBGaWxlLFxuICBUeXBlRGVmaW5pdGlvbixcbiAgTmFtZXNwYWNlLFxuICBFbnVtLFxuICBFbnVtVmFsdWUsXG4gIEdsb2JhbCxcbiAgTG9jYWwsXG4gIEZ1bmN0aW9uUHJvdG90eXBlLFxuICBGdW5jdGlvblRhcmdldCxcbiAgRmllbGRQcm90b3R5cGUsXG4gIEZpZWxkLFxuICBQcm9wZXJ0eVByb3RvdHlwZSxcbiAgUHJvcGVydHksXG4gIENsYXNzUHJvdG90eXBlLFxuICBDbGFzcyxcbiAgSW50ZXJmYWNlUHJvdG90eXBlLFxuICBJbnRlcmZhY2UsXG4gIEZ1bmN0aW9uLFxuICBQcm9ncmFtLFxuICBDb21waWxlcixcbiAgSWRlbnRpZmllckV4cHJlc3Npb24sXG4gIEZ1bmN0aW9uRGVjbGFyYXRpb24sXG4gIENsYXNzRGVjbGFyYXRpb24sXG4gIFBhcnNlcixcbiAgQmluYXJ5T3AsXG4gIE5hdGl2ZVR5cGUsXG4gIFNpZ25hdHVyZVxufSBmcm9tIFwiYXNzZW1ibHlzY3JpcHRcIjtcbmltcG9ydCB7IEJhc2VFbGVtZW50VmlzaXRvciB9IGZyb20gXCIuLi9zcmMvZWxlbWVudFwiO1xuaW1wb3J0IHsgUHJpbnRlclZpc2l0b3IgfSBmcm9tIFwiLi9hc3RQcmludGVyXCI7XG5pbXBvcnQgeyBBU1RWaXNpdG9yIH0gZnJvbSBcIi4uL3NyYy9hc3RcIjtcblxudHlwZSBtZW1iZXJpZCA9IG51bWJlcjtcbnR5cGUgY2xhc3NpZCA9IG51bWJlcjtcbnR5cGUgZm5QdHIgPSBudW1iZXI7XG5cbnR5cGUgdmlydHVhbE1ldGhvZCA9IFtjbGFzc2lkLCBmblB0cl07XG5cbmV4cG9ydCBkZWZhdWx0IGNsYXNzIFZpcnR1YWxpemVyIGV4dGVuZHMgQmFzZUVsZW1lbnRWaXNpdG9yXG4gIGltcGxlbWVudHMgRWxlbWVudFZpc2l0b3Ige1xuICBhc3RWaXNpdG9yOiBBU1RWaXNpdG9yO1xuICBpbnRlcmZhY2VNZXRob2RzOiBNYXA8c3RyaW5nLCBtZW1iZXJpZD4gPSBuZXcgTWFwKCk7XG4gIGNsYXNzSWRzOiBNYXA8bWVtYmVyaWQsIHZpcnR1YWxNZXRob2RbXT4gPSBuZXcgTWFwKCk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgcHJpdmF0ZSBwYXJzZXI6IFBhcnNlcixcbiAgICBwcml2YXRlIGNvbXBpbGVyOiBDb21waWxlcixcbiAgICBwdWJsaWMgd3JpdGVyOiBXcml0ZXJcbiAgKSB7XG4gICAgc3VwZXIoKTtcbiAgICB0aGlzLmFzdFZpc2l0b3IgPSBuZXcgUHJpbnRlclZpc2l0b3Iod3JpdGVyKTtcbiAgICB3cml0ZXIud3JpdGUoXCJWaXNpdGluZyBQcm9ncmFtIHdpdGggUHJpbnRlclxcblwiKTtcbiAgICBsZXQgZmlsZXMgPSBjb21waWxlci5wcm9ncmFtLmZpbGVzQnlOYW1lLnZhbHVlcygpO1xuICAgIHRoaXMudmlzaXRJbnRlcmZhY2VzKGZpbGVzKTtcblxuICAgIGxldCBtYW5hZ2VkQ2xhc3NlcyA9IFtdO1xuICAgIGZvciAobGV0IF9jbGFzcyBvZiBjb21waWxlci5wcm9ncmFtLm1hbmFnZWRDbGFzc2VzLnZhbHVlcygpKSB7XG4gICAgICBtYW5hZ2VkQ2xhc3Nlcy5wdXNoKF9jbGFzcy5pZCk7XG4gICAgICBpZiAoIV9jbGFzcy5maWxlLm5hbWUuc3RhcnRzV2l0aChcIn5cIikpIHtcbiAgICAgICAgX2NsYXNzLnZpc2l0KHRoaXMpO1xuICAgICAgfVxuICAgIH1cbiAgICB0aGlzLndyaXRlKGNvbXBpbGVyLmZ1bmN0aW9uVGFibGUuam9pbihcIiBcIiksIHRydWUpO1xuICAgIHRoaXMuY3JlYXRlVml0dWFsRnVuY3Rpb24oKTtcbiAgICB2YXIgbW9kdWxlID0gY29tcGlsZXIubW9kdWxlO1xuXG4gICAgLy8gdGhpcy5jb21waWxlci5tb2R1bGUuYWRkRnVuY3Rpb24oXG4gICAgLy8gICBcInZpcnR1YWxcIixcbiAgICAvLyAgIHRoaXMuY29tcGlsZXIuZW5zdXJlRnVuY3Rpb25UeXBlKFtUeXBlLnVzaXplMzIsIFR5cGUudXNpemUzMl0sIFR5cGUudm9pZCwgbnVsbCksXG4gICAgLy8gICBudWxsLFxuICAgIC8vICAgdGhpcy5jb21waWxlci5jb21waWxlU3dpdGNoU3RhdGVtZW50KHN0bXQpXG4gICAgLy8gKVxuXG4gICAgLy8gbGV0IHNvdXJjZSA9IHBhcnNlci5wcm9ncmFtLnNvdXJjZXNbMF07XG4gICAgZGVidWdnZXI7XG4gICAgLy8gbGV0IGJvZHk6IG51bWJlcltdID0gW107XG4gICAgLy8gbGV0IGZ1bmM6IEZ1bmN0aW9uRGVjbGFyYXRpb24gPSA8RnVuY3Rpb25EZWNsYXJhdGlvbj4gc291cmNlLnN0YXRlbWVudHNbMF07XG4gICAgLy8gbGV0IHN0bXQgPSB0aGlzLmNvbXBpbGVyLmNvbXBpbGVTdGF0ZW1lbnQoZnVuYy5ib2R5ISlcbiAgICAvLyBsZXQgc3RtdCA9IG5ldyBhc3QuU3dpdGNoU3RhdGVtZW50KCk7XG4gICAgLy8gc3RtdC5jb25kaXRpb24gPSBjb25kaXRpb247XG5cbiAgICAvLyBsZXQgZGVmYXVsdENhc2UgPSBuZXcgYXN0LlN3aXRjaENhc2UoKTtcbiAgICAvLyBkZWZhdWx0Q2FzZS5sYWJlbCA9IG51bGxcbiAgICAvLyBsZXQgdW5yZWFjaGFibGUgPSBuZXcgYXN0LkFzc2VydGlvbkV4cHJlc3Npb24oKTtcbiAgICAvLyB1bnJlYWNoYWJsZS5leHByZXNzaW9uID0gbmV3IGFzdC5GYWxzZUV4cHJlc3Npb24oKTtcbiAgICAvLyBkZWZhdWx0Q2FzZS5zdGF0ZW1lbnRzID0gW3VucmVhY2hhYmxlXTtcbiAgICAvLyBzdG10LmNhc2VzID0gW2RlZmF1bHRDYXNlXTtcblxuICAgIC8vIGxldCBibG9ja0xhYmVscyA9IFtdXG4gICAgLy8gbGV0IGJsb2NrID0gbW9kdWxlLmJsb2NrKFwiY2xhc3NJZEludmFsaWRcIiwgW1xuICAgIC8vICAgICBtb2R1bGUuc3dpdGNoKG5hbWVzLCBcImNsYXNzSWRJbnZhbGlkXCIsIG1vZHVsZS5sb2NhbF9nZXQoMSwgTmF0aXZlVHlwZS5JMzIpKSxcbiAgICAvLyAgICAgTmF0aXZlVHlwZS5JMzJcbiAgICAvLyAgIF1cbiAgICAvLyAgIClcbiAgICAvLyBmb3IgKGxldCBpZCBvZiB0aGlzLmNsYXNzSWRzLmtleXMoKSkge1xuICAgIC8vICAgYmxvY2tMYWJlbHMucHVzaChpZC50b1N0cmluZygpKTtcbiAgICAvLyAgIGxldCBjbGFzc0lkcyA9IHRoaXMuY2xhc3NJZHMuZ2V0KGlkKSE7XG4gICAgLy8gICBsZXQgaW5uZXJleHBycyA9IG5hbWVzLm1hcChuYW1lID0+IG1vZHVsZS51bnJlYWNoYWJsZSgpKTtcbiAgICAvLyAgIGZvciAobGV0IFtjbGFzc2lkLCBmblB0cl0gb2YgY2xhc3NJZHMpe1xuICAgIC8vICAgICBsZXQgbnVtID0gbW9kdWxlLmkzMihmblB0cik7XG4gICAgLy8gICAgIGxldCBuYW1lID0gXCIkY2xhc3NcIitjbGFzc2lkLnRvU3RyaW5nKCk7XG4gICAgLy8gICAgIG5hbWVzLnB1c2gobmFtZSk7XG4gICAgLy8gICAgIGlubmVyZXhwcnNbY2xhc3NpZF0gPSBtb2R1bGUuaTMyKG51bSk7XG4gICAgLy8gICB9XG4gICAgLy8gICBkZWJ1Z2dlcjtcbiAgICAvLyAgIGlubmVyZXhwcnMubWFwKChleHByLCBpKSA9PiB7XG4gICAgLy8gICAgIGJsb2NrID0gbW9kdWxlLmJsb2NrKG5hbWVzW2ldLFtibG9jaywgZXhwcl0sIE5hdGl2ZVR5cGUuSTMyKTtcbiAgICAvLyAgIH0pXG5cbiAgICAvLyB9XG5cbiAgICAvLyBibG9jayA9IG1vZHVsZS5ibG9jayhudWxsLCBbYmxvY2ssIG1vZHVsZS5sb2NhbF9nZXQoMCwgTmF0aXZlVHlwZS5JMzIpXSwgTmF0aXZlVHlwZS5JMzIpO1xuICAgIHRyeSB7XG4gICAgICBmb3IgKGxldCBmaWxlIG9mIGNvbXBpbGVyLnByb2dyYW0uZmlsZXNCeU5hbWUudmFsdWVzKCkpIHtcbiAgICAgICAgaWYgKCFmaWxlLm5hbWUuc3RhcnRzV2l0aChcIn5cIikpXG4gICAgICAgICAgaWYgKGZpbGUubWVtYmVycylcbiAgICAgICAgICAgIGZvciAobGV0IG1lbSBvZiBmaWxlLm1lbWJlcnMudmFsdWVzKCkpIHtcbiAgICAgICAgICAgICAgaWYgKG1lbSBpbnN0YW5jZW9mIEludGVyZmFjZVByb3RvdHlwZSkge1xuICAgICAgICAgICAgICAgIHRoaXMud3JpdGUoXCJpbnRlcmZhY2UgXCIgKyBtZW0ubmFtZSwgdHJ1ZSk7XG4gICAgICAgICAgICAgICAgaWYgKG1lbS5pbnN0YW5jZU1lbWJlcnMpIHtcbiAgICAgICAgICAgICAgICAgIGZvciAobGV0IG1lbWJlciBvZiBtZW0uaW5zdGFuY2VNZW1iZXJzLnZhbHVlcygpKSB7XG4gICAgICAgICAgICAgICAgICAgIGxldCBmdW5jOiBGdW5jdGlvbiA9IHRoaXMuY29tcGlsZXIucHJvZ3JhbS5pbnN0YW5jZXNCeU5hbWUuZ2V0KG1lbWJlci5pbnRlcm5hbE5hbWUpISBhcyBGdW5jdGlvbjtcbiAgICAgICAgICAgICAgICAgICAgbGV0IHNpZ25hdHVyZSA9IGZ1bmMuc2lnbmF0dXJlXG4gICAgICAgICAgICAgICAgICAgIGRlYnVnZ2VyO1xuICAgICAgICAgICAgICAgICAgICBsZXQgX3R5cGUgPSB0aGlzLmNvbXBpbGVyLmVuc3VyZUZ1bmN0aW9uVHlwZShzaWduYXR1cmUucGFyYW1ldGVyVHlwZXMsIHNpZ25hdHVyZS5yZXR1cm5UeXBlLCBzaWduYXR1cmUudGhpc1R5cGUpO1xuICAgICAgICAgICAgICAgICAgICBsZXQgbG9hZE1ldGhvZElEID0gIG1vZHVsZS5pMzIodGhpcy5pbnRlcmZhY2VNZXRob2RzLmdldChmdW5jLnByb3RvdHlwZS5zaWduYXR1cmUpISk7XG4gICAgICAgICAgICAgICAgICAgIC8vIGxldCB0YXJnZXQgPSB0aGlzLmNvbXBpbGVyLnByb2dyYW0uaW5zdGFuY2VzQnlOYW1lKFwidmlydHVhbFwiKTtcbiAgICAgICAgICAgICAgICAgICAgZGVidWdnZXI7XG4gICAgICAgICAgICAgICAgICAgIHZhciBsb2FkQ2xhc3MgPSBtb2R1bGUubG9hZCg0LCBmYWxzZSxcbiAgICAgICAgICAgICAgICAgICAgICBtb2R1bGUuYmluYXJ5KEJpbmFyeU9wLlN1YkkzMixcbiAgICAgICAgICAgICAgICAgICAgICAgIG1vZHVsZS5sb2NhbF9nZXQoMCwgTmF0aXZlVHlwZS5JMzIpLFxuICAgICAgICAgICAgICAgICAgICAgICAgbW9kdWxlLmkzMig4KVxuICAgICAgICAgICAgICAgICAgICAgICksXG4gICAgICAgICAgICAgICAgICAgICAgTmF0aXZlVHlwZS5JMzJcbiAgICAgICAgICAgICAgICAgICAgKTtcbiAgICAgICAgICAgICAgICAgICAgbGV0IGNhbGxWaXJ0dWFsID0gbW9kdWxlLmNhbGwoXCJ+bGliL3ZpcnR1YWwvdmlydHVhbFwiLFtsb2FkTWV0aG9kSUQsIGxvYWRDbGFzc10sIE5hdGl2ZVR5cGUuSTMyKTtcbiAgICAgICAgICAgICAgICAgICAgbW9kdWxlLnJlbW92ZUZ1bmN0aW9uKG1lbWJlci5pbnRlcm5hbE5hbWUpXG4gICAgICAgICAgICAgICAgICAgIG1vZHVsZS5hZGRGdW5jdGlvbihtZW1iZXIuaW50ZXJuYWxOYW1lLCBfdHlwZSwgbnVsbCwgbW9kdWxlLmJsb2NrKG51bGwsXG4gICAgICAgICAgICAgICAgICAgICAgW1xuICAgICAgICAgICAgICAgICAgICAgICAgbW9kdWxlLmNhbGxfaW5kaXJlY3QoY2FsbFZpcnR1YWwsICBmdW5jLmxvY2Fsc0J5SW5kZXgubWFwKGxvY2FsID0+IG1vZHVsZS5sb2NhbF9nZXQobG9jYWwuaW5kZXgsIGxvY2FsLnR5cGUudG9OYXRpdmVUeXBlKCkpKSxcbiAgICAgICAgICAgICAgICAgICAgICAgIFNpZ25hdHVyZS5tYWtlU2lnbmF0dXJlU3RyaW5nKGZ1bmMuc2lnbmF0dXJlLnBhcmFtZXRlclR5cGVzLGZ1bmMuc2lnbmF0dXJlLnJldHVyblR5cGUsIGZ1bmMuc2lnbmF0dXJlLnRoaXNUeXBlKSlcbiAgICAgICAgICAgICAgICAgICAgICBdKSlcbiAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgIH1cbiAgICB9IGNhdGNoIChlKSB7XG4gICAgICB0aGlzLndyaXRlKGUudG9TdHJpbmcoKSk7XG4gICAgfVxuICB9XG5cbiAgY3JlYXRlVml0dWFsRnVuY3Rpb24oKTogdm9pZCB7XG4gICAgdmFyIG1vZHVsZSA9IHRoaXMuY29tcGlsZXIubW9kdWxlO1xuICAgIHZhciBmdW5jdGlvblRhYmxlID0gdGhpcy5jb21waWxlci5mdW5jdGlvblRhYmxlO1xuICAgIG1vZHVsZS5zZXRGdW5jdGlvblRhYmxlKGZ1bmN0aW9uVGFibGUubGVuZ3RoLCAweGZmZmZmZmZmLCBmdW5jdGlvblRhYmxlKTtcbiAgICB0aGlzLndyaXRlKGZ1bmN0aW9uVGFibGUuam9pbihcIlxcblwiKSwgdHJ1ZSlcbiAgICBsZXQgZnVuY1NvdXJjID0gYFxuICAgICAgQGdsb2JhbFxuICAgICAgZnVuY3Rpb24gdmlydHVhbChtZXRob2RJRDogdXNpemUsIGNsYXNzSUQ6IHVzaXplKTogdXNpemUge1xuICAgICAgICBzd2l0Y2ggKG1ldGhvZElEKXtcbiAgICAgICAgICBjYXNlIDA6IHtcbiAgICAgICAgICAgIHN3aXRjaCAoY2xhc3NJRCkge1xuICAgICAgICAgICAgICBjYXNlIDM6XG4gICAgICAgICAgICAgICAgcmV0dXJuIDQ7XG4gICAgICAgICAgICAgIGNhc2UgNDpcbiAgICAgICAgICAgICAgICByZXR1cm4gNTtcbiAgICAgICAgICAgIFxuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgICB1bnJlYWNoYWJsZSgpO1xuICAgICAgICByZXR1cm4gMDtcbiAgICAgIH1cbiAgICAgIHZpcnR1YWwoMCwzKTtcbiAgICAgIGA7XG4gICAgbGV0IGNvbmRpdGlvbiA9IG5ldyBJZGVudGlmaWVyRXhwcmVzc2lvbigpO1xuICAgIGNvbmRpdGlvbi5zeW1ib2wgPSBcIm1ldGhvZElEXCI7XG4gICAgdGhpcy5wYXJzZXIucGFyc2VGaWxlKGZ1bmNTb3VyYywgXCJ+bGliL3ZpcnR1YWxcIiwgZmFsc2UpO1xuICAgIHRoaXMucGFyc2VyLnByb2dyYW0uaW5pdGlhbGl6ZSh0aGlzLmNvbXBpbGVyLm9wdGlvbnMpO1xuICAgIHZhciBzb3VyY2VzID0gdGhpcy5wYXJzZXIucHJvZ3JhbS5zb3VyY2VzO1xuICAgIGxldCBmaWxlOiBGaWxlID0gbmV3IEZpbGUodGhpcy5wYXJzZXIucHJvZ3JhbSwgc291cmNlc1tzb3VyY2VzLmxlbmd0aCAtIDFdKTtcbiAgICB0aGlzLnBhcnNlci5wcm9ncmFtLmluaXRpYWxpemVGdW5jdGlvbihcbiAgICAgIDxGdW5jdGlvbkRlY2xhcmF0aW9uPmZpbGUuc291cmNlLnN0YXRlbWVudHNbMF0sXG4gICAgICBmaWxlXG4gICAgKTtcbiAgICB0aGlzLmNvbXBpbGVyLmNvbXBpbGVGaWxlKGZpbGUpO1xuICB9XG5cbiAgd3JpdGUoc3RyOiBzdHJpbmcsIG5ld2xpbmU6IGJvb2xlYW4gPSBmYWxzZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGVyLndyaXRlKHN0ciArIChuZXdsaW5lID8gXCJcXG5cIiA6IFwiIFwiKSk7XG4gIH1cblxuICB2aXNpdEZpbGUobm9kZTogRmlsZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJ2aXNpdGluZyBmaWxlIFwiLCB0cnVlKTtcbiAgICBub2RlLnN0YXJ0RnVuY3Rpb24udmlzaXQodGhpcyk7XG4gIH1cbiAgdmlzaXRUeXBlRGVmaW5pdGlvbihub2RlOiBUeXBlRGVmaW5pdGlvbik6IHZvaWQge31cbiAgdmlzaXROYW1lc3BhY2Uobm9kZTogTmFtZXNwYWNlKTogdm9pZCB7fVxuICB2aXNpdEVudW0obm9kZTogRW51bSk6IHZvaWQge31cbiAgdmlzaXRFbnVtVmFsdWUobm9kZTogRW51bVZhbHVlKTogdm9pZCB7fVxuICB2aXNpdEdsb2JhbChub2RlOiBHbG9iYWwpOiB2b2lkIHt9XG4gIHZpc2l0TG9jYWwobm9kZTogTG9jYWwpOiB2b2lkIHt9XG4gIHZpc2l0RnVuY3Rpb25Qcm90b3R5cGUobm9kZTogRnVuY3Rpb25Qcm90b3R5cGUpOiB2b2lkIHtcbiAgICBkZWJ1Z2dlcjtcbiAgICBpZiAobm9kZS5pc0JvdW5kKSB7XG4gICAgICBsZXQgX2NsYXNzID0gbm9kZS5wYXJlbnQ7XG4gICAgICBsZXQgc2lnbmF0dXJlID0gbm9kZS5zaWduYXR1cmU7XG4gICAgICBsZXQgaWQgPSB0aGlzLmludGVyZmFjZU1ldGhvZHMuZ2V0KHNpZ25hdHVyZSk7XG4gICAgICBpZiAoaWQgIT0gbnVsbCkge1xuICAgICAgICBsZXQgY2xhc3NJZCA9ICg8Q2xhc3M+X2NsYXNzKS5pZDtcbiAgICAgICAgdGhpcy53cml0ZShcIlBhcmVudDogXCIgKyBfY2xhc3MubmFtZSwgdHJ1ZSk7XG4gICAgICAgIHRoaXMud3JpdGUoXCJ2aXNpdGluZyBmdW5jdGlvbiBcIiArIG5vZGUuaW50ZXJuYWxOYW1lLCBmYWxzZSk7XG4gICAgICAgIHRoaXMud3JpdGUoc2lnbmF0dXJlICsgXCIgaGFzIG1ldGhvZElEOiBcIiArIGlkLCB0cnVlKTtcbiAgICAgICAgbGV0IGZuUHRyID0gdGhpcy5jb21waWxlci5mdW5jdGlvblRhYmxlLmxlbmd0aDtcbiAgICAgICAgdGhpcy5jb21waWxlci5mdW5jdGlvblRhYmxlLnB1c2gobm9kZS5pbnRlcm5hbE5hbWUpO1xuICAgICAgICBsZXQgZW50cnk6IHZpcnR1YWxNZXRob2QgPSBbY2xhc3NJZCwgZm5QdHJdO1xuICAgICAgICB0aGlzLmNsYXNzSWRzLmdldChpZCkhLnB1c2goZW50cnkpO1xuICAgICAgICAvLyBsZXQgZnVuY1B0ciA9IHRoaXMuY29tcGlsZXIuZW5zdXJlRnVuY3Rpb25UYWJsZUVudHJ5KHRoaXMuY29tcGlsZXIucHJvZ3JhbS5pbnN0YW5jZXNCeU5hbWUpXG4gICAgICB9XG4gICAgfVxuICB9XG4gIHZpc2l0RnVuY3Rpb24obm9kZTogRnVuY3Rpb24pOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKFwidmlzaXRpbmcgZnVuY3Rpb246IFwiICsgbm9kZS5uYW1lKTtcbiAgICB0aGlzLndyaXRlKG5vZGUuc2lnbmF0dXJlLnRvU3RyaW5nKCksIHRydWUpO1xuICAgIC8vIHRoaXMud3JpdGUobm9kZS50b1N0cmluZygpKTtcbiAgICAvLyBpZihtZW1zKVxuICAgIC8vIGZvciAobGV0IG1lbSBvZiBtZW1zLnZhbHVlcygpKXtcbiAgICAvLyAgICAgdGhpcy53cml0ZShtZW0udG9TdHJpbmcoKSwgdHJ1ZSlcbiAgICAvLyB9XG4gIH1cbiAgdmlzaXRGdW5jdGlvblRhcmdldChub2RlOiBGdW5jdGlvblRhcmdldCk6IHZvaWQge31cbiAgdmlzaXRGaWVsZFByb3RvdHlwZShub2RlOiBGaWVsZFByb3RvdHlwZSk6IHZvaWQge31cbiAgdmlzaXRGaWVsZChub2RlOiBGaWVsZCk6IHZvaWQge31cbiAgdmlzaXRQcm9wZXJ0eVByb3RvdHlwZShub2RlOiBQcm9wZXJ0eVByb3RvdHlwZSk6IHZvaWQge31cbiAgdmlzaXRQcm9wZXJ0eShub2RlOiBQcm9wZXJ0eSk6IHZvaWQge31cbiAgdmlzaXRDbGFzc1Byb3RvdHlwZShub2RlOiBDbGFzc1Byb3RvdHlwZSk6IHZvaWQge31cbiAgdmlzaXRDbGFzcyhub2RlOiBDbGFzcyk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUobm9kZS5uYW1lKTtcbiAgICAvLyB0aGlzLndyaXRlKG5vZGUubWVtYmVycyEuc2l6ZS50b1N0cmluZygpKTtcbiAgICBsZXQgaW50ZXJmYWNlcyA9ICg8Q2xhc3NEZWNsYXJhdGlvbj5ub2RlLmRlY2xhcmF0aW9uKS5pbXBsZW1lbnRzVHlwZXM7XG4gICAgaWYgKGludGVyZmFjZXMpIHtcbiAgICAgIHRoaXMud3JpdGUoXCJpbXBsZW1lbnRzIFwiICsgaW50ZXJmYWNlcy5qb2luKFwiLCBcIikpO1xuICAgIH1cbiAgICB0aGlzLndyaXRlKFwiXCIsIHRydWUpO1xuICAgIGZvciAobGV0IG1lbSBvZiBub2RlLm1lbWJlcnMhLnZhbHVlcygpKSB7XG4gICAgICBtZW0udmlzaXQodGhpcyk7XG4gICAgfVxuICB9XG4gIHZpc2l0SW50ZXJmYWNlUHJvdG90eXBlKG5vZGU6IEludGVyZmFjZVByb3RvdHlwZSk6IHZvaWQge1xuICAgIHRoaXMud3JpdGUoXCJJbnRlcmZhY2UgUHJvdG90eXBlXCIsIHRydWUpO1xuICAgIHRoaXMud3JpdGUobm9kZS5uYW1lKTtcbiAgICBmb3IgKGxldCBba2V5LCB2YWx1ZV0gb2Ygbm9kZS5pbnN0YW5jZU1lbWJlcnMhLmVudHJpZXMoKSkge1xuICAgICAgaWYgKHZhbHVlIGluc3RhbmNlb2YgRnVuY3Rpb25Qcm90b3R5cGUpIHtcbiAgICAgICAgdGhpcy53cml0ZShrZXkgKyBcIiBcIiArIHZhbHVlLnRvU3RyaW5nKCkpO1xuICAgICAgICBsZXQgaWQgPSB0aGlzLmludGVyZmFjZU1ldGhvZHMuc2l6ZTtcbiAgICAgICAgaWYgKCF0aGlzLmludGVyZmFjZU1ldGhvZHMuaGFzKHZhbHVlLnNpZ25hdHVyZSkpIHtcbiAgICAgICAgICB0aGlzLmludGVyZmFjZU1ldGhvZHMuc2V0KHZhbHVlLnNpZ25hdHVyZSwgaWQpO1xuICAgICAgICAgIHRoaXMuY2xhc3NJZHMuc2V0KGlkLCBbXSk7XG4gICAgICAgICAgdGhpcy53cml0ZSh2YWx1ZS5zaWduYXR1cmUsIHRydWUpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgIHRoaXMud3JpdGUoXCJcIiwgdHJ1ZSk7XG4gIH1cblxuICB2aXNpdEludGVyZmFjZShub2RlOiBJbnRlcmZhY2UpOiB2b2lkIHtcbiAgICB0aGlzLndyaXRlKG5vZGUubmFtZSk7XG4gICAgZm9yIChsZXQgW2tleSwgdmFsdWVdIG9mIG5vZGUubWVtYmVycyEuZW50cmllcygpKSB7XG4gICAgICB0aGlzLndyaXRlKGtleSArIFwiIFwiICsgdmFsdWUudG9TdHJpbmcoKSk7XG4gICAgfVxuICB9XG59XG4iXX0=