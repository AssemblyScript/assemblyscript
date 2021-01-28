/// <reference path="../../../std/assembly/rt/index.d.ts" />

import { TypeinfoFlags } from "shared/typeinfo";

function test<T>(flags: TypeinfoFlags): void {
  assert(
    __typeinfo(idof<T>())
    ==
    flags
  );
}

// structure flags

test<Int8Array>(TypeinfoFlags.ARRAYBUFFERVIEW | TypeinfoFlags.VALUE_ALIGN_0 | TypeinfoFlags.VALUE_SIGNED);
test<Uint8Array>(TypeinfoFlags.ARRAYBUFFERVIEW | TypeinfoFlags.VALUE_ALIGN_0);
test<Uint8ClampedArray>(TypeinfoFlags.ARRAYBUFFERVIEW | TypeinfoFlags.VALUE_ALIGN_0);
test<Int16Array>(TypeinfoFlags.ARRAYBUFFERVIEW | TypeinfoFlags.VALUE_ALIGN_1 | TypeinfoFlags.VALUE_SIGNED);
test<Uint16Array>(TypeinfoFlags.ARRAYBUFFERVIEW | TypeinfoFlags.VALUE_ALIGN_1);
test<Int32Array>(TypeinfoFlags.ARRAYBUFFERVIEW | TypeinfoFlags.VALUE_ALIGN_2 | TypeinfoFlags.VALUE_SIGNED);
test<Uint32Array>(TypeinfoFlags.ARRAYBUFFERVIEW | TypeinfoFlags.VALUE_ALIGN_2);
test<Int64Array>(TypeinfoFlags.ARRAYBUFFERVIEW | TypeinfoFlags.VALUE_ALIGN_3 | TypeinfoFlags.VALUE_SIGNED);
test<Uint64Array>(TypeinfoFlags.ARRAYBUFFERVIEW | TypeinfoFlags.VALUE_ALIGN_3);
test<Float32Array>(TypeinfoFlags.ARRAYBUFFERVIEW | TypeinfoFlags.VALUE_ALIGN_2 | TypeinfoFlags.VALUE_SIGNED | TypeinfoFlags.VALUE_FLOAT);
test<Float64Array>(TypeinfoFlags.ARRAYBUFFERVIEW | TypeinfoFlags.VALUE_ALIGN_3 | TypeinfoFlags.VALUE_SIGNED | TypeinfoFlags.VALUE_FLOAT);

class Ref {}

const VALUE_ALIGN_REF = sizeof<usize>() == 4 ? TypeinfoFlags.VALUE_ALIGN_2 : TypeinfoFlags.VALUE_ALIGN_3;
const KEY_ALIGN_REF = sizeof<usize>() == 4 ? TypeinfoFlags.KEY_ALIGN_2 : TypeinfoFlags.KEY_ALIGN_3;

test<Array<i8>>(TypeinfoFlags.ARRAY | TypeinfoFlags.VALUE_ALIGN_0 | TypeinfoFlags.VALUE_SIGNED);
test<Array<u8>>(TypeinfoFlags.ARRAY | TypeinfoFlags.VALUE_ALIGN_0);
test<Array<i16>>(TypeinfoFlags.ARRAY | TypeinfoFlags.VALUE_ALIGN_1 | TypeinfoFlags.VALUE_SIGNED);
test<Array<u16>>(TypeinfoFlags.ARRAY | TypeinfoFlags.VALUE_ALIGN_1);
test<Array<i32>>(TypeinfoFlags.ARRAY | TypeinfoFlags.VALUE_ALIGN_2 | TypeinfoFlags.VALUE_SIGNED);
test<Array<u32>>(TypeinfoFlags.ARRAY | TypeinfoFlags.VALUE_ALIGN_2);
test<Array<i64>>(TypeinfoFlags.ARRAY | TypeinfoFlags.VALUE_ALIGN_3 | TypeinfoFlags.VALUE_SIGNED);
test<Array<u64>>(TypeinfoFlags.ARRAY | TypeinfoFlags.VALUE_ALIGN_3);
test<Array<f32>>(TypeinfoFlags.ARRAY | TypeinfoFlags.VALUE_ALIGN_2 | TypeinfoFlags.VALUE_SIGNED | TypeinfoFlags.VALUE_FLOAT);
test<Array<f64>>(TypeinfoFlags.ARRAY | TypeinfoFlags.VALUE_ALIGN_3 | TypeinfoFlags.VALUE_SIGNED | TypeinfoFlags.VALUE_FLOAT);
test<Array<v128>>(TypeinfoFlags.ARRAY | TypeinfoFlags.VALUE_ALIGN_4);
test<Array<Ref>>(TypeinfoFlags.ARRAY | VALUE_ALIGN_REF | TypeinfoFlags.VALUE_MANAGED);
test<Array<Ref | null>>(TypeinfoFlags.ARRAY | VALUE_ALIGN_REF | TypeinfoFlags.VALUE_NULLABLE | TypeinfoFlags.VALUE_MANAGED);

test<Set<i8>>(TypeinfoFlags.SET | TypeinfoFlags.VALUE_ALIGN_0 | TypeinfoFlags.VALUE_SIGNED);
test<Set<u8>>(TypeinfoFlags.SET | TypeinfoFlags.VALUE_ALIGN_0);
test<Set<i16>>(TypeinfoFlags.SET | TypeinfoFlags.VALUE_ALIGN_1 | TypeinfoFlags.VALUE_SIGNED);
test<Set<u16>>(TypeinfoFlags.SET | TypeinfoFlags.VALUE_ALIGN_1);
test<Set<i32>>(TypeinfoFlags.SET | TypeinfoFlags.VALUE_ALIGN_2 | TypeinfoFlags.VALUE_SIGNED);
test<Set<u32>>(TypeinfoFlags.SET | TypeinfoFlags.VALUE_ALIGN_2);
test<Set<i64>>(TypeinfoFlags.SET | TypeinfoFlags.VALUE_ALIGN_3 | TypeinfoFlags.VALUE_SIGNED);
test<Set<u64>>(TypeinfoFlags.SET | TypeinfoFlags.VALUE_ALIGN_3);
test<Set<f32>>(TypeinfoFlags.SET | TypeinfoFlags.VALUE_ALIGN_2 | TypeinfoFlags.VALUE_SIGNED | TypeinfoFlags.VALUE_FLOAT);
test<Set<f64>>(TypeinfoFlags.SET | TypeinfoFlags.VALUE_ALIGN_3 | TypeinfoFlags.VALUE_SIGNED | TypeinfoFlags.VALUE_FLOAT);
test<Set<v128>>(TypeinfoFlags.SET | TypeinfoFlags.VALUE_ALIGN_4);
test<Set<Ref>>(TypeinfoFlags.SET | VALUE_ALIGN_REF | TypeinfoFlags.VALUE_MANAGED);
test<Set<Ref | null>>(TypeinfoFlags.SET | VALUE_ALIGN_REF | TypeinfoFlags.VALUE_NULLABLE | TypeinfoFlags.VALUE_MANAGED);

test<Map<v128,i8>>(TypeinfoFlags.MAP | TypeinfoFlags.KEY_ALIGN_4 | TypeinfoFlags.VALUE_ALIGN_0 | TypeinfoFlags.VALUE_SIGNED);
test<Map<i64,i16>>(TypeinfoFlags.MAP | TypeinfoFlags.KEY_ALIGN_3 | TypeinfoFlags.KEY_SIGNED | TypeinfoFlags.VALUE_ALIGN_1 | TypeinfoFlags.VALUE_SIGNED);
test<Map<i32,i32>>(TypeinfoFlags.MAP | TypeinfoFlags.KEY_ALIGN_2 | TypeinfoFlags.KEY_SIGNED | TypeinfoFlags.VALUE_ALIGN_2 | TypeinfoFlags.VALUE_SIGNED);
test<Map<i16,i64>>(TypeinfoFlags.MAP | TypeinfoFlags.KEY_ALIGN_1 | TypeinfoFlags.KEY_SIGNED | TypeinfoFlags.VALUE_ALIGN_3 | TypeinfoFlags.VALUE_SIGNED);
test<Map<i8,v128>>(TypeinfoFlags.MAP | TypeinfoFlags.KEY_ALIGN_0 | TypeinfoFlags.KEY_SIGNED | TypeinfoFlags.VALUE_ALIGN_4);
test<Map<Ref,i8>>(TypeinfoFlags.MAP | KEY_ALIGN_REF | TypeinfoFlags.KEY_MANAGED | TypeinfoFlags.VALUE_ALIGN_0 | TypeinfoFlags.VALUE_SIGNED);
test<Map<Ref | null,i8>>(TypeinfoFlags.MAP | KEY_ALIGN_REF | TypeinfoFlags.KEY_NULLABLE | TypeinfoFlags.KEY_MANAGED | TypeinfoFlags.VALUE_ALIGN_0 | TypeinfoFlags.VALUE_SIGNED);
test<Map<i8,Ref>>(TypeinfoFlags.MAP | TypeinfoFlags.KEY_ALIGN_0 | TypeinfoFlags.KEY_SIGNED | TypeinfoFlags.VALUE_MANAGED | VALUE_ALIGN_REF);
test<Map<i8,Ref | null>>(TypeinfoFlags.MAP | TypeinfoFlags.KEY_ALIGN_0 | TypeinfoFlags.KEY_SIGNED | TypeinfoFlags.VALUE_NULLABLE | TypeinfoFlags.VALUE_MANAGED | VALUE_ALIGN_REF);
test<Map<Ref | null,Ref | null>>(TypeinfoFlags.MAP | TypeinfoFlags.KEY_NULLABLE | TypeinfoFlags.KEY_MANAGED | KEY_ALIGN_REF | TypeinfoFlags.VALUE_NULLABLE | TypeinfoFlags.VALUE_MANAGED | VALUE_ALIGN_REF);
test<Map<f32,i32>>(TypeinfoFlags.MAP | TypeinfoFlags.KEY_ALIGN_2 | TypeinfoFlags.KEY_SIGNED | TypeinfoFlags.KEY_FLOAT | TypeinfoFlags.VALUE_ALIGN_2 | TypeinfoFlags.VALUE_SIGNED);
