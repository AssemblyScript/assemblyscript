export * from "./wasi_snapshot_preview1";

// A WASI-wide reusable temporary buffer to store and work with out values. Must
// be large enough to fit any operation it is used in, i.e. process/writeString.
// @ts-ignore: decorator
@lazy export const tempbuf = memory.data(4 * sizeof<usize>());
