let outerVar:i32 = 0;
declare namespace A {
  namespace B {
    export namespace C {
      var aVar: i32;
      outerVar = 42; // 2695: Namespace can only have declarations.
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
