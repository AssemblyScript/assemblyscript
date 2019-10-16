import { DynamicLinker, ModuleDefinition } from "./dylinker";

let linker=new DynamicLinker()

linker.asrt.path="../../lib/asrt/build/untouched.wasm"

linker.modules.push(new ModuleDefinition("app2","./app2/build/untouched.wasm"))
linker.modules.push(new ModuleDefinition("app1","./app1/build/untouched.wasm"))


linker.run()
//@ts-ignore
linker.modules[1].exports.main()