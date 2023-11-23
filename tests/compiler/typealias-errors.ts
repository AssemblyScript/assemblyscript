export function DuplicateTypeAlias(): void {
  type A = i32;
  type A = i32;
}
