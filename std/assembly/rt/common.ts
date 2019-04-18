// Alignment guarantees

// @ts-ignore: decorator
@inline export const AL_BITS: u32 = 4; // 16 bytes to fit up to v128
// @ts-ignore: decorator
@inline export const AL_SIZE: usize = 1 << <usize>AL_BITS;
// @ts-ignore: decorator
@inline export const AL_MASK: usize = AL_SIZE - 1;

// Extra debugging

// @ts-ignore: decorator
@inline export const DEBUG = true;
