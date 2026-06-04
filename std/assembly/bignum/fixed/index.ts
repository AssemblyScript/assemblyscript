import { u128 } from "../integer/u128";
import { fp128 } from "./fp128";
import { fp256 } from "./fp256";
import { u104, u112, u120, u136, u144, u152, u160, u24, u40, u48, u56, u72, u80, u88, u96, } from './types';

export type fp128x8 = fp128<u8>;
export type fp128x16 = fp128<u16>;
export type fp128x24 = fp128<u24>;
export type fp128x32 = fp128<u32>;
export type fp128x40 = fp128<u40>;
export type fp128x48 = fp128<u48>;
export type fp128x56 = fp128<u56>;
export type fp128x64 = fp128<u64>;
export type fp128x72 = fp128<u72>;
export type fp128x80 = fp128<u80>;

export type fp256x8 = fp256<u8>;
export type fp256x16 = fp256<u16>;
export type fp256x24 = fp256<u24>;
export type fp256x32 = fp256<u32>;
export type fp256x40 = fp256<u40>;
export type fp256x48 = fp256<u48>;
export type fp256x56 = fp256<u56>;
export type fp256x64 = fp256<u64>;
export type fp256x72 = fp256<u72>;
export type fp256x80 = fp256<u80>;
export type fp256x88 = fp256<u88>;
export type fp256x96 = fp256<u96>;
export type fp256x104 = fp256<u104>;
export type fp256x112 = fp256<u112>;
export type fp256x120 = fp256<u120>;
export type fp256x128 = fp256<u128>;
export type fp256x136 = fp256<u136>;
export type fp256x144 = fp256<u144>;
export type fp256x152 = fp256<u152>;
export type fp256x160 = fp256<u160>;

export { fp128, fp256 };
