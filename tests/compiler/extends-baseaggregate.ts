class A1 {
  private padding0: f64;
  private padding1: f64;
  private c1: C1 | null;
}

class A2 extends A1 { }

class B1 {
  private a1: A1;
}

class C1 {
  private a2: A2;
}

const poolB: B1[] = [];
const poolA: A2[] = [];
poolA.push(new A2());
