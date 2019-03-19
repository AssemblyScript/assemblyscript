import { ALLOCATE, REGISTER, MAX_BYTELENGTH, HEADER, HEADER_SIZE, LINK } from "./runtime";

// NOTE: DO NOT USE YET!

// TODO: FixedArray<T,S> with S being the static size, i.e. `new FixedArray<i32,10>`.
// Then hard-wire this special type to the compiler and do static length checks instead :)

export class FixedArray<T> {
  [key: number]: T;

  constructor(length: i32) {
    if (<u32>length > <u32>MAX_BYTELENGTH >>> alignof<T>()) throw new RangeError("Invalid length");
    var outSize = <usize>length << alignof<T>();
    var out = ALLOCATE(outSize);
    memory.fill(out, 0, outSize);
    return REGISTER<FixedArray<T>>(out);
  }

  get length(): i32 {
    return changetype<HEADER>(changetype<usize>(this) - HEADER_SIZE).payloadSize >>> alignof<T>();
  }

  @operator("[]") private __get(index: i32): T {
    if (<u32>index >= <u32>this.length) throw new RangeError("Offset out of bounds");
    return load<T>(changetype<usize>(this) + (<usize>index << alignof<T>()));
  }

  @operator("[]=") private __set(index: i32, value: T): void {
    if (<u32>index >= <u32>this.length) throw new RangeError("Offset out of bounds");
    store<T>(changetype<usize>(this) + (<usize>index << alignof<T>()),
      isManaged<T>()
        ? LINK<T,this>(value, this)
        : value
    );
  }

  @operator("{}") private __unchecked_get(index: i32): T {
    return load<T>(changetype<usize>(this) + (<usize>index << alignof<T>()));
  }

  @operator("{}=") private __unchecked_set(index: i32, value: T): void {
    store<T>(changetype<usize>(this) + (<usize>index << alignof<T>()),
      isManaged<T>()
        ? LINK<T,this>(value, this)
        : value
    );
  }
}
