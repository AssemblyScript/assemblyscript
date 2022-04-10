class ManagedBase {}
@unmanaged class UnmanagedFoo extends ManagedBase {} // AS207

// see: https://github.com/AssemblyScript/assemblyscript/issues/2067

@unmanaged class UnmanagedBase {}
class ManagedBaz {}
class ManagedFoo extends UnmanagedBase { // AS207
  constructor(public baz: ManagedBaz) { super(); }
}

ERROR("EOF");
