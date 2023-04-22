// Canonical aliases
export type funcref = ref_func | null;
export type externref = ref_extern | null;
export type anyref = ref_any | null;
export type eqref = ref_eq | null;
export type i31ref = ref_i31 | null;
export type structref = ref_struct | null;
export type arrayref = ref_array | null;
export type stringref = ref_string | null;
export type stringview_wtf8 = ref_stringview_wtf8 | null;
export type stringview_wtf16 = ref_stringview_wtf16 | null;
export type stringview_iter = ref_stringview_iter | null;

@unmanaged
abstract class Ref {
}

@final @unmanaged
export abstract class RefFunc extends Ref {
}

@final @unmanaged
export abstract class RefExtern extends Ref {
}

@final @unmanaged
export abstract class RefAny extends Ref {
}

@final @unmanaged
export abstract class RefEq extends Ref {
}

@final @unmanaged
export abstract class RefI31 extends Ref {
}

@final @unmanaged
export abstract class RefStruct extends Ref {
}

@final @unmanaged
export abstract class RefArray extends Ref {
}

@final @unmanaged
export abstract class RefString extends Ref {
}
