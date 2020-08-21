class Ref {}

function getRef(): Ref {
  return new Ref();
}

var gloRef = new Ref();

{
  // Left skips autorelease, right doesn't
  let a = /* t = */ getRef() || /* __release(t), */ gloRef;
  // __release(a)
}
{
  // Right skips autorelease, left doesn't
  let b = gloRef || getRef();
}
{
  // Both skip autorelease, for completeness
  let c = getRef() || getRef();
}
{
  // Both don't
  let d = gloRef || gloRef;
}

// Unleak

__release(changetype<usize>(gloRef));
