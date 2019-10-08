
const fs = require('fs');
const assert = require('assert');
const loader = require('../../loader');

function toNum(x) { return parseInt(x.toString());}
// http://www.onicos.com/staff/iz/amuse/javascript/expert/utf.txt

/* utf.js - UTF-8 <=> UTF-16 convertion
 *
 * Copyright (C) 1999 Masanao Izumo <iz@onicos.co.jp>
 * Version: 1.0
 * LastModified: Dec 25 1999
 * This library is free.  You can redistribute it and/or modify it.
 */

function UTF8toStr(array) {
    var out, i, len, c;
    var char2, char3;

    out = "";
    len = array.length;
    i = 0;
    while(i < len) {
    c = array[i++];
    switch(c >> 4)
    { 
      case 0: case 1: case 2: case 3: case 4: case 5: case 6: case 7:
        // 0xxxxxxx
        out += String.fromCharCode(c);
        break;
      case 12: case 13:
        // 110x xxxx   10xx xxxx
        char2 = array[i++];
        out += String.fromCharCode(((c & 0x1F) << 6) | (char2 & 0x3F));
        break;
      case 14:
        // 1110 xxxx  10xx xxxx  10xx xxxx
        char2 = array[i++];
        char3 = array[i++];
        out += String.fromCharCode(((c & 0x0F) << 12) |
                       ((char2 & 0x3F) << 6) |
                       ((char3 & 0x3F) << 0));
        break;
    }
    }

    return out;
}
async function loadModule(path) {
    let inputJson = null;
    let outputJson = null;
    let module;
    let mem = { get U8() {
                  return new Uint8Array(module.memory.buffer);
    }}
    module = loader.instantiateBuffer(fs.readFileSync(path), {
        env: {
            abort(msg, file, line, column) {
                if (module) {
                    if (msg) {
                        msg = module.__getString(msg);
                    }
                    if (file) {
                        file = module.__getString(file);
                    }
                }
                console.log("abort called: %s %s:%s:%s", msg, file, line, column);
            },
            panic(){

            },
            log_utf8(len, ptr) {
                if (module) {
                    str = UTF8toStr(readBuffer(toNum(len), toNum(ptr)));
                }
                console.log(str || "Failed to read string");
            },
            read_register(register_id, ptr) {
                copyToPtr(inputJson, toNum(ptr))
            },
            register_len(register_id) {
                return BigInt(inputJson.length)
            },
            value_return(valLen, valPtr) {
                outputJson = readBuffer(toNum(valLen), toNum(valPtr));
            },
            input(register_id) {

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
            mem.U8[toPtr + i] = fromBuf[i];
        }
    }

    function readBuffer(valLen, valPtr) {
        const result = new Uint8Array(valLen);
        for (let i = 0; i < valLen; i++) {
            result[i] = mem.U8[valPtr + i];
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

let asc = require("../../../cli/asc");


(async function() {
    const module = await loadModule('./out/test.wasm');
    await module.runTest();
    assert.deepEqual(await module.convertFoobars({ foobars: [] }), []);
    assert.deepEqual(await module.convertFoobars({
        foobars: [{ foo: -12345, bar: 123, flag: true, baz: "bazinga" }] }),
        [{ foobar: { foo: -12345, bar: 123, u64Val: (2**32 + 1).toString(),
             i64Val: "-64", flag: true, baz: "bazinga", uint8array: null, arr: null, 
             u32Arr: null, i32Arr: null, uint8arrays: null, u64Arr: null, u64_zero:"0"}}]);
    assert.deepEqual(await module.convertFoobars({
        foobars: [{ arr: [["1", "2"], ["3"]]  }] }),
        [{ foobar: { foo: 0, bar: 1, u64Val: "4294967297", i64Val: "-64", flag: false, baz: '123', uint8array: null, arr: [["1", "2"], ["3"]], u32Arr: null, i32Arr: null, uint8arrays: null, u64Arr: null, u64_zero:"0"}}]);
    assert.equal(await module.getStringArrayLength({ arr: ["1", "2", "3"] }), 3);
    assert.deepEqual(await module.rewrapFoobar({ container: { foobar: { foo: 123 } } }),
        {"foobars":[[{"foo":123,"bar":1,"u64Val":"4294967297","i64Val":"-64","flag":false,"baz":"123","uint8array":null,"arr":null,"u32Arr":null,"i32Arr":null, "uint8arrays":null, "u64Arr":null, u64_zero:"0"}]]});
    assert.deepEqual(await module.unwrapFoobar({ container: { foobars: [[{ foo: 123 }]] } }),
        {"foo":123,"bar":1,"u64Val":"4294967297","i64Val":"-64","flag":false,"baz":"123","uint8array":null,"arr":null,"u32Arr":null,"i32Arr":null, "uint8arrays":null, u64Arr: null, u64_zero:"0"});
    assert.deepEqual(await module.stringOrNull(), null);
    assert.deepStrictEqual(await module.stringAliasTest({str:"Hello"}), "Hello World");

})().catch(e => {
    console.error('Error during test execution:', e);
    if (e.code == 'ERR_ASSERTION') {
        console.log('EXPECTED:\n%s', JSON.stringify(e.expected));
        console.log('ACTUAL:\n%s', JSON.stringify(e.actual));
    }
    process.exit(1);
});

(async function testAll(){
  try {
  }catch (e){
    console.error(e);
    process.exit(1);
  }
})()