"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class ASImport {
    get __imports__() {
        let constructor = this.constructor;
        let className = constructor.name.toLowerCase();
        let __imports__ = {};
        let _this = this;
        __imports__[className] = {
            _bindMemory(memory) {
                _this.__bindMemory(memory);
            },
            _bindInstance(instance) {
                _this.instance = instance;
            }
        };
        for (let name of Object.getOwnPropertyNames(constructor.prototype)) {
            if (name !== "constructor" && !name.startsWith("__")) {
                __imports__[className][name] = this[name].bind(this);
            }
        }
        return __imports__;
    }
    get memory() {
        return (this.instance && this.instance.memory) || this._memory;
    }
    get table() {
        return this.instance.table;
    }
    __bindInstance(instance) {
        this.instance = instance;
    }
    __bindMemory(memory) {
        this._memory = memory;
    }
    static createImport(...args) {
        let imports = {};
        for (let arg of args) {
            let obj;
            if (typeof arg == "function") {
                obj = new arg();
            }
            else {
                obj = arg;
            }
            imports = Object.assign({}, imports, obj.__imports__);
        }
        return imports;
    }
}
exports.ASImport = ASImport;
