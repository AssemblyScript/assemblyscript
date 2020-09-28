import { BLOCK } from "./common";

export declare function onalloc(s: BLOCK): void;
export declare function onresize(s: BLOCK, oldSize: usize): void;
export declare function onmove(sOld: BLOCK, sNew: BLOCK): void;
export declare function onincrement(s: BLOCK): void;
export declare function ondecrement(s: BLOCK): void;
export declare function onfree(s: BLOCK): void;
