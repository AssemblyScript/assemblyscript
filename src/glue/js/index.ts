/**
 * JavaScript glue code.
 * @module glue/js
 * @preferred
 *//***/

/// <reference path="./node.d.ts" />

import "./binaryen"; // must be first so portable can pick up the memory implementation
import "../../../std/portable/index";
import "./float";
import "./i64";

import { Module } from "../../module";

Module.prototype.toText = function(this: Module) {
  return new binaryen.Module(this.ref).emitText();
};

Module.prototype.toAsmjs = function(this: Module) {
  return new binaryen.Module(this.ref).emitAsmjs();
};
