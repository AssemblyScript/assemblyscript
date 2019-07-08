
class Foo {
    int: i32;
    float: f32;
    constructor(public str: string){
        let x: i32 = 42 * 64;
    }
}

class Faa extends Foo {
    constructor(str: string, public arr: Array<i32>){
        super(str);
    }
}

interface Fu {
    float: f32;
    int: i32;
}