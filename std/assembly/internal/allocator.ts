/** Number of alignment bits. */
@inline export const AL_BITS: u32 = 3;
/** Number of possible alignment values. */
@inline export const AL_SIZE: usize = 1 << <usize>AL_BITS;
/** Mask to obtain just the alignment bits. */
@inline export const AL_MASK: usize = AL_SIZE - 1;
/** Maximum 32-bit allocation size. */
@inline export const MAX_SIZE_32: usize = 1 << 30; // 1GB
