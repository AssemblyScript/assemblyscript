type u32 = number;
/** Gets the low 32 bits of the computed 64-bit value. */
export function getLo(): u32;
/** Gets the high 32 bits of the computed 64-bit value. */
export function getHi(): u32;
/** Performs the sign-agnostic count leading zero bits operation. All zero bits are considered leading if the value is zero. */
export function clz(loLeft: u32, hiLeft: u32): void;
/** Performs the sign-agnostic count tailing zero bits operation. All zero bits are considered trailing if the value is zero. */
export function ctz(loLeft: u32, hiLeft: u32): void;
/** Performs the sign-agnostic count number of one bits operation. */
export function popcnt(loLeft: u32, hiLeft: u32): void;
/** Performs the sign-agnostic equals-zero operation. */
export function eqz(loLeft: u32, hiLeft: u32): void;
/** Performs the sign-agnostic addition operation. */
export function add(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the sign-agnostic subtraction operation. */
export function sub(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the sign-agnostic multiplication operation. */
export function mul(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the signed division operation. */
export function div_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the unsigned division operation. */
export function div_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the signed remainder operation. */
export function rem_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the unsigned remainder operation. */
export function rem_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the sign-agnostic bitwise and operation. */
export function and(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the sign-agnostic bitwise or operation. */
export function or(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the sign-agnostic bitwise xor operation. */
export function xor(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the sign-agnostic bitwise shift left operation. */
export function shl(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the signed bitwise shift right operation. */
export function shr_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the unsigned bitwise shift right operation. */
export function shr_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the sign-agnostic rotate left operation. */
export function rotl(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the sign-agnostic rotate right operation. */
export function rotr(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the sign-agnostic compare equal operation. */
export function eq(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the sign-agnostic compare unequal operation. */
export function ne(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the signed less than operation. */
export function lt_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the unsigned less than operation. */
export function lt_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the signed less than or equal operation. */
export function le_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the unsigned less than or equal operation. */
export function le_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the signed greater than operation.*/
export function gt_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the unsigned greater than operation.*/
export function gt_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the signed greater than or equal operation. */
export function ge_s(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
/** Performs the unsigned greater than or equal operation. */
export function ge_u(loLeft: u32, hiLeft: u32, loRight: u32, hiRight: u32): void;
