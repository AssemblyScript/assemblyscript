// This file is shared with the compiler and must remain portable

// ╒═══════════════════ Typeinfo interpretation ═══════════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤ ◄─ __rtti_base
// │                             count                             │
// ╞═══════════════════════════════════════════════════════════════╡ ┐
// │                      Typeinfo#flags [id=0]                    │ id < count
// ├───────────────────────────────────────────────────────────────┤
// │                              ...                              │

/** Runtime type information data structure. */
@unmanaged
export class Typeinfo {
  /** Flags describing the shape of this class type. */
  flags: TypeinfoFlags = TypeinfoFlags.NONE;
}

/** Runtime type information flags. */
export const enum TypeinfoFlags {
  /** No specific flags. */
  NONE = 0,
  /** Type is an `ArrayBufferView`. */
  ARRAYBUFFERVIEW = 1 << 0,
  /** Type is an `Array`. */
  ARRAY = 1 << 1,
  /** Type is a `StaticArray`. */
  STATICARRAY = 1 << 2,
  /** Type is a `Set`. */
  SET = 1 << 3,
  /** Type is a `Map`. */
  MAP = 1 << 4,
  /** Type has no outgoing pointers. */
  POINTERFREE = 1 << 5,
  /** Value alignment of 1 byte. */
  VALUE_ALIGN_0 = 1 << 6,
  /** Value alignment of 2 bytes. */
  VALUE_ALIGN_1 = 1 << 7,
  /** Value alignment of 4 bytes. */
  VALUE_ALIGN_2 = 1 << 8,
  /** Value alignment of 8 bytes. */
  VALUE_ALIGN_3 = 1 << 9,
  /** Value alignment of 16 bytes. */
  VALUE_ALIGN_4 = 1 << 10,
  /** Value is a signed type. */
  VALUE_SIGNED = 1 << 11,
  /** Value is a float type. */
  VALUE_FLOAT = 1 << 12,
  /** Value type is nullable. */
  VALUE_NULLABLE = 1 << 13,
  /** Value type is managed. */
  VALUE_MANAGED = 1 << 14,
  /** Key alignment of 1 byte. */
  KEY_ALIGN_0 = 1 << 15,
  /** Key alignment of 2 bytes. */
  KEY_ALIGN_1 = 1 << 16,
  /** Key alignment of 4 bytes. */
  KEY_ALIGN_2 = 1 << 17,
  /** Key alignment of 8 bytes. */
  KEY_ALIGN_3 = 1 << 18,
  /** Key alignment of 16 bytes. */
  KEY_ALIGN_4 = 1 << 19,
  /** Key is a signed type. */
  KEY_SIGNED = 1 << 20,
  /** Key is a float type. */
  KEY_FLOAT = 1 << 21,
  /** Key type is nullable. */
  KEY_NULLABLE = 1 << 22,
  /** Key type is managed. */
  KEY_MANAGED = 1 << 23
}
