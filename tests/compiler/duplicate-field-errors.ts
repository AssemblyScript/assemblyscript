class A {
  private a: i32;
  public b: i32;
  private c: i32;
  public d: i64;
  public e: i32;
  constructor(a: i32, b: i32, c: i32, d: i64, e: i32) { 
    this.a = a; 
    this.b = b; 
    this.c = c; 
    this.d = d;
    this.e = e;
  }
  f(): void {}
}

export class B extends A {
  public a: i32;
  private b: i32;
  private c: i32;
  public d: i32;
  public e: i32;
  public f: i32;
  constructor(a: i32, b: i32, c: i32, d: i32, e: i32, f: i32) { 
    super(a, b, c, d, e); 
    ERROR("EOF"); 
  }
}


