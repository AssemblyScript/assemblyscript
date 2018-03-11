/** Number of alignment bits. */
export const BITS: u32 = 3;

/** Number of possible alignment values. */
export const SIZE: usize = 1 << <usize>BITS;

/** Mask to obtain just the alignment bits. */
export const MASK: usize = SIZE - 1;
