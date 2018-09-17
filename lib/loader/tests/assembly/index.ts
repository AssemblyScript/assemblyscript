import "allocator/arena";

export { memory };

export const COLOR: string = "red";

export function strlen(str: string): i32 {
  return str.length;
}

export namespace math {
  export function add(a: i32, b: i32): i32 {
    return a + b;
  }
}

export class Car {
  static readonly MAX_DOORS: i32 = 5;
  static readonly usualDoors: i32 = 3;

  numDoors: i32;
  private doorsOpen: bool = false;

  get isDoorsOpen(): bool { return this.doorsOpen; }
  set isDoorsOpen(value: bool) { this.doorsOpen = value; }

  constructor(numDoors: i32) {
    this.numDoors = numDoors;
  }

  openDoors(): bool {
    if (this.doorsOpen) return false;
    this.doorsOpen = true;
    return true;
  }

  closeDoors(): bool {
    if (!this.doorsOpen) return false;
    this.doorsOpen = false;
    return true;
  }

  dispose(): void {
    memory.free(changetype<usize>(this));
  }
}

// TypedArray

export function processInt8Array(ptr: usize, length: i32): void {

    const inputPtr: Pointer<i8> = new Pointer<i8>(ptr);

    for (let i: i32 = 0; i < length; i++) {
        // mutate the values directly in memory
        inputPtr[i] = inputPtr[i] - 1;
    }
}

export function processUint8Array(ptr: usize, length: i32): void {

    const inputPtr: Pointer<u8> = new Pointer<u8>(ptr);

    for (let i: i32 = 0; i < length; i++) {
        // mutate the values directly in memory
        inputPtr[i] = inputPtr[i] - 1;
    }
}

export function processUint8ClampedArray(ptr: usize, length: i32): void {

    const inputPtr: Pointer<u8> = new Pointer<u8>(ptr);

    for (let i: i32 = 0; i < length; i++) {
        // mutate the values directly in memory
        inputPtr[i] = inputPtr[i] - 1;
    }
}

export function processInt16Array(ptr: usize, length: i32): void {

    const inputPtr: Pointer<i16> = new Pointer<i16>(ptr);

    for (let i: i32 = 0; i < length; i++) {
        // mutate the values directly in memory
        inputPtr[i] = inputPtr[i] - 1;
    }
}

export function processUint16Array(ptr: usize, length: i32): void {

    const inputPtr: Pointer<u16> = new Pointer<u16>(ptr);

    for (let i: i32 = 0; i < length; i++) {
        // mutate the values directly in memory
        inputPtr[i] = inputPtr[i] - 1;
    }
}

export function processFloat32Array(ptr: usize, length: i32): void {

    const inputPtr: Pointer<f32> = new Pointer<f32>(ptr);

    for (let i: i32 = 0; i < length; i++) {
        // mutate the values directly in memory
        inputPtr[i] = inputPtr[i] - 1;
    }
}

export function processInt32Array(ptr: usize, length: i32): void {

    const inputPtr: Pointer<i32> = new Pointer<i32>(ptr);

    for (let i: i32 = 0; i < length; i++) {
        // mutate the values directly in memory
        inputPtr[i] = inputPtr[i] - 1;
    }
}

export function processUint32Array(ptr: usize, length: i32): void {

    const inputPtr: Pointer<u32> = new Pointer<u32>(ptr);

    for (let i: i32 = 0; i < length; i++) {
        // mutate the values directly in memory
        inputPtr[i] = inputPtr[i] - 1;
    }
}

export function processFloat64Array(ptr: usize, length: i32): void {

    const inputPtr: Pointer<f64> = new Pointer<f64>(ptr);

    for (let i: i32 = 0; i < length; i++) {
        // mutate the values directly in memory
        inputPtr[i] = inputPtr[i] - 1;
    }
}

// A pointer arithmetic experiment
class Pointer<T> {

    // FIXME: does not inline, always yields a trampoline
    @inline constructor(offset: usize = 0) {
        return changetype<Pointer<T>>(offset);
    }

    @inline get offset(): usize {
        return changetype<usize>(this);
    }

    @inline get value(): T {
        if (isReference<T>()) {
            return changetype<T>(changetype<usize>(this));
        } else {
            return load<T>(changetype<usize>(this));
        }
    }

    @inline set value(value: T) {
        if (isReference<T>()) {
            if (isManaged<T>()) ERROR("Unsafe unmanaged set of a managed object");
            if (value === null) {
                memory.fill(changetype<usize>(this), 0, offsetof<T>());
            } else {
                memory.copy(changetype<usize>(this), changetype<usize>(value), offsetof<T>());
            }
        } else {
            store<T>(changetype<usize>(this), value);
        }
    }

    // FIXME: in general, inlining any of the following always yields a block. one could argue that
    // this helps debuggability, or that it is unnecessary overhead due to the simplicity of the
    // functions. a compromise could be to inline a block consisting of a single 'return' as is,
    // where possible.
    @inline @operator("+") add(other: Pointer<T>): Pointer<T> {
        return changetype<Pointer<T>>(changetype<usize>(this) + changetype<usize>(other));
    }

    @inline @operator("-") sub(other: Pointer<T>): Pointer<T> {
        return changetype<Pointer<T>>(changetype<usize>(this) - changetype<usize>(other));
    }

    @inline @operator.prefix("++") inc(): Pointer<T> {
        // FIXME: this should take alignment into account, but then would require a new builtin to
        // determine the minimal alignment of a struct by evaluating its field layout.
        const size = isReference<T>() ? offsetof<T>() : sizeof<T>();
        return changetype<Pointer<T>>(changetype<usize>(this) + size);
    }

    @inline @operator.prefix("--") dec(): Pointer<T> {
        const size = isReference<T>() ? offsetof<T>() : sizeof<T>();
        return changetype<Pointer<T>>(changetype<usize>(this) - size);
    }

    @inline @operator("[]") get(index: i32): T {
        const size = isReference<T>() ? offsetof<T>() : sizeof<T>();
        return load<T>(changetype<usize>(this) + (<usize>index * size));
    }

    @inline @operator("[]=") set(index: i32, value: T): void {
        const size = isReference<T>() ? offsetof<T>() : sizeof<T>();
        store<T>(changetype<usize>(this) + (<usize>index * size), value);
    }
}