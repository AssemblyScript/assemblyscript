import { Type, SectionId, ExternalKind } from "./common";
export { Type, SectionId, ExternalKind };

/** Cached compiled parser. */
var compiled: WebAssembly.Module | null = null;

declare var WASM_DATA: string; // injected by webpack
if (typeof WASM_DATA !== "string") WASM_DATA = require("fs").readFileSync(__dirname + "/../build/index.wasm", "base64");

/** Options specified to the parser. The `onSection` callback determines the sections being evaluated in detail. */
export interface ParseOptions {
  /** Called with each section in the binary. Returning `true` evaluates the section. */
  onSection?(id: SectionId, payloadOff: number, payloadLen: number, nameOff: number, nameLen: number): boolean;
  /** Called with each function type if the type section is evaluated. */
  onType?(index: number, form: number): void;
  /** Called with each function parameter if the type section is evaluated. */
  onTypeParam?(index: number, paramIndex: number, paramType: Type): void;
  /** Called with each function return type if the type section is evaluated. */
  onTypeReturn?(index: number, returnIndex: number, returnType: Type): void;
  /** Called with each import if the import section is evaluated. */
  onImport?(index: number, kind: ExternalKind, moduleOff: number, moduleLen: number, fieldOff: number, fieldLen: number): void;
  /** Called with each function import if the import section is evaluated. */
  onFunctionImport?(index: number, type: number): void;
  /** Called with each table import if the import section is evaluated. */
  onTableImport?(index: number, type: Type, initial: number, maximum: number, flags: number): void;
  /** Called with each memory import if the import section is evaluated. */
  onMemoryImport?(index: number, initial: number, maximum: number, flags: number): void;
  /** Called with each global import if the import section is evaluated. */
  onGlobalImport?(index: number, type: Type, mutability: number): void;
  /** Called with each memory if the memory section is evaluated.*/
  onMemory?(index: number, initial: number, maximum: number, flags: number): void;
  /** Called with each function if the function section is evaluated. */
  onFunction?(index: number, typeIndex: number): void;
  /** Called with each table if the table section is evaluated.*/
  onTable?(index: number, type: Type, initial: number, maximum: number, flags: number): void;
  /** Called with each global if the global section is evaluated. */
  onGlobal?(index: number, type: Type, mutability: number): void;
  /** Called with the start function index if the start section is evaluated. */
  onStart?(index: number): void;
  /** Called with each export if the export section is evaluated. */
  onExport?(index: number, kind: ExternalKind, kindIndex: number, nameOff: number, nameLen: number): void;
  /** Called with the source map URL if the 'sourceMappingURL' section is evaluated. */
  onSourceMappingURL?(offset: number, length: number): void;
  /** Called with the module name if present and the 'name' section is evaluated. */
  onModuleName?(offset: number, length: number): void;
  /** Called with each function name if present and the 'name' section is evaluated. */
  onFunctionName?(index: number, offset: number, length: number): void;
  /** Called with each local name if present and the 'name' section is evaluated. */
  onLocalName?(funcIndex: number, index: number, offset: number, length: number): void;
}

/** Parses the contents of a WebAssembly binary according to the specified options. */
export function parse(binary: Uint8Array, options?: ParseOptions): void {
  if (!options) options = {};

  // compile the parser if not yet compiled
  if (!compiled) compiled = new WebAssembly.Module(base64_decode(WASM_DATA));

  // use the binary as the parser's memory
  var nBytes = binary.length;
  var nPages = ((nBytes + 0xffff) & ~0xffff) >> 16;
  var memory = new WebAssembly.Memory({ initial: nPages });
  var buffer = new Uint8Array(memory.buffer);
  buffer.set(binary);

  // provide a way to read strings from memory
  parse.readString = (offset: number, length: number): string => utf8_read(buffer, offset, offset + length);

  // instantiate the parser and return its exports
  var imports = {
    env: {
      memory
    },
    options: {}
  };
  [ "onSection",
    "onType",
    "onTypeParam",
    "onTypeReturn",
    "onImport",
    "onFunctionImport",
    "onTableImport",
    "onMemoryImport",
    "onGlobalImport",
    "onMemory",
    "onFunction",
    "onTable",
    "onGlobal",
    "onExport",
    "onStart",
    "onSourceMappingURL",
    "onModuleName",
    "onFunctionName",
    "onLocalName"
  ].forEach((name: string): void => imports.options[name] = options[name] || function() {});
  var instance = new WebAssembly.Instance(compiled, imports);
  instance.exports.parse(0, nBytes);
}

export declare namespace parse {
  /** Utility function for reading an UTF8 encoded string from memory while parsing. */
  function readString(offset: number, length: number): string;
}

// see: https://github.com/dcodeIO/protobuf.js/tree/master/lib/utf8
function utf8_read(buffer: Uint8Array, start: number, end: number): string {
  var len = end - start;
  if (len < 1) return "";
  var parts: string[] | null = null,
      chunk: number[] = [],
      i = 0, // char offset
      t = 0; // temporary
  while (start < end) {
    t = buffer[start++];
    if (t < 128) {
      chunk[i++] = t;
    } else if (t > 191 && t < 224) {
      chunk[i++] = (t & 31) << 6 | buffer[start++] & 63;
    } else if (t > 239 && t < 365) {
      t = ((t & 7) << 18 | (buffer[start++] & 63) << 12 | (buffer[start++] & 63) << 6 | buffer[start++] & 63) - 0x10000;
      chunk[i++] = 0xD800 + (t >> 10);
      chunk[i++] = 0xDC00 + (t & 1023);
    } else {
      chunk[i++] = (t & 15) << 12 | (buffer[start++] & 63) << 6 | buffer[start++] & 63;
    }
    if (i > 8191) {
      (parts || (parts = [])).push(String.fromCharCode.apply(String, chunk));
      i = 0;
    }
  }
  if (parts) {
    if (i) parts.push(String.fromCharCode.apply(String, chunk.slice(0, i)));
    return parts.join("");
  }
  return String.fromCharCode.apply(String, chunk.slice(0, i));
}

// see: https://github.com/dcodeIO/protobuf.js/tree/master/lib/base64
function base64_decode(string: string): Uint8Array {
  var length = string.length;
  if (length) {
    let n = 0,
        p = length;
    while (--p % 4 > 1 && string.charCodeAt(p) === 61) ++n;
    length = Math.ceil(length * 3) / 4 - n;
  }
  var buffer = new Uint8Array(length);
  var j = 0, o = 0, t = 0;
  for (let i = 0, k = string.length; i < k;) {
    let c = string.charCodeAt(i++);
    if (c === 61 && j > 1) break;
    if ((c = s64[c]) === undefined) throw Error();
    switch (j) {
      case 0: { t = c; j = 1; break; }
      case 1: { buffer[o++] = t << 2 | (c & 48) >> 4; t = c; j = 2; break; }
      case 2: { buffer[o++] = (t & 15) << 4 | (c & 60) >> 2; t = c; j = 3; break; }
      case 3: { buffer[o++] = (t & 3) << 6 | c; j = 0; break; }
    }
  }
  if (j === 1) throw Error();
  return buffer;
}

var s64 = new Array(123);
for (let i = 0; i < 64;) s64[i < 26 ? i + 65 : i < 52 ? i + 71 : i < 62 ? i - 4 : i - 59 | 43] = i++;
