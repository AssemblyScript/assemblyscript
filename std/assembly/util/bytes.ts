export function REVERSE<T>(ptr: usize, len: usize): void {
  if (len > 1) {
    let front = ptr;
    let back = ptr + ((len - 1) << alignof<T>());
    while (front < back) {
      let temp = load<T>(front);
      store<T>(front, load<T>(back));
      store<T>(back, temp);
      front += sizeof<T>();
      back -= sizeof<T>();
    }
  }
}
