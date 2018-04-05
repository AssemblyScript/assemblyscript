export function i32ArrayArrayElementAccess(a: i32[][]): i32 {
  return a[0][1];
}

export function stringArrayPropertyAccess(a: string[]): i32 {
  return a[0].length;
}

export function stringArrayMethodCall(a: string[]): i32 {
  return a[0].startsWith("");
}

export function stringArrayArrayPropertyAccess(a: string[][]): i32 {
  return a[0][1].length;
}

export function stringArrayArrayMethodCall(a: string[][]): i32 {
  return a[0][1].startsWith("");
}
