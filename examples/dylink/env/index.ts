@external("env","_log")
declare function _log(t:number,offset:number):void


export function log<T>(obj:T):void{
    _log(idof<T>()||0,changetype<usize>(obj))
}