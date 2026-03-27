(module
 (type $0 (func (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func))
 (type $4 (func (param i32 i32) (result i32)))
 (type $5 (func (param i32)))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func (result f64)))
 (type $8 (func (param i32 i32 i32) (result i32)))
 (type $9 (func (result i64)))
 (type $10 (func (result f32)))
 (type $11 (func (param i32 i32 i32 i32)))
 (type $12 (func (param i32 i32 i64) (result i32)))
 (type $13 (func (param i64) (result i32)))
 (type $14 (func (param f32) (result i32)))
 (type $15 (func (param f64) (result i32)))
 (type $16 (func (param i32 i64 f32 f64) (result i32)))
 (type $17 (func (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $18 (func (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/__closure_env (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $closure-stress/counter1 (mut i32) (i32.const 0))
 (global $closure-stress/counter2 (mut i32) (i32.const 0))
 (global $closure-stress/addTo10 (mut i32) (i32.const 0))
 (global $closure-stress/greaterThan5 (mut i32) (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $closure-stress/add5 (mut i32) (i32.const 0))
 (global $closure-stress/add10 (mut i32) (i32.const 0))
 (global $closure-stress/double (mut i32) (i32.const 0))
 (global $closure-stress/triple (mut i32) (i32.const 0))
 (global $closure-stress/addThenDouble (mut i32) (i32.const 0))
 (global $closure-stress/callCount (mut i32) (i32.const 0))
 (global $closure-stress/fact (mut i32) (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $closure-stress/addResult (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 3472))
 (global $~lib/memory/__data_end i32 (i32.const 3556))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 36324))
 (global $~lib/memory/__heap_base i32 (i32.const 36324))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data $1 (i32.const 44) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $2 (i32.const 108) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 208) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 236) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 300) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 352) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 380) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 444) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00c\00l\00o\00s\00u\00r\00e\00-\00s\00t\00r\00e\00s\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 508) "\1c\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 540) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 572) "\1c\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00")
 (data $13 (i32.const 604) "\1c\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\08\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00")
 (data $14 (i32.const 636) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 668) "\1c\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00")
 (data $16 (i32.const 700) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00")
 (data $17 (i32.const 732) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\t\00\00\00\00\00\00\00\00\00\00\00")
 (data $18 (i32.const 764) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\n\00\00\00\00\00\00\00\00\00\00\00")
 (data $19 (i32.const 796) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\08\00\00\00\0b\00\00\00\00\00\00\00\00\00\00\00")
 (data $20 (i32.const 828) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00")
 (data $21 (i32.const 860) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\00\r\00\00\00\00\00\00\00\00\00\00\00")
 (data $22 (i32.const 892) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00")
 (data $23 (i32.const 924) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\0f\00\00\00\00\00\00\00\00\00\00\00")
 (data $24 (i32.const 956) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00")
 (data $25 (i32.const 988) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00")
 (data $26 (i32.const 1020) "\1c\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\08\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00")
 (data $27 (i32.const 1052) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\13\00\00\00\00\00\00\00\00\00\00\00")
 (data $28 (i32.const 1084) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $29 (i32.const 1132) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $30 (i32.const 1180) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00")
 (data $31 (i32.const 1212) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\15\00\00\00\00\00\00\00\00\00\00\00")
 (data $32 (i32.const 1244) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00")
 (data $33 (i32.const 1276) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $34 (i32.const 1404) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\17\00\00\00\00\00\00\00\00\00\00\00")
 (data $35 (i32.const 1436) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00")
 (data $36 (i32.const 1468) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\19\00\00\00\00\00\00\00\00\00\00\00")
 (data $37 (i32.const 1500) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\1a\00\00\00\00\00\00\00\00\00\00\00")
 (data $38 (i32.const 1532) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\00\1b\00\00\00\00\00\00\00\00\00\00\00")
 (data $39 (i32.const 1564) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00")
 (data $40 (i32.const 1596) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\00\1d\00\00\00\00\00\00\00\00\00\00\00")
 (data $41 (i32.const 1628) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\1e\00\00\00\00\00\00\00\00\00\00\00")
 (data $42 (i32.const 1660) "\1c\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\08\00\00\00\1f\00\00\00\00\00\00\00\00\00\00\00")
 (data $43 (i32.const 1692) "\1c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data $44 (i32.const 1724) "\1c\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00!\00\00\00\00\00\00\00\00\00\00\00")
 (data $45 (i32.const 1756) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\"\00\00\00\00\00\00\00\00\00\00\00")
 (data $46 (i32.const 1788) "\1c\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\08\00\00\00#\00\00\00\00\00\00\00\00\00\00\00")
 (data $47 (i32.const 1820) "\1c\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\08\00\00\00$\00\00\00\00\00\00\00\00\00\00\00")
 (data $48 (i32.const 1852) "\1c\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\08\00\00\00%\00\00\00\00\00\00\00\00\00\00\00")
 (data $49 (i32.const 1884) "\1c\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\08\00\00\00&\00\00\00\00\00\00\00\00\00\00\00")
 (data $50 (i32.const 1916) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $51 (i32.const 1980) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00\00\00\00\00\00\00\00\00")
 (data $52 (i32.const 2044) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00\00\00\00\00\00\00")
 (data $53 (i32.const 2092) "\1c\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\08\00\00\00\'\00\00\00\00\00\00\00\00\00\00\00")
 (data $54 (i32.const 2124) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00(\00\00\00\00\00\00\00\00\00\00\00")
 (data $55 (i32.const 2156) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00)\00\00\00\00\00\00\00\00\00\00\00")
 (data $56 (i32.const 2188) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00*\00\00\00\00\00\00\00\00\00\00\00")
 (data $57 (i32.const 2220) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00+\00\00\00\00\00\00\00\00\00\00\00")
 (data $58 (i32.const 2252) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00,\00\00\00\00\00\00\00\00\00\00\00")
 (data $59 (i32.const 2284) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00-\00\00\00\00\00\00\00\00\00\00\00")
 (data $60 (i32.const 2316) "\1c\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\08\00\00\00.\00\00\00\00\00\00\00\00\00\00\00")
 (data $61 (i32.const 2348) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00/\00\00\00\00\00\00\00\00\00\00\00")
 (data $62 (i32.const 2380) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $63 (i32.const 2412) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\001\00\00\00\00\00\00\00\00\00\00\00")
 (data $64 (i32.const 2444) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\002\00\00\00\00\00\00\00\00\00\00\00")
 (data $65 (i32.const 2476) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\003\00\00\00\00\00\00\00\00\00\00\00")
 (data $66 (i32.const 2508) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\004\00\00\00\00\00\00\00\00\00\00\00")
 (data $67 (i32.const 2540) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\005\00\00\00\00\00\00\00\00\00\00\00")
 (data $68 (i32.const 2572) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\006\00\00\00\00\00\00\00\00\00\00\00")
 (data $69 (i32.const 2604) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\007\00\00\00\00\00\00\00\00\00\00\00")
 (data $70 (i32.const 2636) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\008\00\00\00\00\00\00\00\00\00\00\00")
 (data $71 (i32.const 2668) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\009\00\00\00\00\00\00\00\00\00\00\00")
 (data $72 (i32.const 2700) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\00:\00\00\00\00\00\00\00\00\00\00\00")
 (data $73 (i32.const 2732) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\00;\00\00\00\00\00\00\00\00\00\00\00")
 (data $74 (i32.const 2764) "\1c\00\00\00\00\00\00\00\00\00\00\00\n\00\00\00\08\00\00\00<\00\00\00\00\00\00\00\00\00\00\00")
 (data $75 (i32.const 2796) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00H\00e\00l\00l\00o\00\00\00")
 (data $76 (i32.const 2828) "\1c\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\08\00\00\00=\00\00\00\00\00\00\00\00\00\00\00")
 (data $77 (i32.const 2860) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00A\00\00\00\00\00\00\00\00\00\00\00")
 (data $78 (i32.const 2892) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $79 (i32.const 2924) "\1c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\08\00\00\00>\00\00\00\00\00\00\00\00\00\00\00")
 (data $80 (i32.const 2956) "\1c\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\08\00\00\00?\00\00\00\00\00\00\00\00\00\00\00")
 (data $81 (i32.const 2988) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00B\00\00\00\00\00\00\00\00\00\00\00")
 (data $82 (i32.const 3020) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00C\00\00\00\00\00\00\00\00\00\00\00")
 (data $83 (i32.const 3052) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00D\00\00\00\00\00\00\00\00\00\00\00")
 (data $84 (i32.const 3084) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00A\00B\00C\00D\00\00\00\00\00")
 (data $85 (i32.const 3116) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00@\00\00\00\00\00\00\00\00\00\00\00")
 (data $86 (i32.const 3148) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00A\00\00\00\00\00\00\00\00\00\00\00")
 (data $87 (i32.const 3180) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\08\00\00\00B\00\00\00\00\00\00\00\00\00\00\00")
 (data $88 (i32.const 3212) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00C\00\00\00\00\00\00\00\00\00\00\00")
 (data $89 (i32.const 3244) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00D\00\00\00\00\00\00\00\00\00\00\00")
 (data $90 (i32.const 3276) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00E\00\00\00\00\00\00\00\00\00\00\00")
 (data $91 (i32.const 3308) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00F\00\00\00\00\00\00\00\00\00\00\00")
 (data $92 (i32.const 3340) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00G\00\00\00\00\00\00\00\00\00\00\00")
 (data $93 (i32.const 3372) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00H\00\00\00\00\00\00\00\00\00\00\00")
 (data $94 (i32.const 3404) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00I\00\00\00\00\00\00\00\00\00\00\00")
 (data $95 (i32.const 3436) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00J\00\00\00\00\00\00\00\00\00\00\00")
 (data $96 (i32.const 3472) "\14\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\02\t\00\00 \00\00\00\00\00\00\00\10\t\12\00\00\00\00\00\00\00\00\00")
 (table $0 75 75 funcref)
 (elem $0 (i32.const 1) $closure-stress/captureI32Param~anonymous|0 $closure-stress/captureI64Param~anonymous|0 $closure-stress/captureF32Param~anonymous|0 $closure-stress/captureF64Param~anonymous|0 $closure-stress/captureBool~anonymous|0 $closure-stress/captureMultipleI32~anonymous|0 $closure-stress/captureMixedTypes~anonymous|0 $closure-stress/capture8Params~anonymous|0 $closure-stress/captureParamsAndLocals~anonymous|0 $closure-stress/makeCounter~anonymous|0 $closure-stress/testBidirectionalMutation~anonymous|0 $closure-stress/testBidirectionalMutation~anonymous|1 $closure-stress/testSharedMutation~anonymous|0 $closure-stress/testSharedMutation~anonymous|1 $closure-stress/testSharedMutation~anonymous|2 $closure-stress/testOuterScopeMutation~anonymous|0 $closure-stress/testOuterScopeMutation~anonymous|1 $closure-stress/curriedAdd~anonymous|0 $closure-stress/makeGreaterThan~anonymous|0 $closure-stress/simpleClosureArray~anonymous|0 $closure-stress/simpleClosureArray~anonymous|1 $closure-stress/simpleClosureArray~anonymous|2 $closure-stress/closureInConditional~anonymous|0 $closure-stress/closureInConditional~anonymous|1 $closure-stress/closureEscapingBlock~anonymous|0 $closure-stress/captureArray~anonymous|0 $closure-stress/mutateCapturedArray~anonymous|0 $closure-stress/mutateCapturedArray~anonymous|1 $closure-stress/captureClassInstance~anonymous|0 $closure-stress/captureClassInstance~anonymous|1 $closure-stress/testMapWithClosure~anonymous|0 $closure-stress/testFilterWithClosure~anonymous|0 $closure-stress/testReduceWithClosure~anonymous|0 $closure-stress/testReduceWithClosure~anonymous|1 $closure-stress/makeAdder~anonymous|0 $closure-stress/makeMultiplier~anonymous|0 $closure-stress/compose~anonymous|0 $closure-stress/expensiveComputation $closure-stress/memoize~anonymous|0 $closure-stress/emptyClosure~anonymous|0 $closure-stress/captureOnlyNoParams~anonymous|0 $closure-stress/ignoreCapture~anonymous|0 $closure-stress/multipleClosureReturns~anonymous|0 $closure-stress/multipleClosureReturns~anonymous|1 $closure-stress/multipleClosureReturns~anonymous|2 $closure-stress/makeFactorial~anonymous|0 $closure-stress/captureSmallTypes~anonymous|0 $closure-stress/manyClosuresSameEnv~anonymous|0 $closure-stress/manyClosuresSameEnv~anonymous|1 $closure-stress/manyClosuresSameEnv~anonymous|2 $closure-stress/manyClosuresSameEnv~anonymous|3 $closure-stress/manyClosuresSameEnv~anonymous|4 $closure-stress/manyClosuresSameEnv~anonymous|5 $closure-stress/manyCaptures~anonymous|0 $closure-stress/simpleIIFE~anonymous|0 $closure-stress/captureLoopValue~anonymous|0 $closure-stress/interleavedClosures~anonymous|0 $closure-stress/interleavedClosures~anonymous|1 $closure-stress/interleavedClosures~anonymous|2 $closure-stress/interleavedClosures~anonymous|3 $closure-stress/captureString~anonymous|0 $closure-stress/mutateStringRef~anonymous|0 $closure-stress/mutateStringRef~anonymous|1 $closure-stress/testNestedClosureFunctions~anonymous|0~anonymous|0 $closure-stress/testNestedClosureFunctions~anonymous|0 $closure-stress/testRangeWithClosure~anonymous|0 $closure-stress/add~anonymous|0 $closure-stress/testTwoClosuresSameVar~anonymous|0 $closure-stress/testTwoClosuresSameVar~anonymous|1 $closure-stress/testDeeplyNestedClosures~anonymous|0~anonymous|0~anonymous|0 $closure-stress/testDeeplyNestedClosures~anonymous|0~anonymous|0 $closure-stress/testDeeplyNestedClosures~anonymous|0 $closure-stress/makeAdderPair~anonymous|0 $closure-stress/makeAdderPair~anonymous|1)
 (export "memory" (memory $0))
 (start $~start)
 (func $closure-stress/captureI32Param~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
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
     i32.const 128
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
    i32.const 128
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
   i32.const 128
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
   i32.const 256
   i32.const 320
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
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
    i32.const 128
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
   i32.const 400
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
   i32.const 400
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
   i32.const 400
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
   i32.const 400
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
   i32.const 400
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
    i32.const 400
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
   i32.const 400
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
   i32.const 400
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
   i32.const 400
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
   i32.const 400
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
    i32.const 400
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
    i32.const 400
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
   i32.const 400
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
     i32.const 128
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
   i32.const 64
   i32.const 400
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
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
   i32.const 400
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
     i32.const 400
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
   i32.const 400
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
    i32.const 400
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
   i32.const 400
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
   i32.const 64
   i32.const 128
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
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
 (func $closure-stress/captureI32Param (param $x i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $x
  i32.store offset=4
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 1
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-stress/captureI64Param~anonymous|0 (result i64)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i64.load offset=8
 )
 (func $closure-stress/captureI64Param (param $x i64) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $x
  i64.store offset=8
  i32.const 8
  i32.const 5
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 2
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-stress/captureF32Param~anonymous|0 (result f32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  f32.load offset=4
 )
 (func $closure-stress/captureF32Param (param $x f32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $x
  f32.store offset=4
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 3
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-stress/captureF64Param~anonymous|0 (result f64)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  f64.load offset=8
 )
 (func $closure-stress/captureF64Param (param $x f64) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $x
  f64.store offset=8
  i32.const 8
  i32.const 7
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 4
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-stress/captureBool~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load8_u offset=4
 )
 (func $closure-stress/captureBool (param $x i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $x
  i32.store8 offset=4
  i32.const 8
  i32.const 8
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 5
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-stress/captureMultipleI32~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.get $$closureEnv
  i32.load offset=8
  i32.add
  local.get $$closureEnv
  i32.load offset=12
  i32.add
 )
 (func $closure-stress/captureMultipleI32 (param $a i32) (param $b i32) (param $c i32) (result i32)
  (local $$env i32)
  (local $4 i32)
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $a
  i32.store offset=4
  local.get $$env
  local.get $b
  i32.store offset=8
  local.get $$env
  local.get $c
  i32.store offset=12
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 6
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  return
 )
 (func $closure-stress/captureMixedTypes~anonymous|0 (result f64)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  f64.convert_i32_s
  local.get $$closureEnv
  i64.load offset=8
  f64.convert_i64_s
  f64.add
  local.get $$closureEnv
  f32.load offset=16
  f64.promote_f32
  f64.add
  local.get $$closureEnv
  f64.load offset=24
  f64.add
 )
 (func $closure-stress/captureMixedTypes (param $a i32) (param $b i64) (param $c f32) (param $d f64) (result i32)
  (local $$env i32)
  (local $5 i32)
  i32.const 32
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $a
  i32.store offset=4
  local.get $$env
  local.get $b
  i64.store offset=8
  local.get $$env
  local.get $c
  f32.store offset=16
  local.get $$env
  local.get $d
  f64.store offset=24
  i32.const 8
  i32.const 7
  call $~lib/rt/itcms/__new
  local.set $5
  local.get $5
  i32.const 7
  i32.store
  local.get $5
  local.get $$env
  i32.store offset=4
  local.get $5
  return
 )
 (func $closure-stress/capture8Params~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.get $$closureEnv
  i32.load offset=8
  i32.add
  local.get $$closureEnv
  i32.load offset=12
  i32.add
  local.get $$closureEnv
  i32.load offset=16
  i32.add
  local.get $$closureEnv
  i32.load offset=20
  i32.add
  local.get $$closureEnv
  i32.load offset=24
  i32.add
  local.get $$closureEnv
  i32.load offset=28
  i32.add
  local.get $$closureEnv
  i32.load offset=32
  i32.add
 )
 (func $closure-stress/capture8Params (param $a i32) (param $b i32) (param $c i32) (param $d i32) (param $e i32) (param $f i32) (param $g i32) (param $h i32) (result i32)
  (local $$env i32)
  (local $9 i32)
  i32.const 36
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $a
  i32.store offset=4
  local.get $$env
  local.get $b
  i32.store offset=8
  local.get $$env
  local.get $c
  i32.store offset=12
  local.get $$env
  local.get $d
  i32.store offset=16
  local.get $$env
  local.get $e
  i32.store offset=20
  local.get $$env
  local.get $f
  i32.store offset=24
  local.get $$env
  local.get $g
  i32.store offset=28
  local.get $$env
  local.get $h
  i32.store offset=32
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $9
  local.get $9
  i32.const 8
  i32.store
  local.get $9
  local.get $$env
  i32.store offset=4
  local.get $9
  return
 )
 (func $closure-stress/captureParamsAndLocals~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.get $$closureEnv
  i32.load offset=8
  i32.add
  local.get $$closureEnv
  i32.load offset=12
  i32.add
  local.get $$closureEnv
  i32.load offset=16
  i32.add
 )
 (func $closure-stress/captureParamsAndLocals (param $a i32) (param $b i32) (result i32)
  (local $$env i32)
  (local $c i32)
  (local $d i32)
  (local $5 i32)
  i32.const 20
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $a
  i32.store offset=4
  local.get $$env
  local.get $b
  i32.store offset=8
  local.get $$env
  i32.const 100
  i32.store offset=12
  local.get $$env
  i32.const 200
  i32.store offset=16
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $5
  local.get $5
  i32.const 9
  i32.store
  local.get $5
  local.get $$env
  i32.store offset=4
  local.get $5
  return
 )
 (func $closure-stress/makeCounter~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $$closureEnv
  i32.load offset=4
  return
 )
 (func $closure-stress/makeCounter (result i32)
  (local $$env i32)
  (local $count i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 0
  i32.store offset=4
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 10
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-stress/testBidirectionalMutation~anonymous|0 (param $x i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $x
  i32.store offset=4
 )
 (func $closure-stress/testBidirectionalMutation~anonymous|1 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $closure-stress/testSharedMutation~anonymous|0
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/testSharedMutation~anonymous|1
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 1
  i32.sub
  i32.store offset=4
 )
 (func $closure-stress/testSharedMutation~anonymous|2 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $closure-stress/testOuterScopeMutation~anonymous|0
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 2
  i32.mul
  i32.store offset=4
 )
 (func $closure-stress/testOuterScopeMutation~anonymous|1 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $closure-stress/curriedAdd~anonymous|0 (param $b i32) (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.get $b
  i32.add
 )
 (func $closure-stress/curriedAdd (param $a i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $a
  i32.store offset=4
  i32.const 8
  i32.const 11
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 18
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-stress/makeGreaterThan~anonymous|0 (param $x i32) (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $x
  local.get $$closureEnv
  i32.load offset=4
  i32.gt_s
 )
 (func $closure-stress/makeGreaterThan (param $threshold i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $threshold
  i32.store offset=4
  i32.const 8
  i32.const 12
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 19
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
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
   i32.const 128
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
 (func $~lib/array/Array<%28%29=>i32>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<%28%29=>i32>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<%28%29=>i32>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<%28%29=>i32>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $closure-stress/simpleClosureArray~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $~lib/array/Array<%28%29=>i32>#get:length_ (param $this i32) (result i32)
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
 (func $~lib/array/Array<%28%29=>i32>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-stress/simpleClosureArray~anonymous|1 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=8
 )
 (func $closure-stress/simpleClosureArray~anonymous|2 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=12
 )
 (func $closure-stress/closureInConditional~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $closure-stress/closureInConditional~anonymous|1 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=8
 )
 (func $closure-stress/closureEscapingBlock~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
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
 (func $~lib/array/Array<i32>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-stress/Counter#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store
 )
 (func $closure-stress/Counter#get:value (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-stress/testMapWithClosure~anonymous|0 (param $x i32) (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $x
  local.get $$closureEnv
  i32.load offset=4
  i32.mul
 )
 (func $closure-stress/testFilterWithClosure~anonymous|0 (param $x i32) (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $x
  local.get $$closureEnv
  i32.load offset=4
  i32.ge_s
 )
 (func $closure-stress/testReduceWithClosure~anonymous|0 (param $acc i32) (param $x i32) (result i32)
  local.get $acc
  local.get $x
  i32.add
 )
 (func $closure-stress/testReduceWithClosure~anonymous|1 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.get $$closureEnv
  i32.load offset=8
  i32.add
 )
 (func $closure-stress/makeAdder~anonymous|0 (param $x i32) (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $x
  local.get $$closureEnv
  i32.load offset=4
  i32.add
 )
 (func $closure-stress/makeAdder (param $amount i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $amount
  i32.store offset=4
  i32.const 8
  i32.const 11
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 35
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-stress/makeMultiplier~anonymous|0 (param $x i32) (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $x
  local.get $$closureEnv
  i32.load offset=4
  i32.mul
 )
 (func $closure-stress/makeMultiplier (param $factor i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $factor
  i32.store offset=4
  i32.const 8
  i32.const 11
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 36
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-stress/compose (param $f i32) (param $g i32) (result i32)
  (local $$env i32)
  (local $3 i32)
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $f
  i32.store offset=4
  local.get $$env
  local.get $g
  i32.store offset=8
  i32.const 8
  i32.const 11
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  i32.const 37
  i32.store
  local.get $3
  local.get $$env
  i32.store offset=4
  local.get $3
  return
 )
 (func $closure-stress/expensiveComputation (param $x i32) (result i32)
  global.get $closure-stress/callCount
  i32.const 1
  i32.add
  global.set $closure-stress/callCount
  local.get $x
  local.get $x
  i32.mul
  return
 )
 (func $"~lib/map/Map<i32,i32>#set:buckets" (param $this i32) (param $buckets i32)
  local.get $this
  local.get $buckets
  i32.store
  local.get $this
  local.get $buckets
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $"~lib/map/Map<i32,i32>#set:bucketsMask" (param $this i32) (param $bucketsMask i32)
  local.get $this
  local.get $bucketsMask
  i32.store offset=4
 )
 (func $"~lib/map/Map<i32,i32>#set:entries" (param $this i32) (param $entries i32)
  local.get $this
  local.get $entries
  i32.store offset=8
  local.get $this
  local.get $entries
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $"~lib/map/Map<i32,i32>#set:entriesCapacity" (param $this i32) (param $entriesCapacity i32)
  local.get $this
  local.get $entriesCapacity
  i32.store offset=12
 )
 (func $"~lib/map/Map<i32,i32>#set:entriesOffset" (param $this i32) (param $entriesOffset i32)
  local.get $this
  local.get $entriesOffset
  i32.store offset=16
 )
 (func $"~lib/map/Map<i32,i32>#set:entriesCount" (param $this i32) (param $entriesCount i32)
  local.get $this
  local.get $entriesCount
  i32.store offset=20
 )
 (func $~lib/util/hash/HASH<i32> (param $key i32) (result i32)
  (local $key|1 i32)
  (local $len i32)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 4
  i32.const 4
  i32.le_u
  drop
  block $~lib/util/hash/hash32|inlined.0 (result i32)
   local.get $key
   local.set $key|1
   i32.const 4
   local.set $len
   i32.const 0
   i32.const 374761393
   i32.add
   local.get $len
   i32.add
   local.set $h
   local.get $h
   local.get $key|1
   i32.const -1028477379
   i32.mul
   i32.add
   local.set $h
   local.get $h
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -2048144777
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -1028477379
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   br $~lib/util/hash/hash32|inlined.0
  end
  return
 )
 (func $"~lib/map/Map<i32,i32>#get:buckets" (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $"~lib/map/Map<i32,i32>#get:bucketsMask" (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $"~lib/map/MapEntry<i32,i32>#get:taggedNext" (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $"~lib/map/MapEntry<i32,i32>#get:key" (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $"~lib/map/MapEntry<i32,i32>#get:value" (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $"~lib/map/MapEntry<i32,i32>#set:value" (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store offset=4
 )
 (func $"~lib/map/Map<i32,i32>#get:entriesOffset" (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $"~lib/map/Map<i32,i32>#get:entriesCapacity" (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $"~lib/map/Map<i32,i32>#get:entriesCount" (param $this i32) (result i32)
  local.get $this
  i32.load offset=20
 )
 (func $"~lib/map/Map<i32,i32>#get:entries" (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $"~lib/map/MapEntry<i32,i32>#set:key" (param $this i32) (param $key i32)
  local.get $this
  local.get $key
  i32.store
 )
 (func $"~lib/map/MapEntry<i32,i32>#set:taggedNext" (param $this i32) (param $taggedNext i32)
  local.get $this
  local.get $taggedNext
  i32.store offset=8
 )
 (func $closure-stress/memoize (param $fn i32) (result i32)
  (local $$env i32)
  (local $cache i32)
  (local $3 i32)
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $fn
  i32.store offset=8
  local.get $$env
  i32.const 0
  call $"~lib/map/Map<i32,i32>#constructor"
  i32.store offset=4
  i32.const 8
  i32.const 11
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  i32.const 39
  i32.store
  local.get $3
  local.get $$env
  i32.store offset=4
  local.get $3
  return
 )
 (func $closure-stress/emptyClosure~anonymous|0 (result i32)
  i32.const 42
 )
 (func $closure-stress/emptyClosure (result i32)
  i32.const 2144
  return
 )
 (func $closure-stress/captureOnlyNoParams~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.get $$closureEnv
  i32.load offset=8
  i32.add
 )
 (func $closure-stress/ignoreCapture~anonymous|0 (result i32)
  i32.const 42
 )
 (func $closure-stress/multipleClosureReturns~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $closure-stress/multipleClosureReturns~anonymous|1 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=8
 )
 (func $closure-stress/multipleClosureReturns~anonymous|2 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=12
 )
 (func $closure-stress/multipleClosureReturns (param $which i32) (result i32)
  (local $$env i32)
  (local $a i32)
  (local $b i32)
  (local $c i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 10
  i32.store offset=4
  local.get $$env
  i32.const 20
  i32.store offset=8
  local.get $$env
  i32.const 30
  i32.store offset=12
  local.get $which
  i32.const 0
  i32.eq
  if
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.set $5
   local.get $5
   i32.const 43
   i32.store
   local.get $5
   local.get $$env
   i32.store offset=4
   local.get $5
   return
  else
   local.get $which
   i32.const 1
   i32.eq
   if
    i32.const 8
    i32.const 4
    call $~lib/rt/itcms/__new
    local.set $6
    local.get $6
    i32.const 44
    i32.store
    local.get $6
    local.get $$env
    i32.store offset=4
    local.get $6
    return
   else
    i32.const 8
    i32.const 4
    call $~lib/rt/itcms/__new
    local.set $7
    local.get $7
    i32.const 45
    i32.store
    local.get $7
    local.get $$env
    i32.store offset=4
    local.get $7
    return
   end
   unreachable
  end
  unreachable
 )
 (func $closure-stress/makeFactorial~anonymous|0 (param $n i32) (result i32)
  (local $result i32)
  (local $i i32)
  i32.const 1
  local.set $result
  i32.const 2
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $n
   i32.le_s
   if
    local.get $result
    local.get $i
    i32.mul
    local.set $result
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $result
  return
 )
 (func $closure-stress/makeFactorial (result i32)
  i32.const 2336
  return
 )
 (func $closure-stress/captureSmallTypes~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load8_s offset=4
  local.get $$closureEnv
  i32.load8_u offset=5
  i32.add
  local.get $$closureEnv
  i32.load16_s offset=6
  i32.add
  local.get $$closureEnv
  i32.load16_u offset=8
  i32.add
 )
 (func $closure-stress/manyClosuresSameEnv~anonymous|0
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/manyClosuresSameEnv~anonymous|1
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 2
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/manyClosuresSameEnv~anonymous|2
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 3
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/manyClosuresSameEnv~anonymous|3
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 4
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/manyClosuresSameEnv~anonymous|4
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 5
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/manyClosuresSameEnv~anonymous|5 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $closure-stress/manyCaptures~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.get $$closureEnv
  i32.load offset=8
  i32.add
  local.get $$closureEnv
  i32.load offset=12
  i32.add
  local.get $$closureEnv
  i32.load offset=16
  i32.add
  local.get $$closureEnv
  i32.load offset=20
  i32.add
  local.get $$closureEnv
  i32.load offset=24
  i32.add
  local.get $$closureEnv
  i32.load offset=28
  i32.add
  local.get $$closureEnv
  i32.load offset=32
  i32.add
  local.get $$closureEnv
  i32.load offset=36
  i32.add
  local.get $$closureEnv
  i32.load offset=40
  i32.add
  local.get $$closureEnv
  i32.load offset=44
  i32.add
  local.get $$closureEnv
  i32.load offset=48
  i32.add
 )
 (func $closure-stress/simpleIIFE~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 9
  i32.add
  return
 )
 (func $closure-stress/captureLoopValue~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $closure-stress/captureLoopValue (param $val i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $val
  i32.store offset=4
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 56
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-stress/interleavedClosures~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $closure-stress/interleavedClosures~anonymous|1
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/interleavedClosures~anonymous|2
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 10
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/interleavedClosures~anonymous|3
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 100
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/captureString~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
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
 (func $closure-stress/mutateStringRef~anonymous|1 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $closure-stress/testNestedClosureFunctions~anonymous|0~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $$closureEnv
  i32.load offset=4
  return
 )
 (func $closure-stress/testRangeWithClosure~anonymous|0 (param $i i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.get $i
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/range (param $a i32) (param $b i32) (param $fn i32)
  (local $i i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $a
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $b
   i32.lt_s
   if
    local.get $i
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    global.set $~argumentsLength
    local.get $fn
    local.tee $4
    i32.store
    local.get $4
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $4
    i32.load
    call_indirect (type $5)
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-stress/add~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.get $$closureEnv
  i32.load offset=8
  i32.add
 )
 (func $closure-stress/add (param $a i32) (param $b i32) (result i32)
  (local $$env i32)
  (local $3 i32)
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $a
  i32.store offset=4
  local.get $$env
  local.get $b
  i32.store offset=8
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  i32.const 67
  i32.store
  local.get $3
  local.get $$env
  i32.store offset=4
  local.get $3
  return
 )
 (func $closure-stress/testTwoClosuresSameVar~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $closure-stress/testTwoClosuresSameVar~anonymous|1 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $$closureEnv
  i32.load offset=4
  return
 )
 (func $closure-stress/testDeeplyNestedClosures~anonymous|0~anonymous|0~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load
  i32.load
  i32.load offset=4
  local.get $$closureEnv
  i32.load
  i32.load offset=4
  i32.add
  local.get $$closureEnv
  i32.load offset=4
  i32.add
  return
 )
 (func $closure-stress/makeAdderPair~anonymous|0 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $$closureEnv
  i32.load offset=4
  return
 )
 (func $closure-stress/makeAdderPair~anonymous|1 (result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 256
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1104
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1296
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2000
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 64
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
 (func $~lib/function/Function<%28%29=>i32>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%29=>i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%29=>i32>#__visit
 )
 (func $~lib/function/Function<%28%29=>i64>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%29=>i64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%29=>i64>#__visit
 )
 (func $~lib/function/Function<%28%29=>f32>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%29=>f32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%29=>f32>#__visit
 )
 (func $~lib/function/Function<%28%29=>f64>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%29=>f64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%29=>f64>#__visit
 )
 (func $~lib/function/Function<%28%29=>bool>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%29=>bool>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%29=>bool>#__visit
 )
 (func $~lib/function/Function<%28i32%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28i32%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28i32%29=>void>#__visit
 )
 (func $~lib/function/Function<%28%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%29=>void>#__visit
 )
 (func $~lib/function/Function<%28i32%29=>i32>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28i32%29=>i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28i32%29=>i32>#__visit
 )
 (func $~lib/function/Function<%28i32%29=>bool>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28i32%29=>bool>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28i32%29=>bool>#__visit
 )
 (func $~lib/array/Array<%28%29=>i32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<%28%29=>i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<%28%29=>i32>#__visit
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
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28i32%2Ci32%29=>i32>#__visit
 )
 (func $"~lib/map/Map<i32,i32>~visit" (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $"~lib/map/Map<i32,i32>#__visit"
 )
 (func $~lib/function/Function<%28%29=>~lib/string/String>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%29=>~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%29=>~lib/string/String>#__visit
 )
 (func $~lib/function/Function<%28~lib/string/String%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/string/String%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/string/String%29=>void>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/function/Function<%28~lib/string/String%29=>void>
    block $~lib/function/Function<%28%29=>~lib/string/String>
     block $"~lib/map/Map<i32,i32>"
      block $~lib/function/Function<%28i32%2Ci32%29=>i32>
       block $closure-stress/Counter
        block $~lib/array/Array<i32>
         block $~lib/array/Array<%28%29=>i32>
          block $~lib/function/Function<%28i32%29=>bool>
           block $~lib/function/Function<%28i32%29=>i32>
            block $~lib/function/Function<%28%29=>void>
             block $~lib/function/Function<%28i32%29=>void>
              block $~lib/function/Function<%28%29=>bool>
               block $~lib/function/Function<%28%29=>f64>
                block $~lib/function/Function<%28%29=>f32>
                 block $~lib/function/Function<%28%29=>i64>
                  block $~lib/function/Function<%28%29=>i32>
                   block $~lib/arraybuffer/ArrayBufferView
                    block $~lib/string/String
                     block $~lib/arraybuffer/ArrayBuffer
                      block $~lib/object/Object
                       local.get $0
                       i32.const 8
                       i32.sub
                       i32.load
                       br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/function/Function<%28%29=>i32> $~lib/function/Function<%28%29=>i64> $~lib/function/Function<%28%29=>f32> $~lib/function/Function<%28%29=>f64> $~lib/function/Function<%28%29=>bool> $~lib/function/Function<%28i32%29=>void> $~lib/function/Function<%28%29=>void> $~lib/function/Function<%28i32%29=>i32> $~lib/function/Function<%28i32%29=>bool> $~lib/array/Array<%28%29=>i32> $~lib/array/Array<i32> $closure-stress/Counter $~lib/function/Function<%28i32%2Ci32%29=>i32> $"~lib/map/Map<i32,i32>" $~lib/function/Function<%28%29=>~lib/string/String> $~lib/function/Function<%28~lib/string/String%29=>void> $invalid
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
                  call $~lib/function/Function<%28%29=>i32>~visit
                  return
                 end
                 local.get $0
                 local.get $1
                 call $~lib/function/Function<%28%29=>i64>~visit
                 return
                end
                local.get $0
                local.get $1
                call $~lib/function/Function<%28%29=>f32>~visit
                return
               end
               local.get $0
               local.get $1
               call $~lib/function/Function<%28%29=>f64>~visit
               return
              end
              local.get $0
              local.get $1
              call $~lib/function/Function<%28%29=>bool>~visit
              return
             end
             local.get $0
             local.get $1
             call $~lib/function/Function<%28i32%29=>void>~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/function/Function<%28%29=>void>~visit
            return
           end
           local.get $0
           local.get $1
           call $~lib/function/Function<%28i32%29=>i32>~visit
           return
          end
          local.get $0
          local.get $1
          call $~lib/function/Function<%28i32%29=>bool>~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<%28%29=>i32>~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/array/Array<i32>~visit
        return
       end
       return
      end
      local.get $0
      local.get $1
      call $~lib/function/Function<%28i32%2Ci32%29=>i32>~visit
      return
     end
     local.get $0
     local.get $1
     call $"~lib/map/Map<i32,i32>~visit"
     return
    end
    local.get $0
    local.get $1
    call $~lib/function/Function<%28%29=>~lib/string/String>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/function/Function<%28~lib/string/String%29=>void>~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:closure-stress
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 36352
   i32.const 36400
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/array/Array<%28%29=>i32>#constructor (param $this i32) (param $length i32) (result i32)
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
   i32.const 13
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
  call $~lib/array/Array<%28%29=>i32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<%28%29=>i32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<%28%29=>i32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<%28%29=>i32>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 1104
   i32.const 1152
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
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
  call $~lib/array/Array<%28%29=>i32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<%28%29=>i32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<%28%29=>i32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<%28%29=>i32>#set:length_
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
    i32.const 1104
    i32.const 1152
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
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
 (func $~lib/array/Array<%28%29=>i32>#__set (param $this i32) (param $index i32) (param $value i32)
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
  call $~lib/array/Array<%28%29=>i32>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 256
    i32.const 1152
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
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
   call $~lib/array/Array<%28%29=>i32>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<%28%29=>i32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28%29=>i32>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<%28%29=>i32>#get:length_
  i32.ge_u
  if
   i32.const 256
   i32.const 1152
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<%28%29=>i32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 1296
   i32.const 1152
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $closure-stress/simpleClosureArray (result i32)
  (local $$env i32)
  (local $fns i32)
  (local $v0 i32)
  (local $3 i32)
  (local $v1 i32)
  (local $5 i32)
  (local $v2 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 3
  call $~lib/array/Array<%28%29=>i32>#constructor
  local.tee $fns
  i32.store
  local.get $$env
  i32.const 10
  i32.store offset=4
  local.get $fns
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 0
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  i32.const 20
  i32.store
  local.get $3
  local.get $$env
  i32.store offset=4
  local.get $3
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/array/Array<%28%29=>i32>#__set
  local.get $$env
  i32.const 20
  i32.store offset=8
  local.get $fns
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 1
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $5
  local.get $5
  i32.const 21
  i32.store
  local.get $5
  local.get $$env
  i32.store offset=4
  local.get $5
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/array/Array<%28%29=>i32>#__set
  local.get $$env
  i32.const 30
  i32.store offset=12
  local.get $fns
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 2
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $7
  local.get $7
  i32.const 22
  i32.store
  local.get $7
  local.get $$env
  i32.store offset=4
  local.get $7
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/array/Array<%28%29=>i32>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $fns
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 0
  call $~lib/array/Array<%28%29=>i32>#__get
  local.tee $8
  i32.store offset=12
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $0)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $fns
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 1
  call $~lib/array/Array<%28%29=>i32>#__get
  local.tee $9
  i32.store offset=16
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $0)
  i32.add
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $fns
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 2
  call $~lib/array/Array<%28%29=>i32>#__get
  local.tee $10
  i32.store offset=20
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $0)
  i32.add
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
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
   i32.const 14
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
   i32.const 1104
   i32.const 1152
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
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
    i32.const 256
    i32.const 1152
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
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
   i32.const 256
   i32.const 1152
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
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
 (func $closure-stress/captureArray~anonymous|0 (result i32)
  (local $$closureEnv i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.add
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.add
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-stress/captureArray (result i32)
  (local $$env i32)
  (local $arr i32)
  (local $2 i32)
  (local $sum i32)
  (local $4 i32)
  (local $5 i32)
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
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 0
  i32.const 3
  call $~lib/array/Array<i32>#constructor
  i32.store offset=4
  local.get $$env
  i32.load offset=4
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#__set
  local.get $$env
  i32.load offset=4
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 1
  i32.const 2
  call $~lib/array/Array<i32>#__set
  local.get $$env
  i32.load offset=4
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 2
  i32.const 3
  call $~lib/array/Array<i32>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 26
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $sum
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $sum
  local.tee $4
  i32.store offset=8
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $0)
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $closure-stress/mutateCapturedArray~anonymous|0
  (local $$closureEnv i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.mul
  call $~lib/array/Array<i32>#__set
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 1
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.mul
  call $~lib/array/Array<i32>#__set
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 2
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 2
  i32.mul
  call $~lib/array/Array<i32>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-stress/mutateCapturedArray~anonymous|1 (result i32)
  (local $$closureEnv i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.add
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.add
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-stress/mutateCapturedArray (result i32)
  (local $$env i32)
  (local $arr i32)
  (local $2 i32)
  (local $doubleAll i32)
  (local $4 i32)
  (local $sum i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 0
  i32.const 3
  call $~lib/array/Array<i32>#constructor
  i32.store offset=4
  local.get $$env
  i32.load offset=4
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store
  local.get $11
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#__set
  local.get $$env
  i32.load offset=4
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store
  local.get $11
  i32.const 1
  i32.const 2
  call $~lib/array/Array<i32>#__set
  local.get $$env
  i32.load offset=4
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store
  local.get $11
  i32.const 2
  i32.const 3
  call $~lib/array/Array<i32>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 27
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $doubleAll
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 28
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.tee $sum
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $sum
  local.tee $6
  i32.store offset=12
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $0)
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 250
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $doubleAll
  local.tee $7
  i32.store offset=16
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $sum
  local.tee $8
  i32.store offset=20
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $0)
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 252
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $doubleAll
  local.tee $9
  i32.store offset=24
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $sum
  local.tee $10
  i32.store offset=28
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $0)
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $closure-stress/Counter#constructor (param $this i32) (result i32)
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
   i32.const 15
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
  call $closure-stress/Counter#set:value
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-stress/captureClassInstance~anonymous|0
  (local $$closureEnv i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $closure-stress/Counter#get:value
  i32.const 1
  i32.add
  call $closure-stress/Counter#set:value
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-stress/captureClassInstance~anonymous|1 (result i32)
  (local $$closureEnv i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $closure-stress/Counter#get:value
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
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
 (func $closure-stress/mapArray (param $arr i32) (param $fn i32) (result i32)
  (local $result i32)
  (local $i i32)
  (local $4 i32)
  (local $5 i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $arr
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<i32>#get:length
  call $~lib/array/Array<i32>#constructor
  local.tee $result
  i32.store offset=4
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $arr
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $result
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $i
    local.get $arr
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=12
    local.get $5
    local.get $i
    call $~lib/array/Array<i32>#__get
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    global.set $~argumentsLength
    local.get $fn
    local.tee $4
    i32.store offset=8
    local.get $4
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $4
    i32.load
    call_indirect (type $1)
    call $~lib/array/Array<i32>#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $result
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $closure-stress/testMapWithClosure (result i32)
  (local $$env i32)
  (local $multiplier i32)
  (local $arr i32)
  (local $3 i32)
  (local $result i32)
  (local $5 i32)
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
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 10
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 3
  call $~lib/array/Array<i32>#constructor
  local.tee $arr
  i32.store
  local.get $arr
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#__set
  local.get $arr
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 1
  i32.const 2
  call $~lib/array/Array<i32>#__set
  local.get $arr
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 2
  i32.const 3
  call $~lib/array/Array<i32>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $arr
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 8
  i32.const 11
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  i32.const 31
  i32.store
  local.get $3
  local.get $$env
  i32.store offset=4
  local.get $3
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $closure-stress/mapArray
  local.tee $result
  i32.store offset=12
  local.get $result
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.get $result
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.add
  local.get $result
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.add
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/array/Array<i32>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<i32>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 0
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<i32>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<i32>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $closure-stress/filterArray (param $arr i32) (param $pred i32) (result i32)
  (local $result i32)
  (local $i i32)
  (local $4 i32)
  (local $5 i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.tee $result
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $arr
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $arr
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $i
    call $~lib/array/Array<i32>#__get
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    global.set $~argumentsLength
    local.get $pred
    local.tee $4
    i32.store offset=8
    local.get $4
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $4
    i32.load
    call_indirect (type $1)
    if
     local.get $result
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     local.get $arr
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=12
     local.get $5
     local.get $i
     call $~lib/array/Array<i32>#__get
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $result
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $closure-stress/testFilterWithClosure (result i32)
  (local $$env i32)
  (local $threshold i32)
  (local $arr i32)
  (local $i i32)
  (local $4 i32)
  (local $result i32)
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
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 5
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 10
  call $~lib/array/Array<i32>#constructor
  local.tee $arr
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|1
   local.get $i
   i32.const 10
   i32.lt_s
   if
    local.get $arr
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $i
    local.get $i
    call $~lib/array/Array<i32>#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $arr
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 8
  i32.const 12
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 32
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $closure-stress/filterArray
  local.tee $result
  i32.store offset=12
  local.get $result
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $~lib/array/Array<i32>#get:length
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $closure-stress/reduceArray (param $arr i32) (param $fn i32) (param $initial i32) (result i32)
  (local $acc i32)
  (local $i i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $initial
  local.set $acc
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $arr
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   if
    local.get $acc
    local.get $arr
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    local.get $i
    call $~lib/array/Array<i32>#__get
    global.get $~lib/memory/__stack_pointer
    i32.const 2
    global.set $~argumentsLength
    local.get $fn
    local.tee $5
    i32.store offset=4
    local.get $5
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $5
    i32.load
    call_indirect (type $4)
    local.set $acc
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $acc
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $closure-stress/testReduceWithClosure (result i32)
  (local $$env i32)
  (local $bonus i32)
  (local $arr i32)
  (local $result i32)
  (local $4 i32)
  (local $addBonus i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 100
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  call $~lib/array/Array<i32>#constructor
  local.tee $arr
  i32.store
  local.get $arr
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#__set
  local.get $arr
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 1
  i32.const 2
  call $~lib/array/Array<i32>#__set
  local.get $arr
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 2
  i32.const 3
  call $~lib/array/Array<i32>#__set
  local.get $arr
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#__set
  local.get $arr
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 4
  i32.const 5
  call $~lib/array/Array<i32>#__set
  local.get $$env
  local.get $arr
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 1744
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  i32.const 0
  call $closure-stress/reduceArray
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 34
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.tee $addBonus
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $addBonus
  local.tee $6
  i32.store offset=16
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $0)
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $"~lib/map/Map<i32,i32>#constructor" (param $this i32) (result i32)
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
   i32.const 24
   i32.const 17
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
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $"~lib/map/Map<i32,i32>#set:buckets"
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 4
  i32.const 1
  i32.sub
  call $"~lib/map/Map<i32,i32>#set:bucketsMask"
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 4
  block $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.0" (result i32)
   i32.const 12
   br $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.0"
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $"~lib/map/Map<i32,i32>#set:entries"
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 4
  call $"~lib/map/Map<i32,i32>#set:entriesCapacity"
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $"~lib/map/Map<i32,i32>#set:entriesOffset"
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $"~lib/map/Map<i32,i32>#set:entriesCount"
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $"~lib/map/Map<i32,i32>#find" (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $taggedNext i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $"~lib/map/Map<i32,i32>#get:buckets"
  local.get $hashCode
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $"~lib/map/Map<i32,i32>#get:bucketsMask"
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $entry
  loop $while-continue|0
   local.get $entry
   if
    local.get $entry
    call $"~lib/map/MapEntry<i32,i32>#get:taggedNext"
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     call $"~lib/map/MapEntry<i32,i32>#get:key"
     local.get $key
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $5
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $"~lib/map/Map<i32,i32>#has" (param $this i32) (param $key i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i32>
  call $"~lib/map/Map<i32,i32>#find"
  i32.const 0
  i32.ne
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $"~lib/map/Map<i32,i32>#get" (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i32>
  call $"~lib/map/Map<i32,i32>#find"
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 2000
   i32.const 2064
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $entry
  call $"~lib/map/MapEntry<i32,i32>#get:value"
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $"~lib/map/Map<i32,i32>#rehash" (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  (local $14 i32)
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
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  block $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.1" (result i32)
   i32.const 12
   br $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.1"
  end
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store offset=4
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $"~lib/map/Map<i32,i32>#get:entries"
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $"~lib/map/Map<i32,i32>#get:entriesOffset"
  block $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.2" (result i32)
   i32.const 12
   br $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.2"
  end
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    call $"~lib/map/MapEntry<i32,i32>#get:taggedNext"
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     call $"~lib/map/MapEntry<i32,i32>#get:key"
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $"~lib/map/MapEntry<i32,i32>#set:key"
     local.get $newEntry
     local.get $oldEntry
     call $"~lib/map/MapEntry<i32,i32>#get:value"
     call $"~lib/map/MapEntry<i32,i32>#set:value"
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<i32>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load
     call $"~lib/map/MapEntry<i32,i32>#set:taggedNext"
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store
     local.get $newPtr
     block $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.3" (result i32)
      i32.const 12
      br $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.3"
     end
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    block $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.4" (result i32)
     i32.const 12
     br $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.4"
    end
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newBuckets
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=12
  local.get $14
  call $"~lib/map/Map<i32,i32>#set:buckets"
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newBucketsMask
  call $"~lib/map/Map<i32,i32>#set:bucketsMask"
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newEntries
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=12
  local.get $14
  call $"~lib/map/Map<i32,i32>#set:entries"
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $newEntriesCapacity
  call $"~lib/map/Map<i32,i32>#set:entriesCapacity"
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=12
  local.get $14
  call $"~lib/map/Map<i32,i32>#get:entriesCount"
  call $"~lib/map/Map<i32,i32>#set:entriesOffset"
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $"~lib/map/Map<i32,i32>#set" (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
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
  local.get $key
  call $~lib/util/hash/HASH<i32>
  local.set $hashCode
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $key
  local.get $hashCode
  call $"~lib/map/Map<i32,i32>#find"
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $"~lib/map/MapEntry<i32,i32>#set:value"
   i32.const 0
   drop
  else
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $"~lib/map/Map<i32,i32>#get:entriesOffset"
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $"~lib/map/Map<i32,i32>#get:entriesCapacity"
   i32.eq
   if
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store
    local.get $8
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $"~lib/map/Map<i32,i32>#get:entriesCount"
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $"~lib/map/Map<i32,i32>#get:entriesCapacity"
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     call $"~lib/map/Map<i32,i32>#get:bucketsMask"
    else
     local.get $this
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     call $"~lib/map/Map<i32,i32>#get:bucketsMask"
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $"~lib/map/Map<i32,i32>#rehash"
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $"~lib/map/Map<i32,i32>#get:entries"
   local.tee $entries
   i32.store offset=8
   local.get $entries
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   call $"~lib/map/Map<i32,i32>#get:entriesOffset"
   local.tee $6
   i32.const 1
   i32.add
   call $"~lib/map/Map<i32,i32>#set:entriesOffset"
   local.get $6
   block $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.5" (result i32)
    i32.const 12
    br $"~lib/map/ENTRY_SIZE<i32,i32>|inlined.5"
   end
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $"~lib/map/MapEntry<i32,i32>#set:key"
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $"~lib/map/MapEntry<i32,i32>#set:value"
   i32.const 0
   drop
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   call $"~lib/map/Map<i32,i32>#get:entriesCount"
   i32.const 1
   i32.add
   call $"~lib/map/Map<i32,i32>#set:entriesCount"
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $"~lib/map/Map<i32,i32>#get:buckets"
   local.get $hashCode
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store
   local.get $8
   call $"~lib/map/Map<i32,i32>#get:bucketsMask"
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load
   call $"~lib/map/MapEntry<i32,i32>#set:taggedNext"
   local.get $bucketPtrBase
   local.get $entry
   i32.store
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $closure-stress/memoize~anonymous|0 (param $x i32) (result i32)
  (local $$closureEnv i32)
  (local $2 i32)
  (local $result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $x
  call $"~lib/map/Map<i32,i32>#has"
  if
   local.get $$closureEnv
   i32.load offset=4
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   local.get $x
   call $"~lib/map/Map<i32,i32>#get"
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  local.get $x
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $$closureEnv
  i32.load offset=8
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $2
  i32.load
  call_indirect (type $1)
  local.set $result
  local.get $$closureEnv
  i32.load offset=4
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $x
  local.get $result
  call $"~lib/map/Map<i32,i32>#set"
  drop
  local.get $result
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $closure-stress/testMemoization (result i32)
  (local $memoized i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  i32.const 0
  global.set $closure-stress/callCount
  global.get $~lib/memory/__stack_pointer
  i32.const 1904
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $closure-stress/memoize
  local.tee $memoized
  i32.store offset=4
  i32.const 5
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $memoized
  local.tee $1
  i32.store offset=8
  local.get $1
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $1
  i32.load
  call_indirect (type $1)
  i32.const 25
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 413
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-stress/callCount
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 414
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $memoized
  local.tee $2
  i32.store offset=12
  local.get $2
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $2
  i32.load
  call_indirect (type $1)
  i32.const 25
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 415
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-stress/callCount
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 416
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $memoized
  local.tee $3
  i32.store offset=16
  local.get $3
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $3
  i32.load
  call_indirect (type $1)
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 417
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-stress/callCount
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 418
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $memoized
  local.tee $4
  i32.store offset=20
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $1)
  i32.const 25
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 419
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-stress/callCount
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 420
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-stress/callCount
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $closure-stress/closureArrayOps (result i32)
  (local $closures i32)
  (local $i i32)
  (local $captured i32)
  (local $sum i32)
  (local $i|4 i32)
  (local $5 i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 10
  call $~lib/array/Array<%28%29=>i32>#constructor
  local.tee $closures
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 10
   i32.lt_s
   if
    local.get $i
    i32.const 10
    i32.mul
    local.set $captured
    local.get $closures
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $i
    local.get $captured
    call $closure-stress/captureLoopValue
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    call $~lib/array/Array<%28%29=>i32>#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $sum
  i32.const 0
  local.set $i|4
  loop $for-loop|1
   local.get $i|4
   i32.const 10
   i32.lt_s
   if
    local.get $sum
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    global.set $~argumentsLength
    local.get $closures
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $i|4
    call $~lib/array/Array<%28%29=>i32>#__get
    local.tee $5
    i32.store offset=12
    local.get $5
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $5
    i32.load
    call_indirect (type $0)
    i32.add
    local.set $sum
    local.get $i|4
    i32.const 1
    i32.add
    local.set $i|4
    br $for-loop|1
   end
  end
  local.get $sum
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
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
   i32.const 2912
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
 (func $closure-stress/mutateStringRef~anonymous|0 (param $suffix i32)
  (local $$closureEnv i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $suffix
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/string/String.__concat
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-stress/testRangeWithClosure (result i32)
  (local $$env i32)
  (local $sum i32)
  (local $n i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 0
  i32.store offset=4
  i32.const 10
  local.set $n
  i32.const 0
  local.get $n
  i32.const 8
  i32.const 9
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  i32.const 66
  i32.store
  local.get $3
  local.get $$env
  i32.store offset=4
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $closure-stress/range
  local.get $$env
  i32.load offset=4
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $closure-stress/makeAdderPair (param $initial i32) (result i32)
  (local $$env i32)
  (local $value i32)
  (local $arr i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $initial
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  call $~lib/array/Array<%28%29=>i32>#constructor
  local.tee $arr
  i32.store
  local.get $arr
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 73
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $~lib/array/Array<%28%29=>i32>#__set
  local.get $arr
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 1
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $5
  local.get $5
  i32.const 74
  i32.store
  local.get $5
  local.get $$env
  i32.store offset=4
  local.get $5
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $~lib/array/Array<%28%29=>i32>#__set
  local.get $arr
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $closure-stress/testClosureEscapesFunction (result i32)
  (local $pair i32)
  (local $increment i32)
  (local $getValue i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $pair2 i32)
  (local $increment2 i32)
  (local $getValue2 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 64
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 10
  call $closure-stress/makeAdderPair
  local.tee $pair
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $pair
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 0
  call $~lib/array/Array<%28%29=>i32>#__get
  local.tee $increment
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $pair
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 1
  call $~lib/array/Array<%28%29=>i32>#__get
  local.tee $getValue
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getValue
  local.tee $3
  i32.store offset=16
  local.get $3
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $3
  i32.load
  call_indirect (type $0)
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 730
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $increment
  local.tee $4
  i32.store offset=20
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $0)
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $increment
  local.tee $5
  i32.store offset=24
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $0)
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getValue
  local.tee $6
  i32.store offset=28
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $0)
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 733
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 100
  call $closure-stress/makeAdderPair
  local.tee $pair2
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $pair2
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 0
  call $~lib/array/Array<%28%29=>i32>#__get
  local.tee $increment2
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $pair2
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store offset=4
  local.get $15
  i32.const 1
  call $~lib/array/Array<%28%29=>i32>#__get
  local.tee $getValue2
  i32.store offset=40
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $increment2
  local.tee $10
  i32.store offset=44
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $0)
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getValue2
  local.tee $11
  i32.store offset=48
  local.get $11
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $11
  i32.load
  call_indirect (type $0)
  i32.const 101
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 741
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getValue
  local.tee $12
  i32.store offset=52
  local.get $12
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $12
  i32.load
  call_indirect (type $0)
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 742
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getValue
  local.tee $13
  i32.store offset=56
  local.get $13
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $13
  i32.load
  call_indirect (type $0)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getValue2
  local.tee $14
  i32.store offset=60
  local.get $14
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $14
  i32.load
  call_indirect (type $0)
  i32.add
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 64
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
  return
 )
 (func $start:closure-stress
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 172
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 172
  memory.fill
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 176
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 208
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 352
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 42
  call $closure-stress/captureI32Param
  local.tee $0
  i32.store
  local.get $0
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $0
  i32.load
  call_indirect (type $0)
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const -1
  call $closure-stress/captureI32Param
  local.tee $1
  i32.store offset=4
  local.get $1
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $1
  i32.load
  call_indirect (type $0)
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 14
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 2147483647
  call $closure-stress/captureI32Param
  local.tee $2
  i32.store offset=8
  local.get $2
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $2
  i32.load
  call_indirect (type $0)
  i32.const 2147483647
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i64.const 42
  call $closure-stress/captureI64Param
  local.tee $3
  i32.store offset=12
  local.get $3
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $3
  i32.load
  call_indirect (type $9)
  i64.const 42
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i64.const 9223372036854775807
  call $closure-stress/captureI64Param
  local.tee $4
  i32.store offset=16
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $9)
  i64.const 9223372036854775807
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  f32.const 3.140000104904175
  call $closure-stress/captureF32Param
  local.tee $5
  i32.store offset=20
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $10)
  f32.const 3.140000104904175
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  f32.const 0
  call $closure-stress/captureF32Param
  local.tee $6
  i32.store offset=24
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $10)
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  f64.const 3.141592653589793
  call $closure-stress/captureF64Param
  local.tee $7
  i32.store offset=28
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $7)
  f64.const 3.141592653589793
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  f64.const inf
  call $closure-stress/captureF64Param
  local.tee $8
  i32.store offset=32
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $7)
  f64.const inf
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 1
  call $closure-stress/captureBool
  local.tee $9
  i32.store offset=36
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $0)
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $closure-stress/captureBool
  local.tee $10
  i32.store offset=40
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $0)
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 43
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 1
  i32.const 2
  i32.const 3
  call $closure-stress/captureMultipleI32
  local.tee $11
  i32.store offset=44
  local.get $11
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $11
  i32.load
  call_indirect (type $0)
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 53
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 100
  i32.const 200
  i32.const 300
  call $closure-stress/captureMultipleI32
  local.tee $12
  i32.store offset=48
  local.get $12
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $12
  i32.load
  call_indirect (type $0)
  i32.const 600
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 54
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 1
  i64.const 2
  f32.const 3
  f64.const 4
  call $closure-stress/captureMixedTypes
  local.tee $13
  i32.store offset=52
  local.get $13
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $13
  i32.load
  call_indirect (type $7)
  f64.const 10
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 60
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 4
  i32.const 5
  i32.const 6
  i32.const 7
  i32.const 8
  call $closure-stress/capture8Params
  local.tee $14
  i32.store offset=56
  local.get $14
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $14
  i32.load
  call_indirect (type $0)
  i32.const 36
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 1
  i32.const 2
  call $closure-stress/captureParamsAndLocals
  local.tee $15
  i32.store offset=60
  local.get $15
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $15
  i32.load
  call_indirect (type $0)
  i32.const 303
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/makeCounter
  global.set $closure-stress/counter1
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  global.get $closure-stress/counter1
  local.tee $16
  i32.store offset=64
  local.get $16
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $16
  i32.load
  call_indirect (type $0)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  global.get $closure-stress/counter1
  local.tee $17
  i32.store offset=68
  local.get $17
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $17
  i32.load
  call_indirect (type $0)
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  global.get $closure-stress/counter1
  local.tee $18
  i32.store offset=72
  local.get $18
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $18
  i32.load
  call_indirect (type $0)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/makeCounter
  global.set $closure-stress/counter2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  global.get $closure-stress/counter2
  local.tee $19
  i32.store offset=76
  local.get $19
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $19
  i32.load
  call_indirect (type $0)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 96
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  global.get $closure-stress/counter1
  local.tee $20
  i32.store offset=80
  local.get $20
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $20
  i32.load
  call_indirect (type $0)
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 97
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testBidirectionalMutation
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 112
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testSharedMutation
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 127
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testOuterScopeMutation
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 142
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 10
  call $closure-stress/curriedAdd
  global.set $closure-stress/addTo10
  i32.const 5
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/addTo10
  local.tee $21
  i32.store offset=84
  local.get $21
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $21
  i32.load
  call_indirect (type $1)
  i32.const 15
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 153
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 20
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/addTo10
  local.tee $22
  i32.store offset=88
  local.get $22
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $22
  i32.load
  call_indirect (type $1)
  i32.const 30
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 154
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  call $closure-stress/makeGreaterThan
  global.set $closure-stress/greaterThan5
  i32.const 10
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/greaterThan5
  local.tee $23
  i32.store offset=92
  local.get $23
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $23
  i32.load
  call_indirect (type $1)
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 161
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/greaterThan5
  local.tee $24
  i32.store offset=96
  local.get $24
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $24
  i32.load
  call_indirect (type $1)
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/simpleClosureArray
  i32.const 60
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 183
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $closure-stress/closureInConditional
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 199
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $closure-stress/closureInConditional
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 200
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/closureEscapingBlock
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 216
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/captureArray
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 233
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/mutateCapturedArray
  i32.const 24
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 257
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/captureClassInstance
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 280
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testMapWithClosure
  i32.const 60
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 306
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testFilterWithClosure
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 330
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testReduceWithClosure
  i32.const 115
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 357
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  call $closure-stress/makeAdder
  global.set $closure-stress/add5
  i32.const 10
  call $closure-stress/makeAdder
  global.set $closure-stress/add10
  i32.const 3
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/add5
  local.tee $25
  i32.store offset=100
  local.get $25
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $25
  i32.load
  call_indirect (type $1)
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 369
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/add10
  local.tee $26
  i32.store offset=104
  local.get $26
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $26
  i32.load
  call_indirect (type $1)
  i32.const 13
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 370
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/add10
  local.tee $27
  i32.store offset=112
  local.get $27
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $27
  i32.load
  call_indirect (type $1)
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/add5
  local.tee $28
  i32.store offset=108
  local.get $28
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $28
  i32.load
  call_indirect (type $1)
  i32.const 15
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 371
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $closure-stress/makeMultiplier
  global.set $closure-stress/double
  i32.const 3
  call $closure-stress/makeMultiplier
  global.set $closure-stress/triple
  i32.const 5
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/double
  local.tee $29
  i32.store offset=116
  local.get $29
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $29
  i32.load
  call_indirect (type $1)
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 379
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/triple
  local.tee $30
  i32.store offset=120
  local.get $30
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $30
  i32.load
  call_indirect (type $1)
  i32.const 15
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 380
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/triple
  local.tee $31
  i32.store offset=128
  local.get $31
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $31
  i32.load
  call_indirect (type $1)
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/double
  local.tee $32
  i32.store offset=124
  local.get $32
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $32
  i32.load
  call_indirect (type $1)
  i32.const 24
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 381
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-stress/double
  local.set $41
  global.get $~lib/memory/__stack_pointer
  local.get $41
  i32.store offset=132
  local.get $41
  global.get $closure-stress/add5
  local.set $41
  global.get $~lib/memory/__stack_pointer
  local.get $41
  i32.store offset=136
  local.get $41
  call $closure-stress/compose
  global.set $closure-stress/addThenDouble
  i32.const 3
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/addThenDouble
  local.tee $33
  i32.store offset=140
  local.get $33
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $33
  i32.load
  call_indirect (type $1)
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 388
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testMemoization
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 424
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  call $closure-stress/emptyClosure
  local.tee $34
  i32.store offset=144
  local.get $34
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $34
  i32.load
  call_indirect (type $0)
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 434
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/captureOnlyNoParams
  i32.const 30
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 443
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/ignoreCapture
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 451
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $closure-stress/multipleClosureReturns
  local.tee $35
  i32.store offset=148
  local.get $35
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $35
  i32.load
  call_indirect (type $0)
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 467
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 1
  call $closure-stress/multipleClosureReturns
  local.tee $36
  i32.store offset=152
  local.get $36
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $36
  i32.load
  call_indirect (type $0)
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 468
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 2
  call $closure-stress/multipleClosureReturns
  local.tee $37
  i32.store offset=156
  local.get $37
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $37
  i32.load
  call_indirect (type $0)
  i32.const 30
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 469
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/makeFactorial
  global.set $closure-stress/fact
  i32.const 5
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/fact
  local.tee $38
  i32.store offset=160
  local.get $38
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $38
  i32.load
  call_indirect (type $1)
  i32.const 120
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 483
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  global.get $closure-stress/fact
  local.tee $39
  i32.store offset=164
  local.get $39
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $39
  i32.load
  call_indirect (type $1)
  i32.const 720
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 484
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/captureSmallTypes
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 496
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/manyClosuresSameEnv
  i32.const 15
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 517
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/manyCaptures
  i32.const 78
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 529
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/simpleIIFE
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 539
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/closureArrayOps
  i32.const 450
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 564
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/interleavedClosures
  i32.const 123
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 585
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/captureString
  local.set $41
  global.get $~lib/memory/__stack_pointer
  local.get $41
  i32.store offset=132
  local.get $41
  i32.const 2816
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 597
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/mutateStringRef
  local.set $41
  global.get $~lib/memory/__stack_pointer
  local.get $41
  i32.store offset=132
  local.get $41
  i32.const 3104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 611
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testNestedClosureFunctions
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 634
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testRangeWithClosure
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 654
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  call $closure-stress/add
  global.set $closure-stress/addResult
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  global.get $closure-stress/addResult
  local.tee $40
  i32.store offset=168
  local.get $40
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $40
  i32.load
  call_indirect (type $0)
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 662
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testTwoClosuresSameVar
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 682
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testDeeplyNestedClosures
  i32.const 111
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 707
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-stress/testClosureEscapesFunction
  i32.const 113
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 746
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 172
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%29=>i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28%29=>i32>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%29=>i64>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28%29=>i64>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%29=>f32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28%29=>f32>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%29=>f64>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28%29=>f64>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%29=>bool>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28%29=>bool>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28i32%29=>void>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28i32%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%29=>void>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28i32%29=>i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28i32%29=>i32>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28i32%29=>bool>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28i32%29=>bool>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28%29=>i32>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<%28%29=>i32>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<%28%29=>i32>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<%28%29=>i32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
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
 (func $~lib/function/Function<%28i32%2Ci32%29=>i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28i32%2Ci32%29=>i32>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $"~lib/map/Map<i32,i32>#__visit" (param $this i32) (param $cookie i32)
  (local $entries i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $"~lib/map/Map<i32,i32>#get:buckets"
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $"~lib/map/Map<i32,i32>#get:entries"
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%29=>~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28%29=>~lib/string/String>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/string/String%29=>void>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/string/String%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-stress/testBidirectionalMutation (result i32)
  (local $$env i32)
  (local $value i32)
  (local $2 i32)
  (local $setter i32)
  (local $4 i32)
  (local $getter i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 9
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 11
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $setter
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 12
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.tee $getter
  i32.store offset=4
  i32.const 10
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $setter
  local.tee $6
  i32.store offset=8
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getter
  local.tee $7
  i32.store offset=12
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $0)
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 106
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 20
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $setter
  local.tee $8
  i32.store offset=16
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getter
  local.tee $9
  i32.store offset=20
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $0)
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 108
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getter
  local.tee $10
  i32.store offset=24
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $0)
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $closure-stress/testSharedMutation (result i32)
  (local $$env i32)
  (local $value i32)
  (local $2 i32)
  (local $inc i32)
  (local $4 i32)
  (local $dec i32)
  (local $6 i32)
  (local $get i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 13
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $inc
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 14
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.tee $dec
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $6
  local.get $6
  i32.const 15
  i32.store
  local.get $6
  local.get $$env
  i32.store offset=4
  local.get $6
  local.tee $get
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc
  local.tee $8
  i32.store offset=12
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc
  local.tee $9
  i32.store offset=16
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc
  local.tee $10
  i32.store offset=20
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $dec
  local.tee $11
  i32.store offset=24
  local.get $11
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $11
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc
  local.tee $12
  i32.store offset=28
  local.get $12
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $12
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc
  local.tee $13
  i32.store offset=32
  local.get $13
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $13
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get
  local.tee $14
  i32.store offset=36
  local.get $14
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $14
  i32.load
  call_indirect (type $0)
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
  return
 )
 (func $closure-stress/testOuterScopeMutation (result i32)
  (local $$env i32)
  (local $value i32)
  (local $2 i32)
  (local $double i32)
  (local $4 i32)
  (local $get i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 5
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 16
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $double
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 17
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.tee $get
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $double
  local.tee $6
  i32.store offset=8
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get
  local.tee $7
  i32.store offset=12
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $0)
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 136
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $double
  local.tee $8
  i32.store offset=16
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get
  local.tee $9
  i32.store offset=20
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $0)
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 138
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get
  local.tee $10
  i32.store offset=24
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $0)
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $closure-stress/closureInConditional (param $useFirst i32) (result i32)
  (local $$env i32)
  (local $a i32)
  (local $b i32)
  (local $getter i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 10
  i32.store offset=4
  local.get $$env
  i32.const 20
  i32.store offset=8
  local.get $useFirst
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.set $5
   local.get $5
   i32.const 23
   i32.store
   local.get $5
   local.get $$env
   i32.store offset=4
   local.get $5
   local.tee $getter
   i32.store
  else
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.set $6
   local.get $6
   i32.const 24
   i32.store
   local.get $6
   local.get $$env
   i32.store offset=4
   local.get $6
   local.tee $getter
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getter
  local.tee $7
  i32.store offset=4
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $0)
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $closure-stress/closureEscapingBlock (result i32)
  (local $$env i32)
  (local $value i32)
  (local $captured i32)
  (local $inner i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  i32.const 0
  local.set $value
  local.get $$env
  i32.const 42
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 25
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.tee $captured
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $captured
  local.tee $5
  i32.store offset=4
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $0)
  local.set $value
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $captured
  local.tee $6
  i32.store offset=8
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $0)
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
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
 (func $closure-stress/captureClassInstance (result i32)
  (local $$env i32)
  (local $c i32)
  (local $2 i32)
  (local $inc i32)
  (local $4 i32)
  (local $get i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 0
  call $closure-stress/Counter#constructor
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 29
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $inc
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 30
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.tee $get
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc
  local.tee $6
  i32.store offset=8
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc
  local.tee $7
  i32.store offset=12
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc
  local.tee $8
  i32.store offset=16
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get
  local.tee $9
  i32.store offset=20
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $0)
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $closure-stress/compose~anonymous|0 (param $x i32) (result i32)
  (local $$closureEnv i32)
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
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $x
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $$closureEnv
  i32.load offset=8
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $2
  i32.load
  call_indirect (type $1)
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $$closureEnv
  i32.load offset=4
  local.tee $3
  i32.store
  local.get $3
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $3
  i32.load
  call_indirect (type $1)
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $this i32) (param $length i32) (result i32)
  (local $buffer i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $length
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1104
   i32.const 1936
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $length
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $closure-stress/captureOnlyNoParams (result i32)
  (local $$env i32)
  (local $x i32)
  (local $y i32)
  (local $3 i32)
  (local $fn i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 10
  i32.store offset=4
  local.get $$env
  i32.const 20
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  i32.const 41
  i32.store
  local.get $3
  local.get $$env
  i32.store offset=4
  local.get $3
  local.tee $fn
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $fn
  local.tee $5
  i32.store offset=4
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $0)
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $closure-stress/ignoreCapture (result i32)
  (local $unused i32)
  (local $fn i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 999
  local.set $unused
  global.get $~lib/memory/__stack_pointer
  i32.const 2208
  local.tee $fn
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $fn
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $2
  i32.load
  call_indirect (type $0)
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $closure-stress/captureSmallTypes (result i32)
  (local $$env i32)
  (local $a i32)
  (local $b i32)
  (local $c i32)
  (local $d i32)
  (local $5 i32)
  (local $fn i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 10
  i32.store8 offset=4
  local.get $$env
  i32.const 20
  i32.store8 offset=5
  local.get $$env
  i32.const 30
  i32.store16 offset=6
  local.get $$env
  i32.const 40
  i32.store16 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $5
  local.get $5
  i32.const 47
  i32.store
  local.get $5
  local.get $$env
  i32.store offset=4
  local.get $5
  local.tee $fn
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $fn
  local.tee $7
  i32.store offset=4
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $0)
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $closure-stress/manyClosuresSameEnv (result i32)
  (local $$env i32)
  (local $value i32)
  (local $2 i32)
  (local $inc1 i32)
  (local $4 i32)
  (local $inc2 i32)
  (local $6 i32)
  (local $inc3 i32)
  (local $8 i32)
  (local $inc4 i32)
  (local $10 i32)
  (local $inc5 i32)
  (local $12 i32)
  (local $get i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 48
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $inc1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 49
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.tee $inc2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $6
  local.get $6
  i32.const 50
  i32.store
  local.get $6
  local.get $$env
  i32.store offset=4
  local.get $6
  local.tee $inc3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $8
  local.get $8
  i32.const 51
  i32.store
  local.get $8
  local.get $$env
  i32.store offset=4
  local.get $8
  local.tee $inc4
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $10
  local.get $10
  i32.const 52
  i32.store
  local.get $10
  local.get $$env
  i32.store offset=4
  local.get $10
  local.tee $inc5
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $12
  local.get $12
  i32.const 53
  i32.store
  local.get $12
  local.get $$env
  i32.store offset=4
  local.get $12
  local.tee $get
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc1
  local.tee $14
  i32.store offset=24
  local.get $14
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $14
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc2
  local.tee $15
  i32.store offset=28
  local.get $15
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $15
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc3
  local.tee $16
  i32.store offset=32
  local.get $16
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $16
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc4
  local.tee $17
  i32.store offset=36
  local.get $17
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $17
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc5
  local.tee $18
  i32.store offset=40
  local.get $18
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $18
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get
  local.tee $19
  i32.store offset=44
  local.get $19
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $19
  i32.load
  call_indirect (type $0)
  local.set $20
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $20
  return
 )
 (func $closure-stress/manyCaptures (result i32)
  (local $$env i32)
  (local $a i32)
  (local $b i32)
  (local $c i32)
  (local $d i32)
  (local $e i32)
  (local $f i32)
  (local $g i32)
  (local $h i32)
  (local $i i32)
  (local $j i32)
  (local $k i32)
  (local $l i32)
  (local $13 i32)
  (local $fn i32)
  (local $15 i32)
  (local $16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 52
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 1
  i32.store offset=4
  local.get $$env
  i32.const 2
  i32.store offset=8
  local.get $$env
  i32.const 3
  i32.store offset=12
  local.get $$env
  i32.const 4
  i32.store offset=16
  local.get $$env
  i32.const 5
  i32.store offset=20
  local.get $$env
  i32.const 6
  i32.store offset=24
  local.get $$env
  i32.const 7
  i32.store offset=28
  local.get $$env
  i32.const 8
  i32.store offset=32
  local.get $$env
  i32.const 9
  i32.store offset=36
  local.get $$env
  i32.const 10
  i32.store offset=40
  local.get $$env
  i32.const 11
  i32.store offset=44
  local.get $$env
  i32.const 12
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $13
  local.get $13
  i32.const 54
  i32.store
  local.get $13
  local.get $$env
  i32.store offset=4
  local.get $13
  local.tee $fn
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $fn
  local.tee $15
  i32.store offset=4
  local.get $15
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $15
  i32.load
  call_indirect (type $0)
  local.set $16
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $16
  return
 )
 (func $closure-stress/simpleIIFE (result i32)
  (local $$env i32)
  (local $v1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 55
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $3
  i32.store
  local.get $3
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $3
  i32.load
  call_indirect (type $0)
  local.set $result
  local.get $result
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $closure-stress/interleavedClosures (result i32)
  (local $$env i32)
  (local $total i32)
  (local $2 i32)
  (local $get i32)
  (local $4 i32)
  (local $add1 i32)
  (local $6 i32)
  (local $7 i32)
  (local $add10 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $add100 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 57
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $get
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 58
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.tee $add1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $add1
  local.tee $6
  i32.store offset=8
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $7
  local.get $7
  i32.const 59
  i32.store
  local.get $7
  local.get $$env
  i32.store offset=4
  local.get $7
  local.tee $add10
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $add1
  local.tee $9
  i32.store offset=16
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $add10
  local.tee $10
  i32.store offset=20
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 10
  call $~lib/rt/itcms/__new
  local.set $11
  local.get $11
  i32.const 60
  i32.store
  local.get $11
  local.get $$env
  i32.store offset=4
  local.get $11
  local.tee $add100
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $add1
  local.tee $13
  i32.store offset=28
  local.get $13
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $13
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $add10
  local.tee $14
  i32.store offset=32
  local.get $14
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $14
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $add100
  local.tee $15
  i32.store offset=36
  local.get $15
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $15
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get
  local.tee $16
  i32.store offset=40
  local.get $16
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $16
  i32.load
  call_indirect (type $0)
  local.set $17
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $17
  return
 )
 (func $closure-stress/captureString (result i32)
  (local $$env i32)
  (local $s i32)
  (local $2 i32)
  (local $fn i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 2816
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 18
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 61
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $fn
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $fn
  local.tee $4
  i32.store offset=4
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $0)
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $closure-stress/mutateStringRef (result i32)
  (local $$env i32)
  (local $s i32)
  (local $2 i32)
  (local $append i32)
  (local $4 i32)
  (local $get i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 2880
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 19
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 62
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $append
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 18
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 63
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.tee $get
  i32.store offset=4
  i32.const 3008
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $append
  local.tee $6
  i32.store offset=8
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $5)
  i32.const 3040
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $append
  local.tee $7
  i32.store offset=12
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $5)
  i32.const 3072
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $append
  local.tee $8
  i32.store offset=16
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get
  local.tee $9
  i32.store offset=20
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $0)
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $closure-stress/testNestedClosureFunctions~anonymous|0 (result i32)
  (local $$closureEnv i32)
  (local $1 i32)
  (local $innerInner i32)
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
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $1
  local.get $1
  i32.const 64
  i32.store
  local.get $1
  local.get $$closureEnv
  i32.store offset=4
  local.get $1
  local.tee $innerInner
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $innerInner
  local.tee $3
  i32.store offset=4
  local.get $3
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $3
  i32.load
  call_indirect (type $0)
  drop
  local.get $$closureEnv
  i32.load offset=4
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $closure-stress/testNestedClosureFunctions (result i32)
  (local $$env i32)
  (local $x i32)
  (local $2 i32)
  (local $inner i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 65
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $inner
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inner
  local.tee $4
  i32.store offset=4
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $0)
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $closure-stress/testTwoClosuresSameVar (result i32)
  (local $$env i32)
  (local $a i32)
  (local $2 i32)
  (local $b i32)
  (local $4 i32)
  (local $c i32)
  (local $6 i32)
  (local $br i32)
  (local $8 i32)
  (local $cr i32)
  (local $10 i32)
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
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 68
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $b
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 69
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  local.tee $c
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $b
  local.tee $6
  i32.store offset=8
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $0)
  local.set $br
  local.get $br
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 675
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $c
  local.tee $8
  i32.store offset=12
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $0)
  local.set $cr
  local.get $cr
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 677
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $$env
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 464
   i32.const 678
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $$env
  i32.load offset=4
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $closure-stress/testDeeplyNestedClosures~anonymous|0~anonymous|0 (result i32)
  (local $$closureEnv i32)
  (local $$env i32)
  (local $level3 i32)
  (local $3 i32)
  (local $fn3 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.set $$closureEnv
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  local.get $$closureEnv
  i32.store
  local.get $$env
  i32.const 100
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  i32.const 70
  i32.store
  local.get $3
  local.get $$env
  i32.store offset=4
  local.get $3
  local.tee $fn3
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $fn3
  local.tee $5
  i32.store offset=4
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $0)
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $closure-stress/testDeeplyNestedClosures~anonymous|0 (result i32)
  (local $$closureEnv i32)
  (local $$env i32)
  (local $level2 i32)
  (local $3 i32)
  (local $fn2 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.set $$closureEnv
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  local.get $$closureEnv
  i32.store
  local.get $$env
  i32.const 10
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  i32.const 71
  i32.store
  local.get $3
  local.get $$env
  i32.store offset=4
  local.get $3
  local.tee $fn2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $fn2
  local.tee $5
  i32.store offset=4
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $0)
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $closure-stress/testDeeplyNestedClosures (result i32)
  (local $$env i32)
  (local $level1 i32)
  (local $2 i32)
  (local $fn1 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  i32.const 1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 72
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  local.tee $fn1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $fn1
  local.tee $4
  i32.store offset=4
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $0)
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
)
