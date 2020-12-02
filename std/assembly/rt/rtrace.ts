import { BLOCK } from "./common";

export declare function onalloc(s: BLOCK): void;
export declare function onresize(s: BLOCK, oldSize: usize): void;
export declare function onmove(sOld: BLOCK, sNew: BLOCK): void;
export declare function onvisit(s: BLOCK, stackPtr: usize): bool;
export declare function onfree(s: BLOCK): void;
export declare function oninit(heapBase: usize, stackBase: usize, stackSize: usize): void;

if (isDefined(ASC_RTRACE)) oninit(__heap_base, __stack_base, __stack_size);
