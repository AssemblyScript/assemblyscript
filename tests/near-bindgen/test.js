
const fs = require('fs');
const assert = require('assert');
const loader = require('../../lib/loader');

async function loadModule(path) {
    let inputJson = null;
    let outputJson = null;
    let module;
    module = loader.instantiateBuffer(fs.readFileSync(path), {
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
            input_read_len() {
                return inputJson.length;
            },
            input_read_into(ptr) {
                copyToPtr(inputJson, ptr);
            },
            return_value(ptr) {
                outputJson = readBuffer(ptr);
            }
        }
    });

    function setInputJson(json) {
        inputJson = Buffer.from(JSON.stringify(json || null));
    }

    function getOutputJson() {
        if (!outputJson) return null;
        return JSON.parse(Buffer.from(outputJson).toString());
    }

    function copyToPtr(fromBuf, toPtr) {
        for (let i = 0; i < fromBuf.length; i++) {
            module.I8[toPtr + i] = fromBuf[i];
        }
    }

    function readBuffer(ptr) {
        const len = module.U32[ptr / 4];
        ptr += 4;
        const result = new Uint8Array(len);
        for (let i = 0; i < len; i++) {
            result[i] = module.I8[ptr + i];
        }
        return result;
    }

    let wrapped = {};
    Object.keys(module).forEach(methodName => {
        wrapped[methodName] = async function(inputJson) {
            setInputJson(inputJson);
            outputJson = null;
            await module[methodName].call(module);
            const resultJson = getOutputJson();
            return resultJson && resultJson.result;
        }
    });
    return wrapped;
}

(async function() {
    const module = await loadModule('./test.wasm');
    await module.runTest();
    assert.deepEqual(await module.convertFoobars({ foobars: [] }), []);
    assert.deepEqual(await module.convertFoobars({
        foobars: [{ foo: -12345, bar: 123, flag: true, baz: "bazinga" }] }),
        [{ foobar: { foo: -12345, bar: 123, flag: true, baz: "bazinga", arr: null, u32Arr: null, i32Arr: null }}]);
    assert.deepEqual(await module.convertFoobars({
        foobars: [{ arr: [["1", "2"], ["3"]]  }] }),
        [{ foobar: { foo: 0, bar: 1, flag: false, baz: '123', arr: [["1", "2"], ["3"]], u32Arr: null, i32Arr: null }}]);
    assert.equal(await module.getStringArrayLength({ arr: ["1", "2", "3"] }), 3);
    assert.deepEqual(await module.rewrapFoobar({ container: { foobar: { foo: 123 } } }),
        { foobars: [[{"foo":123,"bar":1,"flag":false,"baz":"123","arr":null}]] });
    assert.deepEqual(await module.unwrapFoobar({ container: { foobars: [[{ foo: 123 }]] } }),
        {"foo":123,"bar":1,"flag":false,"baz":"123","arr":null} );
})().catch(e => {
    console.error('Error during test execution:', e);
    if (e.code == 'ERR_ASSERTION') {
        console.log('EXPECTED:\n%s', JSON.stringify(e.expected));
        console.log('ACTUAL:\n%s', JSON.stringify(e.actual));
    }
    process.exit(1);
});
