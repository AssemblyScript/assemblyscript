
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
            data_read(index, keyLen, key, maxBufPtr, bufPtr) {
                assert(index == 4);
                assert(maxBufPtr >= bufPtr);
                copyToPtr(inputJson, bufPtr);
                return inputJson.length;
            },
            return_value(valLen, valPtr) {
                outputJson = readBuffer(valLen, valPtr);
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

    function readBuffer(valLen, valPtr) {
        const result = new Uint8Array(valLen);
        for (let i = 0; i < valLen; i++) {
            result[i] = module.I8[valPtr + i];
        }
        return result;
    }

    let wrapped = {};
    Object.keys(module).forEach(methodName => {
        wrapped[methodName] = async function(inputJson) {
            setInputJson(inputJson);
            outputJson = null;
            await module[methodName].call(module);
            return getOutputJson();
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
        [{ foobar: { foo: -12345, bar: 123, u64Val: "64", i64Val: "-64", flag: true, baz: "bazinga", foobar: null, arr: null, u32Arr: null, i32Arr: null }}]);
    assert.deepEqual(await module.convertFoobars({
        foobars: [{ arr: [["1", "2"], ["3"]]  }] }),
        [{ foobar: { foo: 0, bar: 1, u64Val: "64", i64Val: "-64", flag: false, baz: '123', foobar: null, arr: [["1", "2"], ["3"]], u32Arr: null, i32Arr: null }}]);
    assert.equal(await module.getStringArrayLength({ arr: ["1", "2", "3"] }), 3);
    assert.deepEqual(await module.rewrapFoobar({ container: { foobar: { foo: 123 } } }),
        {"foobars":[[{"foo":123,"bar":1,"u64Val":"64","i64Val":"-64","flag":false,"baz":"123","foobar":null,"arr":null,"u32Arr":null,"i32Arr":null}]]});
    assert.deepEqual(await module.unwrapFoobar({ container: { foobars: [[{ foo: 123 }]] } }),
        {"foo":123,"bar":1,"u64Val":"64","i64Val":"-64","flag":false,"baz":"123","foobar":null,"arr":null,"u32Arr":null,"i32Arr":null});
})().catch(e => {
    console.error('Error during test execution:', e);
    if (e.code == 'ERR_ASSERTION') {
        console.log('EXPECTED:\n%s', JSON.stringify(e.expected));
        console.log('ACTUAL:\n%s', JSON.stringify(e.actual));
    }
    process.exit(1);
});
