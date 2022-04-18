class A implements Foo, Bar {
    foo(): void {}
}

interface Foo {
    foo(): void;
}

interface Bar {
    foo(): void;
}

new A();