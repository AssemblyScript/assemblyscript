function test_i31(): void {
  var ref = i31.new(123);
  assert(ref);
  var val = i31.get(ref);
  var uval = <u32>i31.get(ref);
}

test_i31();

// constant globals

export const globalFunc: funcref = null;
export const globalExtern: externref = null;
export const globalAny: anyref = null;
export const globalEq: eqref = null;
export const globalStruct: structref = null;
export const globalArray: arrayref = null;
export const globalI31: i31ref = null;
