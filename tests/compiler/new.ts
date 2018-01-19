class Simple {
  field: i32;
}

class Generic<T> {
  field: T;
}

@global
declare function allocate_memory(size: usize): usize;

export function test(): void {
  var simple = new Simple();
  var generic = new Generic<f64>();
}
