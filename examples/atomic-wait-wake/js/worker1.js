addEventListener("message", onMessageReceived, false);
let memory = null;
let dataView = null;
let u8 = null;
let i32 = null;
let id = 0;
let _exports = null;
const mutexAddr = 0;
const numAgents = 1;
async function onMessageReceived(e) {
    try {
        const data = e.data;
        switch (data.command) {
            case "init": {
                id = data.id;
                memory = data.memory;
                dataView = new DataView(memory.buffer);
                u8 = new Uint8Array(memory.buffer);
                i32 = new Int32Array(memory.buffer);
                const instance = await WebAssembly.instantiate(data.wasm, {
                    env: {
                        memory,
                        abort: function() {},
                    },
                    index: {
                        log: console.log,
                        log_str,
                    },
                });
                const exp = instance.exports;

                _exports = exp;
                _exports.setId(id);
                self.postMessage({ command: "inited" });
                break;
            }
            case "wait": {
                _exports.wait(mutexAddr, data.value);
                break;
            }
            case "wait_i64": {
                _exports.wait_i64(mutexAddr, data.value);
                break;
            }
            case "wait_js": {
                console.log(`[JS][${id}] waiting...`)
                Atomics.store(i32, mutexAddr, data.value);
                Atomics.wait(i32, mutexAddr, data.value);
                console.log(`[JS][${id}] waken`);
                break;
            }
            case "wake": {
                _exports.wake(mutexAddr, data.value, numAgents);
                console.log('-----')
                break;
            }
            case "wake_i64": {
                _exports.wake_i64(mutexAddr, data.value, numAgents);
                console.log('-----')
                break;
            }
            case "wake_js": {
                console.log(`[JS][${id}] waking ${numAgents} agent(s)...`)
                Atomics.store(i32, mutexAddr, data.value);
                const count = Atomics.wake(i32, mutexAddr, numAgents);
                console.log(`[JS][${id}] waken ${count} agent(s)`)
                console.log('-----')
                break;
            }
        }
    } catch (e) {
        console.log(e);
    }
}

function log_str(ptr) {
    console.log(readUTF16(ptr, dataView));
}

function readUTF16(ptr, _memoryView) {
    _memoryView = _memoryView || memoryView;
    const u8a = new Uint8Array(_memoryView.buffer);
    const str_len = _memoryView.getUint32(ptr, true);
    const utf16 = u8a.subarray(ptr + 4, ptr + (str_len * 2) + 4);
    const decoder = new TextDecoder("utf-16");
    const _utf16 = utf16.map(a => a);
    return decoder.decode(_utf16);
  }
