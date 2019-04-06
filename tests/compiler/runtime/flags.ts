import { runtime, __runtime_id } from "runtime";
import { RTTIFlags } from "common/rtti";

function test<T>(flags: RTTIFlags): void {
  assert(
    runtime.flags(__runtime_id<T>())
    ==
    flags
  );
}

class Ref {}

const VALUE_ALIGN_REF = sizeof<usize>() == 4 ? RTTIFlags.VALUE_ALIGN_2 : RTTIFlags.VALUE_ALIGN_3;
const KEY_ALIGN_REF = sizeof<usize>() == 4 ? RTTIFlags.KEY_ALIGN_2 : RTTIFlags.KEY_ALIGN_3;

test<Array<i8>>(RTTIFlags.ARRAY | RTTIFlags.VALUE_ALIGN_0);
test<Array<i16>>(RTTIFlags.ARRAY | RTTIFlags.VALUE_ALIGN_1);
test<Array<i32>>(RTTIFlags.ARRAY | RTTIFlags.VALUE_ALIGN_2);
test<Array<i64>>(RTTIFlags.ARRAY | RTTIFlags.VALUE_ALIGN_3);
test<Array<v128>>(RTTIFlags.ARRAY | RTTIFlags.VALUE_ALIGN_4);
test<Array<Ref>>(RTTIFlags.ARRAY | VALUE_ALIGN_REF | RTTIFlags.VALUE_MANAGED);
test<Array<Ref | null>>(RTTIFlags.ARRAY | VALUE_ALIGN_REF | RTTIFlags.VALUE_NULLABLE | RTTIFlags.VALUE_MANAGED);

test<Set<i8>>(RTTIFlags.SET | RTTIFlags.VALUE_ALIGN_0);
test<Set<i16>>(RTTIFlags.SET | RTTIFlags.VALUE_ALIGN_1);
test<Set<i32>>(RTTIFlags.SET | RTTIFlags.VALUE_ALIGN_2);
test<Set<i64>>(RTTIFlags.SET | RTTIFlags.VALUE_ALIGN_3);
test<Set<v128>>(RTTIFlags.SET | RTTIFlags.VALUE_ALIGN_4);
test<Set<Ref>>(RTTIFlags.SET | VALUE_ALIGN_REF | RTTIFlags.VALUE_MANAGED);
test<Set<Ref | null>>(RTTIFlags.SET | VALUE_ALIGN_REF | RTTIFlags.VALUE_NULLABLE | RTTIFlags.VALUE_MANAGED);

test<Map<v128,i8>>(RTTIFlags.MAP | RTTIFlags.KEY_ALIGN_4 | RTTIFlags.VALUE_ALIGN_0);
test<Map<i64,i16>>(RTTIFlags.MAP | RTTIFlags.KEY_ALIGN_3 | RTTIFlags.VALUE_ALIGN_1);
test<Map<i32,i32>>(RTTIFlags.MAP | RTTIFlags.KEY_ALIGN_2 | RTTIFlags.VALUE_ALIGN_2);
test<Map<i16,i64>>(RTTIFlags.MAP | RTTIFlags.KEY_ALIGN_1 | RTTIFlags.VALUE_ALIGN_3);
test<Map<i8,v128>>(RTTIFlags.MAP | RTTIFlags.KEY_ALIGN_0 | RTTIFlags.VALUE_ALIGN_4);
test<Map<Ref,i8>>(RTTIFlags.MAP | KEY_ALIGN_REF | RTTIFlags.KEY_MANAGED | RTTIFlags.VALUE_ALIGN_0);
test<Map<Ref | null,i8>>(RTTIFlags.MAP |KEY_ALIGN_REF | RTTIFlags.KEY_NULLABLE | RTTIFlags.KEY_MANAGED | RTTIFlags.VALUE_ALIGN_0);
test<Map<i8,Ref>>(RTTIFlags.MAP | RTTIFlags.KEY_ALIGN_0 | RTTIFlags.VALUE_MANAGED | VALUE_ALIGN_REF);
test<Map<i8,Ref | null>>(RTTIFlags.MAP | RTTIFlags.KEY_ALIGN_0 | RTTIFlags.VALUE_NULLABLE | RTTIFlags.VALUE_MANAGED | VALUE_ALIGN_REF);
test<Map<Ref | null,Ref | null>>(RTTIFlags.MAP | RTTIFlags.KEY_NULLABLE | RTTIFlags.KEY_MANAGED | KEY_ALIGN_REF | RTTIFlags.VALUE_NULLABLE | RTTIFlags.VALUE_MANAGED | VALUE_ALIGN_REF);
