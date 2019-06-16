// Validates that an autorelease mismatch in the arms of a ternary expression
// is correctly resolved by lifting the respective other.

class Ref {}

function getRef(): Ref {
  return new Ref();
}

var gloRef = new Ref();

export function test1(b: bool): Ref | null {
  // ifThen skips autorelease, ifElse doesn't
  return b ? getRef() : /* __retain( */ gloRef /* ) */;
}

/* __release( */ test1(true) /* ) */;
/* __release( */ test1(false) /* ) */;

export function test2(b: bool): Ref | null {
  // ifElse skips autorelease, ifThen doesn't
  return b ? /* __retain( */ gloRef /* ) */ : getRef();
}

/* __release( */ test2(true) /* ) */;
/* __release( */ test2(false) /* ) */;

// Unleak

__release(changetype<usize>(gloRef));
