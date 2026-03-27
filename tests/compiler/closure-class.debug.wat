(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (result i32)))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i32) (result i32)))
 (type $5 (func))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func (param i32 i32 i32) (result i32)))
 (type $8 (func (param i32 i32 i32 i32)))
 (type $9 (func (param i32 i32 i32 i32) (result i32)))
 (type $10 (func (param i32 i32 i64) (result i32)))
 (type $11 (func (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
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
 (global $~lib/__closure_env (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $~lib/rt/__rtti_base i32 (i32.const 2896))
 (global $~lib/memory/__data_end i32 (i32.const 3068))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 35836))
 (global $~lib/memory/__heap_base i32 (i32.const 35836))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $1 (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 144) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 412) "\1c\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 444) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 476) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00c\00l\00o\00s\00u\00r\00e\00-\00c\00l\00a\00s\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 540) "\1c\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 572) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00")
 (data $13 (i32.const 604) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00")
 (data $14 (i32.const 636) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 668) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00")
 (data $16 (i32.const 700) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00")
 (data $17 (i32.const 732) "\1c\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\08\00\00\00\t\00\00\00\00\00\00\00\00\00\00\00")
 (data $18 (i32.const 764) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00R\00e\00x\00\00\00\00\00\00\00")
 (data $19 (i32.const 796) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00G\00e\00r\00m\00a\00n\00 \00S\00h\00e\00p\00h\00e\00r\00d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $20 (i32.const 860) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\n\00\00\00\00\00\00\00\00\00\00\00")
 (data $21 (i32.const 892) "\1c\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\0b\00\00\00\00\00\00\00\00\00\00\00")
 (data $22 (i32.const 924) "\1c\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\08\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00")
 (data $23 (i32.const 956) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $24 (i32.const 1004) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $25 (i32.const 1052) "\1c\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\08\00\00\00\r\00\00\00\00\00\00\00\00\00\00\00")
 (data $26 (i32.const 1084) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $27 (i32.const 1212) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00*\00\00\00\00\00\00\00\00\00\00\00")
 (data $28 (i32.const 1244) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $29 (i32.const 1276) "\1c\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\08\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00")
 (data $30 (i32.const 1308) "\1c\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\08\00\00\00\0f\00\00\00\00\00\00\00\00\00\00\00")
 (data $31 (i32.const 1340) "\1c\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\08\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00")
 (data $32 (i32.const 1372) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00S\00E\00L\00E\00C\00T\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $33 (i32.const 1420) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00 \00F\00R\00O\00M\00 \00")
 (data $34 (i32.const 1452) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00 \00W\00H\00E\00R\00E\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $35 (i32.const 1500) "\1c\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\08\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00")
 (data $36 (i32.const 1532) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\10\00\00\00i\00d\00,\00 \00n\00a\00m\00e\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $37 (i32.const 1580) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00u\00s\00e\00r\00s\00\00\00")
 (data $38 (i32.const 1612) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00a\00c\00t\00i\00v\00e\00 \00=\00 \001\00\00\00\00\00\00\00\00\00")
 (data $39 (i32.const 1660) "l\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00V\00\00\00S\00E\00L\00E\00C\00T\00 \00i\00d\00,\00 \00n\00a\00m\00e\00 \00F\00R\00O\00M\00 \00u\00s\00e\00r\00s\00 \00W\00H\00E\00R\00E\00 \00a\00c\00t\00i\00v\00e\00 \00=\00 \001\00\00\00\00\00\00\00")
 (data $40 (i32.const 1772) "\1c\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\08\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00")
 (data $41 (i32.const 1804) "\1c\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\08\00\00\00\13\00\00\00\00\00\00\00\00\00\00\00")
 (data $42 (i32.const 1836) "\1c\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\08\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00")
 (data $43 (i32.const 1868) "\1c\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\15\00\00\00\00\00\00\00\00\00\00\00")
 (data $44 (i32.const 1900) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00")
 (data $45 (i32.const 1932) "\1c\00\00\00\00\00\00\00\00\00\00\00\19\00\00\00\08\00\00\00\17\00\00\00\00\00\00\00\00\00\00\00")
 (data $46 (i32.const 1964) "\1c\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\08\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00")
 (data $47 (i32.const 1996) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\19\00\00\00\00\00\00\00\00\00\00\00")
 (data $48 (i32.const 2028) "\1c\00\00\00\00\00\00\00\00\00\00\00\1b\00\00\00\08\00\00\00\1a\00\00\00\00\00\00\00\00\00\00\00")
 (data $49 (i32.const 2060) "\1c\00\00\00\00\00\00\00\00\00\00\00\1b\00\00\00\08\00\00\00\1b\00\00\00\00\00\00\00\00\00\00\00")
 (data $50 (i32.const 2092) "\1c\00\00\00\00\00\00\00\00\00\00\00\1d\00\00\00\08\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00")
 (data $51 (i32.const 2124) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\1d\00\00\00\00\00\00\00\00\00\00\00")
 (data $52 (i32.const 2156) "\1c\00\00\00\00\00\00\00\00\00\00\00\1e\00\00\00\08\00\00\00\1e\00\00\00\00\00\00\00\00\00\00\00")
 (data $53 (i32.const 2188) "\1c\00\00\00\00\00\00\00\00\00\00\00\1e\00\00\00\08\00\00\00\1f\00\00\00\00\00\00\00\00\00\00\00")
 (data $54 (i32.const 2220) "\1c\00\00\00\00\00\00\00\00\00\00\00\1e\00\00\00\08\00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data $55 (i32.const 2252) "\1c\00\00\00\00\00\00\00\00\00\00\00\1f\00\00\00\08\00\00\00!\00\00\00\00\00\00\00\00\00\00\00")
 (data $56 (i32.const 2284) "\1c\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\08\00\00\00\"\00\00\00\00\00\00\00\00\00\00\00")
 (data $57 (i32.const 2316) "\1c\00\00\00\00\00\00\00\00\00\00\00\"\00\00\00\08\00\00\00#\00\00\00\00\00\00\00\00\00\00\00")
 (data $58 (i32.const 2348) "\1c\00\00\00\00\00\00\00\00\00\00\00\"\00\00\00\08\00\00\00$\00\00\00\00\00\00\00\00\00\00\00")
 (data $59 (i32.const 2380) "\1c\00\00\00\00\00\00\00\00\00\00\00$\00\00\00\08\00\00\00%\00\00\00\00\00\00\00\00\00\00\00")
 (data $60 (i32.const 2412) "\1c\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\08\00\00\00&\00\00\00\00\00\00\00\00\00\00\00")
 (data $61 (i32.const 2444) "\1c\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\08\00\00\00\'\00\00\00\00\00\00\00\00\00\00\00")
 (data $62 (i32.const 2476) "\1c\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\08\00\00\00(\00\00\00\00\00\00\00\00\00\00\00")
 (data $63 (i32.const 2508) "\1c\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\08\00\00\00)\00\00\00\00\00\00\00\00\00\00\00")
 (data $64 (i32.const 2540) "\1c\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\08\00\00\00*\00\00\00\00\00\00\00\00\00\00\00")
 (data $65 (i32.const 2572) "\1c\00\00\00\00\00\00\00\00\00\00\00&\00\00\00\08\00\00\00+\00\00\00\00\00\00\00\00\00\00\00")
 (data $66 (i32.const 2604) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00,\00\00\00\00\00\00\00\00\00\00\00")
 (data $67 (i32.const 2636) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00-\00\00\00\00\00\00\00\00\00\00\00")
 (data $68 (i32.const 2668) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00.\00\00\00\00\00\00\00\00\00\00\00")
 (data $69 (i32.const 2700) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00/\00\00\00\00\00\00\00\00\00\00\00")
 (data $70 (i32.const 2732) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $71 (i32.const 2764) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\001\00\00\00\00\00\00\00\00\00\00\00")
 (data $72 (i32.const 2796) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\002\00\00\00\00\00\00\00\00\00\00\00")
 (data $73 (i32.const 2828) "\1c\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\08\00\00\003\00\00\00\00\00\00\00\00\00\00\00")
 (data $74 (i32.const 2860) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\004\00\00\00\00\00\00\00\00\00\00\00")
 (data $75 (i32.const 2896) "*\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\02A\00\00 \00\00\00")
 (table $0 53 53 funcref)
 (elem $0 (i32.const 1) $closure-class/Counter#getIncrementClosure~anonymous|0 $closure-class/Counter#getCountClosure~anonymous|0 $closure-class/BankAccount#getDepositClosure~anonymous|0 $closure-class/BankAccount#getWithdrawClosure~anonymous|0 $closure-class/BankAccount#getBalanceClosure~anonymous|0 $closure-class/BankAccount#getTransactionCountClosure~anonymous|0 $closure-class/Calculator#getOperationClosure~anonymous|0 $closure-class/Outer#getComputeClosure~anonymous|0 $closure-class/Outer#getInnerSetterClosure~anonymous|0 $closure-class/Animal#getAgeClosure~anonymous|0 $closure-class/Animal#getAgeIncrementClosure~anonymous|0 $closure-class/Dog#getBreedClosure~anonymous|0 $closure-class/DataProcessor#getProcessorClosure~anonymous|0 $closure-class/QueryBuilder#getSelectClosure~anonymous|0 $closure-class/QueryBuilder#getFromClosure~anonymous|0 $closure-class/QueryBuilder#getWhereClosure~anonymous|0 $closure-class/QueryBuilder#getBuildClosure~anonymous|0 $closure-class/StateMachine#getStartClosure~anonymous|0 $closure-class/StateMachine#getPauseClosure~anonymous|0 $closure-class/StateMachine#getStopClosure~anonymous|0 $closure-class/StateMachine#getResetClosure~anonymous|0 $closure-class/StateMachine#getStateClosure~anonymous|0 $closure-class/Observable#getSubscribeClosure~anonymous|0 $closure-class/Observable#getSetClosure~anonymous|0 $closure-class/Observable#getGetClosure~anonymous|0 $closure-class/ObserverState#getCountObserver~anonymous|0 $closure-class/ObserverState#getDiffObserver~anonymous|0 $closure-class/Box#getMapClosure~anonymous|0 $closure-class/Box#getValueClosure~anonymous|0 $closure-class/testBoxMap~anonymous|0 $closure-class/testBoxMap~anonymous|1 $closure-class/testBoxMap~anonymous|2 $closure-class/Box#getFlatMapClosure~anonymous|0 $closure-class/testBoxFlatMap~anonymous|0 $closure-class/ChainableCounter#getAddClosure~anonymous|0 $closure-class/ChainableCounter#getMultiplyClosure~anonymous|0 $closure-class/Task#getThenClosure~anonymous|0 $closure-class/Task#getCompleteClosure~anonymous|0 $closure-class/testTaskCallbacks~anonymous|0 $closure-class/testTaskCallbackAfterComplete~anonymous|0 $closure-class/Resource#getAcquireClosure~anonymous|0 $closure-class/Resource#getReleaseClosure~anonymous|0 $closure-class/Resource#getUseClosure~anonymous|0 $closure-class/testResourceManagement~anonymous|0 $closure-class/testResourceManagement~anonymous|1 $closure-class/testResourceManagement~anonymous|2 $closure-class/testResourceManagement~anonymous|3 $closure-class/testResourceManagement~anonymous|4 $closure-class/TreeNode#getSumClosure~anonymous|0 $closure-class/TreeNode#getDepthClosure~anonymous|0 $closure-class/Range#getHasNextClosure~anonymous|0 $closure-class/Range#getNextClosure~anonymous|0)
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
     i32.const 96
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
    i32.const 96
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
   i32.const 96
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
   i32.const 224
   i32.const 288
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
    i32.const 96
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
   i32.const 368
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
   i32.const 368
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
   i32.const 368
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
   i32.const 368
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
   i32.const 368
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
    i32.const 368
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
   i32.const 368
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
   i32.const 368
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
   i32.const 368
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
   i32.const 368
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
    i32.const 368
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
    i32.const 368
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
   i32.const 368
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
     i32.const 96
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
   i32.const 32
   i32.const 368
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
   i32.const 368
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
     i32.const 368
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
   i32.const 368
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
    i32.const 368
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
   i32.const 368
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
   i32.const 32
   i32.const 96
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
 (func $closure-class/Counter#set:count (param $this i32) (param $count i32)
  local.get $this
  local.get $count
  i32.store
 )
 (func $closure-class/Counter#get:count (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/Counter#getIncrementClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 5
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
 (func $closure-class/Counter#getCountClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 6
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
 (func $closure-class/BankAccount#set:balance (param $this i32) (param $balance i32)
  local.get $this
  local.get $balance
  i32.store
 )
 (func $closure-class/BankAccount#set:transactionCount (param $this i32) (param $transactionCount i32)
  local.get $this
  local.get $transactionCount
  i32.store offset=4
 )
 (func $closure-class/BankAccount#get:balance (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/BankAccount#get:transactionCount (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/BankAccount#getDepositClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 8
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
 (func $closure-class/BankAccount#getWithdrawClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 9
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
 (func $closure-class/BankAccount#getBalanceClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 6
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
 (func $closure-class/BankAccount#getTransactionCountClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 6
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Calculator#set:result (param $this i32) (param $result i32)
  local.get $this
  local.get $result
  i32.store
 )
 (func $closure-class/Calculator#get:result (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/Calculator#getOperationClosure (param $this i32) (param $operand i32) (param $operation i32) (result i32)
  (local $$env i32)
  (local $4 i32)
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $operation
  i32.store offset=4
  local.get $$env
  local.get $this
  i32.store offset=8
  local.get $$env
  local.get $operand
  i32.store offset=12
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.set $4
  local.get $4
  i32.const 7
  i32.store
  local.get $4
  local.get $$env
  i32.store offset=4
  local.get $4
  return
 )
 (func $closure-class/Inner#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store
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
   i32.const 96
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
 (func $closure-class/Outer#set:inner (param $this i32) (param $inner i32)
  local.get $this
  local.get $inner
  i32.store
  local.get $this
  local.get $inner
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $closure-class/Outer#set:multiplier (param $this i32) (param $multiplier i32)
  local.get $this
  local.get $multiplier
  i32.store offset=4
 )
 (func $closure-class/Outer#get:inner (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/Inner#get:value (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/Outer#get:multiplier (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/Outer#getComputeClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 8
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Outer#getInnerSetterClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 8
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 9
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Animal#set:name (param $this i32) (param $name i32)
  local.get $this
  local.get $name
  i32.store
  local.get $this
  local.get $name
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $closure-class/Animal#set:age (param $this i32) (param $age i32)
  local.get $this
  local.get $age
  i32.store offset=4
 )
 (func $closure-class/Dog#set:breed (param $this i32) (param $breed i32)
  local.get $this
  local.get $breed
  i32.store offset=8
  local.get $this
  local.get $breed
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $closure-class/Animal#get:age (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/Animal#getAgeClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 6
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
 (func $closure-class/Animal#getAgeIncrementClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 5
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 11
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Dog#get:breed (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $closure-class/Dog#getBreedClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 15
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 12
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
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
 (func $~lib/array/Array<%28i32%29=>void>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<%28i32%29=>void>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<%28i32%29=>void>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<%28i32%29=>void>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $closure-class/EventEmitter#set:listeners (param $this i32) (param $listeners i32)
  local.get $this
  local.get $listeners
  i32.store
  local.get $this
  local.get $listeners
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $closure-class/DataProcessor#set:processedCount (param $this i32) (param $processedCount i32)
  local.get $this
  local.get $processedCount
  i32.store
 )
 (func $closure-class/DataProcessor#set:lastValue (param $this i32) (param $lastValue i32)
  local.get $this
  local.get $lastValue
  i32.store offset=4
 )
 (func $closure-class/DataProcessor#set:sum (param $this i32) (param $sum i32)
  local.get $this
  local.get $sum
  i32.store offset=8
 )
 (func $closure-class/DataProcessor#get:processedCount (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/DataProcessor#get:sum (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $closure-class/DataProcessor#getProcessorClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 8
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 13
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/EventEmitter#get:listeners (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<%28i32%29=>void>#get:length_ (param $this i32) (result i32)
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
 (func $~lib/array/Array<%28i32%29=>void>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/DataProcessor#get:lastValue (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/QueryBuilder#set:selectFields (param $this i32) (param $selectFields i32)
  local.get $this
  local.get $selectFields
  i32.store
  local.get $this
  local.get $selectFields
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $closure-class/QueryBuilder#set:tableName (param $this i32) (param $tableName i32)
  local.get $this
  local.get $tableName
  i32.store offset=4
  local.get $this
  local.get $tableName
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $closure-class/QueryBuilder#set:whereClause (param $this i32) (param $whereClause i32)
  local.get $this
  local.get $whereClause
  i32.store offset=8
  local.get $this
  local.get $whereClause
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $closure-class/QueryBuilder#getSelectClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 20
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 14
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/QueryBuilder#getFromClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 20
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 15
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/QueryBuilder#getWhereClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 20
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 16
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/QueryBuilder#get:selectFields (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/QueryBuilder#get:tableName (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/QueryBuilder#get:whereClause (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $closure-class/QueryBuilder#getBuildClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 15
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 17
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/StateMachine#set:state (param $this i32) (param $state i32)
  local.get $this
  local.get $state
  i32.store
 )
 (func $closure-class/StateMachine#get:state (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/StateMachine#getStartClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 22
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
 (func $closure-class/StateMachine#getPauseClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 22
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
 (func $closure-class/StateMachine#getStopClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 22
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 20
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/StateMachine#getResetClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 5
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 21
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/StateMachine#getStateClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 22
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Observable#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $closure-class/Observable#set:observers (param $this i32) (param $observers i32)
  local.get $this
  local.get $observers
  i32.store offset=4
  local.get $this
  local.get $observers
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $closure-class/Observable#get:observers (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/Observable#getSubscribeClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 25
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 23
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Observable#get:value (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/Observable#getSetClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 8
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 24
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Observable#getGetClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 25
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/ObserverState#set:changeCount (param $this i32) (param $changeCount i32)
  local.get $this
  local.get $changeCount
  i32.store
 )
 (func $closure-class/ObserverState#set:totalDiff (param $this i32) (param $totalDiff i32)
  local.get $this
  local.get $totalDiff
  i32.store offset=4
 )
 (func $closure-class/ObserverState#get:changeCount (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/ObserverState#getCountObserver (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 27
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 26
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/ObserverState#get:totalDiff (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/ObserverState#getDiffObserver (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 27
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 27
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Box#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store
 )
 (func $closure-class/Box#get:value (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/Box#getMapClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 29
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 28
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Box#getValueClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 29
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/testBoxMap~anonymous|0 (param $v i32) (result i32)
  local.get $v
  i32.const 2
  i32.mul
 )
 (func $closure-class/testBoxMap~anonymous|1 (param $v i32) (result i32)
  local.get $v
  i32.const 3
  i32.add
 )
 (func $closure-class/testBoxMap~anonymous|2 (param $v i32) (result i32)
  local.get $v
  local.get $v
  i32.mul
 )
 (func $closure-class/Box#getFlatMapClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 31
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 33
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/testBoxFlatMap~anonymous|0 (param $v i32) (result i32)
  i32.const 0
  local.get $v
  i32.const 10
  i32.mul
  call $closure-class/Box#constructor
 )
 (func $closure-class/ChainableCounter#set:count (param $this i32) (param $count i32)
  local.get $this
  local.get $count
  i32.store
 )
 (func $closure-class/ChainableCounter#get:count (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/ChainableCounter#getAddClosure (param $this i32) (param $amount i32) (result i32)
  (local $$env i32)
  (local $3 i32)
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  local.get $$env
  local.get $amount
  i32.store offset=8
  i32.const 8
  i32.const 34
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  i32.const 35
  i32.store
  local.get $3
  local.get $$env
  i32.store offset=4
  local.get $3
  return
 )
 (func $closure-class/ChainableCounter#getMultiplyClosure (param $this i32) (param $factor i32) (result i32)
  (local $$env i32)
  (local $3 i32)
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  local.get $$env
  local.get $factor
  i32.store offset=8
  i32.const 8
  i32.const 34
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  i32.const 36
  i32.store
  local.get $3
  local.get $$env
  i32.store offset=4
  local.get $3
  return
 )
 (func $closure-class/Task#set:completed (param $this i32) (param $completed i32)
  local.get $this
  local.get $completed
  i32.store8
 )
 (func $closure-class/Task#set:result (param $this i32) (param $result i32)
  local.get $this
  local.get $result
  i32.store offset=4
 )
 (func $closure-class/Task#set:callbacks (param $this i32) (param $callbacks i32)
  local.get $this
  local.get $callbacks
  i32.store offset=8
  local.get $this
  local.get $callbacks
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $closure-class/Task#get:completed (param $this i32) (result i32)
  local.get $this
  i32.load8_u
 )
 (func $closure-class/Task#get:result (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/Task#get:callbacks (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $closure-class/Task#getThenClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 36
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 37
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Task#getCompleteClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 8
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 38
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/testTaskCallbacks~anonymous|0 (param $result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $result
  i32.const 2
  i32.mul
  i32.store offset=4
 )
 (func $closure-class/testTaskCallbackAfterComplete~anonymous|0 (param $result i32)
  (local $$closureEnv i32)
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  local.get $result
  i32.store offset=4
 )
 (func $closure-class/Resource#set:acquired (param $this i32) (param $acquired i32)
  local.get $this
  local.get $acquired
  i32.store8
 )
 (func $closure-class/Resource#set:useCount (param $this i32) (param $useCount i32)
  local.get $this
  local.get $useCount
  i32.store offset=4
 )
 (func $closure-class/Resource#get:acquired (param $this i32) (result i32)
  local.get $this
  i32.load8_u
 )
 (func $closure-class/Resource#getAcquireClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 22
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 41
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Resource#getReleaseClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 22
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 42
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Resource#get:useCount (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/Resource#getUseClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 38
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 43
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/testResourceManagement~anonymous|0 (result i32)
  i32.const 42
 )
 (func $closure-class/testResourceManagement~anonymous|1 (result i32)
  i32.const 10
 )
 (func $closure-class/testResourceManagement~anonymous|2 (result i32)
  i32.const 20
 )
 (func $closure-class/testResourceManagement~anonymous|3 (result i32)
  i32.const 30
 )
 (func $closure-class/testResourceManagement~anonymous|4 (result i32)
  i32.const 42
 )
 (func $closure-class/TreeNode#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store
 )
 (func $~lib/array/Array<closure-class/TreeNode>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<closure-class/TreeNode>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<closure-class/TreeNode>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<closure-class/TreeNode>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $closure-class/TreeNode#set:children (param $this i32) (param $children i32)
  local.get $this
  local.get $children
  i32.store offset=4
  local.get $this
  local.get $children
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $closure-class/TreeNode#get:children (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<closure-class/TreeNode>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<closure-class/TreeNode>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/TreeNode#get:value (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/TreeNode#getSumClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 49
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/TreeNode#getDepthClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 50
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Range#set:current (param $this i32) (param $current i32)
  local.get $this
  local.get $current
  i32.store
 )
 (func $closure-class/Range#set:endVal (param $this i32) (param $endVal i32)
  local.get $this
  local.get $endVal
  i32.store offset=4
 )
 (func $closure-class/Range#set:step (param $this i32) (param $step i32)
  local.get $this
  local.get $step
  i32.store offset=8
 )
 (func $closure-class/Range#get:step (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $closure-class/Range#get:current (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $closure-class/Range#get:endVal (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $closure-class/Range#getHasNextClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 22
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 51
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $closure-class/Range#getNextClosure (param $this i32) (result i32)
  (local $$env i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $$env
  local.get $$env
  i32.const 0
  i32.store
  local.get $$env
  local.get $this
  i32.store offset=4
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $2
  i32.const 52
  i32.store
  local.get $2
  local.get $$env
  i32.store offset=4
  local.get $2
  return
 )
 (func $start:closure-class
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 144
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 176
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 320
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  call $closure-class/testBasicThisCapture
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 43
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testMultipleInstances
  i32.const 32
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 60
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testBankAccount
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 125
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testCalculatorClosures
  i32.const 24
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 168
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testNestedClosures
  i32.const 60
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 226
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testInheritanceClosures
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 285
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testEventEmitterPattern
  i32.const 120
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 345
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testBuilderPattern
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 403
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testStateMachine
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 486
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testObservable
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 562
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testBoxMap
  i32.const 169
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 604
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testBoxFlatMap
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 615
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testClosureChaining
  i32.const 35
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 662
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testTaskCallbacks
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 720
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testTaskCallbackAfterComplete
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 738
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testResourceManagement
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 814
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testTreePattern
  i32.const 2103
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 889
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testRangeIterator
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 944
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-class/testReverseRangeIterator
  i32.const 30
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 959
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 224
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 976
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1104
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
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
 (func $closure-class/Outer~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $closure-class/Dog~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $closure-class/Animal~visit
  local.get $0
  i32.load offset=8
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $closure-class/Animal~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
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
 (func $closure-class/EventEmitter~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<%28i32%29=>void>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<%28i32%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<%28i32%29=>void>#__visit
 )
 (func $closure-class/QueryBuilder~visit (param $0 i32) (param $1 i32)
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
 (func $closure-class/Observable~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#__visit
 )
 (func $~lib/function/Function<%28%28i32%2Ci32%29=>void%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%28i32%2Ci32%29=>void%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%28i32%2Ci32%29=>void%29=>void>#__visit
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28i32%2Ci32%29=>void>#__visit
 )
 (func $~lib/function/Function<%28%28i32%29=>i32%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%28i32%29=>i32%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%28i32%29=>i32%29=>void>#__visit
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
 (func $~lib/function/Function<%28%28i32%29=>closure-class/Box%29=>closure-class/Box>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%28i32%29=>closure-class/Box%29=>closure-class/Box>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%28i32%29=>closure-class/Box%29=>closure-class/Box>#__visit
 )
 (func $~lib/function/Function<%28i32%29=>closure-class/Box>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28i32%29=>closure-class/Box>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28i32%29=>closure-class/Box>#__visit
 )
 (func $~lib/function/Function<%28%29=>closure-class/ChainableCounter>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%29=>closure-class/ChainableCounter>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%29=>closure-class/ChainableCounter>#__visit
 )
 (func $closure-class/Task~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=8
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/function/Function<%28%28i32%29=>void%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%28i32%29=>void%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%28i32%29=>void%29=>void>#__visit
 )
 (func $~lib/function/Function<%28%28%29=>i32%29=>i32>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28%28%29=>i32%29=>i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%28%29=>i32%29=>i32>#__visit
 )
 (func $closure-class/TreeNode~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<closure-class/TreeNode>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<closure-class/TreeNode>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<closure-class/TreeNode>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $closure-class/Range
    block $~lib/array/Array<closure-class/TreeNode>
     block $closure-class/TreeNode
      block $~lib/function/Function<%28%28%29=>i32%29=>i32>
       block $closure-class/Resource
        block $~lib/function/Function<%28%28i32%29=>void%29=>void>
         block $closure-class/Task
          block $~lib/function/Function<%28%29=>closure-class/ChainableCounter>
           block $closure-class/ChainableCounter
            block $~lib/function/Function<%28i32%29=>closure-class/Box>
             block $~lib/function/Function<%28%28i32%29=>closure-class/Box%29=>closure-class/Box>
              block $~lib/function/Function<%28i32%29=>i32>
               block $~lib/function/Function<%28%28i32%29=>i32%29=>void>
                block $closure-class/Box
                 block $~lib/function/Function<%28i32%2Ci32%29=>void>
                  block $closure-class/ObserverState
                   block $~lib/function/Function<%28%28i32%2Ci32%29=>void%29=>void>
                    block $~lib/array/Array<%28i32%2Ci32%29=>void>
                     block $closure-class/Observable
                      block $~lib/function/Function<%28%29=>bool>
                       block $closure-class/StateMachine
                        block $~lib/function/Function<%28~lib/string/String%29=>void>
                         block $closure-class/QueryBuilder
                          block $closure-class/DataProcessor
                           block $~lib/array/Array<%28i32%29=>void>
                            block $closure-class/EventEmitter
                             block $~lib/function/Function<%28%29=>~lib/string/String>
                              block $closure-class/Animal
                               block $closure-class/Dog
                                block $closure-class/Inner
                                 block $closure-class/Outer
                                  block $closure-class/Calculator
                                   block $~lib/function/Function<%28i32%29=>bool>
                                    block $~lib/function/Function<%28i32%29=>void>
                                     block $closure-class/BankAccount
                                      block $~lib/function/Function<%28%29=>i32>
                                       block $~lib/function/Function<%28%29=>void>
                                        block $closure-class/Counter
                                         block $~lib/arraybuffer/ArrayBufferView
                                          block $~lib/string/String
                                           block $~lib/arraybuffer/ArrayBuffer
                                            block $~lib/object/Object
                                             local.get $0
                                             i32.const 8
                                             i32.sub
                                             i32.load
                                             br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $closure-class/Counter $~lib/function/Function<%28%29=>void> $~lib/function/Function<%28%29=>i32> $closure-class/BankAccount $~lib/function/Function<%28i32%29=>void> $~lib/function/Function<%28i32%29=>bool> $closure-class/Calculator $closure-class/Outer $closure-class/Inner $closure-class/Dog $closure-class/Animal $~lib/function/Function<%28%29=>~lib/string/String> $closure-class/EventEmitter $~lib/array/Array<%28i32%29=>void> $closure-class/DataProcessor $closure-class/QueryBuilder $~lib/function/Function<%28~lib/string/String%29=>void> $closure-class/StateMachine $~lib/function/Function<%28%29=>bool> $closure-class/Observable $~lib/array/Array<%28i32%2Ci32%29=>void> $~lib/function/Function<%28%28i32%2Ci32%29=>void%29=>void> $closure-class/ObserverState $~lib/function/Function<%28i32%2Ci32%29=>void> $closure-class/Box $~lib/function/Function<%28%28i32%29=>i32%29=>void> $~lib/function/Function<%28i32%29=>i32> $~lib/function/Function<%28%28i32%29=>closure-class/Box%29=>closure-class/Box> $~lib/function/Function<%28i32%29=>closure-class/Box> $closure-class/ChainableCounter $~lib/function/Function<%28%29=>closure-class/ChainableCounter> $closure-class/Task $~lib/function/Function<%28%28i32%29=>void%29=>void> $closure-class/Resource $~lib/function/Function<%28%28%29=>i32%29=>i32> $closure-class/TreeNode $~lib/array/Array<closure-class/TreeNode> $closure-class/Range $invalid
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
                                        return
                                       end
                                       local.get $0
                                       local.get $1
                                       call $~lib/function/Function<%28%29=>void>~visit
                                       return
                                      end
                                      local.get $0
                                      local.get $1
                                      call $~lib/function/Function<%28%29=>i32>~visit
                                      return
                                     end
                                     return
                                    end
                                    local.get $0
                                    local.get $1
                                    call $~lib/function/Function<%28i32%29=>void>~visit
                                    return
                                   end
                                   local.get $0
                                   local.get $1
                                   call $~lib/function/Function<%28i32%29=>bool>~visit
                                   return
                                  end
                                  return
                                 end
                                 local.get $0
                                 local.get $1
                                 call $closure-class/Outer~visit
                                 return
                                end
                                return
                               end
                               local.get $0
                               local.get $1
                               call $closure-class/Dog~visit
                               return
                              end
                              local.get $0
                              local.get $1
                              call $closure-class/Animal~visit
                              return
                             end
                             local.get $0
                             local.get $1
                             call $~lib/function/Function<%28%29=>~lib/string/String>~visit
                             return
                            end
                            local.get $0
                            local.get $1
                            call $closure-class/EventEmitter~visit
                            return
                           end
                           local.get $0
                           local.get $1
                           call $~lib/array/Array<%28i32%29=>void>~visit
                           return
                          end
                          return
                         end
                         local.get $0
                         local.get $1
                         call $closure-class/QueryBuilder~visit
                         return
                        end
                        local.get $0
                        local.get $1
                        call $~lib/function/Function<%28~lib/string/String%29=>void>~visit
                        return
                       end
                       return
                      end
                      local.get $0
                      local.get $1
                      call $~lib/function/Function<%28%29=>bool>~visit
                      return
                     end
                     local.get $0
                     local.get $1
                     call $closure-class/Observable~visit
                     return
                    end
                    local.get $0
                    local.get $1
                    call $~lib/array/Array<%28i32%2Ci32%29=>void>~visit
                    return
                   end
                   local.get $0
                   local.get $1
                   call $~lib/function/Function<%28%28i32%2Ci32%29=>void%29=>void>~visit
                   return
                  end
                  return
                 end
                 local.get $0
                 local.get $1
                 call $~lib/function/Function<%28i32%2Ci32%29=>void>~visit
                 return
                end
                return
               end
               local.get $0
               local.get $1
               call $~lib/function/Function<%28%28i32%29=>i32%29=>void>~visit
               return
              end
              local.get $0
              local.get $1
              call $~lib/function/Function<%28i32%29=>i32>~visit
              return
             end
             local.get $0
             local.get $1
             call $~lib/function/Function<%28%28i32%29=>closure-class/Box%29=>closure-class/Box>~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/function/Function<%28i32%29=>closure-class/Box>~visit
            return
           end
           return
          end
          local.get $0
          local.get $1
          call $~lib/function/Function<%28%29=>closure-class/ChainableCounter>~visit
          return
         end
         local.get $0
         local.get $1
         call $closure-class/Task~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/function/Function<%28%28i32%29=>void%29=>void>~visit
        return
       end
       return
      end
      local.get $0
      local.get $1
      call $~lib/function/Function<%28%28%29=>i32%29=>i32>~visit
      return
     end
     local.get $0
     local.get $1
     call $closure-class/TreeNode~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<closure-class/TreeNode>~visit
    return
   end
   return
  end
  unreachable
 )
 (func $~start
  call $start:closure-class
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 35856
   i32.const 35904
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $closure-class/Counter#constructor (param $this i32) (result i32)
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
   i32.const 4
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
  call $closure-class/Counter#set:count
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/Counter#getIncrementClosure~anonymous|0
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
  call $closure-class/Counter#get:count
  i32.const 1
  i32.add
  call $closure-class/Counter#set:count
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Counter#getCountClosure~anonymous|0 (result i32)
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
  call $closure-class/Counter#get:count
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/testBasicThisCapture (result i32)
  (local $c i32)
  (local $inc i32)
  (local $get i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/Counter#constructor
  local.tee $c
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $c
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $closure-class/Counter#getIncrementClosure
  local.tee $inc
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $c
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $closure-class/Counter#getCountClosure
  local.tee $get
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc
  local.tee $3
  i32.store offset=16
  local.get $3
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $3
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc
  local.tee $4
  i32.store offset=20
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc
  local.tee $5
  i32.store offset=24
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get
  local.tee $6
  i32.store offset=28
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $2)
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $closure-class/testMultipleInstances (result i32)
  (local $c1 i32)
  (local $c2 i32)
  (local $inc1 i32)
  (local $inc2 i32)
  (local $get1 i32)
  (local $get2 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/Counter#constructor
  local.tee $c1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/Counter#constructor
  local.tee $c2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $c1
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=8
  local.get $13
  call $closure-class/Counter#getIncrementClosure
  local.tee $inc1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $c2
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=8
  local.get $13
  call $closure-class/Counter#getIncrementClosure
  local.tee $inc2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $c1
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=8
  local.get $13
  call $closure-class/Counter#getCountClosure
  local.tee $get1
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $c2
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=8
  local.get $13
  call $closure-class/Counter#getCountClosure
  local.tee $get2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc1
  local.tee $6
  i32.store offset=28
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc1
  local.tee $7
  i32.store offset=32
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc1
  local.tee $8
  i32.store offset=36
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc2
  local.tee $9
  i32.store offset=40
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $inc2
  local.tee $10
  i32.store offset=44
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get1
  local.tee $11
  i32.store offset=48
  local.get $11
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $11
  i32.load
  call_indirect (type $2)
  i32.const 10
  i32.mul
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get2
  local.tee $12
  i32.store offset=52
  local.get $12
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $12
  i32.load
  call_indirect (type $2)
  i32.add
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $closure-class/BankAccount#constructor (param $this i32) (param $initialBalance i32) (result i32)
  (local $2 i32)
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
   i32.const 8
   i32.const 7
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
  i32.const 0
  call $closure-class/BankAccount#set:balance
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $closure-class/BankAccount#set:transactionCount
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $initialBalance
  call $closure-class/BankAccount#set:balance
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $closure-class/BankAccount#getDepositClosure~anonymous|0 (param $amount i32)
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
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $closure-class/BankAccount#get:balance
  local.get $amount
  i32.add
  call $closure-class/BankAccount#set:balance
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $closure-class/BankAccount#get:transactionCount
  i32.const 1
  i32.add
  call $closure-class/BankAccount#set:transactionCount
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/BankAccount#getWithdrawClosure~anonymous|0 (param $amount i32) (result i32)
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
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $closure-class/BankAccount#get:balance
  local.get $amount
  i32.ge_s
  if
   local.get $$closureEnv
   i32.load offset=4
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   local.get $$closureEnv
   i32.load offset=4
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $closure-class/BankAccount#get:balance
   local.get $amount
   i32.sub
   call $closure-class/BankAccount#set:balance
   local.get $$closureEnv
   i32.load offset=4
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   local.get $$closureEnv
   i32.load offset=4
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $closure-class/BankAccount#get:transactionCount
   i32.const 1
   i32.add
   call $closure-class/BankAccount#set:transactionCount
   i32.const 1
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $closure-class/BankAccount#getBalanceClosure~anonymous|0 (result i32)
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
  call $closure-class/BankAccount#get:balance
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/BankAccount#getTransactionCountClosure~anonymous|0 (result i32)
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
  call $closure-class/BankAccount#get:transactionCount
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/testBankAccount (result i32)
  (local $account i32)
  (local $deposit i32)
  (local $withdraw i32)
  (local $getBalance i32)
  (local $getTxCount i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 68
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 100
  call $closure-class/BankAccount#constructor
  local.tee $account
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $account
  local.set $16
  global.get $~lib/memory/__stack_pointer
  local.get $16
  i32.store offset=4
  local.get $16
  call $closure-class/BankAccount#getDepositClosure
  local.tee $deposit
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $account
  local.set $16
  global.get $~lib/memory/__stack_pointer
  local.get $16
  i32.store offset=4
  local.get $16
  call $closure-class/BankAccount#getWithdrawClosure
  local.tee $withdraw
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $account
  local.set $16
  global.get $~lib/memory/__stack_pointer
  local.get $16
  i32.store offset=4
  local.get $16
  call $closure-class/BankAccount#getBalanceClosure
  local.tee $getBalance
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $account
  local.set $16
  global.get $~lib/memory/__stack_pointer
  local.get $16
  i32.store offset=4
  local.get $16
  call $closure-class/BankAccount#getTransactionCountClosure
  local.tee $getTxCount
  i32.store offset=20
  i32.const 50
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $deposit
  local.tee $5
  i32.store offset=24
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getBalance
  local.tee $6
  i32.store offset=28
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $2)
  i32.const 150
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 111
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 30
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $withdraw
  local.tee $7
  i32.store offset=32
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $0)
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 113
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getBalance
  local.tee $8
  i32.store offset=36
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $2)
  i32.const 120
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 114
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 200
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $withdraw
  local.tee $9
  i32.store offset=40
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $0)
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 116
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getBalance
  local.tee $10
  i32.store offset=44
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $2)
  i32.const 120
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 117
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getTxCount
  local.tee $11
  i32.store offset=48
  local.get $11
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $11
  i32.load
  call_indirect (type $2)
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 100
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $deposit
  local.tee $12
  i32.store offset=52
  local.get $12
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $12
  i32.load
  call_indirect (type $3)
  i32.const 220
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $withdraw
  local.tee $13
  i32.store offset=56
  local.get $13
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $13
  i32.load
  call_indirect (type $0)
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 121
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getBalance
  local.tee $14
  i32.store offset=60
  local.get $14
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $14
  i32.load
  call_indirect (type $2)
  i32.const 1000
  i32.mul
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getTxCount
  local.tee $15
  i32.store offset=64
  local.get $15
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $15
  i32.load
  call_indirect (type $2)
  i32.add
  local.set $16
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $16
  return
 )
 (func $closure-class/Calculator#constructor (param $this i32) (result i32)
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
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $closure-class/Calculator#set:result
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/Calculator#getOperationClosure~anonymous|0 (result i32)
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
  i32.const 0
  i32.eq
  if
   local.get $$closureEnv
   i32.load offset=8
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $$closureEnv
   i32.load offset=8
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $closure-class/Calculator#get:result
   local.get $$closureEnv
   i32.load offset=12
   i32.add
   call $closure-class/Calculator#set:result
  else
   local.get $$closureEnv
   i32.load offset=4
   i32.const 1
   i32.eq
   if
    local.get $$closureEnv
    i32.load offset=8
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    local.get $$closureEnv
    i32.load offset=8
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $1
    call $closure-class/Calculator#get:result
    local.get $$closureEnv
    i32.load offset=12
    i32.sub
    call $closure-class/Calculator#set:result
   else
    local.get $$closureEnv
    i32.load offset=4
    i32.const 2
    i32.eq
    if
     local.get $$closureEnv
     i32.load offset=8
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     local.get $$closureEnv
     i32.load offset=8
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     call $closure-class/Calculator#get:result
     local.get $$closureEnv
     i32.load offset=12
     i32.mul
     call $closure-class/Calculator#set:result
    end
   end
  end
  local.get $$closureEnv
  i32.load offset=8
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $closure-class/Calculator#get:result
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $closure-class/testCalculatorClosures (result i32)
  (local $calc i32)
  (local $addFive i32)
  (local $subtractTwo i32)
  (local $multiplyThree i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/Calculator#constructor
  local.tee $calc
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $calc
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  i32.const 5
  i32.const 0
  call $closure-class/Calculator#getOperationClosure
  local.tee $addFive
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $calc
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  i32.const 2
  i32.const 1
  call $closure-class/Calculator#getOperationClosure
  local.tee $subtractTwo
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $calc
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  i32.const 3
  i32.const 2
  call $closure-class/Calculator#getOperationClosure
  local.tee $multiplyThree
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $addFive
  local.tee $4
  i32.store offset=20
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $2)
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $addFive
  local.tee $5
  i32.store offset=24
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $2)
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $subtractTwo
  local.tee $6
  i32.store offset=28
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $2)
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $multiplyThree
  local.tee $7
  i32.store offset=32
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $2)
  drop
  local.get $calc
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $closure-class/Calculator#get:result
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $closure-class/Inner#constructor (param $this i32) (param $v i32) (result i32)
  (local $2 i32)
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
   i32.const 12
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
  i32.const 0
  call $closure-class/Inner#set:value
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $v
  call $closure-class/Inner#set:value
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $closure-class/Outer#constructor (param $this i32) (param $innerValue i32) (param $mult i32) (result i32)
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
   i32.const 8
   i32.const 11
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
  i32.const 0
  call $closure-class/Outer#set:inner
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $closure-class/Outer#set:multiplier
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $innerValue
  call $closure-class/Inner#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $closure-class/Outer#set:inner
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $mult
  call $closure-class/Outer#set:multiplier
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $closure-class/Outer#getComputeClosure~anonymous|0 (result i32)
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
  i32.store offset=4
  local.get $1
  call $closure-class/Outer#get:inner
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $closure-class/Inner#get:value
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $closure-class/Outer#get:multiplier
  i32.mul
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/Outer#getInnerSetterClosure~anonymous|0 (param $v i32)
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
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $closure-class/Outer#get:inner
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $v
  call $closure-class/Inner#set:value
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/testNestedClosures (result i32)
  (local $outer i32)
  (local $compute i32)
  (local $setInner i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 10
  i32.const 3
  call $closure-class/Outer#constructor
  local.tee $outer
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $outer
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $closure-class/Outer#getComputeClosure
  local.tee $compute
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $outer
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $closure-class/Outer#getInnerSetterClosure
  local.tee $setInner
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $compute
  local.tee $3
  i32.store offset=16
  local.get $3
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $3
  i32.load
  call_indirect (type $2)
  i32.const 30
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 219
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 20
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $setInner
  local.tee $4
  i32.store offset=20
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $compute
  local.tee $5
  i32.store offset=24
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $2)
  i32.const 60
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 222
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $compute
  local.tee $6
  i32.store offset=28
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $2)
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $closure-class/Animal#constructor (param $this i32) (param $name i32) (param $age i32) (result i32)
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
   i32.const 8
   i32.const 14
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
  i32.const 0
  call $closure-class/Animal#set:name
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $closure-class/Animal#set:age
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $name
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $closure-class/Animal#set:name
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $age
  call $closure-class/Animal#set:age
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $closure-class/Dog#constructor (param $this i32) (param $name i32) (param $age i32) (param $breed i32) (result i32)
  (local $4 i32)
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
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $closure-class/Dog#set:breed
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $name
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  local.get $age
  call $closure-class/Animal#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $breed
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $closure-class/Dog#set:breed
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $closure-class/Animal#getAgeClosure~anonymous|0 (result i32)
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
  call $closure-class/Animal#get:age
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/Animal#getAgeIncrementClosure~anonymous|0
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
  call $closure-class/Animal#get:age
  i32.const 1
  i32.add
  call $closure-class/Animal#set:age
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Dog#getBreedClosure~anonymous|0 (result i32)
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
  call $closure-class/Dog#get:breed
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
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
 (func $closure-class/testInheritanceClosures (result i32)
  (local $dog i32)
  (local $getAge i32)
  (local $incAge i32)
  (local $getBreed i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 784
  i32.const 3
  i32.const 816
  call $closure-class/Dog#constructor
  local.tee $dog
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $dog
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $closure-class/Animal#getAgeClosure
  local.tee $getAge
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $dog
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $closure-class/Animal#getAgeIncrementClosure
  local.tee $incAge
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $dog
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $closure-class/Dog#getBreedClosure
  local.tee $getBreed
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getAge
  local.tee $4
  i32.store offset=20
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $2)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 277
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getBreed
  local.tee $5
  i32.store offset=24
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $2)
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  i32.const 816
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 278
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $incAge
  local.tee $6
  i32.store offset=28
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $incAge
  local.tee $7
  i32.store offset=32
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getAge
  local.tee $8
  i32.store offset=36
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $2)
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $~lib/array/Array<%28i32%29=>void>#constructor (param $this i32) (param $length i32) (result i32)
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
   i32.const 17
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
  call $~lib/array/Array<%28i32%29=>void>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<%28i32%29=>void>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<%28i32%29=>void>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<%28i32%29=>void>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 976
   i32.const 1024
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
  call $~lib/array/Array<%28i32%29=>void>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<%28i32%29=>void>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<%28i32%29=>void>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<%28i32%29=>void>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $closure-class/EventEmitter#constructor (param $this i32) (result i32)
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
   i32.const 16
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
  i32.const 0
  call $~lib/array/Array<%28i32%29=>void>#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $closure-class/EventEmitter#set:listeners
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/DataProcessor#constructor (param $this i32) (result i32)
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
   i32.const 12
   i32.const 18
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
  call $closure-class/DataProcessor#set:processedCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $closure-class/DataProcessor#set:lastValue
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $closure-class/DataProcessor#set:sum
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/DataProcessor#getProcessorClosure~anonymous|0 (param $data i32)
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
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $closure-class/DataProcessor#get:processedCount
  i32.const 1
  i32.add
  call $closure-class/DataProcessor#set:processedCount
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $data
  call $closure-class/DataProcessor#set:lastValue
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $closure-class/DataProcessor#get:sum
  local.get $data
  i32.add
  call $closure-class/DataProcessor#set:sum
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
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
    i32.const 976
    i32.const 1024
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
 (func $~lib/array/Array<%28i32%29=>void>#push (param $this i32) (param $value i32) (result i32)
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
  call $~lib/array/Array<%28i32%29=>void>#get:length_
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
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<%28i32%29=>void>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<%28i32%29=>void>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $closure-class/EventEmitter#addListener (param $this i32) (param $listener i32)
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
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $closure-class/EventEmitter#get:listeners
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $listener
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/array/Array<%28i32%29=>void>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28i32%29=>void>#get:length (param $this i32) (result i32)
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
  call $~lib/array/Array<%28i32%29=>void>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<%28i32%29=>void>#__get (param $this i32) (param $index i32) (result i32)
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
  call $~lib/array/Array<%28i32%29=>void>#get:length_
  i32.ge_u
  if
   i32.const 224
   i32.const 1024
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
  call $~lib/array/Array<%28i32%29=>void>#get:dataStart
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
   i32.const 1104
   i32.const 1024
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
 (func $closure-class/EventEmitter#emit (param $this i32) (param $data i32)
  (local $i i32)
  (local $3 i32)
  (local $4 i32)
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
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $closure-class/EventEmitter#get:listeners
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/array/Array<%28i32%29=>void>#get:length
   i32.lt_s
   if
    local.get $data
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    global.set $~argumentsLength
    local.get $this
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    call $closure-class/EventEmitter#get:listeners
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    local.get $i
    call $~lib/array/Array<%28i32%29=>void>#__get
    local.tee $3
    i32.store offset=8
    local.get $3
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $3
    i32.load
    call_indirect (type $3)
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/testEventEmitterPattern (result i32)
  (local $emitter i32)
  (local $processor1 i32)
  (local $processor2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/EventEmitter#constructor
  local.tee $emitter
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/DataProcessor#constructor
  local.tee $processor1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/DataProcessor#constructor
  local.tee $processor2
  i32.store offset=8
  local.get $emitter
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  local.get $processor1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=20
  local.get $3
  call $closure-class/DataProcessor#getProcessorClosure
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $3
  call $closure-class/EventEmitter#addListener
  local.get $emitter
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  local.get $processor2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=20
  local.get $3
  call $closure-class/DataProcessor#getProcessorClosure
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $3
  call $closure-class/EventEmitter#addListener
  local.get $emitter
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  i32.const 10
  call $closure-class/EventEmitter#emit
  local.get $emitter
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  i32.const 20
  call $closure-class/EventEmitter#emit
  local.get $emitter
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  i32.const 30
  call $closure-class/EventEmitter#emit
  local.get $processor1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $closure-class/DataProcessor#get:processedCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 336
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $processor2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $closure-class/DataProcessor#get:processedCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 337
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $processor1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $closure-class/DataProcessor#get:sum
  i32.const 60
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 338
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $processor2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $closure-class/DataProcessor#get:sum
  i32.const 60
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 339
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $processor1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $closure-class/DataProcessor#get:lastValue
  i32.const 30
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 340
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $processor2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $closure-class/DataProcessor#get:lastValue
  i32.const 30
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 341
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $processor1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $closure-class/DataProcessor#get:sum
  local.get $processor2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $closure-class/DataProcessor#get:sum
  i32.add
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $closure-class/QueryBuilder#constructor (param $this i32) (result i32)
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
   i32.const 12
   i32.const 19
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
  i32.const 1232
  call $closure-class/QueryBuilder#set:selectFields
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 1264
  call $closure-class/QueryBuilder#set:tableName
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 1264
  call $closure-class/QueryBuilder#set:whereClause
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/QueryBuilder#getSelectClosure~anonymous|0 (param $fields i32)
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
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $fields
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $closure-class/QueryBuilder#set:selectFields
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/QueryBuilder#getFromClosure~anonymous|0 (param $table i32)
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
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $table
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $closure-class/QueryBuilder#set:tableName
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/QueryBuilder#getWhereClosure~anonymous|0 (param $clause i32)
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
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $clause
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $closure-class/QueryBuilder#set:whereClause
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
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
   i32.const 1264
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
 (func $closure-class/QueryBuilder#getBuildClosure~anonymous|0 (result i32)
  (local $$closureEnv i32)
  (local $query i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/__closure_env
  local.set $$closureEnv
  global.get $~lib/memory/__stack_pointer
  i32.const 1392
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $2
  call $closure-class/QueryBuilder#get:selectFields
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $2
  call $~lib/string/String.__concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 1440
  call $~lib/string/String.__concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $closure-class/QueryBuilder#get:tableName
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/string/String.__concat
  local.tee $query
  i32.store offset=20
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $closure-class/QueryBuilder#get:whereClause
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $query
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 1472
   local.get $$closureEnv
   i32.load offset=4
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   local.get $2
   call $closure-class/QueryBuilder#get:whereClause
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $2
   call $~lib/string/String.__concat
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/string/String.__concat
   local.tee $query
   i32.store offset=20
  end
  local.get $query
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $closure-class/testBuilderPattern (result i32)
  (local $builder i32)
  (local $select i32)
  (local $from i32)
  (local $where i32)
  (local $build i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $query i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/QueryBuilder#constructor
  local.tee $builder
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $builder
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  call $closure-class/QueryBuilder#getSelectClosure
  local.tee $select
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $builder
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  call $closure-class/QueryBuilder#getFromClosure
  local.tee $from
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $builder
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  call $closure-class/QueryBuilder#getWhereClosure
  local.tee $where
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $builder
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  call $closure-class/QueryBuilder#getBuildClosure
  local.tee $build
  i32.store offset=20
  i32.const 1552
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $select
  local.tee $5
  i32.store offset=24
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $3)
  i32.const 1600
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $from
  local.tee $6
  i32.store offset=28
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $3)
  i32.const 1632
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $where
  local.tee $7
  i32.store offset=32
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $build
  local.tee $8
  i32.store offset=36
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $2)
  local.tee $query
  i32.store offset=40
  local.get $query
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  i32.const 1680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 399
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $closure-class/StateMachine#constructor (param $this i32) (result i32)
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
   i32.const 21
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
  call $closure-class/StateMachine#set:state
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/StateMachine#getStartClosure~anonymous|0 (result i32)
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
  call $closure-class/StateMachine#get:state
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $$closureEnv
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $closure-class/StateMachine#get:state
   i32.const 2
   i32.eq
  end
  if
   local.get $$closureEnv
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 1
   call $closure-class/StateMachine#set:state
   i32.const 1
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $closure-class/StateMachine#getPauseClosure~anonymous|0 (result i32)
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
  call $closure-class/StateMachine#get:state
  i32.const 1
  i32.eq
  if
   local.get $$closureEnv
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 2
   call $closure-class/StateMachine#set:state
   i32.const 1
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $closure-class/StateMachine#getStopClosure~anonymous|0 (result i32)
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
  call $closure-class/StateMachine#get:state
  i32.const 1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $$closureEnv
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $closure-class/StateMachine#get:state
   i32.const 2
   i32.eq
  end
  if
   local.get $$closureEnv
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 3
   call $closure-class/StateMachine#set:state
   i32.const 1
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $closure-class/StateMachine#getResetClosure~anonymous|0
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
  call $closure-class/StateMachine#set:state
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/StateMachine#getStateClosure~anonymous|0 (result i32)
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
  call $closure-class/StateMachine#get:state
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/testStateMachine (result i32)
  (local $sm i32)
  (local $start i32)
  (local $pause i32)
  (local $stop i32)
  (local $reset i32)
  (local $getState i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 84
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 84
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/StateMachine#constructor
  local.tee $sm
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $sm
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  call $closure-class/StateMachine#getStartClosure
  local.tee $start
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $sm
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  call $closure-class/StateMachine#getPauseClosure
  local.tee $pause
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $sm
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  call $closure-class/StateMachine#getStopClosure
  local.tee $stop
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $sm
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  call $closure-class/StateMachine#getResetClosure
  local.tee $reset
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $sm
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  call $closure-class/StateMachine#getStateClosure
  local.tee $getState
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getState
  local.tee $6
  i32.store offset=28
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 463
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $start
  local.tee $7
  i32.store offset=32
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 465
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getState
  local.tee $8
  i32.store offset=36
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $2)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 466
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $start
  local.tee $9
  i32.store offset=40
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 468
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $pause
  local.tee $10
  i32.store offset=44
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 470
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getState
  local.tee $11
  i32.store offset=48
  local.get $11
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $11
  i32.load
  call_indirect (type $2)
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 471
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $start
  local.tee $12
  i32.store offset=52
  local.get $12
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $12
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 473
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getState
  local.tee $13
  i32.store offset=56
  local.get $13
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $13
  i32.load
  call_indirect (type $2)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 474
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $stop
  local.tee $14
  i32.store offset=60
  local.get $14
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $14
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 476
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getState
  local.tee $15
  i32.store offset=64
  local.get $15
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $15
  i32.load
  call_indirect (type $2)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 477
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $start
  local.tee $16
  i32.store offset=68
  local.get $16
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $16
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 479
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $reset
  local.tee $17
  i32.store offset=72
  local.get $17
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $17
  i32.load
  call_indirect (type $5)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getState
  local.tee $18
  i32.store offset=76
  local.get $18
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $18
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 482
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getState
  local.tee $19
  i32.store offset=80
  local.get $19
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $19
  i32.load
  call_indirect (type $2)
  local.set $20
  global.get $~lib/memory/__stack_pointer
  i32.const 84
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $20
  return
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#constructor (param $this i32) (param $length i32) (result i32)
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
   i32.const 24
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
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 976
   i32.const 1024
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
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $closure-class/Observable#constructor (param $this i32) (param $initial i32) (result i32)
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
   i32.const 8
   i32.const 23
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
  i32.const 0
  call $closure-class/Observable#set:value
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.const 0
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $closure-class/Observable#set:observers
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $initial
  call $closure-class/Observable#set:value
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#push (param $this i32) (param $value i32) (result i32)
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
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#get:length_
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
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $closure-class/Observable#getSubscribeClosure~anonymous|0 (param $observer i32)
  (local $$closureEnv i32)
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
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $closure-class/Observable#get:observers
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $observer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#get:length (param $this i32) (result i32)
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
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#__get (param $this i32) (param $index i32) (result i32)
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
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#get:length_
  i32.ge_u
  if
   i32.const 224
   i32.const 1024
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
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#get:dataStart
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
   i32.const 1104
   i32.const 1024
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
 (func $closure-class/Observable#getSetClosure~anonymous|0 (param $newValue i32)
  (local $$closureEnv i32)
  (local $oldValue i32)
  (local $i i32)
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
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $closure-class/Observable#get:value
  local.set $oldValue
  local.get $$closureEnv
  i32.load offset=4
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $newValue
  call $closure-class/Observable#set:value
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $$closureEnv
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $closure-class/Observable#get:observers
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/array/Array<%28i32%2Ci32%29=>void>#get:length
   i32.lt_s
   if
    local.get $oldValue
    local.get $newValue
    global.get $~lib/memory/__stack_pointer
    i32.const 2
    global.set $~argumentsLength
    local.get $$closureEnv
    i32.load offset=4
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    call $closure-class/Observable#get:observers
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $i
    call $~lib/array/Array<%28i32%2Ci32%29=>void>#__get
    local.tee $4
    i32.store offset=8
    local.get $4
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $4
    i32.load
    call_indirect (type $1)
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Observable#getGetClosure~anonymous|0 (result i32)
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
  call $closure-class/Observable#get:value
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/ObserverState#constructor (param $this i32) (result i32)
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
   i32.const 8
   i32.const 26
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
  call $closure-class/ObserverState#set:changeCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $closure-class/ObserverState#set:totalDiff
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/ObserverState#getCountObserver~anonymous|0 (param $oldVal i32) (param $newVal i32)
  (local $$closureEnv i32)
  (local $3 i32)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $$closureEnv
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $closure-class/ObserverState#get:changeCount
  i32.const 1
  i32.add
  call $closure-class/ObserverState#set:changeCount
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/ObserverState#getDiffObserver~anonymous|0 (param $oldVal i32) (param $newVal i32)
  (local $$closureEnv i32)
  (local $3 i32)
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
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $$closureEnv
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $closure-class/ObserverState#get:totalDiff
  local.get $newVal
  local.get $oldVal
  i32.sub
  i32.add
  call $closure-class/ObserverState#set:totalDiff
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/testObservable (result i32)
  (local $obs i32)
  (local $subscribe i32)
  (local $set i32)
  (local $get i32)
  (local $state i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  call $closure-class/Observable#constructor
  local.tee $obs
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $obs
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $closure-class/Observable#getSubscribeClosure
  local.tee $subscribe
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $obs
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $closure-class/Observable#getSetClosure
  local.tee $set
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $obs
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $closure-class/Observable#getGetClosure
  local.tee $get
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/ObserverState#constructor
  local.tee $state
  i32.store offset=20
  local.get $state
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=28
  local.get $12
  call $closure-class/ObserverState#getCountObserver
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $subscribe
  local.tee $5
  i32.store offset=24
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $3)
  local.get $state
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=28
  local.get $12
  call $closure-class/ObserverState#getDiffObserver
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $subscribe
  local.tee $6
  i32.store offset=32
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $3)
  i32.const 10
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $set
  local.tee $7
  i32.store offset=36
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $3)
  i32.const 25
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $set
  local.tee $8
  i32.store offset=40
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $3)
  i32.const 20
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $set
  local.tee $9
  i32.store offset=44
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $3)
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get
  local.tee $10
  i32.store offset=48
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $2)
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 556
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $state
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $closure-class/ObserverState#get:changeCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $state
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $closure-class/ObserverState#get:totalDiff
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $get
  local.tee $11
  i32.store offset=52
  local.get $11
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $11
  i32.load
  call_indirect (type $2)
  local.get $state
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $closure-class/ObserverState#get:changeCount
  i32.add
  local.get $state
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=4
  local.get $12
  call $closure-class/ObserverState#get:totalDiff
  i32.add
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $closure-class/Box#constructor (param $this i32) (param $v i32) (result i32)
  (local $2 i32)
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
   i32.const 28
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
  i32.const 0
  call $closure-class/Box#set:value
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $v
  call $closure-class/Box#set:value
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $closure-class/Box#getMapClosure~anonymous|0 (param $fn i32)
  (local $$closureEnv i32)
  (local $2 i32)
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
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $$closureEnv
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $closure-class/Box#get:value
  global.get $~lib/memory/__stack_pointer
  i32.const 1
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
  call $closure-class/Box#set:value
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Box#getValueClosure~anonymous|0 (result i32)
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
  call $closure-class/Box#get:value
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/testBoxMap (result i32)
  (local $box i32)
  (local $map i32)
  (local $getValue i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  call $closure-class/Box#constructor
  local.tee $box
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $box
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $closure-class/Box#getMapClosure
  local.tee $map
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $box
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $closure-class/Box#getValueClosure
  local.tee $getValue
  i32.store offset=12
  i32.const 2176
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $map
  local.tee $3
  i32.store offset=16
  local.get $3
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $3
  i32.load
  call_indirect (type $3)
  i32.const 2208
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $map
  local.tee $4
  i32.store offset=20
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $3)
  i32.const 2240
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $map
  local.tee $5
  i32.store offset=24
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $3)
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
  call_indirect (type $2)
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $closure-class/Box#getFlatMapClosure~anonymous|0 (param $fn i32) (result i32)
  (local $$closureEnv i32)
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
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $closure-class/Box#get:value
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $fn
  local.tee $2
  i32.store
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
 (func $closure-class/testBoxFlatMap (result i32)
  (local $box i32)
  (local $flatMap i32)
  (local $2 i32)
  (local $result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  call $closure-class/Box#constructor
  local.tee $box
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $box
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $closure-class/Box#getFlatMapClosure
  local.tee $flatMap
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 2304
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $flatMap
  local.tee $2
  i32.store offset=12
  local.get $2
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $2
  i32.load
  call_indirect (type $0)
  local.tee $result
  i32.store offset=16
  local.get $result
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $closure-class/Box#get:value
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $closure-class/ChainableCounter#constructor (param $this i32) (result i32)
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
   i32.const 33
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
  call $closure-class/ChainableCounter#set:count
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/ChainableCounter#getAddClosure~anonymous|0 (result i32)
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
  call $closure-class/ChainableCounter#get:count
  local.get $$closureEnv
  i32.load offset=8
  i32.add
  call $closure-class/ChainableCounter#set:count
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $closure-class/ChainableCounter#getMultiplyClosure~anonymous|0 (result i32)
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
  call $closure-class/ChainableCounter#get:count
  local.get $$closureEnv
  i32.load offset=8
  i32.mul
  call $closure-class/ChainableCounter#set:count
  local.get $$closureEnv
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $closure-class/testClosureChaining (result i32)
  (local $counter i32)
  (local $add5 i32)
  (local $add10 i32)
  (local $mult2 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/ChainableCounter#constructor
  local.tee $counter
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $counter
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  i32.const 5
  call $closure-class/ChainableCounter#getAddClosure
  local.tee $add5
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $counter
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  i32.const 10
  call $closure-class/ChainableCounter#getAddClosure
  local.tee $add10
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $counter
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  i32.const 2
  call $closure-class/ChainableCounter#getMultiplyClosure
  local.tee $mult2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $add5
  local.tee $4
  i32.store offset=20
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $2)
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $add10
  local.tee $5
  i32.store offset=24
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $2)
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $mult2
  local.tee $6
  i32.store offset=28
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $2)
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $add5
  local.tee $7
  i32.store offset=32
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $2)
  drop
  local.get $counter
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $closure-class/ChainableCounter#get:count
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $closure-class/Task#constructor (param $this i32) (result i32)
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
   i32.const 12
   i32.const 35
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
  call $closure-class/Task#set:completed
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $closure-class/Task#set:result
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<%28i32%29=>void>#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $closure-class/Task#set:callbacks
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/Task#getThenClosure~anonymous|0 (param $callback i32)
  (local $$closureEnv i32)
  (local $2 i32)
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
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $closure-class/Task#get:completed
  if
   local.get $$closureEnv
   i32.load offset=4
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $closure-class/Task#get:result
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   global.set $~argumentsLength
   local.get $callback
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $3)
  else
   local.get $$closureEnv
   i32.load offset=4
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $3
   call $closure-class/Task#get:callbacks
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $callback
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   call $~lib/array/Array<%28i32%29=>void>#push
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Task#getCompleteClosure~anonymous|0 (param $result i32)
  (local $$closureEnv i32)
  (local $i i32)
  (local $3 i32)
  (local $4 i32)
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
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 1
  call $closure-class/Task#set:completed
  local.get $$closureEnv
  i32.load offset=4
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $result
  call $closure-class/Task#set:result
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $$closureEnv
   i32.load offset=4
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $closure-class/Task#get:callbacks
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/array/Array<%28i32%29=>void>#get:length
   i32.lt_s
   if
    local.get $result
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    global.set $~argumentsLength
    local.get $$closureEnv
    i32.load offset=4
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    call $closure-class/Task#get:callbacks
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    local.get $i
    call $~lib/array/Array<%28i32%29=>void>#__get
    local.tee $3
    i32.store offset=8
    local.get $3
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $3
    i32.load
    call_indirect (type $3)
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Task#isCompleted (param $this i32) (result i32)
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
  call $closure-class/Task#get:completed
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $closure-class/testTaskCallbacks (result i32)
  (local $$env i32)
  (local $task i32)
  (local $then i32)
  (local $complete i32)
  (local $receivedValue i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/Task#constructor
  local.tee $task
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $task
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $closure-class/Task#getThenClosure
  local.tee $then
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $task
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $closure-class/Task#getCompleteClosure
  local.tee $complete
  i32.store offset=12
  local.get $$env
  i32.const 0
  i32.store offset=4
  i32.const 8
  i32.const 8
  call $~lib/rt/itcms/__new
  local.set $5
  local.get $5
  i32.const 39
  i32.store
  local.get $5
  local.get $$env
  i32.store offset=4
  local.get $5
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $then
  local.tee $6
  i32.store offset=16
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $3)
  local.get $$env
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 711
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 21
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $complete
  local.tee $7
  i32.store offset=20
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $3)
  local.get $$env
  i32.load offset=4
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 715
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $task
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $closure-class/Task#isCompleted
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 716
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $$env
  i32.load offset=4
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $closure-class/testTaskCallbackAfterComplete (result i32)
  (local $$env i32)
  (local $task i32)
  (local $then i32)
  (local $complete i32)
  (local $4 i32)
  (local $receivedValue i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/Task#constructor
  local.tee $task
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $task
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $closure-class/Task#getThenClosure
  local.tee $then
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $task
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $closure-class/Task#getCompleteClosure
  local.tee $complete
  i32.store offset=12
  i32.const 50
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $complete
  local.tee $4
  i32.store offset=16
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $3)
  local.get $$env
  i32.const 0
  i32.store offset=4
  i32.const 8
  i32.const 8
  call $~lib/rt/itcms/__new
  local.set $6
  local.get $6
  i32.const 40
  i32.store
  local.get $6
  local.get $$env
  i32.store offset=4
  local.get $6
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $then
  local.tee $7
  i32.store offset=20
  local.get $7
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $7
  i32.load
  call_indirect (type $3)
  local.get $$env
  i32.load offset=4
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $closure-class/Resource#constructor (param $this i32) (result i32)
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
   i32.const 8
   i32.const 37
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
  call $closure-class/Resource#set:acquired
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $closure-class/Resource#set:useCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/Resource#getAcquireClosure~anonymous|0 (result i32)
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
  call $closure-class/Resource#get:acquired
  i32.eqz
  if
   local.get $$closureEnv
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 1
   call $closure-class/Resource#set:acquired
   i32.const 1
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $closure-class/Resource#getReleaseClosure~anonymous|0 (result i32)
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
  call $closure-class/Resource#get:acquired
  if
   local.get $$closureEnv
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 0
   call $closure-class/Resource#set:acquired
   i32.const 1
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $closure-class/Resource#getUseClosure~anonymous|0 (param $action i32) (result i32)
  (local $$closureEnv i32)
  (local $2 i32)
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
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $closure-class/Resource#get:acquired
  if
   local.get $$closureEnv
   i32.load offset=4
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $$closureEnv
   i32.load offset=4
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $closure-class/Resource#get:useCount
   i32.const 1
   i32.add
   call $closure-class/Resource#set:useCount
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   global.set $~argumentsLength
   local.get $action
   local.tee $2
   i32.store offset=8
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $2)
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const -1
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $closure-class/Resource#getUseCount (param $this i32) (result i32)
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
  call $closure-class/Resource#get:useCount
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $closure-class/testResourceManagement (result i32)
  (local $resource i32)
  (local $acquire i32)
  (local $release i32)
  (local $use i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $closure-class/Resource#constructor
  local.tee $resource
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $resource
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  call $closure-class/Resource#getAcquireClosure
  local.tee $acquire
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $resource
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  call $closure-class/Resource#getReleaseClosure
  local.tee $release
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $resource
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  call $closure-class/Resource#getUseClosure
  local.tee $use
  i32.store offset=16
  i32.const 2624
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $use
  local.tee $4
  i32.store offset=20
  local.get $4
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $4
  i32.load
  call_indirect (type $0)
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 792
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $acquire
  local.tee $5
  i32.store offset=24
  local.get $5
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $5
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 795
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $acquire
  local.tee $6
  i32.store offset=28
  local.get $6
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $6
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 796
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2656
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $use
  local.tee $7
  i32.store offset=32
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
   i32.const 496
   i32.const 799
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2688
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $use
  local.tee $8
  i32.store offset=36
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $0)
  i32.const 20
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 800
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2720
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $use
  local.tee $9
  i32.store offset=40
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $0)
  i32.const 30
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 801
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $resource
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  call $closure-class/Resource#getUseCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 803
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $release
  local.tee $10
  i32.store offset=44
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 806
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $release
  local.tee $11
  i32.store offset=48
  local.get $11
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $11
  i32.load
  call_indirect (type $2)
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 807
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2752
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  global.set $~argumentsLength
  local.get $use
  local.tee $12
  i32.store offset=52
  local.get $12
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $12
  i32.load
  call_indirect (type $0)
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 810
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $resource
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  call $closure-class/Resource#getUseCount
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/array/Array<closure-class/TreeNode>#constructor (param $this i32) (param $length i32) (result i32)
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
   i32.const 40
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
  call $~lib/array/Array<closure-class/TreeNode>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<closure-class/TreeNode>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<closure-class/TreeNode>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<closure-class/TreeNode>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 976
   i32.const 1024
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
  call $~lib/array/Array<closure-class/TreeNode>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<closure-class/TreeNode>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<closure-class/TreeNode>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<closure-class/TreeNode>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $closure-class/TreeNode#constructor (param $this i32) (param $v i32) (result i32)
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
   i32.const 8
   i32.const 39
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
  i32.const 0
  call $closure-class/TreeNode#set:value
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.const 0
  call $~lib/array/Array<closure-class/TreeNode>#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $closure-class/TreeNode#set:children
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $v
  call $closure-class/TreeNode#set:value
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<closure-class/TreeNode>#push (param $this i32) (param $value i32) (result i32)
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
  call $~lib/array/Array<closure-class/TreeNode>#get:length_
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
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<closure-class/TreeNode>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<closure-class/TreeNode>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $closure-class/TreeNode#addChild (param $this i32) (param $child i32)
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
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $closure-class/TreeNode#get:children
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $child
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/array/Array<closure-class/TreeNode>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<closure-class/TreeNode>#get:length (param $this i32) (result i32)
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
  call $~lib/array/Array<closure-class/TreeNode>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<closure-class/TreeNode>#__get (param $this i32) (param $index i32) (result i32)
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
  call $~lib/array/Array<closure-class/TreeNode>#get:length_
  i32.ge_u
  if
   i32.const 224
   i32.const 1024
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
  call $~lib/array/Array<closure-class/TreeNode>#get:dataStart
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
   i32.const 1104
   i32.const 1024
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
 (func $closure-class/TreeNode#getSumClosure~anonymous|0 (result i32)
  (local $$closureEnv i32)
  (local $sum i32)
  (local $i i32)
  (local $childSum i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $closure-class/TreeNode#get:value
  local.set $sum
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $$closureEnv
   i32.load offset=4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $closure-class/TreeNode#get:children
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/array/Array<closure-class/TreeNode>#get:length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $$closureEnv
    i32.load offset=4
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    local.get $5
    call $closure-class/TreeNode#get:children
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $i
    call $~lib/array/Array<closure-class/TreeNode>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $closure-class/TreeNode#getSumClosure
    local.tee $childSum
    i32.store offset=12
    local.get $sum
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    global.set $~argumentsLength
    local.get $childSum
    local.tee $4
    i32.store offset=16
    local.get $4
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $4
    i32.load
    call_indirect (type $2)
    i32.add
    local.set $sum
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $sum
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $closure-class/TreeNode#getDepthClosure~anonymous|0 (result i32)
  (local $$closureEnv i32)
  (local $maxChildDepth i32)
  (local $i i32)
  (local $childDepth i32)
  (local $4 i32)
  (local $d i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/__closure_env
  local.set $$closureEnv
  local.get $$closureEnv
  i32.load offset=4
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $closure-class/TreeNode#get:children
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/array/Array<closure-class/TreeNode>#get:length
  i32.const 0
  i32.eq
  if
   i32.const 1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  i32.const 0
  local.set $maxChildDepth
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $$closureEnv
   i32.load offset=4
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $closure-class/TreeNode#get:children
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/array/Array<closure-class/TreeNode>#get:length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $$closureEnv
    i32.load offset=4
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    call $closure-class/TreeNode#get:children
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $i
    call $~lib/array/Array<closure-class/TreeNode>#__get
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $closure-class/TreeNode#getDepthClosure
    local.tee $childDepth
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    global.set $~argumentsLength
    local.get $childDepth
    local.tee $4
    i32.store offset=16
    local.get $4
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $4
    i32.load
    call_indirect (type $2)
    local.set $d
    local.get $d
    local.get $maxChildDepth
    i32.gt_s
    if
     local.get $d
     local.set $maxChildDepth
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $maxChildDepth
  i32.const 1
  i32.add
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $closure-class/testTreePattern (result i32)
  (local $root i32)
  (local $n2 i32)
  (local $n3 i32)
  (local $n4 i32)
  (local $n5 i32)
  (local $n6 i32)
  (local $getSum i32)
  (local $getDepth i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 56
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  call $closure-class/TreeNode#constructor
  local.tee $root
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  call $closure-class/TreeNode#constructor
  local.tee $n2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 3
  call $closure-class/TreeNode#constructor
  local.tee $n3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  call $closure-class/TreeNode#constructor
  local.tee $n4
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  call $closure-class/TreeNode#constructor
  local.tee $n5
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 6
  call $closure-class/TreeNode#constructor
  local.tee $n6
  i32.store offset=20
  local.get $root
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=24
  local.get $12
  local.get $n2
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=28
  local.get $12
  call $closure-class/TreeNode#addChild
  local.get $root
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=24
  local.get $12
  local.get $n3
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=28
  local.get $12
  call $closure-class/TreeNode#addChild
  local.get $n2
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=24
  local.get $12
  local.get $n4
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=28
  local.get $12
  call $closure-class/TreeNode#addChild
  local.get $n2
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=24
  local.get $12
  local.get $n5
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=28
  local.get $12
  call $closure-class/TreeNode#addChild
  local.get $n3
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=24
  local.get $12
  local.get $n6
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=28
  local.get $12
  call $closure-class/TreeNode#addChild
  global.get $~lib/memory/__stack_pointer
  local.get $root
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=24
  local.get $12
  call $closure-class/TreeNode#getSumClosure
  local.tee $getSum
  i32.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $root
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store offset=24
  local.get $12
  call $closure-class/TreeNode#getDepthClosure
  local.tee $getDepth
  i32.store offset=36
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getSum
  local.tee $8
  i32.store offset=40
  local.get $8
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $8
  i32.load
  call_indirect (type $2)
  i32.const 21
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 884
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getDepth
  local.tee $9
  i32.store offset=44
  local.get $9
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $9
  i32.load
  call_indirect (type $2)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 496
   i32.const 885
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getSum
  local.tee $10
  i32.store offset=48
  local.get $10
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $10
  i32.load
  call_indirect (type $2)
  i32.const 100
  i32.mul
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  local.get $getDepth
  local.tee $11
  i32.store offset=52
  local.get $11
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $11
  i32.load
  call_indirect (type $2)
  i32.add
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $closure-class/Range#constructor (param $this i32) (param $start i32) (param $endVal i32) (param $step i32) (result i32)
  (local $4 i32)
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
   i32.const 12
   i32.const 41
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $closure-class/Range#set:current
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $closure-class/Range#set:endVal
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $closure-class/Range#set:step
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $start
  call $closure-class/Range#set:current
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $endVal
  call $closure-class/Range#set:endVal
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $step
  call $closure-class/Range#set:step
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $closure-class/Range#getHasNextClosure~anonymous|0 (result i32)
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
  call $closure-class/Range#get:step
  i32.const 0
  i32.gt_s
  if
   local.get $$closureEnv
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $closure-class/Range#get:current
   local.get $$closureEnv
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $closure-class/Range#get:endVal
   i32.lt_s
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  else
   local.get $$closureEnv
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $closure-class/Range#get:current
   local.get $$closureEnv
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $closure-class/Range#get:endVal
   i32.gt_s
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
 (func $closure-class/Range#getNextClosure~anonymous|0 (result i32)
  (local $$closureEnv i32)
  (local $value i32)
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
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $closure-class/Range#get:current
  local.set $value
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $closure-class/Range#get:current
  local.get $$closureEnv
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $closure-class/Range#get:step
  i32.add
  call $closure-class/Range#set:current
  local.get $value
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $closure-class/testRangeIterator (result i32)
  (local $range i32)
  (local $hasNext i32)
  (local $next i32)
  (local $sum i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  i32.const 5
  i32.const 1
  call $closure-class/Range#constructor
  local.tee $range
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $range
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $closure-class/Range#getHasNextClosure
  local.tee $hasNext
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $range
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $closure-class/Range#getNextClosure
  local.tee $next
  i32.store offset=12
  i32.const 0
  local.set $sum
  loop $while-continue|0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   global.set $~argumentsLength
   local.get $hasNext
   local.tee $4
   i32.store offset=16
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   if
    local.get $sum
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    global.set $~argumentsLength
    local.get $next
    local.tee $5
    i32.store offset=20
    local.get $5
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $5
    i32.load
    call_indirect (type $2)
    i32.add
    local.set $sum
    br $while-continue|0
   end
  end
  local.get $sum
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $closure-class/testReverseRangeIterator (result i32)
  (local $range i32)
  (local $hasNext i32)
  (local $next i32)
  (local $sum i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 10
  i32.const 0
  i32.const -2
  call $closure-class/Range#constructor
  local.tee $range
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $range
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $closure-class/Range#getHasNextClosure
  local.tee $hasNext
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $range
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $closure-class/Range#getNextClosure
  local.tee $next
  i32.store offset=12
  i32.const 0
  local.set $sum
  loop $while-continue|0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   global.set $~argumentsLength
   local.get $hasNext
   local.tee $4
   i32.store offset=16
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   if
    local.get $sum
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    global.set $~argumentsLength
    local.get $next
    local.tee $5
    i32.store offset=20
    local.get $5
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $5
    i32.load
    call_indirect (type $2)
    i32.add
    local.set $sum
    br $while-continue|0
   end
  end
  local.get $sum
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
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
 (func $~lib/array/Array<%28i32%29=>void>#__visit (param $this i32) (param $cookie i32)
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
  call $~lib/array/Array<%28i32%29=>void>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<%28i32%29=>void>#get:length_
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
  call $~lib/array/Array<%28i32%29=>void>#get:buffer
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
 (func $~lib/array/Array<%28i32%2Ci32%29=>void>#__visit (param $this i32) (param $cookie i32)
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
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#get:length_
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
  call $~lib/array/Array<%28i32%2Ci32%29=>void>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%28i32%2Ci32%29=>void%29=>void>#__visit (param $this i32) (param $cookie i32)
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
  call $~lib/function/Function<%28%28i32%2Ci32%29=>void%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28i32%2Ci32%29=>void>#__visit (param $this i32) (param $cookie i32)
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
  call $~lib/function/Function<%28i32%2Ci32%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%28i32%29=>i32%29=>void>#__visit (param $this i32) (param $cookie i32)
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
  call $~lib/function/Function<%28%28i32%29=>i32%29=>void>#get:_env
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
 (func $~lib/function/Function<%28%28i32%29=>closure-class/Box%29=>closure-class/Box>#__visit (param $this i32) (param $cookie i32)
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
  call $~lib/function/Function<%28%28i32%29=>closure-class/Box%29=>closure-class/Box>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28i32%29=>closure-class/Box>#__visit (param $this i32) (param $cookie i32)
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
  call $~lib/function/Function<%28i32%29=>closure-class/Box>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%29=>closure-class/ChainableCounter>#__visit (param $this i32) (param $cookie i32)
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
  call $~lib/function/Function<%28%29=>closure-class/ChainableCounter>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%28i32%29=>void%29=>void>#__visit (param $this i32) (param $cookie i32)
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
  call $~lib/function/Function<%28%28i32%29=>void%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28%28%29=>i32%29=>i32>#__visit (param $this i32) (param $cookie i32)
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
  call $~lib/function/Function<%28%28%29=>i32%29=>i32>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<closure-class/TreeNode>#__visit (param $this i32) (param $cookie i32)
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
  call $~lib/array/Array<closure-class/TreeNode>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<closure-class/TreeNode>#get:length_
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
  call $~lib/array/Array<closure-class/TreeNode>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
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
