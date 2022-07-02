class SomeClass {
  val: i32;
}

const obj = {
  get val(): i32 { // AS100: Not implemented: Getter/setter in object literal
    return 42 as i32;
  },
  set val(v: i32) { // AS100: Not implemented: Getter/setter in object literal
  }
} as SomeClass;

ERROR("EOF");
