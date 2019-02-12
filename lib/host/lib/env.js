"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class Env {
    constructor(memory = { initial: 10000 }) {
        this.memory = new WebAssembly.Memory(memory);
    }
    get __imports__() {
        let memory = this.memory;
        return {
            "env": {
                memory
            }
        };
    }
}
exports.Env = Env;
