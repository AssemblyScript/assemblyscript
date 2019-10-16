// The entry file of your WebAssembly module.

@external("app2","sayHello")
declare function sayHello(msg:string):void

@external("env","log")
declare function log<T>(obj:T):void


export function main():void{
  let t=String.fromCharCode(13)
  
  log(t)
  var t2="app1"
  log(t2)
  sayHello(t2)
}