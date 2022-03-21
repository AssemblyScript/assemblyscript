export declare function foo(): void; // external , foo

@external("bar")
export declare function two(): void; // external , bar

@external("foo", "baz")
export declare function three(): void; // foo , baz

@external("foo", "var") // foo , var
export declare const var_: i32;
