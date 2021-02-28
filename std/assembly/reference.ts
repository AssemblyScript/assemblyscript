@unmanaged
abstract class Ref {
}

@final @unmanaged
export abstract class Funcref extends Ref {
}

@final @unmanaged
export abstract class Externref extends Ref {
}

@final @unmanaged
export abstract class Anyref extends Ref {
}

@final @unmanaged
export abstract class Eqref extends Ref {
}

@final @unmanaged
export abstract class I31ref extends Ref {
  get(this: i31ref): i32 {
    return i31.get(this);
  }
  getUnsigned(this: i31ref): u32 {
    return <u32>i31.get(this);
  }
}

@final @unmanaged
export abstract class Dataref extends Ref {
}
