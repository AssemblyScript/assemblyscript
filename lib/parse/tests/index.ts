import * as fs from "fs";
import {
  Type,
  SectionId,
  ExternalKind,
  parse
} from "..";

function onSection(id: SectionId, offset: number, length: number, nameOffset: number, nameLength: number): boolean {
  var name = id == 0 ? "'" + parse.readString(nameOffset, nameLength) + "'" : SectionId[id];
  console.log(name + " section at " + offset + ".." + (offset + length));
  return true;
}

function onType(index: number, form: Type): void {
  console.log("- FunctionType[" + index + "]: " + Type[form]);
}

function onTypeParam(index: number, paramIndex: number, paramType: Type): void {
  console.log("  > param[" + paramIndex + "] -> " + Type[paramType]);
}

function onTypeReturn(index: number, returnIndex: number, returnType: Type): void {
  console.log("  > return[" + returnIndex + "] -> " + Type[returnType]);
}

function onImport(index: number, kind: ExternalKind, moduleOff: number, moduleLen: number, fieldOff: number, fieldLen: number): void {
  var moduleName = parse.readString(moduleOff, moduleLen);
  var fieldName = parse.readString(fieldOff, fieldLen);
  console.log("- Import[" + index + "]: '" + moduleName + "." + fieldName + "'");
}

function onFunctionImport(funIndex: number, type: number): void {
  console.log("  - Function[" + funIndex + "] -> FunctionType[" + type + "]");
}

function onTableImport(tblIndex: number, type: Type, initial: number, maximum: number, flags: number): void {
  console.log("  - Table[" + tblIndex + "] -> " + Type[type] + ": initial=" + initial + ", maximum=" + maximum);
}

function onMemoryImport(memIndex: number, initial: number, maximum: number, flags: number): void {
  console.log("  - Memory[" + memIndex + "]: initial=" + initial + ", maximum=" + maximum);
}

function onGlobalImport(gloIndex: number, type: Type, mutability: number): void {
  console.log("  - Global[" + gloIndex + "]: " + (mutability & 1 ? "mutable " : "const ") + Type[type]);
}

function onMemory(memIndex: number, initial: number, maximum: number, flags: number): void {
  console.log("- Memory[" + memIndex + "]: initial=" + initial + ", maximum=" + maximum);
}

function onFunction(funIndex: number, typeIndex: number): void {
  console.log("- Function[" + funIndex + "] -> FunctionType[" + typeIndex + "]");
}

function onTable(tblIndex: number, type: number, initial: number, maximum: number, flags: number): void {
  console.log("- Table[" + tblIndex + "] -> " + Type[type] + ": initial=" + initial + ", maximum=" + (maximum >>> 0));
}

function onGlobal(gloIndex: number, type: Type, mutability: number): void {
  console.log("- Global[" + gloIndex + "]: " + (mutability & 1 ? "mutable " : "const ") + Type[type]);
}

function onStart(index: number): void {
  console.log("- Start: Function[" + index + "]");
}

function onExport(index: number, kind: ExternalKind, kindIndex: number, fieldOffset: number, fieldLength: number): void {
  var field = parse.readString(fieldOffset, fieldLength);
  console.log("- Export[" + index + "], '" + field + "' -> " + ExternalKind[kind] + "[" + kindIndex + "]");
}

function onSourceMappingURL(offset: number, length: number): void {
  var url = parse.readString(offset, length);
  console.log("- sourceMap: " + url);
}

function onModuleName(offset: number, length: number): void {
  var name = parse.readString(offset, length);
  console.log("- moduleName: " + name);
}

function onFunctionName(index: number, offset: number, length: number): void {
  var name = parse.readString(offset, length);
  console.log(" - Function[" + index + "] name: " + name);
}

function onLocalName(funcIndex: number, index: number, offset: number, length: number): void {
  var name = parse.readString(offset, length);
  console.log("  - Function[" + funcIndex + "].local[" + index + "] name: " + name);
}

[ "../build/index.wasm",
  "libm.wasm"
].forEach((filename: string): void => {
  const binary: Uint8Array = fs.readFileSync(__dirname + "/" + filename);
  console.log("Testing '" + filename + "' ...");
  parse(binary, {
    onSection,
    onType,
    onTypeParam,
    onTypeReturn,
    onImport,
    onFunctionImport,
    onTableImport,
    onMemoryImport,
    onGlobalImport,
    onMemory,
    onFunction,
    onTable,
    onGlobal,
    onStart,
    onExport,
    onSourceMappingURL,
    onModuleName,
    onFunctionName,
    onLocalName
  });
  console.log();
});
