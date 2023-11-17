class UseNonExistedGetter {
  set m(v: string) {}
}
new UseNonExistedGetter().m.toString();

class GetSetWithoutDifferenceVisibility {
  public get m1(): i32 {
    return 1;
  }
  private set m1(v: i32) {}

  private get m2(): i32 {
    return 1;
  }
  public set m2(v: i32) {}
}
new GetSetWithoutDifferenceVisibility().m1; // m1 is valid
new GetSetWithoutDifferenceVisibility().m2; // m2 is invalid

ERROR("EOF");
