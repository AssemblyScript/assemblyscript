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
                setTimeout(() => {
                    Atomics.store(i32, 0, 123);
                    console.log("Stored", 123);
                    Atomics.wake(i32, 0, 1);
                }, 2000);
            }
        }
    } catch (e) {}
}
