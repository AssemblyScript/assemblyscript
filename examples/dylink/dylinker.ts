import * as loader from "../../lib/loader"
import * as rtrace from "../../lib/rtrace"
const fs = require("fs")
const nodePath = require("path")
export class DynamicLinker {
    asrt: ModuleDefinition = new ModuleDefinition("asrt", "./asrt.wasm")
    rtrace = rtrace(e => {
        console.log("trace error", e)
    },i=>{
        console.log("trace info",i)
    })
    memory: WebAssembly.Memory = new WebAssembly.Memory({ initial: 1 })
    table: WebAssembly.Table = new WebAssembly.Table({ element: "anyfunc", initial: 10 })
    defaultImports: { env?: {} } = {
        env: {
            memory: this.memory,
            table: this.table,
        }
    }
    modules: Array<ModuleDefinition> = []
    run() {
        let mem = 1000
        let table = 0
        this.asrt.build()
        this.modules.forEach((m) => {
            m.build()
            mem += m.dylink.memory_size
            table += m.dylink.table_size
        })
        let mem_base = 1000
        let table_base = 0
        console.log("heap base", mem)
        this.asrt.instantiate({ env: { "__heap_base": mem } }, this.defaultImports, { rtrace: this.rtrace })
        let rtImports = {}
        this.modules.forEach(m => {
            console.log(m.id, "mem base", mem_base)
            m.instantiate(this.defaultImports, { env: { __memory_base: mem_base, __table_base: table_base }, asrt: this.asrt.exports }, rtImports)
            mem_base += m.dylink.memory_size
            table_base += m.dylink.table_size
            rtImports[m.id] = m.exports
        })
        // console.log("final mem base",mem_base)
    }
}

export class ModuleDefinition {
    module: WebAssembly.Module
    exports: loader.ASUtil
    dylink: DyLink
    imports: { env: any } = {
        env: {
            _log: (type: number, offset: number): void => {
                switch (type) {
                    case 0:
                        console.log(`Log [${this.id}] ${offset}`)
                        break;
                    case 1:
                        console.log(`Log [${this.id}][${offset}] str:${this.exports.__getString(offset)}`)
                        break;
                    case 99:
                        let view=new DataView(this.imports.env.memory.buffer,offset-16)
                        let mmInfo:number=view.getUint32(0,true)
                        let gcInfo:number=view.getUint32(4,true)
                        let rtId:number=view.getUint32(8,true)
                        let rtsize:number=view.getUint32(12,true)
                        //block
                        console.log(`Log [${this.id}][${offset}]${mmInfo} ${gcInfo} ${rtId} ${rtsize}`)
                    default:
                        console.log(`Log [${this.id}][${offset}] type:${type}`)
                        break;
                }

            },
            abort: (mesg, file, line, colm) => {
                const memory = this.imports.env.memory // prefer exported, otherwise try imported
                console.log(this.path, "abort: " + getString(memory, mesg) + " at " + getString(memory, file) + ":" + line + ":" + colm);
            },
        }
    }

    constructor(public id: string, public path: string) {

    }
    build() {
        this.module = new WebAssembly.Module(fs.readFileSync(nodePath.resolve(this.path)))
        let custom = WebAssembly.Module.customSections(this.module, "dylink")
        if (custom && custom.length > 0) {
            this.dylink = readDylinkSection(custom[0])
        } else {
            this.dylink = { memory_align: 4, memory_size: 1000, table_size: 0, table_align: 0 }
        }
    }

    mergeImports(imports: {}[]) {
        imports.forEach(i => {
            for (let key in i) {
                if (key in this.imports) {
                    this.imports[key] = { ...this.imports[key], ...i[key] }
                } else {
                    this.imports[key] = i[key]
                }
            }
        })
    }
    instantiate(...imports: { [key: string]: any }[]) {
        this.mergeImports(imports)
        this.exports = loader.instantiate(this.module, this.imports)
    }
}

export interface DyLink {
    memory_size: number
    memory_align: number
    table_size: number
    table_align: number
}

function readU32Leb128(buffer, offset) {
    var value = 0;
    var shift = 0;
    var length = buffer.length;
    while (offset < length) {
        let b = buffer[offset++];
        value |= (b & 0x7f) << shift;
        if (!(b & 0x80)) break;
        shift += 7;
    }
    return { value, offset };
}

function readDylinkSection(buffer): DyLink {
    var view = new Uint8Array(buffer);
    var temp = readU32Leb128(view, 0);
    var memory_size = temp.value;
    temp = readU32Leb128(view, temp.offset);
    var memory_align = temp.value;
    temp = readU32Leb128(view, temp.offset);
    var table_size = temp.value;
    temp = readU32Leb128(view, temp.offset);
    var table_align = temp.value;
    // TODO: read required libraries
    // temp = readU32Leb128(view, temp.offset);
    // var lib_count = temp.value;
    // ...
    return { memory_size, memory_align, table_size, table_align };
}

const CHUNKSIZE = 1024;
const SIZE_OFFSET = -4;
/** Gets a string from an U32 and an U16 view on a memory. */
function getStringImpl(buffer, ptr) {
    const U32 = new Uint32Array(buffer);
    const U16 = new Uint16Array(buffer);
    var length = U32[(ptr + SIZE_OFFSET) >>> 2] >>> 1;
    var offset = ptr >>> 1;
    if (length <= CHUNKSIZE) return String.fromCharCode.apply(String, U16.subarray(offset, offset + length));
    const parts = [];
    do {
        const last = U16[offset + CHUNKSIZE - 1];
        const size = last >= 0xD800 && last < 0xDC00 ? CHUNKSIZE - 1 : CHUNKSIZE;
        parts.push(String.fromCharCode.apply(String, U16.subarray(offset, offset += size)));
        length -= size;
    } while (length > CHUNKSIZE);
    return parts.join("") + String.fromCharCode.apply(String, U16.subarray(offset, offset + length));
}



function getString(memory, ptr) {
    if (!memory) return "<yet unknown>";
    return getStringImpl(memory.buffer, ptr);
}