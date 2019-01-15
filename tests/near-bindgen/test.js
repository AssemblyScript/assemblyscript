
const fs = require('fs');
const loader = require('../../lib/loader');

(async function() {
    let module;
    module = loader.instantiateBuffer(fs.readFileSync('./test.wasm'), {
        env: {
            abort(msg, file, line, column) {
                if (module) {
                    msg = module.getString(msg);
                    file = module.getString(file);
                }
                console.log("abort called: %s %s:%s:%s", msg, file, line, column);
            },
            log(str) {
                if (module) {
                    str = module.getString(str);
                }
                console.log(str);
            },
            return_value(ptr) {
                console.log("return_value", ptr);
            }
        }
    });

    await module.runTest();
})().catch(e => {
    console.error('Error during test execution:', e);
    process.exit(1);
});
