class ImplicitWithSuper {
  constructor() {
    super(); // TS2335: 'super' can only be referenced in a derived class.
  }
}
new ImplicitWithSuper();
ImplicitWithSuper.is(1, 1); // TS2339: Property 'is' does not exist on type 'std/object-errors/ImplicitWithSuper'.

class ExplicitWithoutSuper extends Object {
  constructor() {} // TS2377: Constructors for derived classes must contain a 'super' call.
}
new ExplicitWithoutSuper();

ERROR("EOF");
