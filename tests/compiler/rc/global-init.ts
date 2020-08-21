function getRef(): string {
  return "";
}

// Assignment of a return value picks up its delayed release state and skips
// one set of retain/release.

var a: string = getRef();
var b = getRef(); // same, but inferred

// Unleak

a = /* __retainRelease( */ changetype<string>(0) /* , a) */;
b = /* __retainRelease( */ changetype<string>(0) /* , a) */;
