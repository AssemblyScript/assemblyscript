(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (result i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func (param i32)))
 (type $5 (func))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func (param i32 i32 i32) (result i32)))
 (type $8 (func (param i32 i32 i32 i32)))
 (type $9 (func (param i32 i64 i32)))
 (type $10 (func (param i64 i32) (result i32)))
 (type $11 (func (param i32 i64 i32 i32)))
 (type $12 (func (param i32 i32 i64) (result i32)))
 (type $13 (func (param i32 i32 i32 i32 i32) (result i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $exceptions/finallyRan (mut i32) (i32.const 0))
 (global $exceptions/returnInCatchFinallyRan (mut i32) (i32.const 0))
 (global $exceptions/tryCatchFinallyRan (mut i32) (i32.const 0))
 (global $exceptions/tryCatchFinallyResult (mut i32) (i32.const 0))
 (global $exceptions/finallyWithExceptionRan (mut i32) (i32.const 0))
 (global $exceptions/finallyNormalRan (mut i32) (i32.const 0))
 (global $exceptions/Resource.instances (mut i32) (i32.const 0))
 (global $exceptions/Resource.disposed (mut i32) (i32.const 0))
 (global $exceptions/calc (mut i32) (i32.const 0))
 (global $exceptions/outer (mut i32) (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $exceptions/rethrowFinallyRan (mut i32) (i32.const 0))
 (global $exceptions/sm (mut i32) (i32.const 0))
 (global $exceptions/deepNestingOrder (mut i32) (i32.const 192))
 (global $exceptions/counter (mut i32) (i32.const 0))
 (global $exceptions/multiReturnFinallyCount (mut i32) (i32.const 0))
 (global $exceptions/finallyReturnSuppressedExceptionRan (mut i32) (i32.const 0))
 (global $~lib/builtins/usize.MAX_VALUE i32 (i32.const -1))
 (global $~lib/rt/__rtti_base i32 (i32.const 3952))
 (global $~lib/memory/__data_end i32 (i32.const 4012))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 36780))
 (global $~lib/memory/__heap_base i32 (i32.const 36780))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $1 (i32.const 80) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 108) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00a\00b\00o\00r\00t\00\00\00")
 (data $3 (i32.const 140) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00 \00i\00n\00 \00\00\00\00\00")
 (data $4 (i32.const 172) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 204) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00:\00\00\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 236) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00R\00a\00n\00g\00e\00E\00r\00r\00o\00r\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 284) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 352) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 380) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 444) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 572) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 604) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data $13 (i32.const 1004) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $14 (i32.const 2060) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data $15 (i32.const 2160) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $16 (i32.const 2188) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $17 (i32.const 2252) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00E\00r\00r\00o\00r\00\00\00")
 (data $18 (i32.const 2284) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00o\00o\00p\00s\00\00\00\00\00")
 (data $19 (i32.const 2316) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00e\00x\00c\00e\00p\00t\00i\00o\00n\00s\00.\00t\00s\00\00\00")
 (data $20 (i32.const 2364) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00m\00s\00g\00\00\00\00\00\00\00")
 (data $21 (i32.const 2396) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00i\00n\00n\00e\00r\00\00\00")
 (data $22 (i32.const 2428) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00o\00u\00t\00e\00r\00\00\00")
 (data $23 (i32.const 2460) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00e\00r\00r\00o\00r\00\00\00")
 (data $24 (i32.const 2492) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00w\00i\00l\00l\00 \00p\00r\00o\00p\00a\00g\00a\00t\00e\00")
 (data $25 (i32.const 2540) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00c\00u\00s\00t\00o\00m\00")
 (data $26 (i32.const 2572) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00w\00o\00r\00k\00 \00f\00a\00i\00l\00e\00d\00\00\00\00\00\00\00")
 (data $27 (i32.const 2620) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00d\00i\00v\00i\00s\00i\00o\00n\00 \00b\00y\00 \00z\00e\00r\00o\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $28 (i32.const 2684) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00i\00n\00n\00e\00r\00 \00e\00r\00r\00o\00r\00\00\00\00\00\00\00")
 (data $29 (i32.const 2732) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00w\00r\00a\00p\00p\00e\00d\00 \00e\00r\00r\00o\00r\00\00\00")
 (data $30 (i32.const 2780) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $31 (i32.const 2828) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\18\00\00\00s\00u\00m\00 \00e\00x\00c\00e\00e\00d\00e\00d\00\00\00\00\00")
 (data $32 (i32.const 2876) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\10\00\00\00o\00r\00i\00g\00i\00n\00a\00l\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $33 (i32.const 2924) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00r\00e\00t\00h\00r\00o\00w\00n\00:\00 \00\00\00\00\00\00\00\00\00")
 (data $34 (i32.const 2972) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00t\00a\00t\00e\00\00\00")
 (data $35 (i32.const 3020) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00t\001\00,\00\00\00\00\00\00\00")
 (data $36 (i32.const 3052) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00t\002\00,\00\00\00\00\00\00\00")
 (data $37 (i32.const 3084) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00t\003\00,\00\00\00\00\00\00\00")
 (data $38 (i32.const 3116) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00d\00e\00e\00p\00\00\00\00\00")
 (data $39 (i32.const 3148) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00c\003\00,\00\00\00\00\00\00\00")
 (data $40 (i32.const 3180) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00r\00e\00t\00h\00r\00o\00w\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $41 (i32.const 3228) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00f\003\00,\00\00\00\00\00\00\00")
 (data $42 (i32.const 3260) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00c\002\00,\00\00\00\00\00\00\00")
 (data $43 (i32.const 3292) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00f\002\00,\00\00\00\00\00\00\00")
 (data $44 (i32.const 3324) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00c\001\00,\00\00\00\00\00\00\00")
 (data $45 (i32.const 3356) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00f\001\00,\00\00\00\00\00\00\00")
 (data $46 (i32.const 3388) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\000\00\00\00t\001\00,\00t\002\00,\00t\003\00,\00c\003\00,\00f\003\00,\00c\002\00,\00f\002\00,\00f\001\00,\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $47 (i32.const 3468) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00m\00a\00x\00 \00r\00e\00a\00c\00h\00e\00d\00\00\00\00\00\00\00")
 (data $48 (i32.const 3516) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00z\00e\00r\00o\00\00\00\00\00")
 (data $49 (i32.const 3548) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00t\00e\00s\00t\00\00\00\00\00")
 (data $50 (i32.const 3580) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00s\00h\00o\00u\00l\00d\00 \00b\00e\00 \00s\00u\00p\00p\00r\00e\00s\00s\00e\00d\00\00\00\00\00")
 (data $51 (i32.const 3644) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\000\00\00\00t\00h\00i\00s\00 \00s\00h\00o\00u\00l\00d\00 \00b\00e\00 \00c\00a\00t\00c\00h\00a\00b\00l\00e\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $52 (i32.const 3724) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00a\00b\00o\00r\00t\00 \00f\00r\00o\00m\00 \00f\00u\00n\00c\00t\00i\00o\00n\00\00\00\00\00\00\00")
 (data $53 (i32.const 3788) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00t\00y\00p\00e\00 \00t\00e\00s\00t\00\00\00\00\00\00\00\00\00\00\00")
 (data $54 (i32.const 3836) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00c\00u\00s\00t\00o\00m\00 \00e\00r\00r\00o\00r\00 \002\00")
 (data $55 (i32.const 3884) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00i\00n\00v\00a\00l\00i\00d\00 \00d\00o\00w\00n\00c\00a\00s\00t\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $56 (i32.const 3952) "\0e\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00\02\t\00\00 \00\00\00 \00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (tag $error (type $4) (param i32))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/string/String#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 304
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load
  i32.gt_u
  if
   i32.const 0
   i32.const 400
   call $~lib/error/Error#constructor
   throw $error
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 304
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/error/Error#set:name (param $this i32) (param $name i32)
  local.get $this
  local.get $name
  i32.store
  local.get $this
  local.get $name
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/util/number/decimalCount32 (param $value i32) (result i32)
  local.get $value
  i32.const 100000
  i32.lt_u
  if
   local.get $value
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $value
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $value
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $value
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $value
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $value
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $buffer i32) (param $num i32) (param $offset i32)
  (local $t i32)
  (local $r i32)
  (local $d1 i32)
  (local $d2 i32)
  (local $digits1 i64)
  (local $digits2 i64)
  (local $t|9 i32)
  (local $d1|10 i32)
  (local $digits i32)
  (local $digits|12 i32)
  (local $digit i32)
  loop $while-continue|0
   local.get $num
   i32.const 10000
   i32.ge_u
   if
    local.get $num
    i32.const 10000
    i32.div_u
    local.set $t
    local.get $num
    i32.const 10000
    i32.rem_u
    local.set $r
    local.get $t
    local.set $num
    local.get $r
    i32.const 100
    i32.div_u
    local.set $d1
    local.get $r
    i32.const 100
    i32.rem_u
    local.set $d2
    i32.const 604
    local.get $d1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits1
    i32.const 604
    local.get $d2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $num
  i32.const 100
  i32.ge_u
  if
   local.get $num
   i32.const 100
   i32.div_u
   local.set $t|9
   local.get $num
   i32.const 100
   i32.rem_u
   local.set $d1|10
   local.get $t|9
   local.set $num
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 604
   local.get $d1|10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits
   i32.store
  end
  local.get $num
  i32.const 10
  i32.ge_u
  if
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 604
   local.get $num
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits|12
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits|12
   i32.store
  else
   local.get $offset
   i32.const 1
   i32.sub
   local.set $offset
   i32.const 48
   local.get $num
   i32.add
   local.set $digit
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digit
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $buffer i32) (param $num i64) (param $offset i32)
  loop $while-continue|0
   local.get $offset
   i32.const 2
   i32.ge_u
   if
    local.get $offset
    i32.const 2
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 1024
    local.get $num
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $num
    i64.const 8
    i64.shr_u
    local.set $num
    br $while-continue|0
   end
  end
  local.get $offset
  i32.const 1
  i32.and
  if
   local.get $buffer
   i32.const 1024
   local.get $num
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $num i64) (param $base i32) (result i32)
  (local $value i32)
  (local $b64 i64)
  (local $b i64)
  (local $e i32)
  block $~lib/util/number/isPowerOf2<i32>|inlined.0 (result i32)
   local.get $base
   local.set $value
   local.get $value
   i32.popcnt
   i32.const 1
   i32.eq
   br $~lib/util/number/isPowerOf2<i32>|inlined.0
  end
  if
   i32.const 63
   local.get $num
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $base
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $base
  i64.extend_i32_s
  local.set $b64
  local.get $b64
  local.set $b
  i32.const 1
  local.set $e
  loop $while-continue|0
   local.get $num
   local.get $b
   i64.ge_u
   if
    local.get $num
    local.get $b
    i64.div_u
    local.set $num
    local.get $b
    local.get $b
    i64.mul
    local.set $b
    local.get $e
    i32.const 1
    i32.shl
    local.set $e
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $num
   i64.const 1
   i64.ge_u
   if
    local.get $num
    local.get $b64
    i64.div_u
    local.set $num
    local.get $e
    i32.const 1
    i32.add
    local.set $e
    br $while-continue|1
   end
  end
  local.get $e
  i32.const 1
  i32.sub
  return
 )
 (func $~lib/util/number/utoa64_any_core (param $buffer i32) (param $num i64) (param $offset i32) (param $radix i32)
  (local $base i64)
  (local $shift i64)
  (local $mask i64)
  (local $q i64)
  local.get $radix
  i64.extend_i32_s
  local.set $base
  local.get $radix
  local.get $radix
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $radix
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $shift
   local.get $base
   i64.const 1
   i64.sub
   local.set $mask
   loop $do-loop|0
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 2080
    local.get $num
    local.get $mask
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $num
    local.get $shift
    i64.shr_u
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $num
    local.get $base
    i64.div_u
    local.set $q
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 2080
    local.get $num
    local.get $q
    local.get $base
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $q
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/U32#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  local.get $radix
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 304
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 2208
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 2208
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 2208
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 304
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 0
   i32.const 32
   call $~lib/error/Error#constructor
   throw $error
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 2208
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 2208
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 0
   i32.const 32
   call $~lib/error/Error#constructor
   throw $error
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill
  local.get $ptr
  return
 )
 (func $~lib/error/Error#set:message (param $this i32) (param $message i32)
  local.get $this
  local.get $message
  i32.store offset=8
  local.get $this
  local.get $message
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/error/Error#set:stack (param $this i32) (param $stack i32)
  local.get $this
  local.get $stack
  i32.store offset=4
  local.get $this
  local.get $stack
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $exceptions/testTryCatch (result i32)
  (local $e i32)
  try $try|0
   i32.const 0
   i32.const 2304
   call $~lib/error/Error#constructor
   throw $error
  catch $error
   
   local.set $e
   i32.const 1
   return
  end
  unreachable
 )
 (func $~lib/error/Error#get:message (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/util/string/compareImpl (param $str1 i32) (param $index1 i32) (param $str2 i32) (param $index2 i32) (param $len i32) (result i32)
  (local $ptr1 i32)
  (local $ptr2 i32)
  (local $7 i32)
  (local $a i32)
  (local $b i32)
  local.get $str1
  local.get $index1
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr1
  local.get $str2
  local.get $index2
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr2
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $len
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $ptr1
   i32.const 7
   i32.and
   local.get $ptr2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $ptr1
     i64.load
     local.get $ptr2
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $ptr1
     i32.const 8
     i32.add
     local.set $ptr1
     local.get $ptr2
     i32.const 8
     i32.add
     local.set $ptr2
     local.get $len
     i32.const 4
     i32.sub
     local.set $len
     local.get $len
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $len
   local.tee $7
   i32.const 1
   i32.sub
   local.set $len
   local.get $7
   if
    local.get $ptr1
    i32.load16_u
    local.set $a
    local.get $ptr2
    i32.load16_u
    local.set $b
    local.get $a
    local.get $b
    i32.ne
    if
     local.get $a
     local.get $b
     i32.sub
     return
    end
    local.get $ptr1
    i32.const 2
    i32.add
    local.set $ptr1
    local.get $ptr2
    i32.const 2
    i32.add
    local.set $ptr2
    br $while-continue|1
   end
  end
  i32.const 0
  return
 )
 (func $exceptions/testNoThrow (result i32)
  (local $e i32)
  try $try|0
   i32.const 1
   return
  catch $error
   
   local.set $e
   i32.const 2
   return
  end
  unreachable
 )
 (func $exceptions/testFinally
  (local $0 i32)
  try $try_finally|0
  catch_all
   i32.const 1
   global.set $exceptions/finallyRan
   rethrow $try_finally|0
  end
  i32.const 1
  global.set $exceptions/finallyRan
  local.get $0
  i32.const 1
  i32.eq
  if
   return
  end
 )
 (func $exceptions/testNested (result i32)
  (local $e i32)
  (local $e|1 i32)
  try $try|0
   try $try|1
    i32.const 0
    i32.const 2416
    call $~lib/error/Error#constructor
    throw $error
   catch $error
    
    local.set $e
    i32.const 0
    i32.const 2448
    call $~lib/error/Error#constructor
    throw $error
   end
   unreachable
  catch $error
   
   local.set $e|1
   i32.const 42
   return
  end
  unreachable
 )
 (func $exceptions/testReturnInCatchFinally (result i32)
  (local $e i32)
  (local $1 i32)
  (local $2 i32)
  (local $e|3 i32)
  block $finally_dispatch|0
   try $try_finally|0
    try $try|1
     i32.const 0
     i32.const 2480
     call $~lib/error/Error#constructor
     throw $error
    catch $error
     
     local.set $e|3
     i32.const 10
     local.set $2
     i32.const 1
     local.set $1
     br $finally_dispatch|0
    end
    unreachable
   catch_all
    i32.const 1
    global.set $exceptions/returnInCatchFinallyRan
    rethrow $try_finally|0
   end
   unreachable
  end
  i32.const 1
  global.set $exceptions/returnInCatchFinallyRan
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $2
   return
  end
  unreachable
 )
 (func $exceptions/testTryCatchFinally
  (local $e i32)
  (local $1 i32)
  (local $e|2 i32)
  try $try_finally|0
   try $try|1
    i32.const 0
    i32.const 2480
    call $~lib/error/Error#constructor
    throw $error
   catch $error
    
    local.set $e|2
    i32.const 10
    global.set $exceptions/tryCatchFinallyResult
   end
  catch_all
   i32.const 1
   global.set $exceptions/tryCatchFinallyRan
   rethrow $try_finally|0
  end
  i32.const 1
  global.set $exceptions/tryCatchFinallyRan
  local.get $1
  i32.const 1
  i32.eq
  if
   return
  end
 )
 (func $exceptions/innerThrow
  (local $0 i32)
  try $try_finally|0
   i32.const 0
   i32.const 2512
   call $~lib/error/Error#constructor
   throw $error
  catch_all
   i32.const 1
   global.set $exceptions/finallyWithExceptionRan
   rethrow $try_finally|0
  end
  unreachable
 )
 (func $exceptions/testFinallyWithException (result i32)
  (local $e i32)
  try $try|0
   call $exceptions/innerThrow
  catch $error
   
   local.set $e
   global.get $exceptions/finallyWithExceptionRan
   if (result i32)
    i32.const 1
   else
    i32.const 0
   end
   return
  end
  i32.const 0
  return
 )
 (func $exceptions/testFinallyNormalCompletion (result i32)
  (local $0 i32)
  (local $1 i32)
  try $try_finally|0
  catch_all
   i32.const 1
   global.set $exceptions/finallyNormalRan
   rethrow $try_finally|0
  end
  i32.const 1
  global.set $exceptions/finallyNormalRan
  local.get $0
  i32.const 1
  i32.eq
  if
   local.get $1
   return
  end
  global.get $exceptions/finallyNormalRan
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  return
 )
 (func $exceptions/CustomError#set:code (param $this i32) (param $code i32)
  local.get $this
  local.get $code
  i32.store offset=12
 )
 (func $exceptions/testCustomError (result i32)
  (local $e i32)
  try $try|0
   i32.const 0
   i32.const 2560
   i32.const 42
   call $exceptions/CustomError#constructor
   throw $error
  catch $error
   
   local.set $e
   i32.const 1
   return
  end
  unreachable
 )
 (func $exceptions/Resource#set:id (param $this i32) (param $id i32)
  local.get $this
  local.get $id
  i32.store
 )
 (func $exceptions/Resource#doWork (param $this i32)
 )
 (func $exceptions/Resource#dispose (param $this i32)
  global.get $exceptions/Resource.disposed
  i32.const 1
  i32.add
  global.set $exceptions/Resource.disposed
 )
 (func $exceptions/Resource#doWorkThatThrows (param $this i32)
  i32.const 0
  i32.const 2592
  call $~lib/error/Error#constructor
  throw $error
 )
 (func $exceptions/Calculator#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store
 )
 (func $exceptions/Calculator#get:value (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $exceptions/Outer#set:inner (param $this i32) (param $inner i32)
  local.get $this
  local.get $inner
  i32.store
  local.get $this
  local.get $inner
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $exceptions/Outer#get:inner (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $exceptions/Inner#riskyOperation (param $this i32) (result i32)
  (local $e i32)
  try $try|0
   i32.const 0
   i32.const 2704
   call $~lib/error/Error#constructor
   throw $error
  catch $error
   
   local.set $e
   i32.const 0
   i32.const 2752
   call $~lib/error/Error#constructor
   throw $error
  end
  unreachable
 )
 (func $~lib/array/Array<i32>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<i32>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<i32>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<i32>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<i32>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/rt/itcms/__renew (param $oldPtr i32) (param $size i32) (result i32)
  (local $oldObj i32)
  (local $newPtr i32)
  (local $4 i32)
  (local $5 i32)
  local.get $oldPtr
  i32.const 20
  i32.sub
  local.set $oldObj
  local.get $size
  local.get $oldObj
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $oldObj
   local.get $size
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $oldPtr
   return
  end
  local.get $size
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtId
  call $~lib/rt/itcms/__new
  local.set $newPtr
  local.get $newPtr
  local.get $oldPtr
  local.get $size
  local.tee $4
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtSize
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  memory.copy
  local.get $newPtr
  return
 )
 (func $~lib/array/Array<i32>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $exceptions/testRethrowWithFinally (result i32)
  (local $e i32)
  i32.const 0
  global.set $exceptions/rethrowFinallyRan
  try $try|0
   call $exceptions/innerRethrow
  catch $error
   
   local.set $e
   global.get $exceptions/rethrowFinallyRan
   if (result i32)
    i32.const 1
   else
    i32.const 0
   end
   return
  end
  i32.const 0
  return
 )
 (func $exceptions/StateMachine#set:state (param $this i32) (param $state i32)
  local.get $this
  local.get $state
  i32.store
 )
 (func $exceptions/StateMachine#set:errorState (param $this i32) (param $errorState i32)
  local.get $this
  local.get $errorState
  i32.store8 offset=4
 )
 (func $exceptions/StateMachine#get:state (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $exceptions/StateMachine#get:errorState (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $exceptions/Counter#set:count (param $this i32) (param $count i32)
  local.get $this
  local.get $count
  i32.store
 )
 (func $exceptions/Counter#get:count (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $exceptions/testReturnFromTry (result i32)
  (local $e i32)
  (local $1 i32)
  (local $2 i32)
  (local $e|3 i32)
  block $finally_dispatch|0
   try $try_finally|0
    try $try|1
     i32.const 42
     local.set $2
     i32.const 1
     local.set $1
     br $finally_dispatch|0
    catch $error
     
     local.set $e|3
     i32.const -1
     local.set $2
     i32.const 1
     local.set $1
     br $finally_dispatch|0
    end
    unreachable
   catch_all
    rethrow $try_finally|0
   end
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $2
   return
  end
  unreachable
 )
 (func $exceptions/testMultipleReturnsWithFinally (param $x i32) (result i32)
  (local $e i32)
  (local $2 i32)
  (local $3 i32)
  (local $e|4 i32)
  block $finally_dispatch|0
   try $try_finally|0
    try $try|1
     local.get $x
     i32.const 0
     i32.lt_s
     if
      i32.const -1
      local.set $3
      i32.const 1
      local.set $2
      br $finally_dispatch|0
     end
     local.get $x
     i32.const 0
     i32.eq
     if
      i32.const 0
      i32.const 3536
      call $~lib/error/Error#constructor
      throw $error
     end
     local.get $x
     i32.const 100
     i32.gt_s
     if
      i32.const 100
      local.set $3
      i32.const 1
      local.set $2
      br $finally_dispatch|0
     end
     local.get $x
     local.set $3
     i32.const 1
     local.set $2
     br $finally_dispatch|0
    catch $error
     
     local.set $e|4
     i32.const 0
     local.set $3
     i32.const 1
     local.set $2
     br $finally_dispatch|0
    end
    unreachable
   catch_all
    global.get $exceptions/multiReturnFinallyCount
    i32.const 1
    i32.add
    global.set $exceptions/multiReturnFinallyCount
    rethrow $try_finally|0
   end
   unreachable
  end
  global.get $exceptions/multiReturnFinallyCount
  i32.const 1
  i32.add
  global.set $exceptions/multiReturnFinallyCount
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $3
   return
  end
  unreachable
 )
 (func $exceptions/testReturnInFinally (result i32)
  (local $0 i32)
  (local $1 i32)
  block $finally_dispatch|0
   try $try_finally|0
    i32.const 1
    local.set $1
    i32.const 1
    local.set $0
    br $finally_dispatch|0
   catch_all
    i32.const 2
    return
   end
   unreachable
  end
  i32.const 2
  return
 )
 (func $exceptions/testReturnInFinallyOverridesCatch (result i32)
  (local $e i32)
  (local $1 i32)
  (local $2 i32)
  (local $e|3 i32)
  block $finally_dispatch|0
   try $try_finally|0
    try $try|1
     i32.const 0
     i32.const 3568
     call $~lib/error/Error#constructor
     throw $error
    catch $error
     
     local.set $e|3
     i32.const 1
     local.set $2
     i32.const 1
     local.set $1
     br $finally_dispatch|0
    end
    unreachable
   catch_all
    i32.const 2
    return
   end
   unreachable
  end
  i32.const 2
  return
 )
 (func $exceptions/testReturnInFinallySuppressesException (result i32)
  (local $0 i32)
  (local $1 i32)
  try $try_finally|0
   i32.const 0
   i32.const 3600
   call $~lib/error/Error#constructor
   throw $error
  catch_all
   i32.const 1
   global.set $exceptions/finallyReturnSuppressedExceptionRan
   i32.const 42
   return
  end
  unreachable
 )
 (func $exceptions/functionThatAborts
  i32.const 3744
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/builtins/abort
 )
 (func $exceptions/CustomError#get:code (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~instanceof|exceptions/CustomError (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   local.set $1
   local.get $1
   i32.const 6
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $exceptions/calc
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $exceptions/outer
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $exceptions/sm
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $exceptions/deepNestingOrder
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $exceptions/counter
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 400
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2800
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1024
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2080
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
 )
 (func $~lib/error/Error~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=8
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/error/RangeError~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/error/Error~visit
 )
 (func $exceptions/CustomError~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/error/Error~visit
 )
 (func $exceptions/Outer~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $exceptions/Counter
    block $exceptions/StateMachine
     block $~lib/array/Array<i32>
      block $exceptions/Inner
       block $exceptions/Outer
        block $exceptions/Calculator
         block $exceptions/Resource
          block $exceptions/CustomError
           block $~lib/error/RangeError
            block $~lib/error/Error
             block $~lib/arraybuffer/ArrayBufferView
              block $~lib/string/String
               block $~lib/arraybuffer/ArrayBuffer
                block $~lib/object/Object
                 local.get $0
                 i32.const 8
                 i32.sub
                 i32.load
                 br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/error/Error $~lib/error/RangeError $exceptions/CustomError $exceptions/Resource $exceptions/Calculator $exceptions/Outer $exceptions/Inner $~lib/array/Array<i32> $exceptions/StateMachine $exceptions/Counter $invalid
                end
                return
               end
               return
              end
              return
             end
             local.get $0
             local.get $1
             call $~lib/arraybuffer/ArrayBufferView~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/error/Error~visit
            return
           end
           local.get $0
           local.get $1
           call $~lib/error/RangeError~visit
           return
          end
          local.get $0
          local.get $1
          call $exceptions/CustomError~visit
          return
         end
         return
        end
        return
       end
       local.get $0
       local.get $1
       call $exceptions/Outer~visit
       return
      end
      return
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<i32>~visit
     return
    end
    return
   end
   return
  end
  unreachable
 )
 (func $~start
  call $start:exceptions
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 36800
   i32.const 36848
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/string/String#concat (param $this i32) (param $other i32) (result i32)
  (local $thisSize i32)
  (local $otherSize i32)
  (local $outSize i32)
  (local $out i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $other
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $otherSize
  local.get $thisSize
  local.get $otherSize
  i32.add
  local.set $outSize
  local.get $outSize
  i32.const 0
  i32.eq
  if
   i32.const 192
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $thisSize
  memory.copy
  local.get $out
  local.get $thisSize
  i32.add
  local.get $other
  local.get $otherSize
  memory.copy
  local.get $out
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/string/String.__concat (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/error/RangeError#constructor (param $this i32) (param $message i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/error/Error#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 256
  call $~lib/error/Error#set:name
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/builtins/abort (param $message i32) (param $fileName i32) (param $lineNumber i32) (param $columnNumber i32)
  (local $fullMessage i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $message
  if (result i32)
   local.get $message
  else
   i32.const 128
  end
  local.tee $fullMessage
  i32.store
  local.get $fileName
  if
   global.get $~lib/memory/__stack_pointer
   local.get $fullMessage
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 160
   local.get $fileName
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=36
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=32
   local.get $5
   i32.const 224
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=24
   local.get $5
   local.get $lineNumber
   i32.const 10
   call $~lib/number/U32#toString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=20
   local.get $5
   i32.const 224
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   local.get $columnNumber
   i32.const 10
   call $~lib/number/U32#toString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=16
   local.get $5
   call $~lib/string/String.__concat
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   local.tee $fullMessage
   i32.store
  end
  i32.const 0
  local.get $fullMessage
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/error/Error#constructor
  throw $error
 )
 (func $~lib/error/Error#constructor (param $this i32) (param $message i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/error/Error#set:message
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2272
  call $~lib/error/Error#set:name
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 192
  call $~lib/error/Error#set:stack
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $exceptions/testCatchVar (result i32)
  (local $e i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  try $try|0
   i32.const 0
   i32.const 2384
   call $~lib/error/Error#constructor
   throw $error
  catch $error
   
   local.set $e
   local.get $e
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/error/Error#get:message
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  unreachable
 )
 (func $~lib/string/String.__eq (param $left i32) (param $right i32) (result i32)
  (local $leftLength i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.get $right
  i32.eq
  if
   i32.const 1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $right
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  local.set $leftLength
  local.get $leftLength
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $leftLength
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $exceptions/CustomError#constructor (param $this i32) (param $message i32) (param $code i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $code
  call $exceptions/CustomError#set:code
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $message
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/error/Error#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $exceptions/Resource#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $exceptions/Resource#set:id
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  global.get $exceptions/Resource.instances
  i32.const 1
  i32.add
  global.set $exceptions/Resource.instances
  global.get $exceptions/Resource.instances
  call $exceptions/Resource#set:id
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $exceptions/testResourceCleanup (result i32)
  (local $r i32)
  (local $result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $exceptions/Resource#constructor
  local.tee $r
  i32.store
  i32.const 0
  local.set $result
  try $try_finally|0
   local.get $r
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $exceptions/Resource#doWork
   i32.const 1
   local.set $result
  catch_all
   local.get $r
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $exceptions/Resource#dispose
   rethrow $try_finally|0
  end
  local.get $r
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $exceptions/Resource#dispose
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $3
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  local.get $result
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $exceptions/testResourceCleanupWithException (result i32)
  (local $r i32)
  (local $1 i32)
  (local $2 i32)
  (local $e i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  global.set $exceptions/Resource.disposed
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $exceptions/Resource#constructor
  local.tee $r
  i32.store
  try $try|0
   try $try_finally|1
    local.get $r
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    call $exceptions/Resource#doWorkThatThrows
   catch_all
    local.get $r
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    call $exceptions/Resource#dispose
    rethrow $try_finally|1
   end
   local.get $r
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $exceptions/Resource#dispose
   local.get $1
   i32.const 1
   i32.eq
   if
    local.get $2
    local.set $4
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $4
    return
   end
  catch $error
   
   local.set $e
   global.get $exceptions/Resource.disposed
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $exceptions/Calculator#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $exceptions/Calculator#set:value
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $exceptions/Calculator#divide (param $this i32) (param $a i32) (param $b i32) (result i32)
  (local $e i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  try $try|0
   local.get $b
   i32.const 0
   i32.eq
   if
    i32.const 0
    i32.const 2640
    call $~lib/error/Error#constructor
    throw $error
   end
   local.get $a
   local.get $b
   i32.div_s
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  catch $error
   
   local.set $e
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   i32.const -1
   call $exceptions/Calculator#set:value
   i32.const 0
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  unreachable
 )
 (func $exceptions/Calculator#safeDivide (param $this i32) (param $a i32) (param $b i32) (result i32)
  (local $e i32)
  (local $4 i32)
  (local $5 i32)
  (local $e|6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $finally_dispatch|0
   try $try_finally|0
    try $try|1
     local.get $b
     i32.const 0
     i32.eq
     if
      i32.const 0
      i32.const 2640
      call $~lib/error/Error#constructor
      throw $error
     end
     local.get $this
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store
     local.get $7
     local.get $a
     local.get $b
     i32.div_s
     call $exceptions/Calculator#set:value
     local.get $this
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store
     local.get $7
     call $exceptions/Calculator#get:value
     local.set $5
     i32.const 1
     local.set $4
     br $finally_dispatch|0
    catch $error
     
     local.set $e|6
     i32.const -1
     local.set $5
     i32.const 1
     local.set $4
     br $finally_dispatch|0
    end
    unreachable
   catch_all
    rethrow $try_finally|0
   end
   unreachable
  end
  local.get $4
  i32.const 1
  i32.eq
  if
   local.get $5
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  unreachable
 )
 (func $exceptions/Inner#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $exceptions/Outer#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $exceptions/Outer#set:inner
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $exceptions/Inner#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $exceptions/Outer#set:inner
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $exceptions/Outer#process (param $this i32) (result i32)
  (local $e i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  try $try|0
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $exceptions/Outer#get:inner
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $exceptions/Inner#riskyOperation
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  catch $error
   
   local.set $e
   i32.const -1
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  unreachable
 )
 (func $~lib/array/Array<i32>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 2800
   call $~lib/error/RangeError#constructor
   throw $error
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<i32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<i32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<i32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<i32>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/ensureCapacity (param $array i32) (param $newSize i32) (param $alignLog2 i32) (param $canGrow i32)
  (local $oldCapacity i32)
  (local $oldData i32)
  (local $6 i32)
  (local $7 i32)
  (local $newCapacity i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $newData i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $array
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $oldCapacity
  local.get $newSize
  local.get $oldCapacity
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   local.get $newSize
   i32.const 1073741820
   local.get $alignLog2
   i32.shr_u
   i32.gt_u
   if
    i32.const 0
    i32.const 2800
    call $~lib/error/RangeError#constructor
    throw $error
   end
   local.get $array
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   call $~lib/arraybuffer/ArrayBufferView#get:buffer
   local.set $oldData
   local.get $newSize
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $alignLog2
   i32.shl
   local.set $newCapacity
   local.get $canGrow
   if
    local.get $oldCapacity
    i32.const 1
    i32.shl
    local.tee $9
    i32.const 1073741820
    local.tee $10
    local.get $9
    local.get $10
    i32.lt_u
    select
    local.tee $11
    local.get $newCapacity
    local.tee $12
    local.get $11
    local.get $12
    i32.gt_u
    select
    local.set $newCapacity
   end
   local.get $oldData
   local.get $newCapacity
   call $~lib/rt/itcms/__renew
   local.set $newData
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $newData
   local.get $oldData
   i32.ne
   if
    local.get $array
    local.get $newData
    i32.store
    local.get $array
    local.get $newData
    i32.store offset=4
    local.get $array
    local.get $newData
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $array
   local.get $newCapacity
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    i32.const 400
    call $~lib/error/RangeError#constructor
    throw $error
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<i32>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<i32>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<i32>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:length_
  i32.ge_u
  if
   i32.const 0
   i32.const 400
   call $~lib/error/RangeError#constructor
   throw $error
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $value
  i32.const 0
  drop
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $exceptions/testArrayWithExceptions (result i32)
  (local $arr i32)
  (local $sum i32)
  (local $i i32)
  (local $e i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 3
  call $~lib/array/Array<i32>#constructor
  local.tee $arr
  i32.store
  local.get $arr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#__set
  local.get $arr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 1
  i32.const 2
  call $~lib/array/Array<i32>#__set
  local.get $arr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 2
  i32.const 3
  call $~lib/array/Array<i32>#__set
  i32.const 0
  local.set $sum
  try $try|0
   i32.const 0
   local.set $i
   loop $for-loop|1
    local.get $i
    local.get $arr
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    call $~lib/array/Array<i32>#get:length
    i32.lt_s
    if
     local.get $sum
     local.get $arr
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $4
     local.get $i
     call $~lib/array/Array<i32>#__get
     i32.add
     local.set $sum
     local.get $sum
     i32.const 5
     i32.gt_s
     if
      i32.const 0
      i32.const 2848
      call $~lib/error/Error#constructor
      throw $error
     end
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     br $for-loop|1
    end
   end
  catch $error
   
   local.set $e
   local.get $sum
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $exceptions/innerRethrow
  (local $e i32)
  (local $1 i32)
  (local $e|2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  try $try_finally|0
   try $try|1
    i32.const 0
    i32.const 2896
    call $~lib/error/Error#constructor
    throw $error
   catch $error
    
    local.set $e|2
    i32.const 0
    global.set $exceptions/rethrowFinallyRan
    i32.const 0
    i32.const 2944
    local.get $e|2
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    call $~lib/error/Error#get:message
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    call $~lib/string/String.__concat
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    call $~lib/error/Error#constructor
    throw $error
   end
   unreachable
  catch_all
   i32.const 1
   global.set $exceptions/rethrowFinallyRan
   rethrow $try_finally|0
  end
  unreachable
 )
 (func $exceptions/StateMachine#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $exceptions/StateMachine#set:state
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $exceptions/StateMachine#set:errorState
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $exceptions/StateMachine#transition (param $this i32) (param $newState i32)
  (local $e i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  try $try|0
   local.get $newState
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    i32.const 2992
    call $~lib/error/Error#constructor
    throw $error
   end
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $newState
   call $exceptions/StateMachine#set:state
  catch $error
   
   local.set $e
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   i32.const 1
   call $exceptions/StateMachine#set:errorState
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   i32.const -1
   call $exceptions/StateMachine#set:state
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $exceptions/StateMachine#reset (param $this i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  try $try_finally|0
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 0
   call $exceptions/StateMachine#set:state
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 0
   call $exceptions/StateMachine#set:errorState
  catch_all
   rethrow $try_finally|0
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $exceptions/testDeepNesting (result i32)
  (local $e i32)
  (local $1 i32)
  (local $2 i32)
  (local $e|3 i32)
  (local $e|4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $e|7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $e|10 i32)
  (local $e|11 i32)
  (local $e|12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $e|15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $e|18 i32)
  (local $e|19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $e|22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $e|25 i32)
  (local $e|26 i32)
  (local $e|27 i32)
  (local $28 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 192
  global.set $exceptions/deepNestingOrder
  try $try_finally|0
   try $try|7
    global.get $exceptions/deepNestingOrder
    local.set $28
    global.get $~lib/memory/__stack_pointer
    local.get $28
    i32.store
    local.get $28
    i32.const 3040
    call $~lib/string/String.__concat
    global.set $exceptions/deepNestingOrder
    try $try_finally|8
     try $try|11
      global.get $exceptions/deepNestingOrder
      local.set $28
      global.get $~lib/memory/__stack_pointer
      local.get $28
      i32.store
      local.get $28
      i32.const 3072
      call $~lib/string/String.__concat
      global.set $exceptions/deepNestingOrder
      try $try_finally|12
       try $try|13
        global.get $exceptions/deepNestingOrder
        local.set $28
        global.get $~lib/memory/__stack_pointer
        local.get $28
        i32.store
        local.get $28
        i32.const 3104
        call $~lib/string/String.__concat
        global.set $exceptions/deepNestingOrder
        i32.const 0
        i32.const 3136
        call $~lib/error/Error#constructor
        throw $error
       catch $error
        
        local.set $e|25
        global.get $exceptions/deepNestingOrder
        local.set $28
        global.get $~lib/memory/__stack_pointer
        local.get $28
        i32.store
        local.get $28
        i32.const 3168
        call $~lib/string/String.__concat
        global.set $exceptions/deepNestingOrder
        i32.const 0
        i32.const 3200
        call $~lib/error/Error#constructor
        throw $error
       end
       unreachable
      catch_all
       global.get $exceptions/deepNestingOrder
       local.set $28
       global.get $~lib/memory/__stack_pointer
       local.get $28
       i32.store
       local.get $28
       i32.const 3248
       call $~lib/string/String.__concat
       global.set $exceptions/deepNestingOrder
       rethrow $try_finally|12
      end
      unreachable
     catch $error
      
      local.set $e|26
      global.get $exceptions/deepNestingOrder
      local.set $28
      global.get $~lib/memory/__stack_pointer
      local.get $28
      i32.store
      local.get $28
      i32.const 3280
      call $~lib/string/String.__concat
      global.set $exceptions/deepNestingOrder
     end
    catch_all
     global.get $exceptions/deepNestingOrder
     local.set $28
     global.get $~lib/memory/__stack_pointer
     local.get $28
     i32.store
     local.get $28
     i32.const 3312
     call $~lib/string/String.__concat
     global.set $exceptions/deepNestingOrder
     rethrow $try_finally|8
    end
    global.get $exceptions/deepNestingOrder
    local.set $28
    global.get $~lib/memory/__stack_pointer
    local.get $28
    i32.store
    local.get $28
    i32.const 3312
    call $~lib/string/String.__concat
    global.set $exceptions/deepNestingOrder
    local.get $20
    i32.const 1
    i32.eq
    if
     local.get $21
     local.set $28
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $28
     return
    end
   catch $error
    
    local.set $e|27
    global.get $exceptions/deepNestingOrder
    local.set $28
    global.get $~lib/memory/__stack_pointer
    local.get $28
    i32.store
    local.get $28
    i32.const 3344
    call $~lib/string/String.__concat
    global.set $exceptions/deepNestingOrder
   end
  catch_all
   global.get $exceptions/deepNestingOrder
   local.set $28
   global.get $~lib/memory/__stack_pointer
   local.get $28
   i32.store
   local.get $28
   i32.const 3376
   call $~lib/string/String.__concat
   global.set $exceptions/deepNestingOrder
   rethrow $try_finally|0
  end
  global.get $exceptions/deepNestingOrder
  local.set $28
  global.get $~lib/memory/__stack_pointer
  local.get $28
  i32.store
  local.get $28
  i32.const 3376
  call $~lib/string/String.__concat
  global.set $exceptions/deepNestingOrder
  local.get $13
  i32.const 1
  i32.eq
  if
   local.get $14
   local.set $28
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $28
   return
  end
  i32.const 1
  local.set $28
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $28
  return
 )
 (func $exceptions/Counter#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $exceptions/Counter#set:count
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $exceptions/Counter#increment (param $this i32) (result i32)
  (local $e i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  try $try|0
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $exceptions/Counter#get:count
   i32.const 1
   i32.add
   call $exceptions/Counter#set:count
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $exceptions/Counter#get:count
   i32.const 3
   i32.gt_s
   if
    i32.const 0
    i32.const 3488
    call $~lib/error/Error#constructor
    throw $error
   end
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $exceptions/Counter#get:count
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  catch $error
   
   local.set $e
   i32.const -1
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  unreachable
 )
 (func $~lib/string/String#indexOf (param $this i32) (param $search i32) (param $start i32) (result i32)
  (local $searchLen i32)
  (local $len i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $searchStart i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $search
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $~lib/string/String#get:length
  local.set $searchLen
  local.get $searchLen
  i32.eqz
  if
   i32.const 0
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $~lib/string/String#get:length
  local.set $len
  local.get $len
  i32.eqz
  if
   i32.const -1
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $start
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.tee $7
  local.get $len
  local.tee $8
  local.get $7
  local.get $8
  i32.lt_s
  select
  local.set $searchStart
  local.get $len
  local.get $searchLen
  i32.sub
  local.set $len
  loop $for-loop|0
   local.get $searchStart
   local.get $len
   i32.le_s
   if
    local.get $this
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store
    local.get $10
    local.get $searchStart
    local.get $search
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store offset=4
    local.get $10
    i32.const 0
    local.get $searchLen
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $searchStart
     local.set $10
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $10
     return
    end
    local.get $searchStart
    i32.const 1
    i32.add
    local.set $searchStart
    br $for-loop|0
   end
  end
  i32.const -1
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $~lib/string/String#includes (param $this i32) (param $search i32) (param $start i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $search
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $start
  call $~lib/string/String#indexOf
  i32.const -1
  i32.ne
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $exceptions/testCatchAbort (result i32)
  (local $caught i32)
  (local $e i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $caught
  try $try|0
   i32.const 3664
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/builtins/abort
  catch $error
   
   local.set $e
   i32.const 1
   local.set $caught
   local.get $e
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/error/Error#get:message
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 3664
   i32.const 0
   call $~lib/string/String#includes
   i32.eqz
   if
    i32.const 0
    i32.const 2336
    i32.const 515
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $caught
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $exceptions/testCatchRuntimeError (result i32)
  (local $caught i32)
  (local $e i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $caught
  try $try|0
   global.get $~lib/builtins/usize.MAX_VALUE
   i32.const 1
   call $~lib/rt/itcms/__new
   drop
  catch $error
   
   local.set $e
   i32.const 1
   local.set $caught
   local.get $e
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/error/Error#get:message
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/string/String#get:length
   i32.const 0
   i32.gt_s
   i32.eqz
   if
    i32.const 0
    i32.const 2336
    i32.const 531
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $caught
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $exceptions/testCatchAbortFromFunction (result i32)
  (local $caught i32)
  (local $e i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $caught
  try $try|0
   call $exceptions/functionThatAborts
  catch $error
   
   local.set $e
   i32.const 1
   local.set $caught
   local.get $e
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/error/Error#get:message
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 3744
   i32.const 0
   call $~lib/string/String#includes
   i32.eqz
   if
    i32.const 0
    i32.const 2336
    i32.const 548
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $caught
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $exceptions/testCatchVariableType (result i32)
  (local $e i32)
  (local $msg i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  try $try|0
   i32.const 0
   i32.const 3808
   call $~lib/error/Error#constructor
   throw $error
  catch $error
   
   local.set $e
   global.get $~lib/memory/__stack_pointer
   local.get $e
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/error/Error#get:message
   local.tee $msg
   i32.store offset=4
   local.get $msg
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 3808
   call $~lib/string/String.__eq
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  unreachable
 )
 (func $exceptions/testCatchCustomError2 (result i32)
  (local $e i32)
  (local $1 i32)
  (local $custom i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  try $try|0
   i32.const 0
   i32.const 3856
   i32.const 99
   call $exceptions/CustomError#constructor
   throw $error
  catch $error
   
   local.set $e
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $e
   local.tee $1
   i32.store
   local.get $1
   call $~instanceof|exceptions/CustomError
   if (result i32)
    local.get $1
   else
    i32.const 3904
    i32.const 2336
    i32.const 573
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   local.tee $custom
   i32.store offset=4
   local.get $custom
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $3
   call $~lib/error/Error#get:message
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   i32.const 3856
   call $~lib/string/String.__eq
   if (result i32)
    local.get $custom
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    call $exceptions/CustomError#get:code
    i32.const 99
    i32.eq
   else
    i32.const 0
   end
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  unreachable
 )
 (func $start:exceptions
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 80
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 352
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 2160
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  call $exceptions/testTryCatch
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testCatchVar
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 2384
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testNoThrow
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testFinally
  global.get $exceptions/finallyRan
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 48
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testNested
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 63
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testReturnInCatchFinally
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 76
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/returnInCatchFinallyRan
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testTryCatchFinally
  global.get $exceptions/tryCatchFinallyResult
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/tryCatchFinallyRan
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testFinallyWithException
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 112
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testFinallyNormalCompletion
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 124
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testCustomError
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 147
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testResourceCleanup
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 185
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/Resource.disposed
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 186
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testResourceCleanupWithException
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 203
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $exceptions/Calculator#constructor
  global.set $exceptions/calc
  global.get $exceptions/calc
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10
  i32.const 2
  call $exceptions/Calculator#divide
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 237
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/calc
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10
  i32.const 0
  call $exceptions/Calculator#divide
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 238
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/calc
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/Calculator#get:value
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 239
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/calc
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $exceptions/Calculator#set:value
  global.get $exceptions/calc
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 20
  i32.const 4
  call $exceptions/Calculator#safeDivide
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 242
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/calc
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 20
  i32.const 0
  call $exceptions/Calculator#safeDivide
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 243
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $exceptions/Outer#constructor
  global.set $exceptions/outer
  global.get $exceptions/outer
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/Outer#process
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 274
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testArrayWithExceptions
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 296
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testRethrowWithFinally
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 321
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $exceptions/StateMachine#constructor
  global.set $exceptions/sm
  global.get $exceptions/sm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 1
  call $exceptions/StateMachine#transition
  global.get $exceptions/sm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/StateMachine#get:state
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 352
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/sm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/StateMachine#get:errorState
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 353
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/sm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const -5
  call $exceptions/StateMachine#transition
  global.get $exceptions/sm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/StateMachine#get:state
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 356
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/sm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/StateMachine#get:errorState
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 357
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/sm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/StateMachine#reset
  global.get $exceptions/sm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/StateMachine#get:state
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 360
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/sm
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/StateMachine#get:errorState
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 361
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testDeepNesting
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 393
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/deepNestingOrder
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 394
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $exceptions/Counter#constructor
  global.set $exceptions/counter
  global.get $exceptions/counter
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/Counter#increment
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 414
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/counter
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/Counter#increment
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 415
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/counter
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/Counter#increment
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 416
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/counter
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $exceptions/Counter#increment
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 417
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testReturnFromTry
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 429
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $exceptions/multiReturnFinallyCount
  i32.const -5
  call $exceptions/testMultipleReturnsWithFinally
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 453
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/multiReturnFinallyCount
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 454
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $exceptions/testMultipleReturnsWithFinally
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 456
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/multiReturnFinallyCount
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 457
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 50
  call $exceptions/testMultipleReturnsWithFinally
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 459
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/multiReturnFinallyCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 460
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 200
  call $exceptions/testMultipleReturnsWithFinally
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 462
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/multiReturnFinallyCount
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 463
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testReturnInFinally
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 474
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testReturnInFinallyOverridesCatch
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 487
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testReturnInFinallySuppressesException
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 500
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/finallyReturnSuppressedExceptionRan
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 501
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testCatchAbort
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 519
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testCatchRuntimeError
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 535
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testCatchAbortFromFunction
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 552
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testCatchVariableType
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 565
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $exceptions/testCatchCustomError2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 2336
   i32.const 578
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<i32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/number/utoa32 (param $value i32) (param $radix i32) (result i32)
  (local $out i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|7 i32)
  (local $buffer|8 i32)
  (local $num|9 i32)
  (local $offset|10 i32)
  (local $decimals|11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 0
   i32.const 464
   call $~lib/error/RangeError#constructor
   throw $error
  end
  local.get $value
  i32.eqz
  if
   i32.const 592
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   call $~lib/util/number/decimalCount32
   local.set $decimals
   global.get $~lib/memory/__stack_pointer
   local.get $decimals
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store
   local.get $out
   local.set $buffer
   local.get $value
   local.set $num
   local.get $decimals
   local.set $offset
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $buffer
   local.get $num
   local.get $offset
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $value
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|7
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|7
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.set $buffer|8
    local.get $value
    local.set $num|9
    local.get $decimals|7
    local.set $offset|10
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|8
    local.get $num|9
    i64.extend_i32_u
    local.get $offset|10
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    i64.extend_i32_u
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|11
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|11
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $value
    i64.extend_i32_u
    local.get $decimals|11
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $out
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $~lib/object/Object#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
