"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class ASImport {
    get __imports__() {
        let constructor = this.constructor;
        let className = constructor.name.toLowerCase();
        let __imports__ = {};
        __imports__[className] = {};
        for (let name of Object.getOwnPropertyNames(constructor.prototype)) {
            if (name !== "constructor" && !name.startsWith("__")) {
                __imports__[className][name] = this[name].bind(this);
            }
        }
        return __imports__;
    }
    get __memory__() {
        return this.instance.memory;
    }
    get __table__() {
        return this.instance.table;
    }
    _bindInstance(instance) {
        this.instance = instance;
    }
    static __createImportObject(...args) {
        let imports = {};
        for (let arg of args) {
            let obj = new arg();
            imports = Object.assign({}, imports, obj.__imports__);
        }
        return imports;
    }
}
exports.ASImport = ASImport;
