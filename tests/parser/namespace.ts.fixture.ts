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
// ERROR 1039: "Initializers are not allowed in ambient contexts." in namespace.ts:6:31
// ERROR 1183: "An implementation cannot be declared in ambient contexts." in namespace.ts:8:36
