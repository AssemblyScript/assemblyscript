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

exports.preInstantiate = function(imports, exports, module) {
  // compiler generates initial = 1 because it doesn't know the imported value
  // of env.memory_base yet, hence we need to import a suitable memory as well:
  imports["env"]["memory"] = new WebAssembly.Memory({ initial: 2 });
  imports["env"]["memory_base"] = 65536;
  imports["env"]["table"] = new WebAssembly.Table({ element: "anyfunc", initial: 20 });
  imports["env"]["table_base"] = 10;

  var dylink = WebAssembly.Module.customSections(module, "dylink");
  if (dylink && dylink.length) console.log(readDylinkSection(dylink[0]));
  else throw Error("missing dylink section");
};
