class X {

  // polymorphic 'this' type can be returned from methods
  doSomething(): this {
    return this;
  }

  // polymorphic 'this' type can be used by properties
  get self(): this {
    return this;
  }

  // TODO: implement polymorphic 'this' type for fields to make the following code work:
  // _foo: this = this;
  // get foo(): this {
  //   return this._foo;
  // }
  // set foo(value: this) {
  //   this._foo = value;
  // }

}

class Y extends X {
  doSomethingElse(): string {
    return "You made it!";
  }
}

const y1 = new Y().doSomething();
assert(y1.doSomethingElse() == "You made it!");

const y2 = new Y().self;
assert(y2.doSomethingElse() == "You made it!");

// const y3 = new Y().foo;
// assert(y3.doSomethingElse() == "You made it!");
