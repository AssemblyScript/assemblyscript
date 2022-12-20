class Dummy {}

function produceDummy(): WeakRef<Dummy> {
  // Dummy must be created inside a function or the shadow stack of the root
  // function will keep it alive
  return new WeakRef(new Dummy());
}

{
  const weakref = produceDummy();
  assert(weakref.deref() !== null);
  __collect();
  assert(weakref.deref() === null);
}

// Test releasing reference

const globalRefs: Dummy[] = [];

function makeRefencedDummy(): WeakRef<Dummy> {
  const instance = new Dummy();
  globalRefs.push(instance);
  return new WeakRef(instance);
}

{
  const weakref = makeRefencedDummy();
  assert(weakref.deref() !== null);

  // No effect since globalRefs is holding dummy
  __collect();
  assert(weakref.deref() !== null);

  globalRefs.length = 0;
  __collect();
  assert(weakref.deref() === null);
}

// Test overlapping WeakRef

function grabGlobalRef(): WeakRef<Dummy> {
  // Again, deref inside a function to prevent the shadow stack from holding on
  // to globalRefs[0]
  return new WeakRef(globalRefs[0]);
}

{
  const weakref1 = makeRefencedDummy();
  const weakref2 = produceDummy();

  assert(weakref1.deref() !== null);
  assert(weakref2.deref() !== null);

  __collect();
  assert(weakref1.deref() !== null);
  assert(weakref2.deref() === null);

  const weakref3 = grabGlobalRef();
  assert(weakref1.deref() !== null);
  assert(weakref3.deref() !== null);

  globalRefs.length = 0;
  __collect();

  assert(weakref1.deref() === null);
  assert(weakref3.deref() === null);
}
