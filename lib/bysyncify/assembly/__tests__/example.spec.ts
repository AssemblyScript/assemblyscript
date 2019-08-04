// tslint:disable: no-unsafe-any
// * bysyncify_start_unwind(data : i32): call this to start unwinding the
//    stack from the current location. "data" must point to a data
//    structure as described above (with fields containing valid data).
//
//  * bysyncify_start_rewind(data : i32): call this to start rewinding the
//    stack vack up to the location stored in the provided data. This prepares
//    for the rewind; to start it, you must call the first function in the
//    call stack to be unwound.
//
//  * bysyncify_stop_rewind(): call this to note that rewinding has
//    concluded, and normal execution can resume.
@unmanaged
class asyncify_data {
  /* current bysyncify stack location */
  location: i32;
  /* bysyncify stack end */
  end: i32;

  @inline
  constructor(location: i32, end: i32){
    this.location = location;
    this.end = end;
  }
}

declare var __asyncify_data: i32;
declare var __asyncify_state: i32;

const enum asyncify_state {
  //   0: normal execution
  //   1: unwinding the stack
  //   2: rewinding the stack
  NormalExecution = 0,
  UnwindingStack = 1,
  RewindingStack = 2
}

// declare function log<T>(x: T): void;
//@ts-ignore
@external("asyncify", "start_unwind")
declare function asyncify_start_unwind(data: asyncify_data): void;

//@ts-ignore
@external("asyncify", "stop_unwind")
declare function asyncify_stop_unwind(): void;

//@ts-ignore
@external("asyncify", "start_rewind")
declare function asyncify_start_rewind(data: asyncify_data): void;
//@ts-ignore
@external("asyncify", "stop_unwind")
declare function asyncify_stop_rewind(): void;

var global_var: i32 = 42;
var generator = new asyncify_data(16, 1024);
var sleeping: boolean = false;

var  print = (x: i32): void => { log<i32>(x); };

function sleep(): void {
  print(1000);
  if (!sleeping) {
    print(2000);
    sleeping = true;
    asyncify_start_unwind(generator);
  } else {
    print(3000);
    asyncify_stop_rewind();
    sleeping = false;
  }
  print(4000);
}

function before(): void {
  print(1);
}
function after(): void {
  print(2);
}

function main(): void {
  print(10);
  before();
  print(20);
  sleep();
  print(30);
  after();
  print(40);
}

function start(): void {
  print(100);
  main();
  print(200);
  asyncify_stop_unwind();
  print(300);

  log("could now be doing async stuff");

  asyncify_start_rewind(generator);
  print(400);
  main();
  print(500);
}

describe("asyncify", (): void => {
  it("should print correctly", (): void => {
    start();
  })
})