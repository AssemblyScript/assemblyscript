# ![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) threading

WebAssembly now has atomic instructions which allow for WebAssembly instances to atomically access a shared memory.  There are also two new instructions `wait` and `notify`, which allow threads to wait on a memory address and notify threads that are waiting (which currently aren't implemented by can be handled by the host for now).

While these instructions are a big step forward for multithreaded WebAssembly applications the loader must still create WebWorkers and pass the required information such as the shared memory.  Furthermore, these instructions are still very low level and can be tricky to implement correctly.  Thus this module aims to provide a collection of useful classes to aid to fill this gap including a special loader to handle the creation of threads.

## API
------------

### Lock
This is the base class which wraps around a pointer used by `wait` and `notify`.


`new Lock(ptr: i32 = 1)` - 0 is locked, 1 is unlocked.

`acquire()` - Attempts to acquire the lock and will wait until it is notified.

`release(numAgents: i32 = -1)` - Will atomically store 1 and will notify `numAgents` threads waiting on the lock.  `-1` is all waiters.

## Mailbox<T>
An array can act as a mailbox for a thread.  Both pushes and pops to the array are guarded by locks.

`new Mailbox()`

`push(item: T)` - pushes item onto array once the thread has acquired the lock.

`pop(): T` - Attempts to pop an item from the array, however, the thread will wait until there are items in the array.

## WebWorker<T>
This matches the WC3's WebWorker API.

`new WebWorker()`

`postMessage(item: T)` - pushes an item onto the workers stack.

`onmessage(item: T)` - which which is called when an item is popped from the array.


## Testing it out
First build the test binary.

`npm run asbuild:test`

Then start the server.

`npm run server`

In the console you should see that the message 424242 was received by the forked Web Worker.
