class Ref {}

// Normal function

function returnNew(): Ref {
  return new Ref(); // ctor retains
}
/* __release( */ returnNew() /* ) */;
/* __release( */ returnNew() /* ) */;

function returnLocal(): Ref {
  var ref = new Ref();
  return ref; // undoes autorelease
}
/* __release( */ returnLocal() /* ) */;
/* __release( */ returnLocal() /* ) */;

var ref = new Ref();
function returnGlobal(): Ref {
  return /* __retain( */ ref /* ) */;
}
/* __release( */ returnGlobal() /* ) */;
/* __release( */ returnGlobal() /* ) */;

// Function expression without block

var returnNewFnExpr = (): Ref => new Ref(); // ctor retains
/* __release( */ returnNewFnExpr() /* ) */;
/* __release( */ returnNewFnExpr() /* ) */;

var returnLocalFnExpr = (ref: Ref): Ref => ref; // undoes autorelease
/* __release( */ returnLocalFnExpr(ref) /* ) */;
/* __release( */ returnLocalFnExpr(ref) /* ) */;

var returnGlobalFnExpr = (): Ref => /* __retain( */ ref /* ) */;
/* __release( */ returnGlobalFnExpr() /* ) */;
/* __release( */ returnGlobalFnExpr() /* ) */;

// Function expression with block

var returnNewFnBlock = (): Ref => { return new Ref(); }; // ctor retains
/* __release( */ returnNewFnBlock() /* ) */;
/* __release( */ returnNewFnBlock() /* ) */;

var returnLocalFnBlock = (): Ref => { var ref = new Ref(); return ref; }; // undoes autorelease
/* __release( */ returnLocalFnBlock() /* ) */;
/* __release( */ returnLocalFnBlock() /* ) */;

var returnGlobalFnBlock = (): Ref => { return /* __retain( */ ref /* ) */; };
/* __release( */ returnGlobalFnBlock() /* ) */;
/* __release( */ returnGlobalFnBlock() /* ) */;

// unleak
ref = changetype<Ref>(0);
