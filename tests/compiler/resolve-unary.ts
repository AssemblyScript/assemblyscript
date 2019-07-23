// prefix
assert(
  (-1).toString()
  ==
  "-1"
);
assert(
  (+1).toString()
  ==
  "1"
);
var a = 1;
assert(
  (++a).toString()
  ==
  "2"
);
assert(
  (--a).toString()
  ==
  "1"
);
assert(
  (!a).toString()
  ==
  "false"
);
assert(
  (!!a).toString()
  ==
  "true"
);
assert(
  (~a).toString()
  ==
  "-2"
);

// postfix
var b = 1;
assert(
  (b++).toString()
  ==
  "1"
);
assert(
  (b--).toString()
  ==
  "2"
);

// overloads
class Foo {
  @operator.prefix("+")
  plus(): string {
    return "+";
  }
  @operator.prefix("-")
  minus(): string {
    return "-";
  }
  @operator.prefix("++")
  prefix_inc(): string {
    return "++i";
  }
  @operator.prefix("--")
  prefix_dec(): string {
    return "--i";
  }
  @operator.prefix("!")
  not(): string {
    return "!";
  }
  @operator.prefix("~")
  bitwise_not(): string {
    return "~";
  }
  @operator.postfix("++")
  postfix_inc(): string  {
    return "i++";
  }
  @operator.postfix("--")
  postfix_dec(): string  {
    return "i--";
  }
}
var foo = new Foo();
assert(
  +foo
  ==
  "+"
);
assert(
  -foo
  ==
  "-"
);
assert(
  (++foo)
  ==
  "++i"
);
assert(
  (--foo)
  ==
  "--i"
);
assert(
  (!foo)
  ==
  "!"
);
assert(
  (~foo)
  ==
  "~"
);
assert(
  (foo++)
  ==
  "i++"
);
assert(
  (foo--)
  ==
  "i--"
);
