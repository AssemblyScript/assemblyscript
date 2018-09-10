addEventListener("message", onMessageReceived, false);

let wasmInstance;
let wasmExp;
let pixels_ptr;
let context_ptr;
let locals_ptr;
let id;

async function onMessageReceived(e) {
    const data = e.data;

    switch (data.command) {
        case "init": {
            id = data.id;
            const lib = await WebAssembly.instantiate(data.wasmLibModule, {
                env: {
                    __syscall2: Date.now
                }
            })
            console.log(lib)
            const instance = await WebAssembly.instantiate(data.wasmModule, {
                env: {
                    memory: data.memory,
                    abort: function () { },
                },
                lib: lib.exports,
                JSMath: Math,
                index: {
                    id: data.id,
                    logf: f => console.log("float:" + f),
                    logi: i => console.log("int:" + i),
                },
            });

            wasmInstance = instance;
            wasmExp = instance.exports;
            if (id == 1) {
                context_ptr = wasmExp.createContext(data.width, data.height);
                pixels_ptr = wasmExp.getPixels();
                locals_ptr = wasmExp.createLocals();
                let memoryTop = wasmExp.GET_MEMORY_TOP();
                postMessage({ event: "inited", context_ptr, memoryTop, pixels_ptr });
            } else {
                wasmExp.SET_MEMORY_TOP(data.memoryTop);
                // setTimeout(() => {
                context_ptr = data.context_ptr;
                wasmExp.setContext(context_ptr);
                pixels_ptr = wasmExp.getPixels();
                locals_ptr = wasmExp.createLocals();
                let memoryTop = wasmExp.GET_MEMORY_TOP();
                postMessage({ event: "inited", memoryTop });
                // }, id * 100);
            }
            // console.log(`-----------------------------------`);
            break;
        }
        case "run": {
            pixels_ptr = wasmExp.getPixels();
            const { job } = data;
            wasmExp.render(locals_ptr, job.samples, job.xoffset, job.yoffset, job.width, job.height);
            postMessage({ event: "done", job, id });
            break;
        }
    }
}
