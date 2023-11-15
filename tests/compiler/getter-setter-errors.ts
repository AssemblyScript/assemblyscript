class A {
  set m(v: string) {}
}

changetype<A>(0).m.toString();
