// preliminary

var str: string = "hi, I'm a string";
var str123: string = "123";
var str123ab: string = "123ab";
var strab123: string = "ab123";
var strHex: string = "0x10";
var strHexInvalid: string = "0x";
var strHexnInvalid: string = "-0x";
var strHexnnInv: string = "--0x10";
var strHexInvChar: string = "--0x1g";
var str123n: string = "-123";
var strHexn: string = "-0x10";
var strHexp: string = "+0x10";

// exactly once in static memory
assert(changetype<usize>(str) === changetype<usize>("hi, I'm a string"));

assert(str.length == 16);
assert(str.charCodeAt(0) == 0x68);
assert(str.startsWith("hi"));
assert(str.endsWith("string"));
assert(str.includes("I'm"));
assert(str.indexOf(",") == 2);
assert(str.indexOf("x") == -1);

// test parseInt

assert(<i32>parseInt(str123) == <i32>(123));
assert(<i32>parseInt(str123ab) == <i32>(123));
assert(<i32>parseInt(strHex) == <i32>(0x10));
assert(<i32>parseInt(strHex) == <i32>(0x10));

assert(<i32>parseInt(str123n) == <i32>(-123));
assert(<i32>parseInt(strHexn) == <i32>(-0x10));
assert(<i32>parseInt(strHexp) == <i32>(+0x10));

assert(<i32>parseInt(str123, 0) == <i32>(123));
assert(<i32>parseInt(str123, 10) == <i32>(123));
assert(<i32>parseInt(str123, 16) == <i32>(0x123));

assert(isNaN(parseInt(strab123)));
assert(isNaN(parseInt(strHexInvalid)));
assert(isNaN(parseInt(strHexnInvalid)));
assert(isNaN(parseInt(strHexnnInv)));
assert(isNaN(parseInt(strHexInvChar)));

// Unsupported radix
assert(isNaN(parseInt(str123, 1)));
assert(isNaN(parseInt(str123, 37)));

export function getString(): string {
  return str;
}
