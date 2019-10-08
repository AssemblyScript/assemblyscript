import { Token } from "./parsing";

//@ts-ignore
var globalScope = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;



export function operatorTokenToString(token: Token): string {
  switch (token) {
    case Token.DELETE: return "delete";
    case Token.IN: return "in";
    case Token.INSTANCEOF: return "instanceof";
    case Token.NEW: return "new";
    case Token.TYPEOF: return "typeof";
    case Token.VOID: return "void";
    case Token.YIELD: return "yield";
    case Token.DOT_DOT_DOT: return "...";
    case Token.COMMA: return ",";
    case Token.LESSTHAN: return "<";
    case Token.GREATERTHAN: return ">";
    case Token.LESSTHAN_EQUALS: return "<=";
    case Token.GREATERTHAN_EQUALS: return ">=";
    case Token.EQUALS_EQUALS: return "==";
    case Token.EXCLAMATION_EQUALS: return "!=";
    case Token.EQUALS_EQUALS_EQUALS: return "===";
    case Token.EXCLAMATION_EQUALS_EQUALS: return "!==";
    case Token.PLUS: return "+";
    case Token.MINUS: return "-";
    case Token.ASTERISK_ASTERISK: return "**";
    case Token.ASTERISK: return "*";
    case Token.SLASH: return "/";
    case Token.PERCENT: return "%";
    case Token.PLUS_PLUS: return "++";
    case Token.MINUS_MINUS: return "--";
    case Token.LESSTHAN_LESSTHAN: return "<<";
    case Token.GREATERTHAN_GREATERTHAN: return ">>";
    case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN: return ">>>";
    case Token.AMPERSAND: return "&";
    case Token.BAR: return "|";
    case Token.CARET: return "^";
    case Token.EXCLAMATION: return "!";
    case Token.TILDE: return "~";
    case Token.AMPERSAND_AMPERSAND: return "&&";
    case Token.BAR_BAR: return "||";
    case Token.EQUALS: return "=";
    case Token.PLUS_EQUALS: return "+=";
    case Token.MINUS_EQUALS: return "-=";
    case Token.ASTERISK_EQUALS: return "*=";
    case Token.ASTERISK_ASTERISK_EQUALS: return "**=";
    case Token.SLASH_EQUALS: return "/=";
    case Token.PERCENT_EQUALS: return "%=";
    case Token.LESSTHAN_LESSTHAN_EQUALS: return "<<=";
    case Token.GREATERTHAN_GREATERTHAN_EQUALS: return ">>=";
    case Token.GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS: return ">>>=";
    case Token.AMPERSAND_EQUALS: return "&=";
    case Token.BAR_EQUALS: return "|=";
    case Token.CARET_EQUALS: return "^=";
    default: {
      assert(false);
      return "";
    }
  }
}
// //Define floating points
// //@ts-ignore
// Object.defineProperties(
//   //@ts-ignore
//   globalScope["f32"] = function f32(value) { return Math.fround(value); }
// , {
//   "EPSILON":   { value: Math.fround(1.1920929e-07), writable: false },
//   "MIN_VALUE": { value: Math.fround(1.4012985e-45), writable: false },
//   "MAX_VALUE": { value: Math.fround(3.4028235e+38), writable: false },
//   "MIN_NORMAL_VALUE":  { value:  Math.fround(1.17549435e-38), writable: false },
//   "MIN_SAFE_INTEGER":  { value: -16777215, writable: false },
//   "MAX_SAFE_INTEGER":  { value:  16777215, writable: false }
// });
// //@ts-ignore
// Object.defineProperties(
//   //@ts-ignore
//   globalScope["f64"] = function f64(value) { return + value; }
// , {
//   "EPSILON":   { value: 2.2204460492503131e-16,  writable: false },
//   "MIN_VALUE": { value:                  5e-324, writable: false },
//   "MAX_VALUE": { value: 1.7976931348623157e+308, writable: false },
//   "MIN_NORMAL_VALUE":  { value: 2.2250738585072014e-308 , writable: false },
//   "MIN_SAFE_INTEGER":  { value: -9007199254740991, writable: false },
//   "MAX_SAFE_INTEGER":  { value:  9007199254740991, writable: false }
// });

// import "../../../src/glue/js/float";
// import "../../../src/glue/js/i64";

// export { CommonFlags } from "../../../src/common";

// export { indent, CharCode } from "../../../src/util/index";

// export {  operatorTokenToString, } from "../../../src/tokenizer";