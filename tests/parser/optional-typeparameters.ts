function a<T=i32>(): T { return 0; }
function a<T,U=i32>(): T { return 0; }
function a<T,U=i32,V>(): T { return 0; } // ERROR 2706
function b<T,U=() => void>(): T { return 0; } // ERROR 1003