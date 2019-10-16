// The entry file of your WebAssembly module.

import {log} from "../../env"

@external("app2","sayHello")
declare function sayHello(name:string):string

@external("app2","sayHello2")
declare function sayHello2(msg:Person):string

@external("app2","caps")
declare function caps(name:Person):void

@external("app2","increaseAge")
declare function increaseAge(p:Person):void

class Person{
  name:string
  age:i32
}

const name="app1"
export function main():void{
  let p=new Person()
  p.name="tom"
  p.age=22
  caps(p)
  let resp=sayHello(name)
  log(resp)
  let resp2=sayHello2(p)
  log(resp2)
  increaseAge(p)
  log(p.age)
}