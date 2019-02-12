# Host Bindings Library

Each Webassembly module with any declared inputs requires an imports object.  Currently this must be handled by the each project, however, there should be a core set of host functions that a WebAssembly module can expect to be present.

## NOTE
Since this package currently modifiers the compiler you must first run `npm run build` at the root of the project to rebuild the compiler.

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

## Improved loader

The recently improved loader allows you to demangle the names of functions like `Car#function` into methods on a `Car` object.  This makes it easy to interact with the Wasm instance.  Most notably you could use a constructor to construct objects, returning the wrapped AssemblyScript object.  However, values returned from methods would remain unwrapped integers.  This is because only integers and floats can be returned.  To solve this problem the complier was edited to add a suffix to functions that returned a reference type, the loader then uses this information to call the correct wrap function.  Furthermore, the loader now unwraps objects passed to wrapped AssemblyScript methods.

For example, consider the following AssemblyScript class:

```ts
export class Car {
  constructor(public weight: i32){};

  createAnother(weight: i32): Car {
    return new Car(weight);
  }

  combine(c: Car): Car {
    return new Car(this.weight + c.weight);
  }
}
```
This then generates the following WebAssembly:
```
(export "Car#constructor" (func $tests/assembly/index/Car#constructor))
(export "Car#get:length" (func $Car#get:length))
(export "Car#set:length" (func $Car#set:length))
(export "Car#get:weight" (func $Car#get:weight))
(export "Car#set:weight" (func $Car#set:weight))
(export "Car#createAnother!Car" (func $tests/assembly/index/Car#createAnother))
(export "Car#combine!Car" (func $tests/assembly/index/Car#combine))
```
Note that methods that return `Car` now have the suffix `!Car`, which the loader can use to know that the returned value should be wrapped.

Furthermore, the compiler can generate a type declaration file for the exported class.  Previously it would resolve reference types to their underlying integer references.  Now, however, it returns the reference types, which allows you to use provide the loader with the proper types.

To generate a declaration file you use the compiler option `-d ./build/index.d.ts`, which is the case of the `Car` class would generate:

```ts
declare namespace ASModule {
  type i8 = number;
  type i16 = number;
  type i32 = number;
  type u8 = number;
  type u16 = number;
  type u32 = number;
  type f32 = number;
  type f64 = number;
  type bool = any;
  class Car {
    constructor(weight: i32);
    weight: i32;
    createAnother(weight: i32): Car;
    combine(c: Car): Car;
  }
  function runTest(): void;
  namespace memory {
    function compare(vl: u32, vr: u32, n: u32): i32;
    function allocate(size: u32): u32;
    function free(ptr: u32): void;
    function reset(): void;
  }
}
export default ASModule;
```

Lastly, this all means that the TypeScript needed to run the compiled AS is:
```ts
import {Host, ASImport, Env} from "../src";
import * as loader from "../../loader/src";
import * as fs from "fs";
import ASModule from "./build";
type testMod = typeof ASModule; //namespace is a value


var wasm = fs.readFileSync(`${__dirname}/build/untouched.wasm`);
let env = new Env({initial:50})
let imports = ASImport.createImport(Host, env);
var instance = loader.instantiateBuffer<testMod>(wasm, imports);
//Using imports from above and providing the type `testMod` to the loader.

let car: ASModule.Car = new instance.Car(10);
//Constructor wraps newly allocated Car.
let car2 = car.createAnother(32);
//Wraps return Car
let car3 = car.combine(car2);
//Unwraps car2 and wraps result.
console.log(`1:${car.weight} 2:${car2.weight}  3:${car3.weight}`);

```
