// Validates that skipped autorelease state is preserved accross calls and returns.

class Ref {}

function getRef(): Ref {
  return new Ref();
}

function rereturnRef(): Ref {
  return getRef();
}

/* __release( */ rereturnRef() /* ) */;
