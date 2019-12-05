export interface Iterable<T> {
  readonly iterator: Iterator<T>;
}

export interface IteratorResut<T> {
  readonly value: T;
  readonly done: bool;
}

export interface Iterator<T> {

  // private constructor(iterable: Iterable<T>) {
  // }

  // TODO: these need to evaluate the classId at the respective reference in order to obtain the
  // next value, i.e. arrays work differently than maps. we'd then have:
  //
  // ╒═══════════════════ Iterator layout (32-bit) ══════════════════╕
  //    3                   2                   1
  //  1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0  bits
  // ├─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┤
  // │                             index                             │
  // ├─────────────────────────────────────────────────────────┬───┬─┤
  // │                           reference                     │ 0 │D│
  // └─────────────────────────────────────────────────────────┴───┴─┘
  // D: Done flag

  // get value(this: u64): T {
  //   ?
  // }

  // next(this: u64): Iterator<T> {
  //   ?
  // }

  readonly done: bool;

  readonly value: T;

  next(): Iterator<T>;


}
