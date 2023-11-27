let outerVar: i32 = 0;
declare namespace A {
  namespace B {
    export namespace C {
      var aVar: i32;
      const aConst: i32;
      const aConstInvalid: i32 = 0;
      function aFunc(): void;
      function aFuncInvalid(): void {}
      enum AnEnum {}
      class AClass {}
    }
    namespace D {
      var aVar: i32;
    }
  }
}
// ERROR 2695: "Namespace can only have declarations." in namespace.ts(6,7+0)
// ERROR 1039: "Initializers are not allowed in ambient contexts." in namespace.ts(8,32+1)
// ERROR 1183: "An implementation cannot be declared in ambient contexts." in namespace.ts(10,37+1)
