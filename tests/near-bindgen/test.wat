(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iijj (func (param i32 i64 i64) (result i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "input" (func $main/input (param i32)))
 (import "env" "register_len" (func $main/register_len (param i32) (result i32)))
 (import "env" "panic" (func $main/panic))
 (import "env" "read_register" (func $main/read_register (param i32 i32)))
 (import "env" "value_return" (func $main/value_return (param i32 i32)))
 (import "env" "log" (func $~lib/near-runtime-ts/imports/_near_log (param i32)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00=\00")
 (data (i32.const 32) "\80\00\00\00\01\00\00\00\01\00\00\00\80\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00+\00/\00")
 (data (i32.const 176) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 224) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 280) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00:\00l\00e\00n\00")
 (data (i32.const 304) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00:\00f\00r\00o\00n\00t\00")
 (data (i32.const 336) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00:\00b\00a\00c\00k\00")
 (data (i32.const 368) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00:\00")
 (data (i32.const 392) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00:\00r\00")
 (data (i32.const 416) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 464) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 488) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 520) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 544) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 568) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\009\00")
 (data (i32.const 592) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00A\00")
 (data (i32.const 616) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 640) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\002\003\00")
 (data (i32.const 664) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\00o\00o\00")
 (data (i32.const 688) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00G\00V\00s\00b\00G\008\00s\00I\00H\00d\00v\00c\00m\00x\00k\00I\00Q\00=\00=\00")
 (data (i32.const 744) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 760) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 816) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 872) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 920) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 1032) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 1056) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 1080) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\\\00")
 (data (i32.const 1104) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\"\00")
 (data (i32.const 1128) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\\\00")
 (data (i32.const 1152) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\08\00")
 (data (i32.const 1176) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00b\00")
 (data (i32.const 1200) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 1224) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00n\00")
 (data (i32.const 1248) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\0d\00")
 (data (i32.const 1272) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00r\00")
 (data (i32.const 1296) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\t\00")
 (data (i32.const 1320) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00t\00")
 (data (i32.const 1344) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 \00")
 (data (i32.const 1432) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 1848) "\10\00\00\00\01\00\00\00\n\00\00\00\10\00\00\00\a8\05\00\00\a8\05\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 1880) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 1968) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00:\00")
 (data (i32.const 1992) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00{\00")
 (data (i32.const 2016) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00r\00")
 (data (i32.const 2040) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00V\00a\00l\00")
 (data (i32.const 2072) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\006\004\00V\00a\00l\00")
 (data (i32.const 2104) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00f\00l\00a\00g\00")
 (data (i32.const 2128) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00z\00")
 (data (i32.const 2152) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00")
 (data (i32.const 2192) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00r\00r\00")
 (data (i32.const 2216) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 2240) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 2264) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 2312) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\003\002\00A\00r\00r\00")
 (data (i32.const 2344) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\003\002\00A\00r\00r\00")
 (data (i32.const 2376) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00u\001\002\008\00V\00a\00l\00")
 (data (i32.const 2408) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006\00")
 (data (i32.const 2504) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00~\00l\00i\00b\00/\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s\00")
 (data (i32.const 2576) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d\00")
 (data (i32.const 2616) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00s\00")
 (data (i32.const 2656) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00}\00")
 (data (i32.const 2680) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 2728) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d\00")
 (data (i32.const 2784) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 2872) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00m\00o\00d\00e\00l\00.\00t\00s\00")
 (data (i32.const 2904) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00o\00b\00j\00e\00c\00t\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 2968) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'\00")
 (data (i32.const 3008) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 3088) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00")
 (data (i32.const 3160) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00/\00")
 (data (i32.const 3184) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 3208) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 3232) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00r\00")
 (data (i32.const 3256) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00t\00")
 (data (i32.const 3280) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00u\00")
 (data (i32.const 3304) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t\00")
 (data (i32.const 3360) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 \00")
 (data (i32.const 3440) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'\00")
 (data (i32.const 3480) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 3544) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00m\00a\00i\00n\00.\00t\00s\00")
 (data (i32.const 3576) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y\00")
 (data (i32.const 3640) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00")
 (data (i32.const 3680) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\'\00")
 (data (i32.const 3704) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00b\00o\00o\00l\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 3768) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00 \00:\00 \00")
 (data (i32.const 3792) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 3816) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00t\00e\00g\00e\00r\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 3888) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N\00")
 (data (i32.const 3944) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 4008) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00 \00:\00 \00\"\00")
 (data (i32.const 4032) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 4096) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00a\00r\00r\00a\00y\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 4160) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00e\00s\00t\00.\00t\00s\00")
 (data (i32.const 4192) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00f\00o\00o\00b\00a\00r\00s\00")
 (data (i32.const 4224) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 4256) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00g\00e\00t\00S\00t\00r\00i\00n\00g\00A\00r\00r\00a\00y\00L\00e\00n\00g\00t\00h\00:\00 \00")
 (data (i32.const 4320) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00c\00o\00n\00t\00a\00i\00n\00e\00r\00")
 (data (i32.const 4360) "3\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93\00\00\00\02\00\00\00\93\04\00\00\02\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\10\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $main/wrapped_convertFoobars~anonymous|0)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/near-runtime-ts/util/base64.PADCHAR i32 (i32.const 24))
 (global $~lib/near-runtime-ts/util/base64.ALPHA i32 (i32.const 48))
 (global $~lib/near-runtime-ts/types/DEFAULT_SCRATCH_BUFFER_SIZE i32 (i32.const 65536))
 (global $~lib/near-runtime-ts/types/DATA_TYPE_ORIGINATOR_ACCOUNT_ID i32 (i32.const 1))
 (global $~lib/near-runtime-ts/types/DATA_TYPE_CURRENT_ACCOUNT_ID i32 (i32.const 2))
 (global $~lib/near-runtime-ts/types/DATA_TYPE_STORAGE i32 (i32.const 3))
 (global $~lib/near-runtime-ts/types/DATA_TYPE_INPUT i32 (i32.const 4))
 (global $~lib/near-runtime-ts/types/DATA_TYPE_RESULT i32 (i32.const 5))
 (global $~lib/near-runtime-ts/types/DATA_TYPE_STORAGE_ITER i32 (i32.const 6))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/near-runtime-ts/storage/storage (mut i32) (i32.const 0))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_LENGTH_SUFFIX i32 (i32.const 296))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_FRONT_INDEX_SUFFIX i32 (i32.const 320))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_BACK_INDEX_SUFFIX i32 (i32.const 352))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_ELEMENT_SUFFIX i32 (i32.const 384))
 (global $~lib/near-runtime-ts/collections/index/collections._KEY_RATING_SUFFIX i32 (i32.const 408))
 (global $~lib/near-runtime-ts/collections/index/collections._RATING_OFFSET i64 (i64.const 2147483648))
 (global $~lib/bignum/utils/HEX_CHARS i32 (i32.const 432))
 (global $~lib/bignum/globals/__divmod_quot_lo (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__divmod_rem (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__res128_lo (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__float_u128_lo (mut i64) (i64.const 0))
 (global $~lib/bignum/globals/__float_u128_hi (mut i64) (i64.const 0))
 (global $~lib/near-runtime-ts/contract/context (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/TRUE_STR i32 (i32.const 480))
 (global $~lib/assemblyscript-json/decoder/FALSE_STR i32 (i32.const 504))
 (global $~lib/assemblyscript-json/decoder/NULL_STR i32 (i32.const 536))
 (global $~lib/assemblyscript-json/decoder/CHAR_0 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_9 (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/decoder/CHAR_A_LOWER (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/number/U32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/rt/__rtti_base i32 (i32.const 4360))
 (global $~lib/heap/__heap_base i32 (i32.const 4772))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "runTest" (func $test/runTest))
 (export "convertFoobars" (func $test/convertFoobars))
 (export "getStringArrayLength" (func $test/getStringArrayLength))
 (export "rewrapFoobar" (func $test/rewrapFoobar))
 (export "unwrapFoobar" (func $test/unwrapFoobar))
 (start $start)
 (func $~lib/rt/stub/__alloc (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $2
  local.get $0
  local.tee $3
  i32.const 1
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  memory.size
  local.set $6
  local.get $5
  local.get $6
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $5
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $6
   local.tee $4
   local.get $3
   local.tee $7
   local.get $4
   local.get $7
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.set $8
  local.get $8
  local.get $1
  i32.store offset=8
  local.get $8
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect (; 10 ;) (type $FUNCSIG$v)
  nop
 )
 (func $~lib/memory/memory.fill (; 11 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 12 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 192
   i32.const 240
   i32.const 14
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/near-runtime-ts/storage/Storage#constructor (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  global.get $~lib/near-runtime-ts/types/DEFAULT_SCRATCH_BUFFER_SIZE
  call $~lib/typedarray/Uint8Array#constructor
  i32.store
  local.get $0
 )
 (func $start:~lib/near-runtime-ts/storage (; 15 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/near-runtime-ts/storage/Storage#constructor
  global.set $~lib/near-runtime-ts/storage/storage
 )
 (func $~lib/near-runtime-ts/contract/Context#constructor (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $start:~lib/near-runtime-ts/contract (; 17 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/near-runtime-ts/contract/Context#constructor
  global.set $~lib/near-runtime-ts/contract/context
 )
 (func $start:~lib/near-runtime-ts/index (; 18 ;) (type $FUNCSIG$v)
  call $start:~lib/near-runtime-ts/storage
  call $start:~lib/near-runtime-ts/contract
 )
 (func $~lib/string/String#get:length (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charCodeAt (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $start:~lib/assemblyscript-json/decoder (; 21 ;) (type $FUNCSIG$v)
  i32.const 560
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_0
  i32.const 584
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_9
  i32.const 608
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A
  i32.const 632
  i32.const 0
  call $~lib/string/String#charCodeAt
  global.set $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
 )
 (func $start:~lib/assemblyscript-json/index (; 22 ;) (type $FUNCSIG$v)
  call $start:~lib/assemblyscript-json/decoder
 )
 (func $start:main (; 23 ;) (type $FUNCSIG$v)
  call $start:~lib/near-runtime-ts/index
  call $start:~lib/assemblyscript-json/index
 )
 (func $start:test (; 24 ;) (type $FUNCSIG$v)
  call $start:main
 )
 (func $model/FooBar#constructor (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 56
   i32.const 7
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 1
  i32.store offset=4
  local.get $0
  i64.const 64
  i64.store offset=8
  local.get $0
  i64.const -64
  i64.store offset=16
  local.get $0
  i32.const 0
  i32.store8 offset=24
  local.get $0
  i32.const 656
  call $~lib/rt/stub/__retain
  i32.store offset=28
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  i32.const 0
  i32.store offset=36
  local.get $0
  i32.const 0
  i32.store offset=40
  local.get $0
  i32.const 0
  i32.store offset=44
  local.get $0
  i32.const 0
  i32.store offset=48
  local.get $0
  i32.const 0
  i32.store offset=52
  local.get $0
 )
 (func $~lib/string/String#charAt (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  i32.const 2
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  i32.store16
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/string/compareImpl (; 27 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.set $5
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $7
  block $break|0
   loop $continue|0
    local.get $4
    if (result i32)
     local.get $6
     i32.load16_u
     local.get $7
     i32.load16_u
     i32.sub
     local.tee $5
     i32.eqz
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    local.get $7
    i32.const 2
    i32.add
    local.set $7
    br $continue|0
   end
   unreachable
  end
  local.get $5
  local.set $8
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $8
 )
 (func $~lib/string/String.__eq (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/string/String#indexOf (; 29 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   local.set $4
   local.get $1
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $5
  local.get $5
  i32.eqz
  if
   i32.const -1
   local.set $4
   local.get $1
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $2
  local.tee $4
  i32.const 0
  local.tee $6
  local.get $4
  local.get $6
  i32.gt_s
  select
  local.tee $4
  local.get $5
  local.tee $6
  local.get $4
  local.get $6
  i32.lt_s
  select
  local.set $7
  block $break|0
   local.get $5
   local.get $3
   i32.sub
   local.set $5
   loop $loop|0
    local.get $7
    local.get $5
    i32.le_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $7
    local.get $1
    i32.const 0
    local.get $3
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $7
     local.set $4
     local.get $1
     call $~lib/rt/stub/__release
     local.get $4
     return
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  i32.const -1
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/near-runtime-ts/util/base64.getByte64 (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  global.get $~lib/near-runtime-ts/util/base64.ALPHA
  local.get $0
  local.get $1
  call $~lib/string/String#charAt
  local.tee $2
  i32.const 0
  call $~lib/string/String#indexOf
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#__set (; 31 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 776
   i32.const 832
   i32.const 146
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/near-runtime-ts/util/base64.decode (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.set $3
  local.get $0
  call $~lib/string/String#get:length
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $5
   local.get $0
   call $~lib/rt/stub/__release
   local.get $5
   return
  end
  local.get $0
  local.get $4
  i32.const 1
  i32.sub
  call $~lib/string/String#charAt
  local.tee $5
  i32.const 24
  call $~lib/string/String.__eq
  if
   i32.const 1
   local.set $3
   local.get $0
   local.get $4
   i32.const 2
   i32.sub
   call $~lib/string/String#charAt
   local.tee $6
   i32.const 24
   call $~lib/string/String.__eq
   if
    i32.const 2
    local.set $3
   end
   local.get $4
   i32.const 4
   i32.sub
   local.set $4
   local.get $6
   call $~lib/rt/stub/__release
  end
  local.get $4
  i32.const 4
  i32.rem_u
  i32.const 0
  i32.eq
  if (result i32)
   local.get $4
   i32.const 4
   i32.div_u
   i32.const 3
   i32.mul
  else   
   local.get $4
   i32.const 4
   i32.div_u
   i32.const 1
   i32.add
   i32.const 3
   i32.mul
  end
  local.set $6
  local.get $3
  i32.const 0
  i32.gt_s
  if (result i32)
   i32.const 3
   local.get $3
   i32.sub
  else   
   i32.const 0
  end
  local.set $7
  local.get $6
  local.get $7
  i32.add
  local.set $8
  i32.const 0
  local.get $8
  call $~lib/typedarray/Uint8Array#constructor
  local.set $9
  i32.const 0
  local.set $10
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/near-runtime-ts/util/base64.getByte64
    i32.const 18
    i32.shl
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    call $~lib/near-runtime-ts/util/base64.getByte64
    i32.const 12
    i32.shl
    i32.or
    local.get $0
    local.get $1
    i32.const 2
    i32.add
    call $~lib/near-runtime-ts/util/base64.getByte64
    i32.const 6
    i32.shl
    i32.or
    local.get $0
    local.get $1
    i32.const 3
    i32.add
    call $~lib/near-runtime-ts/util/base64.getByte64
    i32.or
    local.set $2
    local.get $9
    local.get $10
    local.tee $11
    i32.const 1
    i32.add
    local.set $10
    local.get $11
    local.get $2
    i32.const 16
    i32.shr_u
    call $~lib/typedarray/Uint8Array#__set
    local.get $9
    local.get $10
    local.tee $11
    i32.const 1
    i32.add
    local.set $10
    local.get $11
    local.get $2
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $9
    local.get $10
    local.tee $11
    i32.const 1
    i32.add
    local.set $10
    local.get $11
    local.get $2
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  block $break|1
   block $case1|1
    block $case0|1
     local.get $3
     local.set $11
     local.get $11
     i32.const 1
     i32.eq
     br_if $case0|1
     local.get $11
     i32.const 2
     i32.eq
     br_if $case1|1
     br $break|1
    end
    local.get $0
    local.get $1
    call $~lib/near-runtime-ts/util/base64.getByte64
    i32.const 18
    i32.shl
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    call $~lib/near-runtime-ts/util/base64.getByte64
    i32.const 12
    i32.shl
    i32.or
    local.get $0
    local.get $1
    i32.const 2
    i32.add
    call $~lib/near-runtime-ts/util/base64.getByte64
    i32.const 6
    i32.shl
    i32.or
    local.set $2
    local.get $9
    local.get $10
    local.tee $11
    i32.const 1
    i32.add
    local.set $10
    local.get $11
    local.get $2
    i32.const 16
    i32.shr_u
    call $~lib/typedarray/Uint8Array#__set
    local.get $9
    local.get $10
    local.tee $11
    i32.const 1
    i32.add
    local.set $10
    local.get $11
    local.get $2
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    br $break|1
   end
   local.get $0
   local.get $1
   call $~lib/near-runtime-ts/util/base64.getByte64
   i32.const 18
   i32.shl
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/near-runtime-ts/util/base64.getByte64
   i32.const 12
   i32.shl
   i32.or
   local.set $2
   local.get $9
   local.get $10
   local.tee $11
   i32.const 1
   i32.add
   local.set $10
   local.get $11
   local.get $2
   i32.const 16
   i32.shr_u
   call $~lib/typedarray/Uint8Array#__set
   br $break|1
  end
  local.get $9
  local.set $11
  local.get $5
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $11
 )
 (func $~lib/bignum/integer/u128/u128#constructor (; 33 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 6
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $~lib/util/memory/memcpy (; 34 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     i32.eqz
     br_if $break|1
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $continue|1
    end
    unreachable
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      block $break|3
       loop $continue|3
        local.get $2
        i32.const 17
        i32.ge_u
        i32.eqz
        br_if $break|3
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $continue|3
       end
       unreachable
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 18
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $continue|4
      end
      unreachable
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    block $break|5
     loop $continue|5
      local.get $2
      i32.const 19
      i32.ge_u
      i32.eqz
      br_if $break|5
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $continue|5
     end
     unreachable
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 35 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else    
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $5
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|0
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $6
       i32.const 1
       i32.add
       local.set $5
       local.get $6
       local.get $4
       local.tee $6
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       i32.load8_u
       i32.store8
       br $continue|0
      end
      unreachable
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|1
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $continue|1
      end
      unreachable
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      i32.eqz
      br_if $break|2
      local.get $5
      local.tee $6
      i32.const 1
      i32.add
      local.set $5
      local.get $6
      local.get $4
      local.tee $6
      i32.const 1
      i32.add
      local.set $4
      local.get $6
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
     unreachable
    end
   else    
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $5
       local.get $3
       i32.add
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|3
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
      unreachable
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
      unreachable
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      i32.eqz
      br_if $break|5
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/rt/__allocArray (; 36 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/stub/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $6
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
 )
 (func $~lib/array/Array.create<~lib/typedarray/Uint8Array> (; 37 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 192
   i32.const 888
   i32.const 45
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const 12
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.load offset=4
  i32.const 0
  local.get $1
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/rt/stub/__realloc (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  local.get $2
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $1
   local.get $2
   i32.load offset=8
   call $~lib/rt/stub/__alloc
   local.set $4
   local.get $4
   local.get $0
   local.get $3
   call $~lib/memory/memory.copy
   local.get $4
   local.set $0
  else   
   local.get $2
   local.get $1
   i32.store offset=12
  end
  local.get $0
 )
 (func $~lib/array/ensureSize (; 39 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 192
    i32.const 888
    i32.const 14
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   local.get $2
   i32.shl
   local.set $5
   local.get $4
   local.get $5
   call $~lib/rt/stub/__realloc
   local.set $6
   local.get $6
   local.get $3
   i32.add
   i32.const 0
   local.get $5
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $6
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $6
    call $~lib/rt/stub/__retain
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_set (; 40 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $2
  local.get $4
  i32.ne
  if
   local.get $3
   local.get $2
   call $~lib/rt/stub/__retain
   i32.store
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__set (; 41 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $2
   call $~lib/rt/stub/__release
   i32.const 936
   i32.const 888
   i32.const 121
   i32.const 38
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_set
  local.get $1
  local.get $3
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/array/Array<i32>#constructor (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 11
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 8
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  if
   i32.const 936
   i32.const 888
   i32.const 56
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<i32>#push (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#constructor (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 13
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 10
  call $~lib/array/Array<i32>#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  local.get $2
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $1
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
 )
 (func $~lib/array/Array<i32>#get:length (; 46 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 48 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 776
   i32.const 888
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#get:isFirstKey (; 49 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#get:length
  i32.const 1
  i32.sub
  call $~lib/array/Array<i32>#__get
 )
 (func $~lib/array/Array<~lib/string/String>#push (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#write (; 51 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/string/String>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/array/Array<i32>#__unchecked_set (; 52 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 53 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#__unchecked_set
  local.get $1
  local.get $3
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $~lib/string/String.__ne (; 54 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/string/String#substring (; 55 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.set $6
  local.get $2
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.set $7
  local.get $6
  local.tee $4
  local.get $7
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $8
  local.get $6
  local.tee $4
  local.get $7
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $9
  local.get $9
  local.get $8
  i32.sub
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $8
  i32.eqz
  if (result i32)
   local.get $9
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   i32.eq
  else   
   i32.const 0
  end
  if
   local.get $0
   call $~lib/rt/stub/__retain
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $10
  local.get $10
  local.get $0
  local.get $8
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $10
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/decimalCount32 (; 56 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    local.get $0
    i32.const 10
    i32.lt_u
    select
    return
   else    
    i32.const 4
    i32.const 5
    local.get $0
    i32.const 10000
    i32.lt_u
    select
    local.set $1
    i32.const 3
    local.get $1
    local.get $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
  else   
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    local.get $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else    
    i32.const 9
    i32.const 10
    local.get $0
    i32.const 1000000000
    i32.lt_u
    select
    local.set $1
    i32.const 8
    local.get $1
    local.get $0
    i32.const 100000000
    i32.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_lut (; 57 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 1864
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.eqz
    br_if $break|0
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    local.get $3
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    local.get $3
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $continue|0
   end
   unreachable
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $7
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $6
   local.get $7
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store
  else   
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store16
  end
 )
 (func $~lib/util/number/itoa32 (; 58 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 560
   call $~lib/rt/stub/__retain
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.set $1
  local.get $1
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  local.get $2
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  local.set $6
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $6
  local.get $5
  local.get $4
  call $~lib/util/number/utoa32_lut
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/itoa<i32> (; 59 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/number/I32#toString (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/util/number/itoa<i32>
  local.tee $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/string/String#concat (; 61 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 536
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $2
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $5
  i32.add
  local.set $6
  local.get $6
  i32.const 0
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $6
  i32.const 1
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $7
  local.get $0
  local.get $4
  call $~lib/memory/memory.copy
  local.get $7
  local.get $4
  i32.add
  local.get $1
  local.get $5
  call $~lib/memory/memory.copy
  local.get $7
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/string/String.__concat (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 536
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (; 63 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 1072
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  i32.const 0
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $3
    call $~lib/string/String#charCodeAt
    local.set $4
    local.get $4
    i32.const 32
    i32.lt_s
    local.tee $5
    if (result i32)
     local.get $5
    else     
     local.get $4
     i32.const 1072
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
    end
    local.tee $5
    if (result i32)
     local.get $5
    else     
     local.get $4
     i32.const 1096
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
    end
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     local.get $2
     local.get $3
     call $~lib/string/String#substring
     local.tee $6
     call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     local.get $3
     i32.const 1
     i32.add
     local.set $2
     local.get $4
     i32.const 1072
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
     if
      local.get $0
      i32.const 1120
      call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     else      
      local.get $4
      i32.const 1096
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      if
       local.get $0
       i32.const 1144
       call $~lib/assemblyscript-json/encoder/JSONEncoder#write
      else       
       local.get $4
       i32.const 1168
       i32.const 0
       call $~lib/string/String#charCodeAt
       i32.eq
       if
        local.get $0
        i32.const 1192
        call $~lib/assemblyscript-json/encoder/JSONEncoder#write
       else        
        local.get $4
        i32.const 1216
        i32.const 0
        call $~lib/string/String#charCodeAt
        i32.eq
        if
         local.get $0
         i32.const 1240
         call $~lib/assemblyscript-json/encoder/JSONEncoder#write
        else         
         local.get $4
         i32.const 1264
         i32.const 0
         call $~lib/string/String#charCodeAt
         i32.eq
         if
          local.get $0
          i32.const 1288
          call $~lib/assemblyscript-json/encoder/JSONEncoder#write
         else          
          local.get $4
          i32.const 1312
          i32.const 0
          call $~lib/string/String#charCodeAt
          i32.eq
          if
           local.get $0
           i32.const 1336
           call $~lib/assemblyscript-json/encoder/JSONEncoder#write
          else           
           i32.const 0
           i32.eqz
           if
            i32.const 1360
            local.get $4
            call $~lib/number/I32#toString
            local.tee $7
            call $~lib/string/String.__concat
            local.tee $8
            i32.const 1896
            i32.const 108
            i32.const 20
            call $~lib/builtins/abort
            unreachable
           end
           local.get $7
           call $~lib/rt/stub/__release
           local.get $8
           call $~lib/rt/stub/__release
          end
         end
        end
       end
      end
     end
     local.get $6
     call $~lib/rt/stub/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $1
  call $~lib/string/String#get:length
  call $~lib/string/String#substring
  local.tee $5
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.const 1072
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $5
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey (; 64 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#get:isFirstKey
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $0
   i32.const 1048
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  else   
   local.get $0
   i32.load
   local.get $0
   i32.load
   call $~lib/array/Array<i32>#get:length
   i32.const 1
   i32.sub
   i32.const 0
   call $~lib/array/Array<i32>#__set
  end
  local.get $1
  i32.const 0
  call $~lib/string/String.__ne
  if (result i32)
   local.get $1
   call $~lib/string/String#get:length
   i32.const 0
   i32.gt_s
  else   
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   local.tee $2
   if (result i32)
    local.get $2
   else    
    unreachable
   end
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
   local.get $0
   i32.const 1984
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject (; 65 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2008
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/util/number/decimalCount64 (; 66 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i64.const 1000000000000000
  i64.lt_u
  if
   local.get $0
   i64.const 1000000000000
   i64.lt_u
   if
    i32.const 11
    i32.const 12
    local.get $0
    i64.const 100000000000
    i64.lt_u
    select
    return
   else    
    i32.const 14
    i32.const 15
    local.get $0
    i64.const 100000000000000
    i64.lt_u
    select
    local.set $1
    i32.const 13
    local.get $1
    local.get $0
    i64.const 10000000000000
    i64.lt_u
    select
    return
   end
   unreachable
  else   
   local.get $0
   i64.const 100000000000000000
   i64.lt_u
   if
    i32.const 16
    i32.const 17
    local.get $0
    i64.const 10000000000000000
    i64.lt_u
    select
    return
   else    
    i32.const 19
    i32.const 20
    local.get $0
    i64.const -8446744073709551616
    i64.lt_u
    select
    local.set $1
    i32.const 18
    local.get $1
    local.get $0
    i64.const 1000000000000000000
    i64.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa64_lut (; 67 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  i32.const 1864
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i64.const 100000000
    i64.ge_u
    i32.eqz
    br_if $break|0
    local.get $1
    i64.const 100000000
    i64.div_u
    local.set $4
    local.get $1
    local.get $4
    i64.const 100000000
    i64.mul
    i64.sub
    i32.wrap_i64
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 10000
    i32.div_u
    local.set $6
    local.get $5
    i32.const 10000
    i32.rem_u
    local.set $7
    local.get $6
    i32.const 100
    i32.div_u
    local.set $8
    local.get $6
    i32.const 100
    i32.rem_u
    local.set $9
    local.get $7
    i32.const 100
    i32.div_u
    local.set $10
    local.get $7
    i32.const 100
    i32.rem_u
    local.set $11
    local.get $3
    local.get $10
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $12
    local.get $3
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $13
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $12
    local.get $13
    i64.const 32
    i64.shl
    i64.or
    i64.store
    local.get $3
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $12
    local.get $3
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $13
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $12
    local.get $13
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.get $1
  i32.wrap_i64
  local.get $2
  call $~lib/util/number/utoa32_lut
 )
 (func $~lib/util/number/itoa64 (; 68 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  i64.eqz
  if
   i32.const 560
   call $~lib/rt/stub/__retain
   return
  end
  local.get $0
  i64.const 0
  i64.lt_s
  local.set $1
  local.get $1
  if
   i64.const 0
   local.get $0
   i64.sub
   local.set $0
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.set $3
   local.get $3
   call $~lib/util/number/decimalCount32
   local.get $1
   i32.add
   local.set $4
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
   local.set $7
   local.get $3
   local.set $6
   local.get $4
   local.set $5
   local.get $7
   local.get $6
   local.get $5
   call $~lib/util/number/utoa32_lut
  else   
   local.get $0
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.set $4
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.set $2
   local.get $2
   local.set $6
   local.get $0
   local.set $8
   local.get $4
   local.set $5
   local.get $6
   local.get $8
   local.get $5
   call $~lib/util/number/utoa64_lut
  end
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/itoa<i64> (; 69 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa64
  return
 )
 (func $~lib/number/I64#toString (; 70 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/util/number/itoa<i64>
  local.tee $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeInteger (; 71 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/number/I64#toString
  local.tee $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger (; 72 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeInteger
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/util/number/utoa64 (; 73 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  local.get $0
  i64.eqz
  if
   i32.const 560
   call $~lib/rt/stub/__retain
   return
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.set $2
   local.get $2
   call $~lib/util/number/decimalCount32
   local.set $3
   local.get $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.set $1
   local.get $1
   local.set $6
   local.get $2
   local.set $5
   local.get $3
   local.set $4
   local.get $6
   local.get $5
   local.get $4
   call $~lib/util/number/utoa32_lut
  else   
   local.get $0
   call $~lib/util/number/decimalCount64
   local.set $3
   local.get $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__alloc
   local.set $1
   local.get $1
   local.set $5
   local.get $0
   local.set $7
   local.get $3
   local.set $4
   local.get $5
   local.get $7
   local.get $4
   call $~lib/util/number/utoa64_lut
  end
  local.get $1
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/itoa<u64> (; 74 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/utoa64
  return
 )
 (func $~lib/number/U64#toString (; 75 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/util/number/itoa<u64>
  local.tee $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setString (; 76 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeBoolean (; 77 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  if (result i32)
   i32.const 480
   call $~lib/rt/stub/__retain
   local.tee $2
  else   
   i32.const 504
   call $~lib/rt/stub/__retain
   local.tee $3
  end
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setBoolean (; 78 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeBoolean
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setNull (; 79 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 536
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (; 80 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/typedarray/Uint8Array#get:length (; 81 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
 )
 (func $~lib/typedarray/Uint8Array#__get (; 82 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 776
   i32.const 832
   i32.const 135
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<~lib/string/String>#join_str (; 83 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i32.load
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  i32.const 0
  local.set $6
  i32.const 0
  local.set $7
  block $break|0
   i32.const 0
   local.set $3
   local.get $2
   i32.const 1
   i32.add
   local.set $8
   loop $loop|0
    local.get $3
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $9
    local.get $7
    local.tee $10
    i32.ne
    if
     local.get $9
     call $~lib/rt/stub/__retain
     drop
     local.get $10
     call $~lib/rt/stub/__release
    end
    local.get $9
    local.set $7
    local.get $7
    i32.const 0
    i32.ne
    if
     local.get $6
     local.get $7
     call $~lib/string/String#get:length
     i32.add
     local.set $6
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 0
  local.set $11
  local.get $6
  local.get $5
  local.get $2
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $12
  block $break|1
   i32.const 0
   local.set $8
   loop $loop|1
    local.get $8
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $4
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $10
    local.get $7
    local.tee $3
    i32.ne
    if
     local.get $10
     call $~lib/rt/stub/__retain
     drop
     local.get $3
     call $~lib/rt/stub/__release
    end
    local.get $10
    local.set $7
    local.get $7
    i32.const 0
    i32.ne
    if
     local.get $7
     call $~lib/string/String#get:length
     local.set $10
     local.get $12
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $7
     local.get $10
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $11
     local.get $10
     i32.add
     local.set $11
    end
    local.get $5
    if
     local.get $12
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $11
     local.get $5
     i32.add
     local.set $11
    end
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $loop|1
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $9
  local.get $7
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/stub/__retain
   drop
   local.get $8
   call $~lib/rt/stub/__release
  end
  local.get $9
  local.set $7
  local.get $7
  i32.const 0
  i32.ne
  if
   local.get $12
   local.get $11
   i32.const 1
   i32.shl
   i32.add
   local.get $7
   local.get $7
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $12
  local.set $9
  local.get $1
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $9
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 84 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#join_str
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  return
 )
 (func $~lib/near-runtime-ts/util/base64.encode (; 85 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $3
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  i32.const 3
  i32.rem_s
  i32.sub
  local.set $4
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  i32.const 0
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   local.set $5
   local.get $0
   call $~lib/rt/stub/__release
   local.get $3
   call $~lib/rt/stub/__release
   local.get $5
   return
  end
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/typedarray/Uint8Array#__get
    i32.const 16
    i32.shl
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    call $~lib/typedarray/Uint8Array#__get
    i32.const 8
    i32.shl
    i32.or
    local.get $0
    local.get $1
    i32.const 2
    i32.add
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    local.set $2
    local.get $3
    global.get $~lib/near-runtime-ts/util/base64.ALPHA
    local.get $2
    i32.const 18
    i32.shr_u
    call $~lib/string/String#charAt
    local.tee $5
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/util/base64.ALPHA
    local.get $2
    i32.const 12
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    local.tee $6
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/util/base64.ALPHA
    local.get $2
    i32.const 6
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    local.tee $7
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/util/base64.ALPHA
    local.get $2
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    local.tee $8
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $1
    i32.const 3
    i32.add
    local.set $1
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    call $~lib/rt/stub/__release
    local.get $7
    call $~lib/rt/stub/__release
    local.get $8
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  block $break|1
   block $case1|1
    block $case0|1
     local.get $0
     call $~lib/typedarray/Uint8Array#get:length
     local.get $4
     i32.sub
     local.set $8
     local.get $8
     i32.const 1
     i32.eq
     br_if $case0|1
     local.get $8
     i32.const 2
     i32.eq
     br_if $case1|1
     br $break|1
    end
    local.get $0
    local.get $1
    call $~lib/typedarray/Uint8Array#__get
    i32.const 16
    i32.shl
    local.set $2
    local.get $3
    global.get $~lib/near-runtime-ts/util/base64.ALPHA
    local.get $2
    i32.const 18
    i32.shr_u
    call $~lib/string/String#charAt
    local.tee $8
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/util/base64.ALPHA
    local.get $2
    i32.const 12
    i32.shr_u
    i32.const 63
    i32.and
    call $~lib/string/String#charAt
    local.tee $7
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/util/base64.PADCHAR
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $3
    global.get $~lib/near-runtime-ts/util/base64.PADCHAR
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $8
    call $~lib/rt/stub/__release
    local.get $7
    call $~lib/rt/stub/__release
    br $break|1
   end
   local.get $0
   local.get $1
   call $~lib/typedarray/Uint8Array#__get
   i32.const 16
   i32.shl
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/typedarray/Uint8Array#__get
   i32.const 8
   i32.shl
   i32.or
   local.set $2
   local.get $3
   global.get $~lib/near-runtime-ts/util/base64.ALPHA
   local.get $2
   i32.const 18
   i32.shr_u
   call $~lib/string/String#charAt
   local.tee $7
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $3
   global.get $~lib/near-runtime-ts/util/base64.ALPHA
   local.get $2
   i32.const 12
   i32.shr_u
   i32.const 63
   i32.and
   call $~lib/string/String#charAt
   local.tee $8
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $3
   global.get $~lib/near-runtime-ts/util/base64.ALPHA
   local.get $2
   i32.const 6
   i32.shr_u
   i32.const 63
   i32.and
   call $~lib/string/String#charAt
   local.tee $6
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $3
   global.get $~lib/near-runtime-ts/util/base64.PADCHAR
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $7
   call $~lib/rt/stub/__release
   local.get $8
   call $~lib/rt/stub/__release
   local.get $6
   call $~lib/rt/stub/__release
   br $break|1
  end
  local.get $3
  i32.const 760
  call $~lib/array/Array<~lib/string/String>#join
  local.set $6
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray (; 86 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2232
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#get:length (; 87 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__unchecked_get (; 88 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get (; 89 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 936
   i32.const 888
   i32.const 106
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 776
   i32.const 888
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__unchecked_get
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (; 90 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_get (; 91 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 92 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 936
   i32.const 888
   i32.const 106
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 776
   i32.const 888
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__unchecked_get
 )
 (func $model/__near_encode_Array_string (; 93 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $3
    i32.const 0
    call $~lib/string/String.__ne
    if
     local.get $1
     i32.const 0
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/string/String>#__get
     local.tee $4
     call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
     local.get $4
     call $~lib/rt/stub/__release
    else     
     local.get $1
     i32.const 0
     call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/array/Array<i32>#pop (; 94 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2280
   i32.const 888
   i32.const 287
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $2
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popArray (; 95 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 2256
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $model/__near_encode_Array_Array_string (; 96 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
    local.tee $3
    i32.const 0
    i32.ne
    if
     local.get $1
     i32.const 0
     call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
     drop
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get
     local.tee $4
     local.get $1
     call $model/__near_encode_Array_string
     local.get $1
     call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
     local.get $4
     call $~lib/rt/stub/__release
    else     
     local.get $1
     i32.const 0
     call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/array/Array<u32>#get:length (; 97 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__unchecked_get (; 98 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (; 99 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 776
   i32.const 888
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__unchecked_get
 )
 (func $model/__near_encode_Array_u32 (; 100 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    call $~lib/array/Array<u32>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    i32.const 0
    local.get $0
    local.get $2
    call $~lib/array/Array<u32>#__get
    i64.extend_i32_u
    call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $model/__near_encode_Array_i32 (; 101 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    call $~lib/array/Array<i32>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    i32.const 0
    local.get $0
    local.get $2
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/typedarray/Int8Array#constructor (; 102 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 14
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#get:length (; 103 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
 )
 (func $~lib/typedarray/Int8Array#__get (; 104 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 776
   i32.const 832
   i32.const 27
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $~lib/typedarray/Int8Array#__set (; 105 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 776
   i32.const 832
   i32.const 38
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/bignum/utils/processU64 (; 106 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/typedarray/Int8Array#get:length
  i32.const 1
  i32.sub
  local.set $2
  block $break|0
   i32.const 63
   local.set $3
   loop $loop|0
    local.get $3
    i32.const -1
    i32.ne
    i32.eqz
    br_if $break|0
    block $break|1
     i32.const 0
     local.set $4
     loop $loop|1
      local.get $4
      local.get $2
      i32.le_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $4
      local.get $0
      local.get $4
      call $~lib/typedarray/Int8Array#__get
      local.get $0
      local.get $4
      call $~lib/typedarray/Int8Array#__get
      i32.const 5
      i32.ge_s
      i32.const 3
      i32.mul
      i32.add
      call $~lib/typedarray/Int8Array#__set
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $loop|1
     end
     unreachable
    end
    block $break|2
     local.get $2
     local.set $4
     loop $loop|2
      local.get $4
      i32.const -1
      i32.ne
      i32.eqz
      br_if $break|2
      local.get $0
      local.get $4
      local.get $0
      local.get $4
      call $~lib/typedarray/Int8Array#__get
      i32.const 1
      i32.shl
      call $~lib/typedarray/Int8Array#__set
      local.get $4
      local.get $2
      i32.lt_s
      if
       local.get $0
       local.get $4
       i32.const 1
       i32.add
       local.get $0
       local.get $4
       i32.const 1
       i32.add
       call $~lib/typedarray/Int8Array#__get
       local.get $0
       local.get $4
       call $~lib/typedarray/Int8Array#__get
       i32.const 15
       i32.gt_s
       i32.or
       call $~lib/typedarray/Int8Array#__set
      end
      local.get $0
      local.get $4
      local.get $0
      local.get $4
      call $~lib/typedarray/Int8Array#__get
      i32.const 15
      i32.and
      call $~lib/typedarray/Int8Array#__set
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $loop|2
     end
     unreachable
    end
    local.get $0
    i32.const 0
    local.get $0
    i32.const 0
    call $~lib/typedarray/Int8Array#__get
    local.get $1
    i64.const 1
    local.get $3
    i64.extend_i32_s
    i64.shl
    i64.and
    i64.const 0
    i64.ne
    i32.add
    call $~lib/typedarray/Int8Array#__set
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $~lib/bignum/utils/u128toa10 (; 107 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 40
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int8Array#constructor
  local.set $2
  local.get $2
  local.get $0
  i64.load offset=8
  call $~lib/bignum/utils/processU64
  local.get $2
  local.get $0
  i64.load
  call $~lib/bignum/utils/processU64
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $3
  i32.const 0
  local.set $4
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $5
   loop $loop|0
    local.get $5
    i32.const -1
    i32.ne
    i32.eqz
    br_if $break|0
    local.get $4
    i32.eqz
    if (result i32)
     local.get $2
     local.get $5
     call $~lib/typedarray/Int8Array#__get
     i32.const 0
     i32.gt_s
    else     
     i32.const 0
    end
    if
     i32.const 1
     local.set $4
    end
    local.get $4
    if
     local.get $3
     global.get $~lib/bignum/utils/HEX_CHARS
     local.get $2
     local.get $5
     call $~lib/typedarray/Int8Array#__get
     call $~lib/string/String#charAt
     local.tee $6
     call $~lib/string/String#concat
     local.set $7
     local.get $3
     call $~lib/rt/stub/__release
     local.get $7
     local.set $3
     local.get $6
     call $~lib/rt/stub/__release
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $5
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $5
 )
 (func $~lib/bignum/integer/u128/u128#toString (; 108 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  local.get $1
  i32.eqz
  if
   i32.const 10
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 16
   i32.eq
  end
  i32.eqz
  if
   i32.const 2424
   i32.const 2520
   i32.const 894
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $2
  local.get $2
  i64.load
  local.get $2
  i64.load offset=8
  i64.or
  i64.eqz
  if
   i32.const 560
   call $~lib/rt/stub/__retain
   return
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $0
  local.set $2
  i32.const 0
  local.get $2
  i64.load
  local.get $2
  i64.load offset=8
  call $~lib/bignum/integer/u128/u128#constructor
  local.set $4
  local.get $1
  i32.const 16
  i32.eq
  if
   i32.const 124
   local.get $4
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $2
   i64.load
   local.set $6
   local.get $2
   i64.load offset=8
   local.set $5
   local.get $5
   local.get $5
   i64.const 1
   i64.sub
   i64.xor
   i64.const 63
   i64.shr_s
   local.set $7
   local.get $5
   local.get $7
   i64.const -1
   i64.xor
   i64.and
   local.get $6
   local.get $7
   i64.and
   i64.or
   i64.clz
   i32.wrap_i64
   local.get $7
   i32.wrap_i64
   i32.const 64
   i32.and
   i32.add
   local.set $8
   local.get $2
   call $~lib/rt/stub/__release
   local.get $8
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.sub
   local.set $2
   block $break|0
    loop $continue|0
     local.get $2
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $4
     call $~lib/rt/stub/__retain
     local.set $9
     local.get $2
     local.set $8
     local.get $8
     i32.const 127
     i32.and
     local.set $8
     local.get $8
     i64.extend_i32_s
     local.set $7
     local.get $7
     i64.const 127
     i64.add
     local.get $7
     i64.or
     i64.const 64
     i64.and
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.set $6
     local.get $7
     i64.const 6
     i64.shr_u
     i64.const 1
     i64.sub
     local.set $5
     local.get $7
     i64.const 63
     i64.and
     local.set $7
     local.get $9
     i64.load offset=8
     local.set $10
     local.get $10
     local.get $7
     i64.shr_u
     local.set $11
     local.get $11
     local.get $5
     i64.const -1
     i64.xor
     i64.and
     local.set $12
     local.get $12
     local.get $9
     i64.load
     local.get $7
     i64.shr_u
     local.get $10
     i64.const 64
     local.get $7
     i64.sub
     i64.shl
     local.get $6
     i64.and
     i64.or
     local.get $5
     i64.and
     i64.or
     local.set $12
     i32.const 0
     local.get $12
     local.get $11
     local.get $5
     i64.and
     call $~lib/bignum/integer/u128/u128#constructor
     local.set $13
     local.get $9
     call $~lib/rt/stub/__release
     local.get $13
     local.tee $9
     local.tee $13
     local.get $4
     local.tee $8
     i32.ne
     if
      local.get $13
      call $~lib/rt/stub/__retain
      drop
      local.get $8
      call $~lib/rt/stub/__release
     end
     local.get $13
     local.set $4
     local.get $3
     unreachable
    end
    unreachable
   end
   local.get $3
   local.set $9
   local.get $4
   call $~lib/rt/stub/__release
   local.get $9
   return
  else   
   local.get $1
   i32.const 10
   i32.eq
   if
    local.get $0
    call $~lib/bignum/utils/u128toa10
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    return
   end
  end
  i32.const 2592
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#get:length (; 109 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_get (; 110 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__get (; 111 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 936
   i32.const 888
   i32.const 106
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 776
   i32.const 888
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_get
 )
 (func $model/__near_encode_Array_Uint8Array (; 112 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/typedarray/Uint8Array>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
    local.tee $3
    i32.const 0
    i32.ne
    if
     local.get $1
     i32.const 0
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/typedarray/Uint8Array>#__get
     local.tee $4
     call $~lib/near-runtime-ts/util/base64.encode
     local.tee $5
     call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
     local.get $4
     call $~lib/rt/stub/__release
     local.get $5
     call $~lib/rt/stub/__release
    else     
     local.get $1
     i32.const 0
     call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $model/__near_encode_FooBar (; 113 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 680
  local.get $0
  i32.load
  i64.extend_i32_s
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $1
  i32.const 2032
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $1
  i32.const 2056
  local.get $0
  i64.load offset=8
  call $~lib/number/U64#toString
  local.tee $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $1
  i32.const 2088
  local.get $0
  i64.load offset=16
  call $~lib/number/I64#toString
  local.tee $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $1
  i32.const 2120
  local.get $0
  i32.load8_u offset=24
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setBoolean
  local.get $0
  i32.load offset=28
  i32.const 0
  call $~lib/string/String.__ne
  if
   local.get $1
   i32.const 2144
   local.get $0
   i32.load offset=28
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  else   
   local.get $1
   i32.const 2144
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=32
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 2168
   local.get $0
   i32.load offset=32
   call $~lib/near-runtime-ts/util/base64.encode
   local.tee $4
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
   local.get $4
   call $~lib/rt/stub/__release
  else   
   local.get $1
   i32.const 2168
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=36
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 2208
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $0
   i32.load offset=36
   local.get $1
   call $model/__near_encode_Array_Array_string
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $1
   i32.const 2208
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=40
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 2328
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $0
   i32.load offset=40
   local.get $1
   call $model/__near_encode_Array_u32
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $1
   i32.const 2328
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=44
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 2360
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $0
   i32.load offset=44
   local.get $1
   call $model/__near_encode_Array_i32
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $1
   i32.const 2360
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  i32.const 0
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $0
  i32.load offset=48
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $5
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $4
  call $~lib/rt/stub/__retain
  local.set $6
  local.get $7
  i64.load offset=8
  local.get $6
  i64.load offset=8
  i64.eq
  if (result i32)
   local.get $7
   i64.load
   local.get $6
   i64.load
   i64.eq
  else   
   i32.const 0
  end
  local.set $8
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  i32.const 0
  i32.ne
  i32.eqz
  local.set $7
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $7
  if
   local.get $1
   i32.const 2392
   local.get $0
   i32.load offset=48
   i32.const 0
   call $~lib/bignum/integer/u128/u128#toString
   local.tee $5
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
   local.get $5
   call $~lib/rt/stub/__release
  else   
   local.get $1
   i32.const 2392
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=52
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 2632
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $0
   i32.load offset=52
   local.get $1
   call $model/__near_encode_Array_Uint8Array
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $1
   i32.const 2632
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popObject (; 114 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 2672
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $model/FooBar#_encoder (; 115 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  local.get $1
  call $model/__near_encode_FooBar
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $1
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/FooBar#encode (; 116 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  i32.ne
  if (result i32)
   local.get $1
   call $~lib/rt/stub/__retain
  else   
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  end
  local.set $3
  local.get $0
  local.get $3
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  local.get $2
  call $model/FooBar#_encoder
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#toString (; 117 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 760
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $~lib/string/String.UTF8.byteLength (; 118 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $1
  if (result i32)
   i32.const 1
  else   
   i32.const 0
  end
  local.set $4
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load16_u
    local.set $5
    local.get $5
    i32.const 128
    i32.lt_u
    if
     local.get $1
     if (result i32)
      local.get $5
      i32.eqz
     else      
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else     
     local.get $5
     i32.const 2048
     i32.lt_u
     if
      local.get $4
      i32.const 2
      i32.add
      local.set $4
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $5
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else       
       i32.const 0
      end
      if
       local.get $2
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $4
        i32.const 4
        i32.add
        local.set $4
        br $continue|0
       end
      end
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $4
      i32.const 3
      i32.add
      local.set $4
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $4
  local.set $5
  local.get $0
  call $~lib/rt/stub/__release
  local.get $5
 )
 (func $~lib/string/String.UTF8.encode (; 119 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.set $2
  local.get $0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.byteLength
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $4
  local.get $4
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load16_u
    local.set $6
    local.get $6
    i32.const 128
    i32.lt_u
    if
     local.get $1
     if (result i32)
      local.get $6
      i32.eqz
     else      
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $5
     local.get $6
     i32.store8
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else     
     local.get $6
     i32.const 2048
     i32.lt_u
     if
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
      local.get $5
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $5
      i32.const 2
      i32.add
      local.set $5
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $6
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else       
       i32.const 0
      end
      if
       local.get $2
       i32.load16_u offset=2
       local.set $7
       local.get $7
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        i32.const 65536
        local.get $6
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.add
        local.get $7
        i32.const 1023
        i32.and
        i32.add
        local.set $6
        local.get $5
        local.get $6
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        local.get $5
        local.get $6
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $5
        local.get $6
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get $5
        local.get $6
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $5
        i32.const 4
        i32.add
        local.set $5
        br $continue|0
       end
      end
      local.get $5
      local.get $6
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $5
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $5
      i32.const 3
      i32.add
      local.set $5
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $1
  if
   local.get $2
   local.get $3
   i32.le_u
   i32.eqz
   if
    i32.const 0
    i32.const 2696
    i32.const 567
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.get $5
   local.get $4
   i32.sub
   i32.const 1
   i32.add
   call $~lib/rt/stub/__realloc
   local.set $4
   local.get $5
   i32.const 0
   i32.store8
  else   
   local.get $2
   local.get $3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 2696
    i32.const 571
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/stub/__retain
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.getPtr (; 120 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (; 121 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.encode
  local.tee $2
  local.set $3
  local.get $1
  call $~lib/assemblyscript-json/util/index/Buffer.getPtr
  local.get $3
  local.get $0
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  call $~lib/memory/memory.copy
  local.get $1
  local.set $4
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#serialize (; 122 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#toString
  local.tee $1
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONHandler#constructor (; 123 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 16
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor (; 124 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 17
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONHandler#constructor
  local.set $0
  local.get $0
 )
 (func $model/__near_JSONHandler_FooBar#constructor (; 125 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 18
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=12
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#constructor (; 126 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 19
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#constructor (; 127 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 15
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 760
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store offset=8
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar (; 128 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#isWhitespace (; 129 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar (; 130 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#skipWhitespace (; 131 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject (; 132 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 2920
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2800
   i32.const 58
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/__near_JSONHandler_FooBar#pushObject (; 133 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $1
   i32.const 0
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 2888
    i32.const 95
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  else   
   local.get $1
   i32.const 0
   call $~lib/string/String.__ne
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.ne
   end
   i32.eqz
   if
    i32.const 0
    i32.const 2888
    i32.const 99
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (; 134 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $3
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $4
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 2696
   i32.const 585
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $5
  local.get $5
  local.set $6
  block $break|0
   loop $continue|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.tee $7
    i32.const 1
    i32.add
    local.set $3
    local.get $7
    i32.load8_u
    local.set $7
    local.get $7
    i32.const 128
    i32.lt_u
    if
     local.get $2
     if (result i32)
      local.get $7
      i32.eqz
     else      
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $6
     local.get $7
     i32.store16
     local.get $6
     i32.const 2
     i32.add
     local.set $6
    else     
     local.get $7
     i32.const 191
     i32.gt_u
     if (result i32)
      local.get $7
      i32.const 224
      i32.lt_u
     else      
      i32.const 0
     end
     if
      local.get $4
      local.get $3
      i32.sub
      i32.const 1
      i32.lt_u
      if
       br $break|0
      end
      local.get $6
      local.get $7
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      local.get $3
      local.tee $8
      i32.const 1
      i32.add
      local.set $3
      local.get $8
      i32.load8_u
      i32.const 63
      i32.and
      i32.or
      i32.store16
      local.get $6
      i32.const 2
      i32.add
      local.set $6
     else      
      local.get $7
      i32.const 239
      i32.gt_u
      if (result i32)
       local.get $7
       i32.const 365
       i32.lt_u
      else       
       i32.const 0
      end
      if
       local.get $4
       local.get $3
       i32.sub
       i32.const 3
       i32.lt_u
       if
        br $break|0
       end
       local.get $7
       i32.const 7
       i32.and
       i32.const 18
       i32.shl
       local.get $3
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 12
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=1
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=2
       i32.const 63
       i32.and
       i32.or
       i32.const 65536
       i32.sub
       local.set $7
       local.get $3
       i32.const 3
       i32.add
       local.set $3
       local.get $6
       i32.const 55296
       local.get $7
       i32.const 10
       i32.shr_u
       i32.add
       i32.store16
       local.get $6
       i32.const 56320
       local.get $7
       i32.const 1023
       i32.and
       i32.add
       i32.store16 offset=2
       local.get $6
       i32.const 4
       i32.add
       local.set $6
      else       
       local.get $4
       local.get $3
       i32.sub
       i32.const 2
       i32.lt_u
       if
        br $break|0
       end
       local.get $6
       local.get $7
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       local.get $3
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=1
       i32.const 63
       i32.and
       i32.or
       i32.store16
       local.get $3
       i32.const 2
       i32.add
       local.set $3
       local.get $6
       i32.const 2
       i32.add
       local.set $6
      end
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $5
  local.get $6
  local.get $5
  i32.sub
  call $~lib/rt/stub/__realloc
  call $~lib/rt/stub/__retain
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.readString (; 135 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/assemblyscript-json/util/index/Buffer.getPtr
  local.get $1
  i32.add
  local.get $2
  local.get $1
  i32.sub
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString (; 136 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  local.get $2
  i32.const 1
  i32.sub
  call $~lib/assemblyscript-json/util/index/Buffer.readString
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline (; 137 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/DecoderState#readString
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readHexDigit (; 138 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/string/String.fromCodePoint (; 139 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1114111
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 2696
   i32.const 22
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 65535
  i32.gt_s
  local.set $1
  i32.const 2
  local.get $1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $1
  i32.eqz
  if
   local.get $2
   local.get $0
   i32.store16
  else   
   local.get $0
   i32.const 65536
   i32.sub
   local.set $0
   local.get $0
   i32.const 10
   i32.shr_u
   i32.const 55296
   i32.add
   local.set $3
   local.get $0
   i32.const 1023
   i32.and
   i32.const 56320
   i32.add
   local.set $4
   local.get $2
   local.get $3
   i32.const 16
   i32.shl
   local.get $4
   i32.or
   i32.store
  end
  local.get $2
  call $~lib/rt/stub/__retain
 )
 (func $~lib/string/String.fromCharCode (; 140 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 0
  i32.gt_s
  local.set $2
  i32.const 2
  local.get $2
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  local.get $0
  i32.store16
  local.get $2
  if
   local.get $3
   local.get $1
   i32.store16 offset=2
  end
  local.get $3
  call $~lib/rt/stub/__retain
 )
 (func $~lib/string/String.fromCharCode|trampoline (; 141 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/string/String.fromCharCode
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readEscapedChar (; 142 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readString (; 143 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseKey (; 144 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONHandler#popObject (; 145 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseObject (; 146 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_FooBar#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor (; 147 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 9
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  if
   i32.const 936
   i32.const 888
   i32.const 56
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $model/__near_JSONHandler_Array_Array_string#constructor (; 148 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 20
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=12
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#constructor (; 149 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 21
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar (; 150 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#isWhitespace (; 151 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar (; 152 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#skipWhitespace (; 153 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $main/__near_JSONHandler_Array_string#constructor (; 154 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 22
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=12
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#constructor (; 155 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 23
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar (; 156 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#isWhitespace (; 157 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar (; 158 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#skipWhitespace (; 159 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readHexDigit (; 160 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readEscapedChar (; 161 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readString (; 162 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseKey (; 163 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseObject (; 164 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $main/__near_JSONHandler_Array_string#pushArray (; 165 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   call $~lib/string/String#get:length
   i32.const 0
   i32.eq
  end
  if (result i32)
   local.get $0
   i32.load8_u offset=8
   i32.const 0
   i32.ne
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 3560
   i32.const 278
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.store8 offset=8
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONHandler#popArray (; 166 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseArray (; 167 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $main/__near_JSONHandler_Array_string#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $main/__near_JSONHandler_Array_string#setString (; 168 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.get $2
  call $~lib/array/Array<~lib/string/String>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseString (; 169 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readString
  local.tee $1
  call $main/__near_JSONHandler_Array_string#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readAndAssert (; 170 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean (; 171 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 3720
   local.get $1
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 3784
   call $~lib/string/String.__concat
   local.tee $4
   local.get $2
   if (result i32)
    i32.const 480
    call $~lib/rt/stub/__retain
    local.tee $5
   else    
    i32.const 504
    call $~lib/rt/stub/__retain
    local.tee $6
   end
   call $~lib/string/String.__concat
   local.tee $7
   i32.const 2800
   i32.const 40
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseBoolean (; 172 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger (; 173 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 3832
   local.get $1
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 3784
   call $~lib/string/String.__concat
   local.tee $4
   local.get $2
   call $~lib/number/I64#toString
   local.tee $5
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2800
   i32.const 49
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseNumber (; 174 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $main/__near_JSONHandler_Array_string#setNull (; 175 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseNull (; 176 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main/__near_JSONHandler_Array_string#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseValue (; 177 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#deserialize (; 178 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $main/__near_decode_Array_string (; 179 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<~lib/string/String>#constructor
   local.tee $3
   local.tee $4
   local.get $2
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.get $2
  local.tee $3
  if (result i32)
   local.get $3
  else   
   unreachable
  end
  call $main/__near_JSONHandler_Array_string#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $0
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_string>#deserialize
  local.get $2
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push (; 180 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model/__near_JSONHandler_Array_Array_string#pushObject (; 181 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load offset=4
  i32.const 0
  call $main/__near_decode_Array_string
  local.tee $2
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readHexDigit (; 182 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readEscapedChar (; 183 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readString (; 184 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseKey (; 185 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseObject (; 186 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_Array_Array_string#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/__near_JSONHandler_Array_Array_string#pushArray (; 187 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   call $~lib/string/String#get:length
   i32.const 0
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2888
   i32.const 143
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load offset=4
  i32.const 0
  call $main/__near_decode_Array_string
  local.tee $2
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseArray (; 188 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_Array_Array_string#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString (; 189 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 3960
   local.get $1
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 4024
   call $~lib/string/String.__concat
   local.tee $4
   local.get $2
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 1072
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 2800
   i32.const 36
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseString (; 190 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readAndAssert (; 191 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseBoolean (; 192 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseNumber (; 193 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull (; 194 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 4048
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2800
   i32.const 44
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseNull (; 195 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseValue (; 196 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#deserialize (; 197 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $model/__near_decode_Array_Array_string (; 198 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor
   local.tee $3
   local.tee $4
   local.get $2
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.get $2
  local.tee $3
  if (result i32)
   local.get $3
  else   
   unreachable
  end
  call $model/__near_JSONHandler_Array_Array_string#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $0
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_string>#deserialize
  local.get $2
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<u32>#constructor (; 199 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 10
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $model/__near_JSONHandler_Array_u32#constructor (; 200 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 24
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=12
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#constructor (; 201 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 25
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar (; 202 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#isWhitespace (; 203 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar (; 204 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#skipWhitespace (; 205 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readHexDigit (; 206 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readEscapedChar (; 207 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readString (; 208 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseKey (; 209 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseObject (; 210 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/__near_JSONHandler_Array_u32#pushArray (; 211 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   call $~lib/string/String#get:length
   i32.const 0
   i32.eq
  end
  if (result i32)
   local.get $0
   i32.load8_u offset=8
   i32.const 0
   i32.ne
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2888
   i32.const 184
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.store8 offset=8
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseArray (; 212 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_Array_u32#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseString (; 213 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readAndAssert (; 214 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseBoolean (; 215 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/array/Array<u32>#push (; 216 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $model/__near_JSONHandler_Array_u32#setInteger (; 217 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.get $2
  i32.wrap_i64
  call $~lib/array/Array<u32>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseNumber (; 218 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $model/__near_JSONHandler_Array_u32#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model/__near_JSONHandler_Array_u32#setNull (; 219 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 0
  call $~lib/array/Array<u32>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseNull (; 220 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model/__near_JSONHandler_Array_u32#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseValue (; 221 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#deserialize (; 222 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $model/__near_decode_Array_u32 (; 223 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u32>#constructor
   local.tee $3
   local.tee $4
   local.get $2
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.get $2
  local.tee $3
  if (result i32)
   local.get $3
  else   
   unreachable
  end
  call $model/__near_JSONHandler_Array_u32#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $0
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_u32>#deserialize
  local.get $2
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model/__near_JSONHandler_Array_i32#constructor (; 224 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 26
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=12
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#constructor (; 225 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 27
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar (; 226 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#isWhitespace (; 227 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar (; 228 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#skipWhitespace (; 229 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readHexDigit (; 230 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readEscapedChar (; 231 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readString (; 232 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseKey (; 233 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseObject (; 234 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/__near_JSONHandler_Array_i32#pushArray (; 235 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   call $~lib/string/String#get:length
   i32.const 0
   i32.eq
  end
  if (result i32)
   local.get $0
   i32.load8_u offset=8
   i32.const 0
   i32.ne
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2888
   i32.const 221
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.store8 offset=8
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseArray (; 236 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_Array_i32#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseString (; 237 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readAndAssert (; 238 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseBoolean (; 239 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model/__near_JSONHandler_Array_i32#setInteger (; 240 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.get $2
  i32.wrap_i64
  call $~lib/array/Array<i32>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseNumber (; 241 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $model/__near_JSONHandler_Array_i32#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model/__near_JSONHandler_Array_i32#setNull (; 242 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 0
  call $~lib/array/Array<i32>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseNull (; 243 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model/__near_JSONHandler_Array_i32#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseValue (; 244 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#deserialize (; 245 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $model/__near_decode_Array_i32 (; 246 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<i32>#constructor
   local.tee $3
   local.tee $4
   local.get $2
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.get $2
  local.tee $3
  if (result i32)
   local.get $3
  else   
   unreachable
  end
  call $model/__near_JSONHandler_Array_i32#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $0
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_i32>#deserialize
  local.get $2
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor (; 247 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 12
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  if
   i32.const 936
   i32.const 888
   i32.const 56
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $model/__near_JSONHandler_Array_Uint8Array#constructor (; 248 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 28
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=12
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#constructor (; 249 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 29
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar (; 250 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#isWhitespace (; 251 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar (; 252 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#skipWhitespace (; 253 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readHexDigit (; 254 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readEscapedChar (; 255 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readString (; 256 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseKey (; 257 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseObject (; 258 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/__near_JSONHandler_Array_Uint8Array#pushArray (; 259 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   call $~lib/string/String#get:length
   i32.const 0
   i32.eq
  end
  if (result i32)
   local.get $0
   i32.load8_u offset=8
   i32.const 0
   i32.ne
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2888
   i32.const 258
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.store8 offset=8
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseArray (; 260 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_Array_Uint8Array#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#push (; 261 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model/__near_JSONHandler_Array_Uint8Array#setString (; 262 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.get $2
  call $~lib/near-runtime-ts/util/base64.decode
  local.tee $3
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
  drop
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseString (; 263 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readString
  local.tee $1
  call $model/__near_JSONHandler_Array_Uint8Array#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readAndAssert (; 264 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseBoolean (; 265 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseNumber (; 266 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model/__near_JSONHandler_Array_Uint8Array#setNull (; 267 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#push
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseNull (; 268 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model/__near_JSONHandler_Array_Uint8Array#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseValue (; 269 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#deserialize (; 270 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $model/__near_decode_Array_Uint8Array (; 271 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor
   local.tee $3
   local.tee $4
   local.get $2
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.get $2
  local.tee $3
  if (result i32)
   local.get $3
  else   
   unreachable
  end
  call $model/__near_JSONHandler_Array_Uint8Array#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $0
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Uint8Array>#deserialize
  local.get $2
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray (; 272 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 4112
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 2800
   i32.const 53
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/__near_JSONHandler_FooBar#pushArray (; 273 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 2208
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=4
   i32.const 0
   call $model/__near_decode_Array_Array_string
   local.set $3
   local.get $2
   i32.load offset=36
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=36
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $1
  i32.const 2328
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=4
   i32.const 0
   call $model/__near_decode_Array_u32
   local.set $2
   local.get $3
   i32.load offset=40
   call $~lib/rt/stub/__release
   local.get $2
   i32.store offset=40
   i32.const 0
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $1
  i32.const 2360
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=4
   i32.const 0
   call $model/__near_decode_Array_i32
   local.set $3
   local.get $2
   i32.load offset=44
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=44
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $1
  i32.const 2632
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=4
   i32.const 0
   call $model/__near_decode_Array_Uint8Array
   local.set $2
   local.get $3
   i32.load offset=52
   call $~lib/rt/stub/__release
   local.get $2
   i32.store offset=52
   i32.const 0
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseArray (; 274 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_FooBar#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/__near_JSONHandler_FooBar#setString (; 275 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 2056
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i64.extend_i32_u
   i64.store offset=8
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 2088
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i64.extend_i32_u
   i64.store offset=16
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 2144
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=28
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=28
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 2168
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $2
   local.tee $3
   local.get $4
   i32.load offset=32
   local.tee $4
   i32.ne
   if
    local.get $3
    call $~lib/rt/stub/__retain
    drop
    local.get $4
    call $~lib/rt/stub/__release
   end
   local.get $3
   i32.store offset=32
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 2392
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=48
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=48
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseString (; 276 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readString
  local.tee $1
  call $model/__near_JSONHandler_FooBar#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readAndAssert (; 277 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $model/__near_JSONHandler_FooBar#setBoolean (; 278 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 2120
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.store8 offset=24
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseBoolean (; 279 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $model/__near_JSONHandler_FooBar#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $model/__near_JSONHandler_FooBar#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model/__near_JSONHandler_FooBar#setInteger (; 280 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 680
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.wrap_i64
   i32.store
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 2032
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.wrap_i64
   i32.store offset=4
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseNumber (; 281 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $model/__near_JSONHandler_FooBar#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model/__near_JSONHandler_FooBar#setNull (; 282 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 2208
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load offset=36
   local.tee $2
   i32.ne
   if
    local.get $3
    call $~lib/rt/stub/__retain
    drop
    local.get $2
    call $~lib/rt/stub/__release
   end
   local.get $3
   i32.store offset=36
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 2328
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.const 0
   local.tee $2
   local.get $3
   i32.load offset=40
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $2
   i32.store offset=40
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 2360
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load offset=44
   local.tee $2
   i32.ne
   if
    local.get $3
    call $~lib/rt/stub/__retain
    drop
    local.get $2
    call $~lib/rt/stub/__release
   end
   local.get $3
   i32.store offset=44
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 2632
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.const 0
   local.tee $2
   local.get $3
   i32.load offset=52
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $2
   i32.store offset=52
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseNull (; 283 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model/__near_JSONHandler_FooBar#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseValue (; 284 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#deserialize (; 285 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $model/__near_decode_FooBar (; 286 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.eq
  if
   i32.const 0
   call $model/FooBar#constructor
   local.tee $3
   local.tee $4
   local.get $2
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.get $2
  local.tee $3
  if (result i32)
   local.get $3
  else   
   unreachable
  end
  call $model/__near_JSONHandler_FooBar#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $0
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_FooBar>#deserialize
  local.get $2
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model/FooBar#decode (; 287 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  local.get $2
  local.get $0
  call $model/__near_decode_FooBar
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/FooBar.decode (; 288 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  call $model/FooBar#constructor
  local.tee $2
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  call $model/FooBar#decode
  call $~lib/rt/stub/__release
  local.get $3
  local.set $4
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $test/runTest (; 289 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  call $model/FooBar#constructor
  local.set $0
  local.get $0
  i32.const 321
  i32.store
  local.get $0
  i32.const 123
  i32.store offset=4
  local.get $0
  i32.const 1
  i32.store8 offset=24
  local.get $0
  local.tee $1
  i32.const 680
  local.tee $2
  local.get $1
  i32.load offset=28
  local.tee $1
  i32.ne
  if
   local.get $2
   call $~lib/rt/stub/__retain
   drop
   local.get $1
   call $~lib/rt/stub/__release
  end
  local.get $2
  i32.store offset=28
  local.get $0
  local.tee $2
  i32.const 704
  call $~lib/near-runtime-ts/util/base64.decode
  local.set $1
  local.get $2
  i32.load offset=32
  call $~lib/rt/stub/__release
  local.get $1
  i32.store offset=32
  local.get $0
  local.tee $1
  i32.const 0
  i64.const 128
  i64.const 0
  call $~lib/bignum/integer/u128/u128#constructor
  local.set $2
  local.get $1
  i32.load offset=48
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=48
  local.get $0
  local.tee $2
  i32.const 2
  call $~lib/array/Array.create<~lib/typedarray/Uint8Array>
  local.set $1
  local.get $2
  i32.load offset=52
  call $~lib/rt/stub/__release
  local.get $1
  i32.store offset=52
  local.get $0
  i32.load offset=52
  i32.const 0
  i32.const 704
  call $~lib/near-runtime-ts/util/base64.decode
  local.tee $1
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  local.get $0
  i32.load offset=52
  i32.const 1
  i32.const 704
  call $~lib/near-runtime-ts/util/base64.decode
  local.tee $2
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__set
  local.get $0
  i32.const 0
  i32.const 760
  call $model/FooBar#encode
  local.tee $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $4
  i32.const 0
  call $model/FooBar.decode
  local.set $5
  local.get $0
  i32.load
  local.get $5
  i32.load
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 4176
   i32.const 25
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $5
  i32.load offset=4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 4176
   i32.const 26
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $~lib/typedarray/Uint8Array#get:buffer (; 290 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $main/__near_ArgsParser_convertFoobars#constructor (; 291 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 30
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#constructor (; 292 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 31
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar (; 293 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#isWhitespace (; 294 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar (; 295 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#skipWhitespace (; 296 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $main/__near_ArgsParser_convertFoobars#pushObject (; 297 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $1
   i32.const 0
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3560
    i32.const 415
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  else   
   local.get $1
   i32.const 0
   call $~lib/string/String.__ne
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.ne
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3560
    i32.const 419
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readHexDigit (; 298 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readEscapedChar (; 299 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readString (; 300 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseKey (; 301 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseObject (; 302 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $main/__near_ArgsParser_convertFoobars#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/array/Array<model/FooBar>#constructor (; 303 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 32
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  if
   i32.const 936
   i32.const 888
   i32.const 56
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $main/__near_JSONHandler_Array_FooBar#constructor (; 304 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 33
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=12
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#constructor (; 305 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 34
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar (; 306 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#isWhitespace (; 307 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar (; 308 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#skipWhitespace (; 309 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<model/FooBar>#push (; 310 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $main/__near_JSONHandler_Array_FooBar#pushObject (; 311 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load offset=4
  i32.const 0
  call $model/__near_decode_FooBar
  local.tee $2
  call $~lib/array/Array<model/FooBar>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readHexDigit (; 312 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readEscapedChar (; 313 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readString (; 314 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseKey (; 315 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseObject (; 316 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $main/__near_JSONHandler_Array_FooBar#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $main/__near_JSONHandler_Array_FooBar#pushArray (; 317 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   call $~lib/string/String#get:length
   i32.const 0
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 3560
   i32.const 375
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load offset=4
  i32.const 0
  call $model/__near_decode_FooBar
  local.tee $2
  call $~lib/array/Array<model/FooBar>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseArray (; 318 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $main/__near_JSONHandler_Array_FooBar#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseString (; 319 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readAndAssert (; 320 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseBoolean (; 321 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseNumber (; 322 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseNull (; 323 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseValue (; 324 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#deserialize (; 325 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $main/__near_decode_Array_FooBar (; 326 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<model/FooBar>#constructor
   local.tee $3
   local.tee $4
   local.get $2
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.get $2
  local.tee $3
  if (result i32)
   local.get $3
  else   
   unreachable
  end
  call $main/__near_JSONHandler_Array_FooBar#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $0
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_JSONHandler_Array_FooBar>#deserialize
  local.get $2
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $main/__near_ArgsParser_convertFoobars#pushArray (; 327 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4208
  call $~lib/string/String.__eq
  if
   local.get $0
   local.tee $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=4
   i32.const 0
   call $main/__near_decode_Array_FooBar
   local.set $3
   local.get $2
   i32.load offset=12
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=12
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseArray (; 328 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $main/__near_ArgsParser_convertFoobars#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseString (; 329 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readAndAssert (; 330 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseBoolean (; 331 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseNumber (; 332 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $main/__near_ArgsParser_convertFoobars#setNull (; 333 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4208
  call $~lib/string/String.__eq
  if
   local.get $0
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load offset=12
   local.tee $2
   i32.ne
   if
    local.get $3
    call $~lib/rt/stub/__retain
    drop
    local.get $2
    call $~lib/rt/stub/__release
   end
   local.get $3
   i32.store offset=12
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseNull (; 334 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main/__near_ArgsParser_convertFoobars#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseValue (; 335 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#deserialize (; 336 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $main/wrapped_convertFoobars~anonymous|0 (; 337 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  i32.const 4
  i32.const 35
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  local.get $0
  i32.store
  local.get $3
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<model/FooBar>#map<model/ContainerClass> (; 338 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 2
  i32.const 36
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $2
    local.tee $6
    local.get $0
    i32.load offset=12
    local.tee $7
    local.get $6
    local.get $7
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $5
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    local.tee $6
    call $~lib/rt/stub/__retain
    local.set $7
    local.get $4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    local.get $7
    call $~lib/rt/stub/__retain
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $6
    call $~lib/rt/stub/__release
    local.get $7
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $main/wrapped_convertFoobars (; 339 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 1
  call $~lib/array/Array<model/FooBar>#map<model/ContainerClass>
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/array/Array<model/ContainerClass>#get:length (; 340 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<model/ContainerClass>#__unchecked_get (; 341 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<model/ContainerClass>#__get (; 342 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 936
   i32.const 888
   i32.const 106
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 776
   i32.const 888
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<model/ContainerClass>#__unchecked_get
 )
 (func $model/__near_encode_ContainerClass (; 343 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load
  i32.const 0
  i32.ne
  if
   local.get $0
   i32.load
   local.get $1
   i32.const 4240
   call $model/FooBar#encode
   call $~lib/rt/stub/__release
  else   
   local.get $1
   i32.const 4240
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $model/ContainerClass#_encoder (; 344 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  local.get $1
  call $model/__near_encode_ContainerClass
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $1
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/ContainerClass#encode (; 345 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  i32.ne
  if (result i32)
   local.get $1
   call $~lib/rt/stub/__retain
  else   
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  end
  local.set $3
  local.get $0
  local.get $3
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  local.get $2
  call $model/ContainerClass#_encoder
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $main/__near_encode_Array_ContainerClass (; 346 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    call $~lib/array/Array<model/ContainerClass>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/array/Array<model/ContainerClass>#__get
    local.tee $3
    i32.const 0
    i32.ne
    if
     local.get $0
     local.get $2
     call $~lib/array/Array<model/ContainerClass>#__get
     local.tee $4
     local.get $1
     i32.const 0
     call $model/ContainerClass#encode
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
    else     
     local.get $1
     i32.const 0
     call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $main/convertFoobars (; 347 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  call $main/input
  i32.const 0
  call $main/register_len
  local.set $0
  local.get $0
  i32.const -1
  i32.eq
  if
   call $main/panic
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $2
  call $main/read_register
  i32.const 0
  call $main/__near_ArgsParser_convertFoobars#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $1
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $1
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_convertFoobars>#deserialize
  local.get $3
  i32.load offset=12
  call $main/wrapped_convertFoobars
  local.set $4
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $5
  local.get $4
  i32.const 0
  i32.ne
  if
   local.get $5
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $4
   local.get $5
   call $main/__near_encode_Array_ContainerClass
   local.get $5
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $5
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $5
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $6
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $6
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  call $main/value_return
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
 )
 (func $test/convertFoobars (; 348 ;) (type $FUNCSIG$v)
  call $main/convertFoobars
 )
 (func $main/__near_ArgsParser_getStringArrayLength#constructor (; 349 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 37
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#constructor (; 350 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 38
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar (; 351 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#isWhitespace (; 352 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar (; 353 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#skipWhitespace (; 354 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $main/__near_ArgsParser_getStringArrayLength#pushObject (; 355 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $1
   i32.const 0
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3560
    i32.const 314
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  else   
   local.get $1
   i32.const 0
   call $~lib/string/String.__ne
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.ne
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3560
    i32.const 318
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readHexDigit (; 356 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readEscapedChar (; 357 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readString (; 358 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseKey (; 359 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseObject (; 360 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $main/__near_ArgsParser_getStringArrayLength#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $main/__near_ArgsParser_getStringArrayLength#pushArray (; 361 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 2208
  call $~lib/string/String.__eq
  if
   local.get $0
   local.tee $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=4
   i32.const 0
   call $main/__near_decode_Array_string
   local.set $3
   local.get $2
   i32.load offset=12
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=12
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseArray (; 362 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $main/__near_ArgsParser_getStringArrayLength#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseString (; 363 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readAndAssert (; 364 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseBoolean (; 365 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseNumber (; 366 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $main/__near_ArgsParser_getStringArrayLength#setNull (; 367 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 2208
  call $~lib/string/String.__eq
  if
   local.get $0
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load offset=12
   local.tee $2
   i32.ne
   if
    local.get $3
    call $~lib/rt/stub/__retain
    drop
    local.get $2
    call $~lib/rt/stub/__release
   end
   local.get $3
   i32.store offset=12
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseNull (; 368 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main/__near_ArgsParser_getStringArrayLength#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseValue (; 369 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#deserialize (; 370 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/util/number/itoa_stream<i32> (; 371 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i32.eqz
  if
   local.get $0
   i32.const 48
   i32.store16
   i32.const 1
   return
  end
  i32.const 0
  local.set $3
  local.get $2
  i32.const 0
  i32.lt_s
  local.set $4
  local.get $4
  if
   i32.const 0
   local.get $2
   i32.sub
   local.set $2
  end
  local.get $2
  call $~lib/util/number/decimalCount32
  local.get $4
  i32.add
  local.set $3
  local.get $0
  local.set $7
  local.get $2
  local.set $6
  local.get $3
  local.set $5
  local.get $7
  local.get $6
  local.get $5
  call $~lib/util/number/utoa32_lut
  local.get $4
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/array/Array<i32>#join_int (; 372 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i32.load
   call $~lib/util/number/itoa<i32>
   local.tee $3
   call $~lib/rt/stub/__retain
   local.set $5
   local.get $3
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 11
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 11
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<i32>
    i32.add
    local.set $9
    local.get $6
    if
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $6
     i32.add
     local.set $9
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<i32>
  i32.add
  local.set $9
  local.get $7
  local.get $9
  i32.gt_s
  if
   local.get $8
   i32.const 0
   local.get $9
   call $~lib/string/String#substring
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $8
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#join (; 373 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<i32>#toString (; 374 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1048
  call $~lib/array/Array<i32>#join
 )
 (func $~lib/near-runtime-ts/util/toString<~lib/array/Array<i32>> (; 375 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/array/Array<i32>#toString
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $~lib/near-runtime-ts/near/near.str<i32> (; 376 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.store
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  call $~lib/near-runtime-ts/util/toString<~lib/array/Array<i32>>
  local.tee $1
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/near-runtime-ts/near/near.log (; 377 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/near-runtime-ts/imports/_near_log
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $main/wrapped_getStringArrayLength (; 378 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 4272
  local.get $0
  call $~lib/array/Array<~lib/string/String>#get:length
  call $~lib/near-runtime-ts/near/near.str<i32>
  local.tee $1
  call $~lib/string/String.__concat
  local.tee $2
  call $~lib/near-runtime-ts/near/near.log
  local.get $0
  call $~lib/array/Array<~lib/string/String>#get:length
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $main/getStringArrayLength (; 379 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  call $main/input
  i32.const 0
  call $main/register_len
  local.set $0
  local.get $0
  i32.const -1
  i32.eq
  if
   call $main/panic
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $2
  call $main/read_register
  i32.const 0
  call $main/__near_ArgsParser_getStringArrayLength#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $1
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $1
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_getStringArrayLength>#deserialize
  local.get $3
  i32.load offset=12
  call $main/wrapped_getStringArrayLength
  local.set $4
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $5
  local.get $5
  i32.const 0
  local.get $4
  i64.extend_i32_s
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $5
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $6
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $6
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  call $main/value_return
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
 )
 (func $test/getStringArrayLength (; 380 ;) (type $FUNCSIG$v)
  call $main/getStringArrayLength
 )
 (func $main/__near_ArgsParser_rewrapFoobar#constructor (; 381 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 39
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#constructor (; 382 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 40
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar (; 383 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#isWhitespace (; 384 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar (; 385 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#skipWhitespace (; 386 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model/ContainerClass#constructor (; 387 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 35
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $model/__near_JSONHandler_ContainerClass#constructor (; 388 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 41
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=12
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#constructor (; 389 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 42
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar (; 390 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#isWhitespace (; 391 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar (; 392 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#skipWhitespace (; 393 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model/__near_JSONHandler_ContainerClass#pushObject (; 394 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $1
   i32.const 0
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 2888
    i32.const 419
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  else   
   local.get $1
   i32.const 0
   call $~lib/string/String.__ne
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.ne
   end
   i32.eqz
   if
    i32.const 0
    i32.const 2888
    i32.const 423
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.const 4240
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=4
   call $model/FooBar.decode
   local.set $3
   local.get $2
   i32.load
   call $~lib/rt/stub/__release
   local.get $3
   i32.store
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readHexDigit (; 395 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readEscapedChar (; 396 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readString (; 397 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseKey (; 398 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseObject (; 399 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_ContainerClass#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/__near_JSONHandler_ContainerClass#pushArray (; 400 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseArray (; 401 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_ContainerClass#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseString (; 402 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readAndAssert (; 403 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseBoolean (; 404 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseNumber (; 405 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model/__near_JSONHandler_ContainerClass#setNull (; 406 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4240
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load
   local.tee $2
   i32.ne
   if
    local.get $3
    call $~lib/rt/stub/__retain
    drop
    local.get $2
    call $~lib/rt/stub/__release
   end
   local.get $3
   i32.store
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseNull (; 407 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model/__near_JSONHandler_ContainerClass#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseValue (; 408 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#deserialize (; 409 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $model/__near_decode_ContainerClass (; 410 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.eq
  if
   i32.const 0
   call $model/ContainerClass#constructor
   local.tee $3
   local.tee $4
   local.get $2
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.get $2
  local.tee $3
  if (result i32)
   local.get $3
  else   
   unreachable
  end
  call $model/__near_JSONHandler_ContainerClass#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $0
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_ContainerClass>#deserialize
  local.get $2
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model/ContainerClass#decode (; 411 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  local.get $2
  local.get $0
  call $model/__near_decode_ContainerClass
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/ContainerClass.decode (; 412 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  call $model/ContainerClass#constructor
  local.tee $2
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  call $model/ContainerClass#decode
  call $~lib/rt/stub/__release
  local.get $3
  local.set $4
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $main/__near_ArgsParser_rewrapFoobar#pushObject (; 413 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $1
   i32.const 0
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3560
    i32.const 145
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  else   
   local.get $1
   i32.const 0
   call $~lib/string/String.__ne
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.ne
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3560
    i32.const 149
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.const 4336
  call $~lib/string/String.__eq
  if
   local.get $0
   local.tee $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=4
   call $model/ContainerClass.decode
   local.set $3
   local.get $2
   i32.load offset=12
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=12
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readHexDigit (; 414 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readEscapedChar (; 415 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readString (; 416 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseKey (; 417 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseObject (; 418 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $main/__near_ArgsParser_rewrapFoobar#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $main/__near_ArgsParser_rewrapFoobar#pushArray (; 419 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseArray (; 420 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $main/__near_ArgsParser_rewrapFoobar#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseString (; 421 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readAndAssert (; 422 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseBoolean (; 423 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseNumber (; 424 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $main/__near_ArgsParser_rewrapFoobar#setNull (; 425 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4336
  call $~lib/string/String.__eq
  if
   local.get $0
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load offset=12
   local.tee $2
   i32.ne
   if
    local.get $3
    call $~lib/rt/stub/__retain
    drop
    local.get $2
    call $~lib/rt/stub/__release
   end
   local.get $3
   i32.store offset=12
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseNull (; 426 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main/__near_ArgsParser_rewrapFoobar#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseValue (; 427 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#deserialize (; 428 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $model/AnotherContainerClass#constructor (; 429 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 43
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $main/wrapped_rewrapFoobar (; 430 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  call $model/AnotherContainerClass#constructor
  local.set $1
  local.get $1
  local.tee $3
  i32.const 1
  i32.const 2
  i32.const 44
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $2
  local.get $2
  i32.load offset=4
  local.set $3
  local.get $3
  i32.const 1
  i32.const 2
  i32.const 32
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $4
  local.get $4
  i32.load offset=4
  local.set $5
  local.get $5
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
  i32.store
  local.get $4
  call $~lib/rt/stub/__retain
  i32.store
  local.get $2
  local.tee $4
  local.get $3
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $4
   call $~lib/rt/stub/__retain
   drop
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $4
  i32.store
  local.get $1
  local.set $4
  local.get $0
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<~lib/array/Array<model/FooBar>>#get:length (; 431 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<model/FooBar>>#__unchecked_get (; 432 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<model/FooBar>>#__get (; 433 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 936
   i32.const 888
   i32.const 106
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 776
   i32.const 888
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<model/FooBar>>#__unchecked_get
 )
 (func $~lib/array/Array<model/FooBar>#get:length (; 434 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<model/FooBar>#__unchecked_get (; 435 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<model/FooBar>#__get (; 436 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 936
   i32.const 888
   i32.const 106
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 776
   i32.const 888
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<model/FooBar>#__unchecked_get
 )
 (func $model/__near_encode_Array_FooBar (; 437 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    call $~lib/array/Array<model/FooBar>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/array/Array<model/FooBar>#__get
    local.tee $3
    i32.const 0
    i32.ne
    if
     local.get $0
     local.get $2
     call $~lib/array/Array<model/FooBar>#__get
     local.tee $4
     local.get $1
     i32.const 0
     call $model/FooBar#encode
     call $~lib/rt/stub/__release
     local.get $4
     call $~lib/rt/stub/__release
    else     
     local.get $1
     i32.const 0
     call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $model/__near_encode_Array_Array_FooBar (; 438 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/array/Array<model/FooBar>>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<model/FooBar>>#__get
    local.tee $3
    i32.const 0
    i32.ne
    if
     local.get $1
     i32.const 0
     call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
     drop
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/array/Array<model/FooBar>>#__get
     local.tee $4
     local.get $1
     call $model/__near_encode_Array_FooBar
     local.get $1
     call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
     local.get $4
     call $~lib/rt/stub/__release
    else     
     local.get $1
     i32.const 0
     call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $model/__near_encode_AnotherContainerClass (; 439 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 4208
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $0
   i32.load
   local.get $1
   call $model/__near_encode_Array_Array_FooBar
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $1
   i32.const 4208
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $model/AnotherContainerClass#_encoder (; 440 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  local.get $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  local.get $1
  call $model/__near_encode_AnotherContainerClass
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $1
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/AnotherContainerClass#encode (; 441 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  i32.ne
  if (result i32)
   local.get $1
   call $~lib/rt/stub/__retain
  else   
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  end
  local.set $3
  local.get $0
  local.get $3
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  local.get $2
  call $model/AnotherContainerClass#_encoder
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $main/rewrapFoobar (; 442 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  call $main/input
  i32.const 0
  call $main/register_len
  local.set $0
  local.get $0
  i32.const -1
  i32.eq
  if
   call $main/panic
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $2
  call $main/read_register
  i32.const 0
  call $main/__near_ArgsParser_rewrapFoobar#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $1
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $1
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_rewrapFoobar>#deserialize
  local.get $3
  i32.load offset=12
  call $main/wrapped_rewrapFoobar
  local.set $4
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $5
  local.get $4
  i32.const 0
  i32.ne
  if
   local.get $4
   local.get $5
   i32.const 0
   call $model/AnotherContainerClass#encode
   call $~lib/rt/stub/__release
  else   
   local.get $5
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $5
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $6
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $6
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  call $main/value_return
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
 )
 (func $test/rewrapFoobar (; 443 ;) (type $FUNCSIG$v)
  call $main/rewrapFoobar
 )
 (func $main/__near_ArgsParser_unwrapFoobar#constructor (; 444 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 45
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#constructor (; 445 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 46
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar (; 446 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#isWhitespace (; 447 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar (; 448 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#skipWhitespace (; 449 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model/__near_JSONHandler_AnotherContainerClass#constructor (; 450 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 47
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=12
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#constructor (; 451 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 48
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar (; 452 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#isWhitespace (; 453 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar (; 454 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#skipWhitespace (; 455 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model/__near_JSONHandler_AnotherContainerClass#pushObject (; 456 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $1
   i32.const 0
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 2888
    i32.const 484
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  else   
   local.get $1
   i32.const 0
   call $~lib/string/String.__ne
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.ne
   end
   i32.eqz
   if
    i32.const 0
    i32.const 2888
    i32.const 488
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readHexDigit (; 457 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readEscapedChar (; 458 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readString (; 459 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseKey (; 460 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseObject (; 461 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_AnotherContainerClass#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<model/FooBar>>#constructor (; 462 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 44
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  if
   i32.const 936
   i32.const 888
   i32.const 56
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $model/__near_JSONHandler_Array_Array_FooBar#constructor (; 463 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 49
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store offset=12
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#constructor (; 464 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 50
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar (; 465 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#isWhitespace (; 466 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 9
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 10
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 13
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 32
   i32.eq
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar (; 467 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=8
  call $~lib/typedarray/Uint8Array#get:length
  i32.lt_s
  i32.eqz
  if
   i32.const 2744
   i32.const 2800
   i32.const 112
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace (; 468 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/array/Array<model/FooBar>>#push (; 469 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model/__near_JSONHandler_Array_Array_FooBar#pushObject (; 470 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load offset=4
  i32.const 0
  call $main/__near_decode_Array_FooBar
  local.tee $2
  call $~lib/array/Array<~lib/array/Array<model/FooBar>>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readHexDigit (; 471 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readEscapedChar (; 472 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readString (; 473 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseKey (; 474 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseObject (; 475 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_Array_Array_FooBar#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/__near_JSONHandler_Array_Array_FooBar#pushArray (; 476 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   call $~lib/string/String#get:length
   i32.const 0
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2888
   i32.const 520
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load offset=4
  i32.const 0
  call $main/__near_decode_Array_FooBar
  local.tee $2
  call $~lib/array/Array<~lib/array/Array<model/FooBar>>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseArray (; 477 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_Array_Array_FooBar#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseString (; 478 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readAndAssert (; 479 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseBoolean (; 480 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseNumber (; 481 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseNull (; 482 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseValue (; 483 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#deserialize (; 484 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $model/__near_decode_Array_Array_FooBar (; 485 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<~lib/array/Array<model/FooBar>>#constructor
   local.tee $3
   local.tee $4
   local.get $2
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.get $2
  local.tee $3
  if (result i32)
   local.get $3
  else   
   unreachable
  end
  call $model/__near_JSONHandler_Array_Array_FooBar#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $0
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_Array_Array_FooBar>#deserialize
  local.get $2
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model/__near_JSONHandler_AnotherContainerClass#pushArray (; 486 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4208
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=4
   i32.const 0
   call $model/__near_decode_Array_Array_FooBar
   local.set $3
   local.get $2
   i32.load
   call $~lib/rt/stub/__release
   local.get $3
   i32.store
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseArray (; 487 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $model/__near_JSONHandler_AnotherContainerClass#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseString (; 488 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readAndAssert (; 489 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseBoolean (; 490 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseNumber (; 491 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model/__near_JSONHandler_AnotherContainerClass#setNull (; 492 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4208
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load
   local.tee $2
   i32.ne
   if
    local.get $3
    call $~lib/rt/stub/__retain
    drop
    local.get $2
    call $~lib/rt/stub/__release
   end
   local.get $3
   i32.store
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseNull (; 493 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model/__near_JSONHandler_AnotherContainerClass#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseValue (; 494 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#deserialize (; 495 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $model/__near_decode_AnotherContainerClass (; 496 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.eq
  if
   i32.const 0
   call $model/AnotherContainerClass#constructor
   local.tee $3
   local.tee $4
   local.get $2
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $5
    call $~lib/rt/stub/__release
   end
   local.get $4
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  i32.const 0
  local.get $2
  local.tee $3
  if (result i32)
   local.get $3
  else   
   unreachable
  end
  call $model/__near_JSONHandler_AnotherContainerClass#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $0
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model/__near_JSONHandler_AnotherContainerClass>#deserialize
  local.get $2
  local.tee $4
  if (result i32)
   local.get $4
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model/AnotherContainerClass#decode (; 497 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  local.get $2
  local.get $0
  call $model/__near_decode_AnotherContainerClass
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $model/AnotherContainerClass.decode (; 498 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  call $model/AnotherContainerClass#constructor
  local.tee $2
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  call $model/AnotherContainerClass#decode
  call $~lib/rt/stub/__release
  local.get $3
  local.set $4
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $main/__near_ArgsParser_unwrapFoobar#pushObject (; 499 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $1
   i32.const 0
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3560
    i32.const 211
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i32.const 1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  else   
   local.get $1
   i32.const 0
   call $~lib/string/String.__ne
   if (result i32)
    i32.const 1
   else    
    local.get $1
    call $~lib/string/String#get:length
    i32.const 0
    i32.ne
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3560
    i32.const 215
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.const 4336
  call $~lib/string/String.__eq
  if
   local.get $0
   local.tee $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load offset=4
   call $model/AnotherContainerClass.decode
   local.set $3
   local.get $2
   i32.load offset=12
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=12
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readHexDigit (; 500 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
  local.set $1
  local.get $1
  global.get $~lib/assemblyscript-json/decoder/CHAR_0
  i32.sub
  local.set $2
  local.get $2
  i32.const 9
  i32.gt_s
  if
   local.get $1
   global.get $~lib/assemblyscript-json/decoder/CHAR_A
   i32.sub
   i32.const 10
   i32.add
   local.set $2
   local.get $2
   i32.const 10
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $2
    i32.const 15
    i32.gt_s
   end
   if
    local.get $1
    global.get $~lib/assemblyscript-json/decoder/CHAR_A_LOWER
    i32.sub
    i32.const 10
    i32.add
    local.set $2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $1
  i32.store
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $3
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $2
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_s
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 3320
   i32.const 2800
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  local.get $4
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readEscapedChar (; 501 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
  local.set $1
  local.get $1
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 1096
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1096
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3176
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 3176
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3200
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1168
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3224
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1216
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3248
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1264
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3272
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 1312
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 3296
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readHexDigit
   local.set $5
   local.get $2
   i32.const 4096
   i32.mul
   local.get $3
   i32.const 256
   i32.mul
   i32.add
   local.get $4
   i32.const 16
   i32.mul
   i32.add
   local.get $5
   i32.add
   local.set $6
   local.get $6
   call $~lib/string/String.fromCodePoint
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 3376
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 2800
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 760
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readString (; 502 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3024
   i32.const 2800
   i32.const 197
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.load offset=4
  local.set $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $loop|0
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 3104
    i32.const 2800
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 1072
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   if
    i32.const 1
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 0
    call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
    local.set $4
    local.get $2
    call $~lib/array/Array<~lib/string/String>#get:length
    i32.const 0
    i32.eq
    if
     local.get $4
     local.set $5
     local.get $2
     call $~lib/rt/stub/__release
     local.get $5
     return
    end
    local.get $2
    local.get $4
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $2
    i32.const 760
    call $~lib/array/Array<~lib/string/String>#join
    local.set $5
    local.get $4
    call $~lib/rt/stub/__release
    local.get $2
    call $~lib/rt/stub/__release
    local.get $5
    return
   else    
    local.get $3
    i32.const 1096
    i32.const 0
    call $~lib/string/String#charCodeAt
    i32.eq
    if
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $2
      i32.const 1
      global.set $~lib/argc
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 0
      call $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline
      local.tee $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readEscapedChar
     local.tee $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
     local.get $0
     i32.load offset=4
     i32.load offset=4
     local.set $1
     local.get $4
     call $~lib/rt/stub/__release
    end
   end
   br $loop|0
  end
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseKey (; 503 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
  i32.const 1984
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 3456
   i32.const 2800
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseObject (; 504 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 2008
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $main/__near_ArgsParser_unwrapFoobar#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
     i32.const 2672
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 142
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
   i32.const 2672
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3496
    i32.const 2800
    i32.const 149
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popObject
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $main/__near_ArgsParser_unwrapFoobar#pushArray (; 505 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseArray (; 506 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 2232
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  i32.load
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 760
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $3
  i32.store
  local.get $0
  i32.load
  local.get $1
  call $main/__near_ArgsParser_unwrapFoobar#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
     i32.const 2256
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
      i32.const 1048
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2984
       i32.const 2800
       i32.const 176
       i32.const 10
       call $~lib/builtins/abort
       unreachable
      end
     else      
      i32.const 0
      local.set $3
     end
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
   i32.const 2256
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3592
    i32.const 2800
    i32.const 182
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  call $~lib/assemblyscript-json/decoder/JSONHandler#popArray
  i32.const 1
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseString (; 507 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 1072
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  i32.load
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readAndAssert (; 508 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $1
    call $~lib/string/String#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3656
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3696
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 2800
     i32.const 321
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
    local.get $4
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseBoolean (; 509 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseNumber (; 510 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 3808
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readChar
    local.set $4
    local.get $1
    i64.const 10
    i64.mul
    local.set $1
    local.get $1
    local.get $4
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   local.get $1
   local.get $2
   i64.mul
   call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $main/__near_ArgsParser_unwrapFoobar#setNull (; 511 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4336
  call $~lib/string/String.__eq
  if
   local.get $0
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load offset=12
   local.tee $2
   i32.ne
   if
    local.get $3
    call $~lib/rt/stub/__retain
    drop
    local.get $2
    call $~lib/rt/stub/__release
   end
   local.get $3
   i32.store offset=12
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseNull (; 512 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main/__near_ArgsParser_unwrapFoobar#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseValue (; 513 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#deserialize (; 514 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.ne
   if
    local.get $4
    call $~lib/rt/stub/__retain
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $4
   i32.store offset=4
  else   
   local.get $0
   local.tee $4
   i32.const 0
   local.get $1
   call $~lib/assemblyscript-json/decoder/DecoderState#constructor
   local.set $3
   local.get $4
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3904
   i32.const 2800
   i32.const 100
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $main/wrapped_unwrapFoobar (; 515 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<model/FooBar>>#__get
  local.tee $1
  i32.const 0
  call $~lib/array/Array<model/FooBar>#__get
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $main/unwrapFoobar (; 516 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  call $main/input
  i32.const 0
  call $main/register_len
  local.set $0
  local.get $0
  i32.const -1
  i32.eq
  if
   call $main/panic
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $2
  call $main/read_register
  i32.const 0
  call $main/__near_ArgsParser_unwrapFoobar#constructor
  local.set $3
  local.get $3
  local.tee $4
  local.get $1
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/stub/__retain
   drop
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $5
  i32.store
  local.get $3
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#constructor
  local.set $4
  local.get $5
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $1
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main/__near_ArgsParser_unwrapFoobar>#deserialize
  local.get $3
  i32.load offset=12
  call $main/wrapped_unwrapFoobar
  local.set $4
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $5
  local.get $4
  i32.const 0
  i32.ne
  if
   local.get $4
   local.get $5
   i32.const 0
   call $model/FooBar#encode
   call $~lib/rt/stub/__release
  else   
   local.get $5
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $5
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $6
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $6
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  call $main/value_return
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
 )
 (func $test/unwrapFoobar (; 517 ;) (type $FUNCSIG$v)
  call $main/unwrapFoobar
 )
 (func $start (; 518 ;) (type $FUNCSIG$v)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  call $start:test
 )
 (func $null (; 519 ;) (type $FUNCSIG$v)
 )
)
