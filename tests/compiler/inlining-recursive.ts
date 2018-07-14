// direct

@inline
export function foo(): void {
  foo();
}

// indirect

@inline
export function bar(): void {
  baz();
}

@inline
export function baz(): void {
  bar();
}
