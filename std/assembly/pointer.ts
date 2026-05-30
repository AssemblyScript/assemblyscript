// Zero-overhead typed pointer. @unmanaged + changetype = no allocation, no GC.
// Promoted from tests/compiler/std/pointer.ts experiment.

@final @unmanaged
export class Pointer<T> {

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
      if (value == null) {
        memory.fill(changetype<usize>(this), 0, offsetof<T>());
      } else {
        memory.copy(changetype<usize>(this), changetype<usize>(value), offsetof<T>());
      }
    } else {
      store<T>(changetype<usize>(this), value);
    }
  }

  @inline @operator("+") add(other: Pointer<T>): Pointer<T> {
    return changetype<Pointer<T>>(changetype<usize>(this) + changetype<usize>(other));
  }

  @inline @operator("-") sub(other: Pointer<T>): Pointer<T> {
    return changetype<Pointer<T>>(changetype<usize>(this) - changetype<usize>(other));
  }

  @inline @operator.prefix("++") inc(): Pointer<T> {
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

  @inline isNull(): bool {
    return changetype<usize>(this) == 0;
  }

  @inline equals(other: Pointer<T>): bool {
    return changetype<usize>(this) == changetype<usize>(other);
  }

  @inline copyTo(dst: Pointer<T>, count: i32): void {
    const size = isReference<T>() ? offsetof<T>() : sizeof<T>();
    memory.copy(changetype<usize>(dst), changetype<usize>(this), <usize>count * size);
  }

  @inline static null<T>(): Pointer<T> {
    return changetype<Pointer<T>>(0);
  }
}
