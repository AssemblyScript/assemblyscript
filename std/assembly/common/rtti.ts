// ╒═════════════════════ RTTI interpretation ═════════════════════╕
//    3                   2                   1
//  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
// ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤ ◄─ RTTI_BASE
// │                             count                             │
// ├ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┤
// │                            reserved                           │
// ╞═══════════════════════════════════════════════════════════════╡ ┐
// │                      RTTIData#flags [id=1]                    │ id=1..count
// ├ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┤
// │                      RTTIData#base  [id=1]                    │
// ├───────────────────────────────────────────────────────────────┤
// │                              ...                              │

/** Runtime type information data structure. */
@unmanaged
export class RTTIData {
  flags: RTTIFlags;
  base: u32;
}

/** Runtime type information flags. */
export const enum RTTIFlags {
  /** No specific flags. */
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
