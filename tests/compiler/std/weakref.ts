class Dummy {}

function produceDummy(): WeakRef<Dummy> {
  // Dummy must be created inside a function or the shadow stack of the root
  // function will keep it alive
  return new WeakRef(new Dummy());
}

const weakref = produceDummy();
assert(weakref.deref() !== null);
__collect();
assert(weakref.deref() === null);

// Test releasing reference

const globalRefs: Dummy[] = [];

function makeDummy(): WeakRef<Dummy> {
  const instance = new Dummy();
  globalRefs.push(instance);
  return new WeakRef(instance);
}

const weakref2 = makeDummy();
assert(weakref2.deref() !== null);

// No effect since globalRefs is holding dummy
__collect();
assert(weakref2.deref() !== null);

globalRefs.length = 0;
__collect();
assert(weakref2.deref() === null);
