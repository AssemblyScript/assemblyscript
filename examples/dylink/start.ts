import { DynamicLinker, ModuleDefinition } from "./dylinker";

let linker=new DynamicLinker()

linker.modules.push(new ModuleDefinition("app2","./app2/build/untouched.wasm"))
linker.modules.push(new ModuleDefinition("app1","./app1/build/untouched.wasm"))


linker.run()
//@ts-ignore
linker.modules[1].exports.main()

if(linker.rtrace.active){
    let leakCount=linker.rtrace.check()
    if (leakCount){
        console.log("Found",leakCount,"memory leaks")
    }else{
        console.log("No Memory Leaks found")
    }
}else{
    console.log("rtrace not active")
}