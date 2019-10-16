@external("env","_log")
declare function _log<T>(t:number,obj:T):void

export function log<T>(obj:T):void{
    _log(idof<T>()||0,obj)
}
const staticString = "42";
// const staticArray: i32[] = [ 42 ];
const staticFunction = (): i32 => { return 42; };

export function main():void{
    assert(staticString == "42");
    // assert(staticArray[0] == 42);
    assert(staticFunction() == 42);
    
    // var normalArray: i32[] = [ 43 ];
    // assert(normalArray[0] == 43);
}

