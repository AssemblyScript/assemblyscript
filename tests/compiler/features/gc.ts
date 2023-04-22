function test_i31(): void {
  var ref = i31.new(123);
  assert(ref);
  var val = i31.get(ref);
  var uval = <u32>i31.get(ref);
}

test_i31();

// constant globals

export const globalFunc: ref_func | null = null;
export const globalExtern: ref_extern | null = null;
export const globalAny: ref_any | null = null;
export const globalEq: ref_eq | null = null;
export const globalI31: ref_i31 | null = null;
export const globalStruct: ref_struct | null = null;
export const globalArray: ref_array | null = null;
