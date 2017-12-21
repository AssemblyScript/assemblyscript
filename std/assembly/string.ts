@global()
export class String {

  private ptr: usize;
  readonly length: u32;

  constructor(ptr: usize, len: u32) {
    this.ptr = ptr;
    this.length = len;
  }

  charAt(index: u32): String {
    assert(this != null && index < this.length);
    return new String(this.ptr + (index << 1), 1);
  }

  charCodeAt(index: u32): u16 {
    assert(this != null && index < this.length);
    return load<u16>(this.ptr + (index << 1));
  }

  @operator("+")
  concat(other: String): String {
    assert(this != null && other != null);
    const len: u32 = this.length + other.length;
    const ptr: usize = Heap.allocate(len << 1);
    Heap.copy(ptr, this.ptr, this.length << 1);
    Heap.copy(ptr, this.ptr + (len << 1), other.length << 1);
    return new String(ptr, len);
  }

  endsWith(other: String): bool {
    assert(this != null && other != null);
    if (other.length > this.length)
      return false;
    for (let i: u32 = this.length - other.length, j: u32 = 0, k: u32 = this.length; i < k;)
      if (this.charCodeAt(i++) != other.charCodeAt(j++))
        return false;
    return true;
  }

  @operator("==")
  equals(other: String): bool {
    assert(this != null && other != null);
    if (this.length != other.length)
      return false;
    for (let i: u32 = 0, k: u32 = this.length; i < k; ++i)
      if (this.charCodeAt(i) != other.charCodeAt(i))
        return false;
    return true;
  }

  indexOf(other: String): u32 {
    assert(this != null && other != null);
    throw new Error("not implemented");
  }

  startsWith(other: String): bool {
    assert(this != null && other != null);
    if (other.length > this.length)
      return false;
    for (let i: u32 = 0, k: u32 = other.length; i < k; ++i)
      if (this.charCodeAt(i) != other.charCodeAt(i))
        return false;
    return true;
  }

  substr(start: u32, length: u32 = <u32>-1): String {
    assert(this != null);
    if (start >= this.length)
      return changetype<string,String>("");
    const len: u32 = min<u32>(length, this.length - start);
    return new String(this.ptr + (start << 1), len);
  }

  substring(start: u32, end: u32 = <u32>-1): String {
    assert(this != null);
    if (start >= this.length || end <= start)
      return changetype<string,String>("");
    const len: u32 = min<u32>(end - start, this.length - start);
    return new String(this.ptr + (start << 1), len);
  }

  trim(): string {
    assert(this != null);
    throw new Error("not implemented");
  }

  trimLeft(): string {
    assert(this != null);
    throw new Error("not implemented");
  }

  trimRight(): string {
    assert(this != null);
    throw new Error("not implemented");
  }
}
