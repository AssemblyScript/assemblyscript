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

function readDylinkSection(buffer) {
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

exports.preInstantiate = function (imports, exports, module) {
  // compiler generates initial = 1 because it doesn't know the imported value
  // of env.memory_base yet, hence we need to import a suitable memory as well:
  imports["env"]["memory"] = new WebAssembly.Memory({ initial: 2 });
  imports["env"]["__memory_base"] = 65536;
  imports["env"]["table"] = new WebAssembly.Table({ element: "anyfunc", initial: 20 });
  imports["env"]["__table_base"] = 10;
  imports["env"]["_log"] = (type, offset) => {
    switch (type) {
      case 0:
        console.log(`Log ${offset}`)
        break;
      case 99:
        let view = new DataView(imports.env.memory.buffer, offset-16)
        let mmInfo = view.getUint32(0, true)
        let gcInfo = view.getUint32(4, true)
        let rtId = view.getUint32(8, true)
        let rtsize = view.getUint32(12, true)
        //block
        console.log(`Log [${offset}]${mmInfo} ${gcInfo} ${rtId} ${rtsize}`)
        break;
      case 98:
        console.log(`Log [${offset}]`,new Int32Array(imports.env.memory.buffer,offset,60))
        break
      default:
        console.log(`Log [${offset}] type:${type}`)
        break;
    }

  }
  imports["asrt"] = {
    retain: function () { },
    release: function () { },
    visit: function () { }
  };

  var dylink = WebAssembly.Module.customSections(module, "dylink");
  if (dylink && dylink.length) console.log(readDylinkSection(dylink[0]));
  else throw Error("missing dylink section");
};

exports.postInstantiate = function (instance) {
   instance.exports.main()
}