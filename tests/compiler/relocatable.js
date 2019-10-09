exports.preInstantiate = function(imports, exports) {
  // compiler generates initial = 1 because it doesn't know the imported value
  // of env.memory_base yet, hence we need to import a suitable memory as well:
  imports["env"] = {
    "memory": new WebAssembly.Memory({ initial: 2 }),
    "memory_base": 2,
    "table_base": 100,
    "log":(offset,length)=>{
      let view=new Uint16Array(imports["env"].memory.buffer,offset,length)
      let str=String.fromCharCode.apply(null,view)
      assert(str==="relocatable",`expected relocatable got'${str}' at index ${offset}`)
    }
  };
};

exports.postInstantiate=function(instance){
  instance.exports.main()
}