@binding(BindingCall.NEW, [BindingType.STRING], BindingType.OBJECT_HANDLE)
export class ExternalString {
  @binding(BindingCall.FUNCTION, [BindingType.U32, BindingType.U32], BindingType.OBJECT_HANDLE)
  static fromCharCode(char: u16, schar?: u16 = <u16>-1): String {
    return unreachable();
  }
  @binding(BindingCall.FUNCTION, [BindingType.U32], BindingType.OBJECT_HANDLE)
  static fromCodePoint(codepoint: u32): String {
    return unreachable();
  }
  @binding(BindingCall.THIS, [BindingType.U32], BindingType.OBJECT_HANDLE)
  charAt(index: u32): String {
    return unreachable();
  }
  @binding(BindingCall.THIS, [BindingType.U32], BindingType.PASS_THRU)
  charCodeAt(index: u32): u16 {
    return unreachable();
  }
  @binding(BindingCall.THIS, [BindingType.U32], BindingType.PASS_THRU)
  codePointAt(index: u32): u32 {
    return unreachable();
  }
  @binding(BindingCall.THIS, [BindingType.OBJECT_HANDLE], BindingType.OBJECT_HANDLE)
  @operator("+")
  concat(other: String): String {
    return unreachable();
  }
  @binding(BindingCall.THIS, [BindingType.OBJECT_HANDLE], BindingType.PASS_THRU)
  endsWith(other: String): bool {
    return unreachable();
  }
  @binding(BindingCall.THIS, [BindingType.OBJECT_HANDLE], BindingType.PASS_THRU)
  indexOf(other: String): i32 {
    return unreachable();
  }
  @binding(BindingCall.THIS, [BindingType.OBJECT_HANDLE], BindingType.PASS_THRU)
  startsWith(other: String): bool {
    return unreachable();
  }
  @binding(BindingCall.THIS, [BindingType.U32, BindingType.U32], BindingType.OBJECT_HANDLE)
  substr(start: i32, length: i32): String {
    return unreachable();
  }
  @binding(BindingCall.THIS, [BindingType.U32, BindingType.U32], BindingType.OBJECT_HANDLE)
  substring(start: i32, end: i32): String {
    return unreachable();
  }
  @binding(BindingCall.THIS, [], BindingType.OBJECT_HANDLE)
  trim(): String {
    return unreachable();
  }
  @binding(BindingCall.THIS, [], BindingType.OBJECT_HANDLE)
  trimStart(): String {
    return unreachable();
  }
  @binding(BindingCall.THIS, [], BindingType.OBJECT_HANDLE)
  trimEnd(): String {
    return unreachable();
  }
  @binding(BindingCall.THIS, [BindingType.OBJECT_HANDLE], BindingType.PASS_THRU)
  @operator("==")
  equals(other: String): bool {
    return unreachable();
  }
}
