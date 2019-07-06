
class Foo {
    int: i32;
    float: f32;
    constructor(public str: string){}
}

class Faa extends Foo {
    constructor(str: string, public arr: Array<i32>){
        super(str);
    }
}