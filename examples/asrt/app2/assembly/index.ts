// The entry file of your WebAssembly module.

@external("env","log")
declare function log<T>(obj:T):void

export function sayHello(msg:string):void{
  log(msg)
  let temp="app2"
  log(temp)
  let temp2=msg+temp
  log(temp2)
  // return "hello"
}