import * as fs from "fs";
import {
  Type,
  SectionId,
  ExternalKind,
  parse
} from "..";

const testBinary = fs.readFileSync(__dirname + "/libm.wasm");

function onSection(id: SectionId, offset: number, length: number, nameOffset: number, nameLength: number): boolean {
  var name = id == 0 ? parse.readString(nameOffset, nameLength) : SectionId[id];
  console.log(name + " section at " + offset + ".." + (offset + length));
  return true;
}

function onType(index: number, form: Type): void {
  console.log("- FunctionType[" + index + "] is " + Type[form]);
}

function onTypeParam(index: number, paramIndex: number, paramType: Type): void {
  console.log("  > param[" + paramIndex + "] = " + Type[paramType]);
}

function onTypeReturn(index: number, returnIndex: number, returnType: Type): void {
  console.log("  > return[" + returnIndex + "] = " + Type[returnType]);
}

function onImport(index: number, kind: ExternalKind, moduleOff: number, moduleLen: number, fieldOff: number, fieldLen: number): void {
  var moduleName = parse.readString(moduleOff, moduleLen);
  var fieldName = parse.readString(fieldOff, fieldLen);
  console.log("- Import[" + index + "] is '" + moduleName + "." + fieldName + "'");
}

function onFunctionImport(index: number, type: number): void {
  console.log("  > FunctionType[" + type + "]");
}

function onTableImport(index: number, type: Type, initial: number, maximum: number, flags: number): void {
  console.log("  > " + Type[type] + ", initial=" + initial + ", maximum=" + maximum);
}

function onMemoryImport(index: number, initial: number, maximum: number, flags: number): void {
  console.log("  > initial=" + initial + ", maximum=" + maximum);
}

function onGlobalImport(index: number, type: Type, mutability: number): void {
  console.log("  > " + (mutability & 1 ? "mutable " : "const ") + Type[type]);
}

function onMemory(index: number, initial: number, maximum: number, flags: number): void {
  console.log("- Memory[" + index + "]: initial=" + initial + ", maximum=" + maximum);
}

function onFunction(index: number, typeIndex: number): void {
  console.log("- Function[" + index + "]: FunctionType[" + typeIndex + "]");
}

function onGlobal(index: number, type: Type, mutability: number): void {
  console.log("- Global[" + index + "]: " + (mutability & 1 ? "mutable " : "const ") + Type[type]);
}

function onStart(index: number): void {
  console.log("- Start: Function[" + index + "]");
}

function onExport(index: number, kind: ExternalKind, kindIndex: number, fieldOffset: number, fieldLength: number): void {
  var field = parse.readString(fieldOffset, fieldLength);
  console.log("- Export[" + index + "]: '" + field + "' -> " + ExternalKind[kind] + "[" + kindIndex + "]");
}

const result = parse(testBinary, {
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
  onGlobal,
  onStart,
  onExport
});
