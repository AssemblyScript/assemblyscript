// The entry file of your WebAssembly module.

import {log} from "../../env"

export function sayHello(name:string):string{
  return "hello "+name
}

export function sayHello2(p:Person):string{
  let c=new SomeOther()
  c.id=5
  return "hello "+p.name
}

export function increaseAge(p:Person):void{
  p.age++
}

export function caps(p:Person):void{
  let initial=p.name.charCodeAt(0)
  if(initial >90){
    initial-=32
  }
  p.name=p.name.replace(p.name.charAt(0),String.fromCharCode(initial))
}

class SomeOther{
  id:i32
}

class Person{
  name:string
  age:i32
}