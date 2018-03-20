declare namespace A {
  namespace B {
    export namespace C {
      var aVar: i32;
      const aConst: i32;
      const aConstInvalid: i32 = 0; // 1039: Initializers are not allowed in ambient contexts.
      function aFunc(): void;
      function aFuncInvalid(): void {} // 1183: An implementation cannot be declared in ambient contexts.
      enum AnEnum {}
      class AClass {}
    }
    namespace D {
      var aVar: i32;
    }
  }
}
