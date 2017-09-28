/// <reference path="../src/binaryen.d.ts" />
import "../src/glue/js";
import { Type, Module, MemorySegment, BinaryOp } from "../src/binaryen";
import { Target } from "../src/compiler";
import { U64 } from "../src/util";

const mod = Module.create();

mod.setMemory(1, Module.MAX_MEMORY_WASM32, [
  MemorySegment.create(new Uint8Array(4), U64.fromI32(8)),
  MemorySegment.create(new Uint8Array(4), U64.fromI32(12))
], Target.WASM32, "memory");

const add = mod.addFunctionType("iii", Type.I32, [ Type.I32, Type.I32 ]);
mod.addFunction("add", add, [], mod.createReturn(
  mod.createBinary(BinaryOp.AddI32,
    mod.createGetLocal(0, Type.I32),
    mod.createGetLocal(1, Type.I32)
  )
));
mod.addExport("add", "add");

const lit = mod.addFunctionType("I", Type.I64, []);
mod.addFunction("lit", lit, [], mod.createReturn(
  mod.createI64(0, 0x80000000) // I64_MIN
));
mod.addExport("lit", "lit");

mod.addGlobal("42", Type.I32, false, mod.createI32(42));

const aSwitch = mod.addFunctionType("i", Type.I32, []);
mod.addFunction("aSwitch", aSwitch, [], mod.createBlock("", [
  mod.createBlock("a", [
    mod.createBlock("b", [
      mod.createBlock("c", [
        mod.createBlock("d", [
          mod.createSwitch(
            ["a", "b", "c"],
            "d",
            mod.createI32(4)
          )
        ]),
        mod.createReturn(mod.createI32(3))
      ]),
      mod.createReturn(mod.createI32(2))
    ]),
    mod.createReturn(mod.createI32(1))
  ]),
  mod.createReturn(mod.createI32(0))
]));
mod.addExport("aSwitch", "aSwitch");

// mod.optimize();
if (mod.validate())
  _BinaryenModulePrint(mod.ref);
_BinaryenModuleDispose(mod.ref);
