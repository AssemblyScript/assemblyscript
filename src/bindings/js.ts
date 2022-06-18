import {
  NodeKind,
  DecoratorKind,
  LiteralKind,
  LiteralExpression,
  StringLiteralExpression,
  TemplateLiteralExpression,
  findDecorator
} from "../ast";

import {
  CommonFlags
} from "../common";

import {
  ElementKind,
  Element,
  Program,
  Function,
  Global,
  Class,
  Interface,
  Enum,
  EnumValue,
  Field
} from "../program";

import {
  Type,
  TypeFlags,
  Signature
} from "../types";

import {
  CharCode,
  escapeString,
  indent,
  isIdentifier
} from "../util";

import {
  ExportsWalker
} from "./util";

// Limitations
//
// - Instrumented globals are no longer WebAssembly.Global, hence cannot be
//   imported the same way as non-instrumented globals would allow. Affects both
//   globals imported here and globals imported elsewhere.
//
// - Since little is known about how class imports and exports will behave,
//   there is currently no glue generated for them. In IT there appears to be
//   a concept of protocols that may or may not map in the future. In GC there
//   doesn't appear to be a connection between classes and their methods so far.
//
//   Instead, generated bindings are limited to lifting and lowering of plain
//   objects when the class has no constructor and no non-public elements. In
//   any other sitation an internal or external reference is passed.
//
// - Linking two instrumented modules with separate bindings produces
//   intermediate garbage (i.e. goes through a temporary JS object). Any native
//   mechanism enabling communication between modules directly would help here.
//
// - Cycles between the internal and the external GC cannot be resolved. Using
//   a common GC as envisioned by the GC proposal can help here, but so far it
//   seems that the same limitations as for IT will remain.
//
// - Duplicate Wasm imports don't yet work when instrumentation is required as
//   provided argument types cannot be told apart when these only come in as
//   numbers. It might be possible to modify the binary post compilation, but
//   this has not been attempted yet.
//
// Oddities
//
// - Interface Types `string` will be incompatible with JavaScript `String` and
//   it remains unclear how to proceed on this front. We could either use the IT
//   mechanism and accept potential hazards or keep using unfortunate glue code.
//
// - Functions with a variable number of arguments need some special glue to
//   inform the binary how many arguments have been provided so it can fill in
//   defaults for the omitted arguments. No native mechanism in sight, yet.
//
// - Optional BigInt arguments must be coerced to 0n since JS does not
//   implicitly coerce from `null` or `undefined`. Numbers do, however.
//
// - Generated bindings assume little endian architecture with typed arrays as
//   it appears to be more efficient than using a DataView and BE use cases
//   haven't been seen in the wild so far.
//
// - It is assumed that generated import bindings call JavaScript and that the
//   callee expects a properly coerced integer value, leading to more `>>> 0`
//   coercions than necessary when the import is actually another Wasm module.

/** A JavaScript bindings builder. */
export class JSBuilder extends ExportsWalker {

  /** Builds JavaScript bindings for the specified program. */
  static build(program: Program, esm: bool = true): string {
    return new JSBuilder(program, esm).build();
  }

  private esm: bool;
  private sb: string[] = [];
  private indentLevel: i32 = 0;

  private needsLiftBuffer: bool = false;
  private needsLowerBuffer: bool = false;
  private needsLiftString: bool = false;
  private needsLowerString: bool = false;
  private needsLiftArray: bool = false;
  private needsLowerArray: bool = false;
  private needsLiftTypedArray: bool = false;
  private needsLowerTypedArray: bool = false;
  private needsLiftStaticArray: bool = false;
  private needsLowerStaticArray: bool = false;
  private needsLiftInternref: bool = false;
  private needsLowerInternref: bool = false;
  private needsRetain: bool = false;
  private needsRelease: bool = false;
  private needsNotNull: bool = false;

  private deferredLifts: Set<Element> = new Set();
  private deferredLowers: Set<Element> = new Set();
  private deferredCode: string[] = new Array<string>();

  private exports: string[] = new Array();
  private importMappings: Map<string, i32> = new Map();

  /** Constructs a new JavaScript bindings builder. */
  constructor(program: Program, esm: bool, includePrivate: bool = false) {
    super(program, includePrivate);
    this.esm = esm;
  }

  visitGlobal(name: string, element: Global): void {
    var sb = this.sb;
    var type = element.type;
    this.exports.push(name);
    if (!isPlainValue(type, Mode.EXPORT)) {
      indent(sb, this.indentLevel);
      sb.push(name);
      sb.push(": {\n");
      indent(sb, ++this.indentLevel);
      sb.push("// ");
      sb.push(element.internalName);
      sb.push(": ");
      sb.push(type.toString());
      sb.push("\n");
      indent(sb, this.indentLevel);
      sb.push("valueOf() { return this.value; },\n");
      indent(sb, this.indentLevel);
      sb.push("get value() {\n");
      indent(sb, ++this.indentLevel);
      sb.push("return ");
      this.makeLiftFromValue("exports." + name + ".value", type, sb);
      sb.push(";\n");
      indent(sb, --this.indentLevel);
      sb.push("}");
      if (!element.is(CommonFlags.CONST)) {
        sb.push(",\n");
        indent(sb, this.indentLevel);
        sb.push("set value(value) {\n");
        indent(sb, ++this.indentLevel);
        sb.push("exports.");
        sb.push(name);
        sb.push(".value = ");
        this.makeLowerToValue("value", type, sb);
        sb.push(";\n");
        indent(sb, --this.indentLevel);
        sb.push("}");
      }
      sb.push("\n");
      indent(sb, --this.indentLevel);
      sb.push("},\n");
    }
    this.visitNamespace(name, element);
  }

  visitEnum(name: string, element: Enum): void {
    var sb = this.sb;
    this.exports.push(name);
    indent(sb, this.indentLevel);
    sb.push(name);
    sb.push(": (values => (\n");
    indent(sb, ++this.indentLevel);
    sb.push("// ");
    sb.push(element.internalName);
    sb.push("\n");
    var members = element.members;
    if (members) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let value = _values[i];
        if (value.kind !== ElementKind.ENUMVALUE) continue;
        indent(sb, this.indentLevel);
        sb.push("values[values.");
        sb.push(value.name);
        if (value.is(CommonFlags.INLINED)) {
          sb.push(" = ");
          sb.push(i64_low((<EnumValue>value).constantIntegerValue).toString());
        } else {
          sb.push(" = exports[\"");
          sb.push(escapeString(name + "." + value.name, CharCode.DOUBLEQUOTE));
          sb.push("\"].valueOf()");
        }
        sb.push("] = \"");
        sb.push(escapeString(value.name, CharCode.DOUBLEQUOTE));
        sb.push("\",\n");
      }
    }
    indent(sb, this.indentLevel);
    sb.push("values\n");
    indent(sb, --this.indentLevel);
    sb.push("))({}),\n");
    this.visitNamespace(name, element);
  }

  makeGlobalImport(moduleName: string, name: string, element: Global): void {
    var sb = this.sb;
    var type = element.type;
    indent(sb, this.indentLevel);
    if (isIdentifier(name)) {
      sb.push(name);
    } else {
      sb.push("\"");
      sb.push(escapeString(name, CharCode.DOUBLEQUOTE));
      sb.push("\": ");
    }
    let moduleId = this.ensureModuleId(moduleName);
    if (isPlainValue(type, Mode.IMPORT)) {
      sb.push("(\n");
      indent(sb, this.indentLevel + 1);
      sb.push("// ");
      sb.push(element.internalName);
      sb.push(": ");
      sb.push(element.type.toString());
      sb.push("\n");
      indent(sb, this.indentLevel + 1);
      if (moduleName !== "env") {
        sb.push("__module");
        sb.push(moduleId.toString());
        sb.push(".");
      }
      sb.push(name);
      sb.push("\n");
      indent(sb, this.indentLevel);
      sb.push(")");
    } else {
      sb.push("{\n");
      indent(sb, ++this.indentLevel);
      sb.push("// ");
      sb.push(element.internalName);
      sb.push(": ");
      sb.push(element.type.toString());
      sb.push("\n");
      indent(sb, this.indentLevel);
      sb.push("// not supported: cannot lower before instantiate completes\n");
      indent(sb, --this.indentLevel);
      sb.push("}");
    }
    sb.push(",\n");
  }

  makeFunctionImport(moduleName: string, name: string, element: Function, code: string | null = null): void {
    var sb = this.sb;
    var signature = element.signature;
    indent(sb, this.indentLevel);
    if (isIdentifier(name)) {
      sb.push(name);
    } else {
      sb.push("\"");
      sb.push(escapeString(name, CharCode.DOUBLEQUOTE));
      sb.push("\"");
    }
    if (isPlainFunction(signature, Mode.IMPORT) && !code) {
      sb.push(": (\n");
      indent(sb, this.indentLevel + 1);
      sb.push("// ");
      sb.push(element.internalName);
      sb.push(element.signature.toString());
      sb.push("\n");
      indent(sb, this.indentLevel + 1);
      if (moduleName !== "env") {
        sb.push(moduleName);
        sb.push(".");
      }
      sb.push(name);
      sb.push("\n");
      indent(sb, this.indentLevel);
      sb.push(")");
    } else {
      sb.push("(");
      let parameterTypes = signature.parameterTypes;
      let parameterNames = new Array<string>();
      for (let i = 0, k = parameterTypes.length; i < k; ++i) {
        parameterNames.push(element.getParameterName(i));
      }
      sb.push(parameterNames.join(", "));
      sb.push(") {\n");
      indent(sb, ++this.indentLevel);
      sb.push("// ");
      sb.push(element.internalName);
      sb.push(element.signature.toString());
      sb.push("\n");
      for (let i = 0, k = parameterTypes.length; i < k; ++i) {
        let type = parameterTypes[i];
        if (!isPlainValue(type, Mode.EXPORT)) {
          let name = element.getParameterName(i);
          indent(sb, this.indentLevel);
          sb.push(name);
          sb.push(" = ");
          this.makeLiftFromValue(name, type, sb);
          sb.push(";\n");
        }
      }
      let expr = new Array<string>();
      let moduleId = this.ensureModuleId(moduleName);
      if (code) {
        expr.push("(() => {\n");
        indent(expr, 1);
        expr.push("// @external.js\n");
        indentText(code, 1, expr);
        expr.push("\n})()");
      } else {
        if (moduleName !== "env") {
          expr.push("__module");
          expr.push(moduleId.toString());
          expr.push(".");
        }
        expr.push(name);
        expr.push("(");
        expr.push(parameterNames.join(", "));
        expr.push(")");
      }
      code = expr.join("");
      expr.length = 0;
      indentText(code, this.indentLevel, expr, true);
      code = expr.join("");
      indent(sb, this.indentLevel);
      if (signature.returnType !== Type.void) {
        sb.push("return ");
        this.makeLowerToValue(code, signature.returnType, sb);
        sb.push(";\n");
      } else {
        sb.push(code);
        sb.push(";\n");
      }
      indent(sb, --this.indentLevel);
      sb.push("}");
    }
    sb.push(",\n");
  }

  visitFunction(name: string, element: Function): void {
    if (element.is(CommonFlags.PRIVATE)) return;
    var sb = this.sb;
    var signature = element.signature;
    this.exports.push(name);
    if (!isPlainFunction(signature, Mode.EXPORT)) {
      indent(sb, this.indentLevel);
      sb.push(name);
      sb.push("(");
      let parameterTypes = signature.parameterTypes;
      let numReferences = 0;
      for (let i = 0, k = parameterTypes.length; i < k; ++i) {
        if (parameterTypes[i].isInternalReference) numReferences++;
        if (i > 0) sb.push(", ");
        sb.push(element.getParameterName(i));
      }
      sb.push(") {\n");
      indent(sb, ++this.indentLevel);
      sb.push("// ");
      sb.push(element.internalName);
      sb.push(signature.toString());
      sb.push("\n");
      let releases = new Array<string>();
      for (let i = 0, k = parameterTypes.length; i < k; ++i) {
        let type = parameterTypes[i];
        if (!isPlainValue(type, Mode.IMPORT)) {
          let name = element.getParameterName(i);
          indent(sb, this.indentLevel);
          sb.push(name);
          sb.push(" = ");
          let needsRetainRelease = type.isInternalReference && --numReferences > 0;
          if (needsRetainRelease) {
            this.needsRetain = true;
            this.needsRelease = true;
            sb.push("__retain(");
            releases.push(name);
          }
          this.makeLowerToValue(name, type, sb);
          if (needsRetainRelease) {
            sb.push(")");
          }
          sb.push(";\n");
        }
      }
      if (releases.length) {
        indent(sb, this.indentLevel++);
        sb.push("try {\n");
      }
      if (signature.requiredParameters < parameterTypes.length) {
        indent(sb, this.indentLevel);
        sb.push("exports.__setArgumentsLength(arguments.length);\n");
      }
      const expr = new Array<string>();
      expr.push("exports.");
      expr.push(name);
      expr.push("(");
      for (let i = 0, k = parameterTypes.length; i < k; ++i) {
        if (i > 0) expr.push(", ");
        expr.push(element.getParameterName(i));
      }
      expr.push(")");
      if (signature.returnType !== Type.void) {
        indent(sb, this.indentLevel);
        sb.push("return ");
        this.makeLiftFromValue(expr.join(""), signature.returnType, sb);
      } else {
        indent(sb, this.indentLevel);
        sb.push(expr.join(""));
      }
      sb.push(";\n");
      if (releases.length) {
        indent(sb, this.indentLevel - 1);
        sb.push("} finally {\n");
        for (let i = 0, k = releases.length; i < k; ++i) {
          indent(sb, this.indentLevel);
          sb.push("__release(");
          sb.push(releases[i]);
          sb.push(");\n");
        }
        indent(sb, --this.indentLevel);
        sb.push("}\n");
      }
      indent(sb, --this.indentLevel);
      sb.push("},\n");
    }
    this.visitNamespace(name, element);
  }

  visitClass(name: string, element: Class): void {
    // not implemented
  }

  visitInterface(name: string, element: Interface): void {
    this.visitClass(name, element);
  }

  visitField(name: string, element: Field): void {
    // not implemented
  }

  visitNamespace(name: string, element: Element): void {
    // not implemented
  }

  visitAlias(name: string, element: Element, originalName: string): void {
    // not implemented
    // var sb = this.sb;
    // sb.push("export const ");
    // sb.push(name);
    // sb.push(" = ");
    // sb.push(originalName);
    // sb.push(";\n");
  }

  getExternalCode(element: Function): string | null {
    let decorator = findDecorator(DecoratorKind.EXTERNAL_JS, element.decoratorNodes);
    if (decorator) {
      let args = decorator.args;
      if (args && args.length === 1) {
        let codeArg = args[0];
        if (codeArg.kind === NodeKind.LITERAL) {
          let literal = <LiteralExpression>codeArg;
          if (literal.literalKind === LiteralKind.STRING) {
            return (<StringLiteralExpression>literal).value;
          }
          if (literal.literalKind === LiteralKind.TEMPLATE) {
            let parts = (<TemplateLiteralExpression>literal).parts;
            if (parts.length === 1) {
              return parts[0];
            }
          }
        }
      }
    }
    return null;
  }

  build(): string {
    var exports = this.exports;
    var moduleImports = this.program.moduleImports;
    var program = this.program;
    var options = program.options;
    var sb = this.sb;

    sb.push(""); // placeholder
    indent(sb, this.indentLevel++);
    if (!this.esm) sb.push("export ");
    sb.push("async function instantiate(module, imports = {}) {\n");
    const insertPos = sb.push("") - 1;

    // Instrument module imports. Keeps raw (JS) imports on the respective
    // prototypes and overrides selectively where instrumentation is required.
    indent(sb, this.indentLevel++);
    sb.push("const adaptedImports = {\n");
    let sbLengthBefore = sb.length;
    for (let _keys = Map_keys(moduleImports), i = 0, k = _keys.length; i < k; ++i) {
      let moduleName = _keys[i];
      let moduleId = this.ensureModuleId(moduleName);
      let module = <Map<string, Element>>moduleImports.get(moduleName);
      indent(sb, this.indentLevel);
      if (isIdentifier(moduleName)) {
        sb.push(moduleName);
      } else {
        sb.push("\"");
        sb.push(escapeString(moduleName, CharCode.DOUBLEQUOTE));
        sb.push("\"");
      }
      let resetPos = sb.length;
      sb.push(": Object.assign(Object.create(");
      if (moduleName === "env") {
        sb.push("globalThis");
      } else {
        sb.push("__module");
        sb.push(moduleId.toString());
      }
      sb.push("), ");
      if (moduleName === "env") {
        sb.push("imports.env || {}, ");
      }
      sb.push("{\n");
      ++this.indentLevel;
      let numInstrumented = 0;
      for (let _keys2 = Map_keys(module), j = 0, l = _keys2.length; j < l; ++j) {
        let name = _keys2[j];
        let elem = assert(module.get(name));
        if (elem.kind === ElementKind.FUNCTION) {
          let func = <Function>elem;
          let code = this.getExternalCode(func);
          if (!isPlainFunction(func.signature, Mode.IMPORT) || !isIdentifier(name) || code) {
            this.makeFunctionImport(moduleName, name, <Function>elem, code);
            ++numInstrumented;
          }
        } else if (elem.kind === ElementKind.GLOBAL) {
          let global = <Global>elem;
          if (!isPlainValue(global.type, Mode.IMPORT) || !isIdentifier(name)) {
            this.makeGlobalImport(moduleName, name, global);
            ++numInstrumented;
          }
        }
      }
      --this.indentLevel;
      if (!numInstrumented) {
        sb.length = resetPos;
        if (moduleName === "env") {
          sb.push(": Object.assign(Object.create(globalThis), imports.env || {})");
        } else {
          sb.push(": __module");
          sb.push(moduleId.toString());
        }
        sb.push(",\n");
      } else {
        indent(sb, this.indentLevel);
        sb.push("}),\n");
      }
    }
    --this.indentLevel;
    let hasAdaptedImports = sb.length > sbLengthBefore;
    if (hasAdaptedImports) {
      indent(sb, this.indentLevel);
      sb.push("};\n");
    } else {
      sb.length = sbLengthBefore - 2; // incl. indent
    }

    var mappings = this.importMappings;
    var map = new Array<string>();
    for (let _keys = Map_keys(mappings), i = 0, k = _keys.length; i < k; ++i) {
      let moduleName = _keys[i];
      if (moduleName === "env") {
        map.push("  const env = imports.env;\n");
      } else {
        let moduleId = <i32>mappings.get(moduleName);
        map.push("  const __module");
        map.push(moduleId.toString());
        map.push(" = imports");
        if (isIdentifier(moduleName)) {
          map.push(".");
          map.push(moduleName);
        } else {
          map.push("[\"");
          map.push(escapeString(moduleName, CharCode.DOUBLEQUOTE));
          map.push("\"]");
        }
        map.push(";\n");
      }
    }
    sb[insertPos] = map.join("");

    indent(sb, this.indentLevel);
    sb.push("const { exports } = await WebAssembly.instantiate(module");
    if (hasAdaptedImports) {
      sb.push(", adaptedImports);\n");
    } else {
      sb.push(", imports);\n");
    }
    indent(sb, this.indentLevel);
    sb.push("const memory = exports.memory || imports.env.memory;\n");
    indent(sb, this.indentLevel++);
    sb.push("const adaptedExports = Object.setPrototypeOf({\n");
    sbLengthBefore = sb.length;

    // Instrument module exports. Keeps raw (Wasm) exports on the prototype and
    // overrides selectively where instrumentation is required.
    this.walk();
    --this.indentLevel;
    let hasAdaptedExports = sb.length > sbLengthBefore;
    if (hasAdaptedExports) {
      indent(sb, this.indentLevel);
      sb.push("}, exports);\n");
    } else if (
      this.needsLiftBuffer || this.needsLowerBuffer ||
      this.needsLiftString || this.needsLowerString ||
      this.needsLiftArray || this.needsLowerArray ||
      this.needsLiftTypedArray || this.needsLowerTypedArray ||
      this.needsLiftStaticArray
    ) {
      sb.length = sbLengthBefore - 2; // skip adaptedExports + 1x indent
    } else {
      sb.length = sbLengthBefore - 4; // skip memory and adaptedExports + 2x indent
    }
    // Add external JS code fragments
    var deferredCode = this.deferredCode;
    if (deferredCode.length) {
      for (let i = 0, k = deferredCode.length; i < k; ++i) {
        sb.push(deferredCode[i]);
      }
    }

    // Add the respective lifting and lowering adapters
    if (this.needsLiftBuffer) {
      let objectInstance = program.OBJECTInstance;
      let rtSizeOffset = objectInstance.offsetof("rtSize") - objectInstance.nextMemoryOffset;
      sb.push(`  function __liftBuffer(pointer) {
    if (!pointer) return null;
    return memory.buffer.slice(pointer, pointer + new Uint32Array(memory.buffer)[pointer - ${-rtSizeOffset} >>> 2]);
  }
`);
    }
    if (this.needsLowerBuffer) {
      let arrayBufferId = program.arrayBufferInstance.id;
      sb.push(`  function __lowerBuffer(value) {
    if (value == null) return 0;
    const pointer = exports.__new(value.byteLength, ${arrayBufferId}) >>> 0;
    new Uint8Array(memory.buffer).set(new Uint8Array(value), pointer);
    return pointer;
  }
`);
    }
    if (this.needsLiftString) {
      let objectInstance = program.OBJECTInstance;
      let rtSizeOffset = objectInstance.offsetof("rtSize") - objectInstance.nextMemoryOffset;
      let chunkSize = 1024;
      sb.push(`  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - ${-rtSizeOffset} >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > ${chunkSize}) string += String.fromCharCode(...memoryU16.subarray(start, start += ${chunkSize}));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
`);
    }
    if (this.needsLowerString) {
      let stringId = program.stringInstance.id;
      sb.push(`  function __lowerString(value) {
    if (value == null) return 0;
    const
      length = value.length,
      pointer = exports.__new(length << 1, ${stringId}) >>> 0,
      memoryU16 = new Uint16Array(memory.buffer);
    for (let i = 0; i < length; ++i) memoryU16[(pointer >>> 1) + i] = value.charCodeAt(i);
    return pointer;
  }
`);
    }
    if (this.needsLiftArray) {
      let dataStartOffset = program.arrayBufferViewInstance.offsetof("dataStart");
      let lengthOffset = program.arrayBufferViewInstance.nextMemoryOffset;
      sb.push(`  function __liftArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      memoryU32 = new Uint32Array(memory.buffer),
      dataStart = memoryU32[pointer + ${dataStartOffset} >>> 2],
      length = memoryU32[pointer + ${lengthOffset} >>> 2],
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(dataStart + (i << align >>> 0));
    return values;
  }
`);
    }
    if (this.needsLowerArray) {
      let arrayBufferId = program.arrayBufferInstance.id;
      let arrayBufferViewInstance = program.arrayBufferViewInstance;
      let arraySize = arrayBufferViewInstance.nextMemoryOffset + 4; // + length
      let bufferOffset = arrayBufferViewInstance.offsetof("buffer");
      let dataStartOffset = arrayBufferViewInstance.offsetof("dataStart");
      let byteLengthOffset = arrayBufferViewInstance.offsetof("byteLength");
      let lengthOffset = byteLengthOffset + 4;
      sb.push(`  function __lowerArray(lowerElement, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, ${arrayBufferId})) >>> 0,
      header = exports.__pin(exports.__new(${arraySize}, id)) >>> 0,
      memoryU32 = new Uint32Array(memory.buffer);
    memoryU32[header + ${bufferOffset} >>> 2] = buffer;
    memoryU32[header + ${dataStartOffset} >>> 2] = buffer;
    memoryU32[header + ${byteLengthOffset} >>> 2] = length << align;
    memoryU32[header + ${lengthOffset} >>> 2] = length;
    for (let i = 0; i < length; ++i) lowerElement(buffer + (i << align >>> 0), values[i]);
    exports.__unpin(buffer);
    exports.__unpin(header);
    return header;
  }
`);
    }
    if (this.needsLiftTypedArray) {
      let arrayBufferViewInstance = program.arrayBufferViewInstance;
      let dataStartOffset = arrayBufferViewInstance.offsetof("dataStart");
      let byteLengthOffset = arrayBufferViewInstance.offsetof("byteLength");
      sb.push(`  function __liftTypedArray(constructor, pointer) {
    if (!pointer) return null;
    const memoryU32 = new Uint32Array(memory.buffer);
    return new constructor(
      memory.buffer,
      memoryU32[pointer + ${dataStartOffset} >>> 2],
      memoryU32[pointer + ${byteLengthOffset} >>> 2] / constructor.BYTES_PER_ELEMENT
    ).slice();
  }
`);
    }
    if (this.needsLowerTypedArray) {
      let arrayBufferId = program.arrayBufferInstance.id;
      let arrayBufferViewInstance = program.arrayBufferViewInstance;
      let size = arrayBufferViewInstance.nextMemoryOffset;
      let bufferOffset = arrayBufferViewInstance.offsetof("buffer");
      let dataStartOffset = arrayBufferViewInstance.offsetof("dataStart");
      let byteLengthOffset = arrayBufferViewInstance.offsetof("byteLength");
      sb.push(`  function __lowerTypedArray(constructor, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, ${arrayBufferId})) >>> 0,
      header = exports.__new(${size}, id) >>> 0,
      memoryU32 = new Uint32Array(memory.buffer);
    memoryU32[header + ${bufferOffset} >>> 2] = buffer;
    memoryU32[header + ${dataStartOffset} >>> 2] = buffer;
    memoryU32[header + ${byteLengthOffset} >>> 2] = length << align;
    new constructor(memory.buffer, buffer, length).set(values);
    exports.__unpin(buffer);
    return header;
  }
`);
    }
    if (this.needsLiftStaticArray) {
      let objectInstance = program.OBJECTInstance;
      let rtSizeOffset = objectInstance.offsetof("rtSize") - objectInstance.nextMemoryOffset;
      sb.push(`  function __liftStaticArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      length = new Uint32Array(memory.buffer)[pointer - ${-rtSizeOffset} >>> 2] >>> align,
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(pointer + (i << align >>> 0));
    return values;
  }
`);
    }
    if (this.needsLowerStaticArray) {
      sb.push(`  function __lowerStaticArray(lowerElement, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, id)) >>> 0;
    for (let i = 0; i < length; i++) lowerElement(buffer + (i << align >>> 0), values[i]);
    exports.__unpin(buffer);
    return buffer;
  }
`);
    }
    if (this.needsLiftInternref) {
      this.needsRetain = true;
      this.needsRelease = true;
      sb.push(`  const registry = new FinalizationRegistry(__release);
  class Internref extends Number {}
  function __liftInternref(pointer) {
    if (!pointer) return null;
    const sentinel = new Internref(__retain(pointer));
    registry.register(sentinel, pointer);
    return sentinel;
  }
`);
    }
    if (this.needsLowerInternref) {
      sb.push(`  function __lowerInternref(value) {
    if (value == null) return 0;
    if (value instanceof Internref) return value.valueOf();
    throw TypeError("internref expected");
  }
`);
    }
    if (this.needsRetain || this.needsRelease) {
      sb.push(`  const refcounts = new Map();
`);
    }
    if (this.needsRetain) {
      sb.push(`  function __retain(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount) refcounts.set(pointer, refcount + 1);
      else refcounts.set(exports.__pin(pointer), 1);
    }
    return pointer;
  }
`);
    }
    if (this.needsRelease) {
      sb.push(`  function __release(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount === 1) exports.__unpin(pointer), refcounts.delete(pointer);
      else if (refcount) refcounts.set(pointer, refcount - 1);
      else throw Error(\`invalid refcount '\${refcount}' for reference '\${pointer}'\`);
    }
  }
`);
    }
    if (this.needsNotNull) {
      sb.push(`  function __notnull() {
    throw TypeError("value must not be null");
  }
`);
    }

    var exportStart = options.exportStart;
    if (exportStart) {
      sb.push(`  exports.${exportStart}();\n`);
    }

    if (hasAdaptedExports) {
      sb.push("  return adaptedExports;\n}\n");
    } else {
      sb.push("  return exports;\n}\n");
    }
    --this.indentLevel;
    assert(this.indentLevel === 0);

    if (this.esm) {
      sb.push("export const {\n  ");
      for (let i = 0, k = exports.length; i < k; ++i) {
        if (i > 0) sb.push(",\n  ");
        sb.push(exports[i]);
      }
      sb.push(`
} = await (async url => instantiate(
  await (async () => {
    try {
      return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url));
    } catch {
      return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url));
    }
  })(), {
`);
      let needsMaybeDefault = false;
      let importExpr = new Array<string>();
      for (let _keys = Map_keys(mappings), i = 0, k = _keys.length; i < k; ++i) {
        let moduleName = _keys[i];
        if (moduleName === "env") {
          indent(sb, 2);
          sb.push("env: globalThis,\n");
        } else {
          let moduleId = this.ensureModuleId(moduleName);
          indent(sb, 2);
          if (isIdentifier(moduleName)) {
            sb.push(moduleName);
          } else {
            sb.push("\"");
            sb.push(escapeString(moduleName, CharCode.DOUBLEQUOTE));
            sb.push("\"");
          }
          sb.push(": __maybeDefault(__import");
          sb.push(moduleId.toString());
          sb.push("),\n");
          importExpr.push("import * as __import");
          importExpr.push(moduleId.toString());
          importExpr.push(" from \"");
          importExpr.push(escapeString(moduleName, CharCode.DOUBLEQUOTE));
          importExpr.push("\";\n");
          needsMaybeDefault = true;
        }
      }
      sb[0] = importExpr.join("");
      sb.push(`  }
))(new URL("${escapeString(options.basenameHint, CharCode.DOUBLEQUOTE)}.wasm", import.meta.url));
`);
      if (needsMaybeDefault) {
        sb.push(`function __maybeDefault(module) {
  return typeof module.default === "object" && Object.keys(module).length == 1
    ? module.default
    : module;
}
`);
      }
    }
    return sb.join("");
  }

  ensureModuleId(moduleName: string): i32 {
    if (moduleName === "env") return -1;
    var importMap = this.importMappings;
    let moduleId = importMap.has(moduleName)
      ? i32(importMap.get(moduleName))
      : importMap.size;
    importMap.set(moduleName, moduleId);
    return moduleId;
  }

  isPlainObject(clazz: Class): bool {
    // A plain object does not inherit and does not have a constructor or private properties
    if (clazz.base) return false;
    var members = clazz.members;
    if (members) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let member = _values[i];
        if (member.isAny(CommonFlags.PRIVATE | CommonFlags.PROTECTED)) return false;
        if (member.is(CommonFlags.CONSTRUCTOR)) {
          // a generated constructor is ok
          if (member.declaration.range !== this.program.nativeRange) return false;
        }
      }
    }
    return true;
  }

  /** Lifts a WebAssembly value to a JavaScript value. */
  makeLiftFromValue(name: string, type: Type, sb: string[] = this.sb): void {
    if (type.isInternalReference) {
      const clazz = assert(type.getClassOrWrapper(this.program));
      if (clazz.extends(this.program.arrayBufferInstance.prototype)) {
        sb.push("__liftBuffer(");
        this.needsLiftBuffer = true;
      } else if (clazz.extends(this.program.stringInstance.prototype)) {
        sb.push("__liftString(");
        this.needsLiftString = true;
      } else if (clazz.extends(this.program.arrayPrototype)) {
        let valueType = clazz.getArrayValueType();
        sb.push("__liftArray(");
        this.makeLiftFromMemory(valueType, sb);
        sb.push(", ");
        sb.push(valueType.alignLog2.toString());
        sb.push(", ");
        this.needsLiftArray = true;
      } else if (clazz.extends(this.program.staticArrayPrototype)) {
        let valueType = clazz.getArrayValueType();
        sb.push("__liftStaticArray(");
        this.makeLiftFromMemory(valueType, sb);
        sb.push(", ");
        sb.push(valueType.alignLog2.toString());
        sb.push(", ");
        this.needsLiftStaticArray = true;
      } else if (clazz.extends(this.program.arrayBufferViewInstance.prototype)) {
        sb.push("__liftTypedArray(");
        if (clazz.name === "Uint64Array") {
          sb.push("BigUint64Array");
        } else if (clazz.name === "Int64Array") {
          sb.push("BigInt64Array");
        } else {
          sb.push(clazz.name); // TODO: what if extended?
        }
        sb.push(", ");
        this.needsLiftTypedArray = true;
      } else if (this.isPlainObject(clazz)) {
        sb.push("__liftRecord");
        sb.push(clazz.id.toString());
        sb.push("(");
        if (!this.deferredLifts.has(clazz)) {
          this.deferredLifts.add(clazz);
          let prevIndentLevel = this.indentLevel;
          this.indentLevel = 1;
          this.deferredCode.push(this.makeLiftRecord(clazz));
          this.indentLevel = prevIndentLevel;
        }
      } else {
        sb.push("__liftInternref(");
        this.needsLiftInternref = true;
      }
      sb.push(name);
      if (!name.startsWith("new Uint32Array(")) {
        // no need to coerce when lifting with indirection
        sb.push(" >>> 0");
      }
      sb.push(")");
    } else {
      sb.push(name);
      if (type.isUnsignedIntegerValue && type.size === 32) {
        sb.push(" >>> 0");
      } else if (type === Type.bool) {
        sb.push(" !== 0");
      }
    }
  }

  /** Lowers a JavaScript value to a WebAssembly value. */
  makeLowerToValue(name: string, type: Type, sb: string[] = this.sb): void {
    if (type.isInternalReference) {
      const clazz = assert(type.getClass());
      if (clazz.extends(this.program.arrayBufferInstance.prototype)) {
        sb.push("__lowerBuffer(");
        this.needsLowerBuffer = true;
      } else if (clazz.extends(this.program.stringInstance.prototype)) {
        sb.push("__lowerString(");
        this.needsLowerString = true;
      } else if (clazz.extends(this.program.arrayPrototype)) {
        let valueType = clazz.getArrayValueType();
        sb.push("__lowerArray(");
        this.makeLowerToMemory(valueType, sb);
        sb.push(", ");
        sb.push(clazz.id.toString());
        sb.push(", ");
        sb.push(clazz.getArrayValueType().alignLog2.toString());
        sb.push(", ");
        this.needsLowerArray = true;
      } else if (clazz.extends(this.program.staticArrayPrototype)) {
        let valueType = clazz.getArrayValueType();
        sb.push("__lowerStaticArray(");
        this.makeLowerToMemory(valueType, sb);
        sb.push(", ");
        sb.push(clazz.id.toString());
        sb.push(", ");
        sb.push(clazz.getArrayValueType().alignLog2.toString());
        sb.push(", ");
        this.needsLowerStaticArray = true;
      } else if (clazz.extends(this.program.arrayBufferViewInstance.prototype)) {
        let valueType = clazz.getArrayValueType();
        sb.push("__lowerTypedArray(");
        if (valueType === Type.u64) {
          sb.push("BigUint64Array");
        } else if (valueType === Type.i64) {
          sb.push("BigInt64Array");
        } else {
          sb.push(clazz.name); // TODO: what if extended?
        }
        sb.push(", ");
        sb.push(clazz.id.toString());
        sb.push(", ");
        sb.push(clazz.getArrayValueType().alignLog2.toString());
        sb.push(", ");
        this.needsLowerTypedArray = true;
      } else if (this.isPlainObject(clazz)) {
        sb.push("__lowerRecord");
        sb.push(clazz.id.toString());
        sb.push("(");
        if (!this.deferredLowers.has(clazz)) {
          this.deferredLowers.add(clazz);
          let prevIndentLevel = this.indentLevel;
          this.indentLevel = 1;
          this.deferredCode.push(this.makeLowerRecord(clazz));
          this.indentLevel = prevIndentLevel;
        }
      } else {
        sb.push("__lowerInternref(");
        this.needsLowerInternref = true;
      }
      sb.push(name);
      sb.push(")");
      if (!type.is(TypeFlags.NULLABLE)) {
        this.needsNotNull = true;
        sb.push(" || __notnull()");
      }
    } else {
      sb.push(name); // basic value
      if (type.isIntegerValue && type.size === 64) {
        sb.push(" || 0n");
      } else if (type === Type.bool) {
        // may be stored to an Uint8Array, make sure to store 1/0
        sb.push(" ? 1 : 0");
      }
    }
  }

  /** Lifts a WebAssembly memory address to a JavaScript value. */
  makeLiftFromMemory(valueType: Type, sb: string[] = this.sb, target: string | null = null): void {
    if (!target) {
      sb.push("pointer => ");
      target = "pointer";
    }
    if (valueType.isInternalReference) {
      let expr = new Array<string>();
      expr.push("new Uint32Array(memory.buffer)[");
      expr.push(target);
      expr.push(" >>> 2]");
      this.makeLiftFromValue(expr.join(""), valueType, sb);
    } else {
      if (valueType === Type.i8) {
        sb.push("new Int8Array(memory.buffer)[");
      } else if (valueType === Type.u8 || valueType === Type.bool) {
        sb.push("new Uint8Array(memory.buffer)[");
      } else if (valueType === Type.i16) {
        sb.push("new Int16Array(memory.buffer)[");
      } else if (valueType === Type.u16) {
        sb.push("new Uint16Array(memory.buffer)[");
      } else if (valueType === Type.i32 || valueType === Type.isize32) {
        sb.push("new Int32Array(memory.buffer)[");
      } else if (valueType === Type.u32 || valueType === Type.usize32) {
        sb.push("new Uint32Array(memory.buffer)[");
      } else if (valueType === Type.i64 || valueType === Type.isize64) {
        sb.push("new BigInt64Array(memory.buffer)[");
      } else if (valueType === Type.u64 || valueType === Type.usize64) {
        sb.push("new BigUint64Array(memory.buffer)[");
      } else if (valueType === Type.f32) {
        sb.push("new Float32Array(memory.buffer)[");
      } else if (valueType === Type.f64) {
        sb.push("new Float64Array(memory.buffer)[");
      } else {
        sb.push("{ throw Error(\"unsupported type\"); }");
        return;
      }
      sb.push(target);
      sb.push(" >>> ");
      sb.push(valueType.alignLog2.toString());
      sb.push("]");
      if (valueType === Type.bool) {
        sb.push(" !== 0");
      }
    }
  }

  /** Lowers a JavaScript value to a WebAssembly memory address. */
  makeLowerToMemory(valueType: Type, sb: string[] = this.sb, targetName: string | null = null, valueName: string | null = null): void {
    let skipTail = true;
    if (!targetName  || !valueName) {
      sb.push("(pointer, value) => { ");
      targetName = "pointer";
      valueName = "value";
      skipTail = false;
    }
    if (valueType.isInternalReference) {
      sb.push("new Uint32Array(memory.buffer)[");
    } else if (valueType === Type.i8) {
      sb.push("new Int8Array(memory.buffer)[");
    } else if (valueType === Type.u8 || valueType === Type.bool) {
      sb.push("new Uint8Array(memory.buffer)[");
    } else if (valueType === Type.i16) {
      sb.push("new Int16Array(memory.buffer)[");
    } else if (valueType === Type.u16) {
      sb.push("new Uint16Array(memory.buffer)[");
    } else if (valueType === Type.i32 || valueType === Type.isize32) {
      sb.push("new Int32Array(memory.buffer)[");
    } else if (valueType === Type.u32 || valueType === Type.usize32) {
      sb.push("new Uint32Array(memory.buffer)[");
    } else if (valueType === Type.i64 || valueType === Type.isize64) {
      sb.push("new BigInt64Array(memory.buffer)[");
    } else if (valueType === Type.u64 || valueType === Type.usize64) {
      sb.push("new BigUint64Array(memory.buffer)[");
    } else if (valueType === Type.f32) {
      sb.push("new Float32Array(memory.buffer)[");
    } else if (valueType === Type.f64) {
      sb.push("new Float64Array(memory.buffer)[");
    } else {
      if (skipTail) {
        sb.push("(() => { throw Error(\"unsupported type\") })()");
      } else {
        sb.push("throw Error(\"unsupported type\"); }");
      }
      return;
    }
    sb.push(targetName);
    sb.push(" >>> ");
    sb.push(valueType.alignLog2.toString());
    sb.push("] = ");
    this.makeLowerToValue(valueName, valueType, sb);
    if (!skipTail) sb.push("; }");
  }

  makeLiftRecord(clazz: Class): string {
    assert(this.isPlainObject(clazz));
    var sb = new Array<string>();
    indent(sb, this.indentLevel);
    sb.push("function __liftRecord");
    sb.push(clazz.id.toString());
    sb.push("(pointer) {\n");
    indent(sb, ++this.indentLevel);
    sb.push("// ");
    sb.push(clazz.type.toString());
    sb.push("\n");
    indent(sb, this.indentLevel);
    sb.push("// Hint: Opt-out from lifting as a record by providing an empty constructor\n");
    indent(sb, this.indentLevel);
    sb.push("if (!pointer) return null;\n");
    indent(sb, this.indentLevel++);
    sb.push("return {\n");
    var members = clazz.members;
    if (members) {
      for (let _keys = Map_keys(members), i = 0, k = _keys.length; i < k; ++i) {
        let memberName = _keys[i];
        let member = assert(members.get(memberName));
        if (member.kind !== ElementKind.FIELD) continue;
        let field = <Field>member;
        indent(sb, this.indentLevel);
        sb.push(field.name);
        sb.push(": ");
        this.makeLiftFromMemory(field.type, sb, "pointer + " + field.memoryOffset.toString());
        sb.push(",\n");
      }
    }
    indent(sb, --this.indentLevel);
    sb.push("};\n");
    indent(sb, --this.indentLevel);
    sb.push("}\n");
    return sb.join("");
  }

  makeLowerRecord(clazz: Class): string {
    assert(this.isPlainObject(clazz));
    var sb = new Array<string>();
    indent(sb, this.indentLevel);
    sb.push("function __lowerRecord");
    sb.push(clazz.id.toString());
    sb.push("(value) {\n");
    indent(sb, ++this.indentLevel);
    sb.push("// ");
    sb.push(clazz.type.toString());
    sb.push("\n");
    indent(sb, this.indentLevel);
    sb.push("// Hint: Opt-out from lowering as a record by providing an empty constructor\n");
    indent(sb, this.indentLevel);
    sb.push("if (value == null) return 0;\n");
    indent(sb, this.indentLevel);
    sb.push("const pointer = exports.__pin(exports.__new(");
    sb.push(clazz.nextMemoryOffset.toString());
    sb.push(", ");
    sb.push(clazz.id.toString());
    sb.push("));\n");
    var members = clazz.members;
    if (members) {
      for (let _keys = Map_keys(members), i = 0, k = _keys.length; i < k; ++i) {
        let memberName = _keys[i];
        let member = assert(members.get(memberName));
        if (member.kind !== ElementKind.FIELD) continue;
        let field = <Field>member;
        indent(sb, this.indentLevel);
        this.makeLowerToMemory(field.type, sb, "pointer + " + field.memoryOffset.toString(), "value." + memberName);
        sb.push(";\n");
      }
    }
    indent(sb, this.indentLevel);
    sb.push("exports.__unpin(pointer);\n");
    indent(sb, this.indentLevel);
    sb.push("return pointer;\n");
    indent(sb, --this.indentLevel);
    sb.push("}\n");
    return sb.join("");
  }
}

// Helpers

enum Mode {
  IMPORT,
  EXPORT
}

function isPlainValue(type: Type, kind: Mode): bool {
  if (kind === Mode.IMPORT) {
    // requires coercion of undefined to 0n
    if (type.isIntegerValue && type.size === 64) return false;
    // may be stored to an Uint8Array, make sure to store 1/0
    if (type === Type.bool) return false;
  } else {
    // requires coercion from signed to unsigned
    if (type.isUnsignedIntegerValue && type.size === 32) return false;
    // requires coercion from 1/0 to true/false
    if (type === Type.bool) return false;
  }
  return !type.isInternalReference;
}

function isPlainFunction(signature: Signature, mode: Mode): bool {
  var parameterTypes = signature.parameterTypes;
  var inverseMode = mode === Mode.IMPORT ? Mode.EXPORT : Mode.IMPORT;
  for (let i = 0, k = parameterTypes.length; i < k; ++i) {
    if (!isPlainValue(parameterTypes[i], inverseMode)) return false;
  }
  if (!isPlainValue(signature.returnType, mode)) return false;
  return true;
}

function indentText(text: string, indentLevel: i32, sb: string[], butFirst: bool = false): void {
  var lineStart = 0;
  var length = text.length;
  var pos = 0;
  while (pos < length) {
    if (text.charCodeAt(pos) === CharCode.LINEFEED) {
      if (butFirst) butFirst = false;
      else indent(sb, indentLevel);
      sb.push(text.substring(lineStart, lineStart = pos + 1));
    }
    ++pos;
  }
  if (lineStart < length) {
    if (!butFirst) indent(sb, indentLevel);
    sb.push(text.substring(lineStart));
  }
}
