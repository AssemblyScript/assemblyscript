export class ManagedBase {}
@unmanaged export class UnmanagedFoo extends ManagedBase {} // AS207

// see: https://github.com/AssemblyScript/assemblyscript/issues/2067

@unmanaged export class UnmanagedBase {}
export class ManagedBaz {}
export class ManagedFoo extends UnmanagedBase { // AS207
  constructor(public baz: ManagedBaz) { super(); }
}

ERROR("EOF");
