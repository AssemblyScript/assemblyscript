{
  // Normal assignment will retain and release.

  let a = /* __retain( */ "" /* ) */;
  // __release(a)
}

function getRef(): string {
  return /* __retain( */ "" /* ) */;
}

{
  // Assignment of a return value picks up its skipped autorelease

  let b = getRef();
  // __release(b);
}

class Ref {}

{
  // Assignment of an instantiation picks up its skipped autorelease

  let c = new Ref();
  // __release(c);
}
