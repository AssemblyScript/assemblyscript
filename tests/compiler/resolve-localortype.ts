// see: https://github.com/AssemblyScript/assemblyscript/issues/1684

function foo<T>(s: T): T { return s; }
export function test(string: string): string {
  return foo<string>(string); // must not conflict
}
