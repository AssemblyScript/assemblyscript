let a: i32 = 0;

class ClassDefaultInit {
  v: i32 = a;
  constructor(a: string) {}
}

new ClassDefaultInit("");
