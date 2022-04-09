declare const externalValue: i64;
declare function getExternalValue(): i64;

assert(externalValue == 9007199254740991);
assert(getExternalValue() == externalValue);

export const internalValue: i64 = 9007199254740991;

export function getInternalValue(): i64 {
  return internalValue;
}
