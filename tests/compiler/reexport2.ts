export const export2: i32 = 0;
// Intentional loop of `export *`. Should not cause infinite loop.
export * from "./reexport";
export { add as renamed_add_2 } from "./reexport";
