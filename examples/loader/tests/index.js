// Load the node module exporting our WebAssembly module
const myModule = require("../index");

// Obtain the runtime helpers for
const {
  // memory management
  __allocString, __allocArray,
  // garbage collection
  __retain, __release,
  // and interop
  __getString, __getArray, __getArrayView
} = myModule;

// Test for Example 1: Passing a string from WebAssembly to JavaScript.
{
  console.log("Example 1:");

  // Obtain a pointer to our string in the module's memory. Note that `return`ing
  // a string, or any other object, from WebAssembly to JavaScript automatically
  // retains a reference for us, the caller, to release when we are done with it.
  const ptr = myModule.getHello();

  // Print its contents
  console.log("  " + __getString(ptr));

  __release(ptr); // we are done with the returned string but
                  // it might still be alive in WebAssembly
}

// Test for Example 2: Passing a string from JavaScript to WebAssembly.
{
  console.log("Example 2:");

  // Allocate a string in the module's memory and retain a reference to our allocation
  const ptr = __retain(__allocString("Hello world (I am a JavaScript string)"));

  // Pass it to our WebAssembly export, which is going to print it using our custom console
  myModule.sayHello(ptr);

  __release(ptr); // we are done with the allocated string but
                  // it might still be alive in WebAssembly
}

// Test for Example 4: Passing an array from WebAssembly to JavaScript.
{
  console.log("Example 4:");

  // Obtain a pointer to our array in the module's memory. Note that `return`ing
  // an object from WebAssembly to JavaScript automatically retains a reference
  // for us, the caller, to release when we are done with it.
  const ptr = myModule.getMyArray(10);

  // Obtain a live view on it
  const view = __getArrayView(ptr);
  console.log("  " + view + " (view)");

  // Obtain a copy of it (modifying the live view does not modify the copy)
  const copy = __getArray(ptr);
  console.log("  " + copy + " (copy)");

  __release(ptr); // we are done with the array
}

// Test for Example 5: Passing an array from JavaScript to WebAssembly.
{
  console.log("Example 5:");

  // Allocate a new array in WebAssembly memory and get a view on it. Note that
  // we have to specify the runtime id of the array type we want to allocate, so
  // we export its id (`idof<Int32Array>`) from the module to do so.
  const ptr = __retain(__allocArray(myModule.Int32Array_ID, [ 1, 2, 3 ]));
  const view = __getArrayView(ptr);
  const copy = __getArray(ptr);

  // Compute its sum
  console.log("  Sum of " + view + " is " + myModule.computeSum(ptr));

  // Modify the first element in place, and compute the new sum
  view[0] = 42;
  console.log("  Sum of " + view + " is " + myModule.computeSum(ptr));

  // The initial copy remains unchanged and is not linked to `ptr`
  console.log("  Unmodified copy: " + copy);

  __release(ptr); // we are done with our allocated array but
                  // it might still be alive in WebAssembly
}

// Test for Example 6: WebAssembly arrays of WebAssembly strings.
{
  console.log("Example 6:");

  // Allocate a new array, but this time its elements are pointers to strings.
  // Note: Allocating an array of strings or other objects will automatically
  // take care of retaining references to its elements, but the array itself
  // must be dealt with as usual.
  const inPtr = __retain(__allocArray(myModule.ArrayOfStrings_ID, [ "hello", "world" ].map(__allocString)));

  // Provide our array of lowercase strings to WebAssembly, and obtain the new
  // array of uppercase strings before printing it.
  const outPtr = myModule.capitalize(inPtr);
  console.log("  Uppercased: " + __getArray(outPtr).map(__getString));

  __release(inPtr);  // release our allocation and release
  __release(outPtr); // the return value. you know the drill!

  // Note that Example 6 is not an especially efficient use case and one would
  // typically rather avoid the overhead and do this in JavaScript directly.
}

// Test for Example 7: Using custom classes.
{
  console.log("Example 7:");

  // Create a new player. Note that the loader makes a nice object structure
  // of our exports, here a class `Player` within the `Game` namespace. So
  // let's call the `Player` constructor (this is also an allocation):
  let player;
  {
    const namePtr = __retain(__allocString("Gordon Freeman"));
    player = new myModule.Game.Player(namePtr);
    __release(namePtr);
  }
  console.log("  Player (new): " + __getString(player.toString()));

  // Move them and log again
  player.move(10, 20);
  console.log("  Player (moved): " + __getString(player.toString()));

  // Obtaining just the position. Note that we can `wrap` any pointer with
  // the matching class within the object structure made by the loader.
  {
    const positionPtr = player.position; // calls a getter (implicit `return`)
    const position = myModule.Game.Position.wrap(positionPtr);
    console.log("  Position (wrapped): " + position.x + "/" + position.y);

    position.x -= 100;
    position.y += 200;
    console.log("  Position (moved): " + __getString(position.toString()));

    __release(positionPtr); // we are done with the returned object
  }

  // Finish 'em
  player.kill();
  console.log("  Player (finished): " + __getString(player.toString()));

  __release(player); // a tidy house, a tidy mind.
}

// Interested in all the details? https://docs.assemblyscript.org/details :)
