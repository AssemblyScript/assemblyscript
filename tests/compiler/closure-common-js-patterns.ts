// NOTE torch2424 6/15/20: This test has a lot of errors skipped. Closures is currently a WIP

// Common use cases / concepts for closures, as covered in articles like:
// https://medium.com/@dis_is_patrick/practical-uses-for-closures-c65640ae7304
// https://stackoverflow.com/questions/2728278/what-is-a-practical-use-for-a-closure-in-javascript
// https://softwareengineering.stackexchange.com/questions/285941/why-would-a-program-use-a-closure
// https://medium.com/@prashantramnyc/what-is-an-iife-in-javascript-24baf0febf08

// Currently, IIFEs and simple Function Factories work
// But my advanced Function Factory Pub Sub, and weird function namespacing does not
// Due to runtime and/or compilation errors :)

// IIFE (Immediately Invoked function expressions)
// Used for encapsulating data usually

// Simple IIFE
let myData = ((): boolean => {
  return true;
})();

assert(myData == true);

// Constructor IIFE?
// Don't know why someone wouldn't just use their class, but yeah

class IIFEReturn {
  myBool: boolean
  myFunc: (x: i32) => i32
}

let myInstanceThing = ((): IIFEReturn => {
  return {
    myBool: true,
    myFunc: (x: i32) => {
      return x + 1;
    }
  };
})();

assert(myInstanceThing.myBool == true);
assert(myInstanceThing.myFunc(24) == 25);

// Function Factories
// Closures that create specific functions

// Simple function that will change depending on input
type generatedFunc = () => i32;
let myFactory = (x: i32): generatedFunc => {
  let myFunc = (): i32 => {
    return 24 + x;
  };

  return myFunc;
};

let generatedPlusOne: generatedFunc = myFactory(1);
let generatedPlusTwo: generatedFunc = myFactory(2);

// For some reason, couldn't do
// Cannot invoke an expression whose type lacks a call signature. Type 'closure-common-js-patterns/myFactory' has no compatible call signatures.
// assert(myFactory(1)() == 25);
assert(generatedPlusOne() == 25);
assert(generatedPlusTwo() == 26);

// I often will use this for like Pub/Sub stuff

type SubFunc = () => void;
type UnSubFunc = () => void;
let subscriptions = new Array<SubFunc>();
let globalSubVar: i32 = 0;

function subscribe(funcToCallOnPub: SubFunc): UnSubFunc {
  subscriptions.push(funcToCallOnPub);
  return (): void => {
    let funcIndex = subscriptions.indexOf(funcToCallOnPub);
    subscriptions.splice(funcIndex, 1);
  };
}

function publish(): void {
  for(let i = 0; i < subscriptions.length; i++) {
    // Can't call directly? Get a Type error
    // ERROR TS2757: Type '() => void' has no call signatures.
    // Noticed some other weird type errors if I don't declare the function type
    // But I also am meh at typescripte signatures haha!
    // subscriptions[i]();

    let subFunc = subscriptions[i];
    subFunc();
  }
}

let plusOne = (): void => {
  globalSubVar += 1;
};

let plusTwo = (): void => {
  globalSubVar += 1;
};


let unsubPlusOne: () => void = subscribe(plusOne);
let unsubPlusTwo: () => void = subscribe(plusTwo);

assert(globalSubVar == 0);
assert(subscriptions.length == 2);

publish();

assert(globalSubVar == 3);
assert(subscriptions.length == 2);

unsubPlusOne();

assert(globalSubVar == 3);
assert(subscriptions.length == 1);

publish();

assert(globalSubVar == 5);
assert(subscriptions.length == 1);

unsubPlusTwo();

assert(globalSubVar == 5);
assert(subscriptions.length == 0);

publish();

assert(globalSubVar == 5);
assert(subscriptions.length == 0);


// TODO (torch2424 6/15/20): Uncomment this test once closures is fully implemented
/*

// Namespacing private functions
// Again, kind of weird, they should probably just make a class, but it's another interesting test

class Chunk {
  totalSize: i32;
  usedSize: i32;
  write: (size: i32) => void;
}

let getChunk = (): Chunk => {
  let chunk: Chunk = {
    totalSize: 1024,
    usedSize: 0,
    write: (x: i32): void => {}
  };
  
  let growChunk = (): void => {
    chunk.totalSize += 1024;
  }

  let allocateForChunk = (amount: i32): void => {
    if (chunk.usedSize + amount <= chunk.totalSize) {
      chunk.usedSize += amount;
    } else {
      // growChunk(chunk);
      // allocateForChunk(chunk, amount);
    }
  }

  chunk.write = (x: i32) => {
    allocateForChunk(x);
  }

  return chunk;
  
}

let myChunk: Chunk = getChunk();

assert(myChunk.totalSize == 1024);
assert(myChunk.usedSize == 0);

myChunk.write(1025);

assert(myChunk.totalSize == 2048);
assert(myChunk.usedSize == 1025);
*/
