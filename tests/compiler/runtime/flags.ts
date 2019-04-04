import { __runtime_id, __runtime_flags } from "runtime";

const enum RuntimeFlags { // keep in sync with src/program.ts
  NONE = 0,
  /** Type is an `Array`. */
  ARRAY = 1 << 0,
  /** Type is a `Set`. */
  SET = 1 << 1,
  /** Type is a `Map`. */
  MAP = 1 << 2,
  /** Value alignment of 1 byte. */
  VALUE_ALIGN_0 = 1 << 3,
  /** Value alignment of 2 bytes. */
  VALUE_ALIGN_1 = 1 << 4,
  /** Value alignment of 4 bytes. */
  VALUE_ALIGN_2 = 1 << 5,
  /** Value alignment of 8 bytes. */
  VALUE_ALIGN_3 = 1 << 6,
  /** Value alignment of 16 bytes. */
  VALUE_ALIGN_4 = 1 << 7,
  /** Value type is nullable. */
  VALUE_NULLABLE = 1 << 8,
  /** Value type is managed. */
  VALUE_MANAGED = 1 << 9,
  /** Key alignment of 1 byte. */
  KEY_ALIGN_0 = 1 << 10,
  /** Key alignment of 2 bytes. */
  KEY_ALIGN_1 = 1 << 11,
  /** Key alignment of 4 bytes. */
  KEY_ALIGN_2 = 1 << 12,
  /** Key alignment of 8 bytes. */
  KEY_ALIGN_3 = 1 << 13,
  /** Key alignment of 16 bytes. */
  KEY_ALIGN_4 = 1 << 14,
  /** Key type is nullable. */
  KEY_NULLABLE = 1 << 15,
  /** Key type is managed. */
  KEY_MANAGED = 1 << 16
}

function test<T>(flags: RuntimeFlags): void {
  assert(
    __runtime_flags(__runtime_id<T>())
    ==
    flags
  );
}

class Ref {}

const VALUE_ALIGN_REF = sizeof<usize>() == 4 ? RuntimeFlags.VALUE_ALIGN_2 : RuntimeFlags.VALUE_ALIGN_3;
const KEY_ALIGN_REF = sizeof<usize>() == 4 ? RuntimeFlags.KEY_ALIGN_2 : RuntimeFlags.KEY_ALIGN_3;

test<Array<i8>>(RuntimeFlags.ARRAY | RuntimeFlags.VALUE_ALIGN_0);
test<Array<i16>>(RuntimeFlags.ARRAY | RuntimeFlags.VALUE_ALIGN_1);
test<Array<i32>>(RuntimeFlags.ARRAY | RuntimeFlags.VALUE_ALIGN_2);
test<Array<i64>>(RuntimeFlags.ARRAY | RuntimeFlags.VALUE_ALIGN_3);
test<Array<v128>>(RuntimeFlags.ARRAY | RuntimeFlags.VALUE_ALIGN_4);
test<Array<Ref>>(RuntimeFlags.ARRAY | VALUE_ALIGN_REF | RuntimeFlags.VALUE_MANAGED);
test<Array<Ref | null>>(RuntimeFlags.ARRAY | VALUE_ALIGN_REF | RuntimeFlags.VALUE_NULLABLE | RuntimeFlags.VALUE_MANAGED);

test<Set<i8>>(RuntimeFlags.SET | RuntimeFlags.VALUE_ALIGN_0);
test<Set<i16>>(RuntimeFlags.SET | RuntimeFlags.VALUE_ALIGN_1);
test<Set<i32>>(RuntimeFlags.SET | RuntimeFlags.VALUE_ALIGN_2);
test<Set<i64>>(RuntimeFlags.SET | RuntimeFlags.VALUE_ALIGN_3);
test<Set<v128>>(RuntimeFlags.SET | RuntimeFlags.VALUE_ALIGN_4);
test<Set<Ref>>(RuntimeFlags.SET | VALUE_ALIGN_REF | RuntimeFlags.VALUE_MANAGED);
test<Set<Ref | null>>(RuntimeFlags.SET | VALUE_ALIGN_REF | RuntimeFlags.VALUE_NULLABLE | RuntimeFlags.VALUE_MANAGED);

test<Map<v128,i8>>(RuntimeFlags.MAP | RuntimeFlags.KEY_ALIGN_4 | RuntimeFlags.VALUE_ALIGN_0);
test<Map<i64,i16>>(RuntimeFlags.MAP | RuntimeFlags.KEY_ALIGN_3 | RuntimeFlags.VALUE_ALIGN_1);
test<Map<i32,i32>>(RuntimeFlags.MAP | RuntimeFlags.KEY_ALIGN_2 | RuntimeFlags.VALUE_ALIGN_2);
test<Map<i16,i64>>(RuntimeFlags.MAP | RuntimeFlags.KEY_ALIGN_1 | RuntimeFlags.VALUE_ALIGN_3);
test<Map<i8,v128>>(RuntimeFlags.MAP | RuntimeFlags.KEY_ALIGN_0 | RuntimeFlags.VALUE_ALIGN_4);
test<Map<Ref,i8>>(RuntimeFlags.MAP | KEY_ALIGN_REF | RuntimeFlags.KEY_MANAGED | RuntimeFlags.VALUE_ALIGN_0);
test<Map<Ref | null,i8>>(RuntimeFlags.MAP |KEY_ALIGN_REF | RuntimeFlags.KEY_NULLABLE | RuntimeFlags.KEY_MANAGED | RuntimeFlags.VALUE_ALIGN_0);
test<Map<i8,Ref>>(RuntimeFlags.MAP | RuntimeFlags.KEY_ALIGN_0 | RuntimeFlags.VALUE_MANAGED | VALUE_ALIGN_REF);
test<Map<i8,Ref | null>>(RuntimeFlags.MAP | RuntimeFlags.KEY_ALIGN_0 | RuntimeFlags.VALUE_NULLABLE | RuntimeFlags.VALUE_MANAGED | VALUE_ALIGN_REF);
test<Map<Ref | null,Ref | null>>(RuntimeFlags.MAP | RuntimeFlags.KEY_NULLABLE | RuntimeFlags.KEY_MANAGED | KEY_ALIGN_REF | RuntimeFlags.VALUE_NULLABLE | RuntimeFlags.VALUE_MANAGED | VALUE_ALIGN_REF);

// TODO: WASM64
