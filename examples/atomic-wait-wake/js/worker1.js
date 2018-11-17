addEventListener("message", onMessageReceived, false);
let memory = null;
let i32 = null;
function onMessageReceived(e) {
    try {
        const data = e.data;
        switch (data.command) {
            case "init": {
                memory = data.memory;
                i32 = new Int32Array(memory.buffer);
                console.log("Waiting", i32[0]);
                Atomics.wait(i32, 0, 0);
                console.log("Waken", i32[0]);
            }
        }
    } catch (e) {}
}
