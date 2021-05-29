


assert(nameof<NonNullable<u32>>() == nameof<u32>());

assert(nameof<NonNullable<string[] | null>>() == nameof<string[]>());

function takesGeneric<T>(t: T): void {
  if (!isNullable<T>() || t != null){
    // @ts-ignore
    if  (isDefined(t.call)){
      t.call();
    }
  }
}

function callsGeneric<T>(t: T): void {
  if (t != null) {
    takesGeneric<NonNullable<T>>(t); // Would be nice to have a `notNull<T>` here
  }
}

class Tee {
  call(): void {
    let x: i8 = 0;
  }
}

let y: Tee | null = new Tee();

callsGeneric(y);