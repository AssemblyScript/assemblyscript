import { C, BC, ABC } from "c";
import { E } from "e";
import { F } from "f";
import { AS } from 'as';

export function D(): string {
    return "D";
}

export function CD(): string {
    return C() + D()
    
}

export function BCD(): string {
    return BC() + D();
}

export function ABCD(): string {
    return ABC() + D()
}

export function ABCDE(): string {
    return ABCD() + E();
}

export function ABCDEF(): string {
    return ABCDE() + F();
}


export function ABCDS(): string {
    return AS(ABCD());
}