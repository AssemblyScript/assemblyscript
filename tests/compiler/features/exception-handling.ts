export function test(): void {
  try {
    throw new Error("hi");
  } catch (e) {
    trace(e.toString());
  }
}
