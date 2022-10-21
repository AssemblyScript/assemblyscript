function test_i31(): void {
  var ref = i31.new(123);
  assert(ref);
  var val = i31.get(ref);
  var uval = <u32>i31.get(ref);
}

test_i31();

// constant globals

export const a: anyref = null;
export const b: i31ref = null;
export const c: dataref = null;
