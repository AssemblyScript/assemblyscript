@unsafe function one(): void {}

one();

class Foo {
  @unsafe static two(): void {}
  @unsafe static threeTwoTimes: i32 = 0;
  @unsafe four(): void {}
  @unsafe fiveTwoTimes: i32 = 0;
}

Foo.two();
Foo.threeTwoTimes;
Foo.threeTwoTimes = 1;

{
  let f = new Foo();
  f.four();
  f.fiveTwoTimes;
  f.fiveTwoTimes = 1;
}

// builtins

load<u32>(0); // unsafe because T can be a a class or v128
store<u32>(0, 0); // always unsafe
