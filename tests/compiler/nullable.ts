class Example {}

function notNullable(a: Example): void {}

notNullable(null);

export function test(): void {
  let value: Example | null = new Example();
  if (value != null) {
    // value = null;
    true && (value = null);
    // "TS2322: Type 'nullable/Example | null' is not assignable to type 'nullable/Example'.",
    notNullable(value);
  }
}

ERROR("EOF");
