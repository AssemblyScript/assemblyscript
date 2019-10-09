const someStaticStuff: i32[] = [0];

someStaticStuff;

@external("env","log")
declare function log(s:string,length:i32):void

export function main():void{
    let s="relocatable"
    log(s,s.length)
}
