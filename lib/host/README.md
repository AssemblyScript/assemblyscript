# Host Bindings Library

Each Webassembly module with any declared inputs requires an imports object.  Currently this must be handled by the each project, however, there should be a core set of host functions that a WebAssembly module can expect to be present.


## ASImport

The other issue that this library tries to solve is making it easier to construct an imports object.  The import object currently passed to WebAssembly can't be a class.  However, imports such as logging need to have access to the instance's memory.  The solution is an abstract class, which will handle creating an object made up of each of the class's instance methods and most importantly will bind each function to the instance.

Classes that extend `ASImport` gain access to the instance including memory and the table.  The loader was also updated so that it will bind the memory and instance to the each of the imports.

```ts

let env = new Env({initial:50})                // Create new memory in env namespace
let imports = ASImport.createImport(Host, env); // can pass constructors or objects and get back imports object
var instance = loader.instantiateBuffer(wasm, imports);

```
For example,
```ts
export class Host extends ASImport {
  debug (): void {
    // tslint:disable-next-line
    debugger;
  }

  _log(start: number, sizeof: number): void {
    let begin = start >> 2;
    let size = sizeof >> 2;
    if (size == 1 ){
      console.log(start);
    } else {
      let str = []
      let len = 0;
      for (let i = begin; i < begin+size; i++){
        let line = `| ${i} | ${this.memory.I32[i] >> 2}`;
        len = Math.max(len, line.length);
        str.push(line);
      }
      let space = " ";
      let output = str.map((v: any, i:number, a: any[]): string => v + (space as any).repeat(len - v.length + 1) + "|");
      let dash = "-";
      let line = (dash as any).repeat(len+2);
      console.log([line,output.join('\n'+line+'\n'),line].join("\n"));
    }
  }

  _log_str(x: number): void {
      return console.log(this.memory.getString(x))
  }

  _logi(x: number): void { console.log(x) }

  _logf(x:number): void {  console.log(x) }
}
```

becomes

```ts
{ host:
   { _bindMemory: [Function: _bindMemory],
     _bindInstance: [Function: _bindInstance],
     debug: [Function: bound debug],
     _log: [Function: bound _log],
     _log_str: [Function: bound _log_str],
     _logi: [Function: bound _logi],
     _logf: [Function: bound _logf] }
}
```

The loader then will call the `_bindMemory` before the the module is instantiated and then call `_bindInstance` after.
