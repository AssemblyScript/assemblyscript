class Parent {
  child: Child | null = null;
}
class Child extends Parent { }

new Child();
