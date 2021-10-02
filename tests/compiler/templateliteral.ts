function test_string(): void {
  var a = "a";
  var b = "b";
  assert(`${a}` == "a");
  assert(`${a}${b}` == "ab");
  assert(`(A=${a}, B=${b})` == "(A=a, B=b)");
}
test_string();

function test_integer(): void {
  var a = 1;
  var b = 2;
  assert(`${a}` == "1");
  assert(`${a}${b}` == "12");
  assert(`(A=${a}, B=${b})` == "(A=1, B=2)");
}
test_integer();

function test_float(): void {
  var a = 1.0;
  var b = 2.0;
  assert(`${a}` == "1.0");
  assert(`${a}${b}` == "1.02.0");
  assert(`(A=${a}, B=${b})` == "(A=1.0, B=2.0)");
}
test_float();

function test_fast_paths_string(): void {
  var a = 2;
  var b = "b";
  assert(`${a}` == "2");
  assert(`${b}` == "b");
  assert(`pref${a}` == "pref2");
  assert(`pref${b}` == "prefb");
  assert(`${a}suff` == "2suff");
  assert(`${b}suff` == "bsuff");
  assert(`${a}${b}` == "2b");
}
test_fast_paths_string();

class Ref {
  constructor(public value: i32) {}
  toString(): string {
    return "ref#" + this.value.toString();
  }
}

function test_ref(): void {
  var a = new Ref(1);
  var b = new Ref(2);
  assert(`${a}` == "ref#1");
  assert(`${a}${b}` == "ref#1ref#2");
  assert(`(A=${a}, B=${b})` == "(A=ref#1, B=ref#2)");
}
test_ref();

function tag(parts: TemplateStringsArray, a: i32): string {
  var raw = parts.raw;
  assert(parts.length == 2);
  assert(raw.length == 2);
  assert(parts[0] == "a");
  assert(raw[0] == "a");
  assert(parts[1] == "b");
  assert(raw[1] == "b");
  assert(a == 1);
  return parts[0] + a.toString() + parts[1];
}

namespace ns {
  export function tag(parts: string[] /* ! */, a: i32, b: i32): string {
    assert(!(parts instanceof TemplateStringsArray)); // optimized away
    assert(parts.length == 3);
    assert(parts[0] == "r");
    assert(parts[1] == "d");
    assert(parts[2] == "");
    assert(a == 2);
    assert(b == 2);
    return parts[0] + a.toString() + parts[1] + b.toString();
  }
}

function test_tag(): void {
  assert(tag`a${1}b` == "a1b");
  assert(ns.tag`r${2}d${2}` == "r2d2");
}
// test_tag(); // TODO: Requires ReadonlyArray to be safe

function raw(parts: TemplateStringsArray): string {
  return parts.raw.join("");
}

function test_raw(): void {
  assert(raw`` == "");
  assert(raw`\u` == "\\u");
  assert(raw`\u1` == "\\u1");
  assert(raw`\u1000` == "\\u1000");
}
// test_raw(); // TODO: Requires ReadonlyArray to be safe

class RecursiveObject  {
  constructor(
    public key: string,
    public val: RecursiveObject | null = null
  ) {}
  toString(): string {
    let val = this.val;
    if (!val) return this.key;
    // see: https://github.com/AssemblyScript/assemblyscript/issues/1944
    // trigger general case by wrapping three times below (2x with value)
    return `${this.key}:${val}`;
  }
}

function test_recursive(): void {
  const c = new RecursiveObject("c");
  const b = new RecursiveObject("b", c);
  const a = new RecursiveObject("a", b);
  assert(a.toString() == "a:b:c");
}
test_recursive();
