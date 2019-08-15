(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$iijj (func (param i32 i64 i64) (result i32)))
 (type $FUNCSIG$vijjjj (func (param i32 i64 i64 i64 i64)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "data_read" (func $~lib/near-runtime-ts/imports/data_read (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "return_value" (func $main_near/return_value (param i32 i32)))
 (import "env" "log" (func $~lib/near-runtime-ts/imports/_near_log (param i32)))
 (import "env" "result_count" (func $~lib/near-runtime-ts/imports/result_count (result i32)))
 (import "env" "result_is_ok" (func $~lib/near-runtime-ts/imports/result_is_ok (param i32) (result i32)))
 (import "env" "storage_write" (func $~lib/near-runtime-ts/imports/storage_write (param i32 i32 i32 i32)))
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
 (data (i32.const 640) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 704) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 720) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00 \00:\00 \00\"\00")
 (data (i32.const 744) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 768) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 856) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00b\00o\00o\00l\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 920) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00 \00:\00 \00")
 (data (i32.const 944) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 1008) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00t\00e\00g\00e\00r\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 1080) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 1496) "\10\00\00\00\01\00\00\00\0c\00\00\00\10\00\00\00H\04\00\00H\04\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 1528) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00a\00r\00r\00a\00y\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 1592) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00m\00a\00i\00n\00_\00n\00e\00a\00r\00.\00t\00s\00")
 (data (i32.const 1632) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00o\00b\00j\00e\00c\00t\00 \00f\00i\00e\00l\00d\00 \00")
 (data (i32.const 1696) "d\00\00\00\01\00\00\00\01\00\00\00d\00\00\00I\00n\00t\00e\00r\00n\00a\00l\00 \00s\00c\00r\00a\00t\00c\00h\00 \00b\00u\00f\00f\00e\00r\00 \00w\00a\00s\00 \00r\00e\00s\00i\00z\00e\00d\00 \00m\00o\00r\00e\00 \00t\00h\00a\00n\00 \00o\00n\00c\00e\00")
 (data (i32.const 1816) ">\00\00\00\01\00\00\00\01\00\00\00>\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00r\00u\00n\00t\00i\00m\00e\00-\00t\00s\00/\00s\00t\00o\00r\00a\00g\00e\00.\00t\00s\00")
 (data (i32.const 1896) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 1952) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 2008) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d\00")
 (data (i32.const 2064) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00{\00")
 (data (i32.const 2088) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00}\00")
 (data (i32.const 2112) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 2136) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'\00")
 (data (i32.const 2176) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 2256) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 2368) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 2416) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00")
 (data (i32.const 2488) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 2536) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\\\00")
 (data (i32.const 2560) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00/\00")
 (data (i32.const 2584) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 2608) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\08\00")
 (data (i32.const 2632) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 2656) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 2680) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00r\00")
 (data (i32.const 2704) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\0d\00")
 (data (i32.const 2728) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00t\00")
 (data (i32.const 2752) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\t\00")
 (data (i32.const 2776) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00u\00")
 (data (i32.const 2800) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t\00")
 (data (i32.const 2856) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 \00")
 (data (i32.const 2936) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00:\00")
 (data (i32.const 2960) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'\00")
 (data (i32.const 3000) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t\00")
 (data (i32.const 3064) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 3088) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 3112) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y\00")
 (data (i32.const 3176) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00")
 (data (i32.const 3216) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\'\00")
 (data (i32.const 3240) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 3264) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N\00")
 (data (i32.const 3320) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00x\00")
 (data (i32.const 3344) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00y\00")
 (data (i32.const 3368) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\"\00")
 (data (i32.const 3392) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00\\\00")
 (data (i32.const 3416) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00b\00")
 (data (i32.const 3440) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00n\00")
 (data (i32.const 3464) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00r\00")
 (data (i32.const 3488) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\\\00t\00")
 (data (i32.const 3512) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 \00")
 (data (i32.const 3600) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s\00")
 (data (i32.const 3688) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00c\00o\00n\00t\00a\00i\00n\00e\00r\00")
 (data (i32.const 3728) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00m\00o\00d\00e\00l\00_\00n\00e\00a\00r\00.\00t\00s\00")
 (data (i32.const 3776) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 3808) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\002\003\00")
 (data (i32.const 3832) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00r\00r\00")
 (data (i32.const 3856) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\003\002\00A\00r\00r\00")
 (data (i32.const 3888) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\003\002\00A\00r\00r\00")
 (data (i32.const 3920) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00s\00")
 (data (i32.const 3960) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00u\006\004\00V\00a\00l\00")
 (data (i32.const 3992) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\006\004\00V\00a\00l\00")
 (data (i32.const 4024) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00z\00")
 (data (i32.const 4048) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00u\00i\00n\00t\008\00a\00r\00r\00a\00y\00")
 (data (i32.const 4088) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00u\001\002\008\00V\00a\00l\00")
 (data (i32.const 4120) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00r\00a\00d\00i\00x\00")
 (data (i32.const 4168) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00~\00l\00i\00b\00/\00b\00i\00g\00n\00u\00m\00/\00u\00t\00i\00l\00s\00.\00t\00s\00")
 (data (i32.const 4224) "K\00\00\00\01\00\00\00\00\00\00\00K\00\00\00\00\01\02\03\04\05\06\07\08\t$$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#")
 (data (i32.const 4320) "\10\00\00\00\01\00\00\00&\00\00\00\10\00\00\00\90\10\00\00\90\10\00\00K\00\00\00K\00\00\00")
 (data (i32.const 4352) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00f\00l\00a\00g\00")
 (data (i32.const 4376) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\00o\00o\00")
 (data (i32.const 4400) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00b\00a\00r\00")
 (data (i32.const 4424) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00f\00o\00o\00b\00a\00r\00s\00")
 (data (i32.const 4456) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 4504) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006\00")
 (data (i32.const 4600) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00~\00l\00i\00b\00/\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s\00")
 (data (i32.const 4672) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d\00")
 (data (i32.const 4712) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00g\00e\00t\00S\00t\00r\00i\00n\00g\00A\00r\00r\00a\00y\00L\00e\00n\00g\00t\00h\00:\00 \00")
 (data (i32.const 4776) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00a\00r\00g\00s\00")
 (data (i32.const 4800) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00c\00a\00l\00l\00b\00a\00c\00k\00A\00r\00g\00s\00")
 (data (i32.const 4840) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00r\00e\00c\00e\00i\00v\00e\00r\00")
 (data (i32.const 4872) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00m\00e\00t\00h\00o\00d\00N\00a\00m\00e\00")
 (data (i32.const 4912) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00c\00a\00l\00l\00b\00a\00c\00k\00")
 (data (i32.const 4944) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00b\00a\00l\00a\00n\00c\00e\00")
 (data (i32.const 4976) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00c\00a\00l\00l\00b\00a\00c\00k\00B\00a\00l\00a\00n\00c\00e\00")
 (data (i32.const 5024) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00r\00s\00")
 (data (i32.const 5048) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00o\00k\00")
 (data (i32.const 5072) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00l\00a\00s\00t\00R\00e\00s\00u\00l\00t\00")
 (data (i32.const 5112) "H\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\00\00\00\02\00\00\00\93 \00\00\02\00\00\00\93\04\00\00\02\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\003\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\001\04\00\00\02\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\83 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $main/convertFoobars~anonymous|0)
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
 (global $~lib/bignum/utils/RadixCharsTable i32 (i32.const 4336))
 (global $~lib/rt/__rtti_base i32 (i32.const 5112))
 (global $~lib/heap/__heap_base i32 (i32.const 5692))
 (global $main_near/__near_ArgsParser_doNothing i32 (i32.const 9))
 (global $main_near/__near_ArgsParser_add i32 (i32.const 15))
 (global $main_near/__near_ArgsParser_rewrapFoobar i32 (i32.const 18))
 (global $main_near/__near_ArgsParser_unwrapFoobar i32 (i32.const 43))
 (global $main_near/__near_ArgsParser_getStringArrayLength i32 (i32.const 51))
 (global $main_near/__near_ArgsParser_convertFoobars i32 (i32.const 53))
 (global $main_near/__near_ArgsParser_callbackWithName i32 (i32.const 56))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "__near_ArgsParser_doNothing" (global $main_near/__near_ArgsParser_doNothing))
 (export "__near_ArgsParser_doNothing#setString" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString))
 (export "__near_ArgsParser_doNothing#setBoolean" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean))
 (export "__near_ArgsParser_doNothing#setNull" (func $main_near/__near_ArgsParser_doNothing#setNull))
 (export "__near_ArgsParser_doNothing#setInteger" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger))
 (export "__near_ArgsParser_doNothing#pushArray" (func $main_near/__near_ArgsParser_doNothing#pushArray))
 (export "__near_ArgsParser_doNothing#popArray" (func $~lib/assemblyscript-json/decoder/JSONHandler#popArray))
 (export "__near_ArgsParser_doNothing#pushObject" (func $main_near/__near_ArgsParser_doNothing#pushObject))
 (export "__near_ArgsParser_doNothing#popObject" (func $~lib/assemblyscript-json/decoder/JSONHandler#popObject))
 (export "__near_ArgsParser_doNothing#get:buffer" (func $__near_ArgsParser_doNothing#get:buffer))
 (export "__near_ArgsParser_doNothing#set:buffer" (func $__near_ArgsParser_doNothing#set:buffer))
 (export "__near_ArgsParser_doNothing#get:decoder" (func $__near_ArgsParser_doNothing#get:decoder))
 (export "__near_ArgsParser_doNothing#set:decoder" (func $__near_ArgsParser_doNothing#set:decoder))
 (export "__near_ArgsParser_doNothing#get:handledRoot" (func $__near_ArgsParser_doNothing#get:handledRoot))
 (export "__near_ArgsParser_doNothing#set:handledRoot" (func $__near_ArgsParser_doNothing#set:handledRoot))
 (export "doNothing" (func $main_near/doNothing))
 (export "__near_ArgsParser_add" (global $main_near/__near_ArgsParser_add))
 (export "__near_ArgsParser_add#setString" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString))
 (export "__near_ArgsParser_add#setBoolean" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean))
 (export "__near_ArgsParser_add#setNull" (func $main_near/__near_ArgsParser_add#setNull))
 (export "__near_ArgsParser_add#setInteger" (func $main_near/__near_ArgsParser_add#setInteger))
 (export "__near_ArgsParser_add#pushArray" (func $main_near/__near_ArgsParser_add#pushArray))
 (export "__near_ArgsParser_add#popArray" (func $~lib/assemblyscript-json/decoder/JSONHandler#popArray))
 (export "__near_ArgsParser_add#pushObject" (func $main_near/__near_ArgsParser_add#pushObject))
 (export "__near_ArgsParser_add#popObject" (func $~lib/assemblyscript-json/decoder/JSONHandler#popObject))
 (export "__near_ArgsParser_add#get:buffer" (func $__near_ArgsParser_add#get:buffer))
 (export "__near_ArgsParser_add#set:buffer" (func $__near_ArgsParser_add#set:buffer))
 (export "__near_ArgsParser_add#get:decoder" (func $__near_ArgsParser_add#get:decoder))
 (export "__near_ArgsParser_add#set:decoder" (func $__near_ArgsParser_add#set:decoder))
 (export "__near_ArgsParser_add#get:handledRoot" (func $__near_ArgsParser_add#get:handledRoot))
 (export "__near_ArgsParser_add#set:handledRoot" (func $__near_ArgsParser_add#set:handledRoot))
 (export "__near_ArgsParser_add#get:__near_param_x" (func $__near_ArgsParser_add#get:__near_param_x))
 (export "__near_ArgsParser_add#set:__near_param_x" (func $__near_ArgsParser_add#set:__near_param_x))
 (export "__near_ArgsParser_add#get:__near_param_y" (func $__near_ArgsParser_add#get:__near_param_y))
 (export "__near_ArgsParser_add#set:__near_param_y" (func $__near_ArgsParser_add#set:__near_param_y))
 (export "add" (func $main_near/add))
 (export "__near_ArgsParser_rewrapFoobar" (global $main_near/__near_ArgsParser_rewrapFoobar))
 (export "__near_ArgsParser_rewrapFoobar#setString" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString))
 (export "__near_ArgsParser_rewrapFoobar#setBoolean" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean))
 (export "__near_ArgsParser_rewrapFoobar#setNull" (func $main_near/__near_ArgsParser_rewrapFoobar#setNull))
 (export "__near_ArgsParser_rewrapFoobar#setInteger" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger))
 (export "__near_ArgsParser_rewrapFoobar#pushArray" (func $main_near/__near_ArgsParser_rewrapFoobar#pushArray))
 (export "__near_ArgsParser_rewrapFoobar#popArray" (func $~lib/assemblyscript-json/decoder/JSONHandler#popArray))
 (export "__near_ArgsParser_rewrapFoobar#pushObject" (func $main_near/__near_ArgsParser_rewrapFoobar#pushObject))
 (export "__near_ArgsParser_rewrapFoobar#popObject" (func $~lib/assemblyscript-json/decoder/JSONHandler#popObject))
 (export "__near_ArgsParser_rewrapFoobar#get:buffer" (func $__near_ArgsParser_rewrapFoobar#get:buffer))
 (export "__near_ArgsParser_rewrapFoobar#set:buffer" (func $__near_ArgsParser_rewrapFoobar#set:buffer))
 (export "__near_ArgsParser_rewrapFoobar#get:decoder" (func $__near_ArgsParser_rewrapFoobar#get:decoder))
 (export "__near_ArgsParser_rewrapFoobar#set:decoder" (func $__near_ArgsParser_rewrapFoobar#set:decoder))
 (export "__near_ArgsParser_rewrapFoobar#get:handledRoot" (func $__near_ArgsParser_rewrapFoobar#get:handledRoot))
 (export "__near_ArgsParser_rewrapFoobar#set:handledRoot" (func $__near_ArgsParser_rewrapFoobar#set:handledRoot))
 (export "__near_ArgsParser_rewrapFoobar#get:__near_param_container" (func $__near_ArgsParser_rewrapFoobar#get:__near_param_container))
 (export "__near_ArgsParser_rewrapFoobar#set:__near_param_container" (func $__near_ArgsParser_rewrapFoobar#set:__near_param_container))
 (export "rewrapFoobar" (func $main_near/rewrapFoobar))
 (export "__near_ArgsParser_unwrapFoobar" (global $main_near/__near_ArgsParser_unwrapFoobar))
 (export "__near_ArgsParser_unwrapFoobar#setString" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString))
 (export "__near_ArgsParser_unwrapFoobar#setBoolean" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean))
 (export "__near_ArgsParser_unwrapFoobar#setNull" (func $main_near/__near_ArgsParser_unwrapFoobar#setNull))
 (export "__near_ArgsParser_unwrapFoobar#setInteger" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger))
 (export "__near_ArgsParser_unwrapFoobar#pushArray" (func $main_near/__near_ArgsParser_unwrapFoobar#pushArray))
 (export "__near_ArgsParser_unwrapFoobar#popArray" (func $~lib/assemblyscript-json/decoder/JSONHandler#popArray))
 (export "__near_ArgsParser_unwrapFoobar#pushObject" (func $main_near/__near_ArgsParser_unwrapFoobar#pushObject))
 (export "__near_ArgsParser_unwrapFoobar#popObject" (func $~lib/assemblyscript-json/decoder/JSONHandler#popObject))
 (export "__near_ArgsParser_unwrapFoobar#get:buffer" (func $__near_ArgsParser_unwrapFoobar#get:buffer))
 (export "__near_ArgsParser_unwrapFoobar#set:buffer" (func $__near_ArgsParser_unwrapFoobar#set:buffer))
 (export "__near_ArgsParser_unwrapFoobar#get:decoder" (func $__near_ArgsParser_unwrapFoobar#get:decoder))
 (export "__near_ArgsParser_unwrapFoobar#set:decoder" (func $__near_ArgsParser_unwrapFoobar#set:decoder))
 (export "__near_ArgsParser_unwrapFoobar#get:handledRoot" (func $__near_ArgsParser_unwrapFoobar#get:handledRoot))
 (export "__near_ArgsParser_unwrapFoobar#set:handledRoot" (func $__near_ArgsParser_unwrapFoobar#set:handledRoot))
 (export "__near_ArgsParser_unwrapFoobar#get:__near_param_container" (func $__near_ArgsParser_unwrapFoobar#get:__near_param_container))
 (export "__near_ArgsParser_unwrapFoobar#set:__near_param_container" (func $__near_ArgsParser_unwrapFoobar#set:__near_param_container))
 (export "unwrapFoobar" (func $main_near/unwrapFoobar))
 (export "__near_ArgsParser_getStringArrayLength" (global $main_near/__near_ArgsParser_getStringArrayLength))
 (export "__near_ArgsParser_getStringArrayLength#setString" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString))
 (export "__near_ArgsParser_getStringArrayLength#setBoolean" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean))
 (export "__near_ArgsParser_getStringArrayLength#setNull" (func $main_near/__near_ArgsParser_getStringArrayLength#setNull))
 (export "__near_ArgsParser_getStringArrayLength#setInteger" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger))
 (export "__near_ArgsParser_getStringArrayLength#pushArray" (func $main_near/__near_ArgsParser_getStringArrayLength#pushArray))
 (export "__near_ArgsParser_getStringArrayLength#popArray" (func $~lib/assemblyscript-json/decoder/JSONHandler#popArray))
 (export "__near_ArgsParser_getStringArrayLength#pushObject" (func $main_near/__near_ArgsParser_getStringArrayLength#pushObject))
 (export "__near_ArgsParser_getStringArrayLength#popObject" (func $~lib/assemblyscript-json/decoder/JSONHandler#popObject))
 (export "__near_ArgsParser_getStringArrayLength#get:buffer" (func $__near_ArgsParser_getStringArrayLength#get:buffer))
 (export "__near_ArgsParser_getStringArrayLength#set:buffer" (func $__near_ArgsParser_getStringArrayLength#set:buffer))
 (export "__near_ArgsParser_getStringArrayLength#get:decoder" (func $__near_ArgsParser_getStringArrayLength#get:decoder))
 (export "__near_ArgsParser_getStringArrayLength#set:decoder" (func $__near_ArgsParser_getStringArrayLength#set:decoder))
 (export "__near_ArgsParser_getStringArrayLength#get:handledRoot" (func $__near_ArgsParser_getStringArrayLength#get:handledRoot))
 (export "__near_ArgsParser_getStringArrayLength#set:handledRoot" (func $__near_ArgsParser_getStringArrayLength#set:handledRoot))
 (export "__near_ArgsParser_getStringArrayLength#get:__near_param_arr" (func $__near_ArgsParser_getStringArrayLength#get:__near_param_arr))
 (export "__near_ArgsParser_getStringArrayLength#set:__near_param_arr" (func $__near_ArgsParser_getStringArrayLength#set:__near_param_arr))
 (export "getStringArrayLength" (func $main_near/getStringArrayLength))
 (export "__near_ArgsParser_convertFoobars" (global $main_near/__near_ArgsParser_convertFoobars))
 (export "__near_ArgsParser_convertFoobars#setString" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString))
 (export "__near_ArgsParser_convertFoobars#setBoolean" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean))
 (export "__near_ArgsParser_convertFoobars#setNull" (func $main_near/__near_ArgsParser_convertFoobars#setNull))
 (export "__near_ArgsParser_convertFoobars#setInteger" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger))
 (export "__near_ArgsParser_convertFoobars#pushArray" (func $main_near/__near_ArgsParser_convertFoobars#pushArray))
 (export "__near_ArgsParser_convertFoobars#popArray" (func $~lib/assemblyscript-json/decoder/JSONHandler#popArray))
 (export "__near_ArgsParser_convertFoobars#pushObject" (func $main_near/__near_ArgsParser_convertFoobars#pushObject))
 (export "__near_ArgsParser_convertFoobars#popObject" (func $~lib/assemblyscript-json/decoder/JSONHandler#popObject))
 (export "__near_ArgsParser_convertFoobars#get:buffer" (func $__near_ArgsParser_convertFoobars#get:buffer))
 (export "__near_ArgsParser_convertFoobars#set:buffer" (func $__near_ArgsParser_convertFoobars#set:buffer))
 (export "__near_ArgsParser_convertFoobars#get:decoder" (func $__near_ArgsParser_convertFoobars#get:decoder))
 (export "__near_ArgsParser_convertFoobars#set:decoder" (func $__near_ArgsParser_convertFoobars#set:decoder))
 (export "__near_ArgsParser_convertFoobars#get:handledRoot" (func $__near_ArgsParser_convertFoobars#get:handledRoot))
 (export "__near_ArgsParser_convertFoobars#set:handledRoot" (func $__near_ArgsParser_convertFoobars#set:handledRoot))
 (export "__near_ArgsParser_convertFoobars#get:__near_param_foobars" (func $__near_ArgsParser_convertFoobars#get:__near_param_foobars))
 (export "__near_ArgsParser_convertFoobars#set:__near_param_foobars" (func $__near_ArgsParser_convertFoobars#set:__near_param_foobars))
 (export "__near_encode_Array_ContainerClass" (func $main_near/__near_encode_Array_ContainerClass))
 (export "convertFoobars" (func $main_near/convertFoobars))
 (export "__near_ArgsParser_callbackWithName" (global $main_near/__near_ArgsParser_callbackWithName))
 (export "__near_ArgsParser_callbackWithName#setString" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString))
 (export "__near_ArgsParser_callbackWithName#setBoolean" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean))
 (export "__near_ArgsParser_callbackWithName#setNull" (func $main_near/__near_ArgsParser_callbackWithName#setNull))
 (export "__near_ArgsParser_callbackWithName#setInteger" (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger))
 (export "__near_ArgsParser_callbackWithName#pushArray" (func $main_near/__near_ArgsParser_callbackWithName#pushArray))
 (export "__near_ArgsParser_callbackWithName#popArray" (func $~lib/assemblyscript-json/decoder/JSONHandler#popArray))
 (export "__near_ArgsParser_callbackWithName#pushObject" (func $main_near/__near_ArgsParser_callbackWithName#pushObject))
 (export "__near_ArgsParser_callbackWithName#popObject" (func $~lib/assemblyscript-json/decoder/JSONHandler#popObject))
 (export "__near_ArgsParser_callbackWithName#get:buffer" (func $__near_ArgsParser_callbackWithName#get:buffer))
 (export "__near_ArgsParser_callbackWithName#set:buffer" (func $__near_ArgsParser_callbackWithName#set:buffer))
 (export "__near_ArgsParser_callbackWithName#get:decoder" (func $__near_ArgsParser_callbackWithName#get:decoder))
 (export "__near_ArgsParser_callbackWithName#set:decoder" (func $__near_ArgsParser_callbackWithName#set:decoder))
 (export "__near_ArgsParser_callbackWithName#get:handledRoot" (func $__near_ArgsParser_callbackWithName#get:handledRoot))
 (export "__near_ArgsParser_callbackWithName#set:handledRoot" (func $__near_ArgsParser_callbackWithName#set:handledRoot))
 (export "__near_ArgsParser_callbackWithName#get:__near_param_args" (func $__near_ArgsParser_callbackWithName#get:__near_param_args))
 (export "__near_ArgsParser_callbackWithName#set:__near_param_args" (func $__near_ArgsParser_callbackWithName#set:__near_param_args))
 (export "callbackWithName" (func $main_near/callbackWithName))
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
 (func $start:main_near (; 23 ;) (type $FUNCSIG$v)
  call $start:~lib/near-runtime-ts/index
  call $start:~lib/assemblyscript-json/index
 )
 (func $~lib/util/memory/memcpy (; 24 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.copy (; 25 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/string/String#concat (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 720
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
 (func $~lib/string/String.__concat (; 27 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString (; 28 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 656
   local.get $1
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 736
   call $~lib/string/String.__concat
   local.tee $4
   local.get $2
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 760
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setBoolean (; 29 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 872
   local.get $1
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 936
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
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull (; 30 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 960
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 784
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
 (func $main_near/__near_ArgsParser_doNothing#setNull (; 31 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setNull
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/util/number/decimalCount32 (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 33 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 1512
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
 (func $~lib/util/number/decimalCount64 (; 34 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 35 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
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
  i32.const 1512
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
 (func $~lib/util/number/itoa64 (; 36 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/itoa<i64> (; 37 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa64
  return
 )
 (func $~lib/number/I64#toString (; 38 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setInteger (; 39 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
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
   i32.const 1024
   local.get $1
   call $~lib/string/String.__concat
   local.tee $3
   i32.const 936
   call $~lib/string/String.__concat
   local.tee $4
   local.get $2
   call $~lib/number/I64#toString
   local.tee $5
   call $~lib/string/String.__concat
   local.tee $6
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushArray (; 40 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 1544
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 784
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
 (func $main_near/__near_ArgsParser_doNothing#pushArray (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONHandler#popArray (; 42 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/util/string/compareImpl (; 43 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.__ne (; 45 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  i32.eqz
  if
   i32.const 1648
   local.get $1
   call $~lib/string/String.__concat
   local.tee $2
   i32.const 784
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
 (func $main_near/__near_ArgsParser_doNothing#pushObject (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 1608
    i32.const 26
    i32.const 6
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
    i32.const 1608
    i32.const 30
    i32.const 6
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
 (func $~lib/assemblyscript-json/decoder/JSONHandler#popObject (; 48 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (; 49 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/near-runtime-ts/util/ptrTo (; 50 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/near-runtime-ts/storage/Storage#_internalBufferRead (; 51 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    i32.const 2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    local.get $3
    local.get $0
    i32.load
    call $~lib/arraybuffer/ArrayBufferView#get:byteLength
    local.get $0
    i32.load
    call $~lib/near-runtime-ts/util/ptrTo
    call $~lib/near-runtime-ts/imports/data_read
    local.set $5
    local.get $5
    local.get $0
    i32.load
    call $~lib/arraybuffer/ArrayBufferView#get:byteLength
    i32.le_u
    if
     local.get $5
     return
    end
    local.get $0
    local.tee $6
    i32.const 0
    local.get $5
    call $~lib/typedarray/Uint8Array#constructor
    local.set $7
    local.get $6
    i32.load
    call $~lib/rt/stub/__release
    local.get $7
    i32.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  i32.const 0
  i32.eqz
  if
   i32.const 1712
   i32.const 1832
   i32.const 213
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
 )
 (func $~lib/near-runtime-ts/storage/Storage#_internalReadBytes (; 52 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/near-runtime-ts/storage/Storage#_internalBufferRead
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 0
   call $~lib/rt/stub/__retain
   return
  end
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#constructor
  local.set $5
  local.get $5
  call $~lib/near-runtime-ts/util/ptrTo
  local.get $0
  i32.load
  call $~lib/near-runtime-ts/util/ptrTo
  local.get $4
  call $~lib/memory/memory.copy
  local.get $5
 )
 (func $~lib/assemblyscript-json/decoder/JSONHandler#constructor (; 53 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#constructor (; 54 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONHandler#constructor
  local.set $0
  local.get $0
 )
 (func $main_near/__near_ArgsParser_doNothing#constructor (; 55 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 9
   i32.const 9
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
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#constructor (; 56 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 10
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
 (func $~lib/assemblyscript-json/decoder/DecoderState#constructor (; 57 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 11
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 720
  call $~lib/rt/stub/__retain
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#get:length (; 58 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
 )
 (func $~lib/typedarray/Uint8Array#__get (; 59 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1912
   i32.const 1968
   i32.const 121
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#isWhitespace (; 61 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar (; 62 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#skipWhitespace (; 63 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (; 64 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 13
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
   i32.const 2272
   i32.const 2384
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
 (func $~lib/assemblyscript-json/util/index/Buffer.getPtr (; 65 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/rt/stub/__realloc (; 66 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.UTF8.decodeUnsafe (; 67 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 2504
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
 (func $~lib/assemblyscript-json/util/index/Buffer.readString (; 68 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString (; 69 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  local.get $2
  i32.const 1
  i32.sub
  call $~lib/assemblyscript-json/util/index/Buffer.readString
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString|trampoline (; 70 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<~lib/string/String>#get:length (; 71 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/ensureSize (; 72 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 2384
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
 (func $~lib/array/Array<~lib/string/String>#push (; 73 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<~lib/string/String>#join_str (; 74 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 720
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
 (func $~lib/array/Array<~lib/string/String>#join (; 75 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/rt/__allocArray (; 76 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readHexDigit (; 77 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/string/String.fromCodePoint (; 78 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2504
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
 (func $~lib/string/String.fromCharCode (; 79 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.fromCharCode|trampoline (; 80 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readEscapedChar (; 81 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readString (; 82 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseKey (; 83 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseObject (; 84 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_doNothing#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseArray (; 85 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_doNothing#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseString (; 86 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readAndAssert (; 87 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseBoolean (; 88 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseNumber (; 89 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseNull (; 90 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main_near/__near_ArgsParser_doNothing#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseValue (; 91 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#deserialize (; 92 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $main/doNothing (; 93 ;) (type $FUNCSIG$v)
  nop
 )
 (func $main_near/doNothing (; 94 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/near-runtime-ts/storage/storage
  i32.const 4
  i32.const 0
  i32.const 0
  call $~lib/near-runtime-ts/storage/Storage#_internalReadBytes
  local.tee $0
  if (result i32)
   local.get $0
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  call $main_near/__near_ArgsParser_doNothing#constructor
  local.set $1
  local.get $1
  local.tee $2
  local.get $0
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
  local.tee $3
  i32.const 0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#constructor
  local.set $2
  local.get $3
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=4
  local.get $1
  i32.load offset=4
  local.get $0
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_doNothing>#deserialize
  call $main/doNothing
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $main_near/__near_ArgsParser_add#setNull (; 95 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 3336
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 3360
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.const 0
   i32.store offset=16
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
 (func $main_near/__near_ArgsParser_add#setInteger (; 96 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 3336
  call $~lib/string/String.__eq
  if
   local.get $0
   local.get $2
   i32.wrap_i64
   i32.store offset=12
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 3360
  call $~lib/string/String.__eq
  if
   local.get $0
   local.get $2
   i32.wrap_i64
   i32.store offset=16
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
 (func $main_near/__near_ArgsParser_add#pushArray (; 97 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $main_near/__near_ArgsParser_add#pushObject (; 98 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 1608
    i32.const 86
    i32.const 6
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
    i32.const 1608
    i32.const 90
    i32.const 6
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
 (func $main_near/__near_ArgsParser_add#constructor (; 99 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 20
   i32.const 15
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
  i32.const 0
  i32.store offset=16
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#constructor (; 100 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 16
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar (; 101 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#isWhitespace (; 102 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar (; 103 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#skipWhitespace (; 104 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readHexDigit (; 105 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readEscapedChar (; 106 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readString (; 107 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseKey (; 108 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseObject (; 109 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_add#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseArray (; 110 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_add#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseString (; 111 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readAndAssert (; 112 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseBoolean (; 113 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseNumber (; 114 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readChar
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
   call $main_near/__near_ArgsParser_add#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseNull (; 115 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main_near/__near_ArgsParser_add#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseValue (; 116 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#deserialize (; 117 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $main/add (; 118 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#constructor (; 119 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 14
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
 (func $~lib/array/Array<i32>#push (; 120 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#constructor (; 121 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 17
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
 (func $~lib/array/Array<i32>#get:length (; 122 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 123 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 124 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1912
   i32.const 2384
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#get:isFirstKey (; 125 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#get:length
  i32.const 1
  i32.sub
  call $~lib/array/Array<i32>#__get
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#write (; 126 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i32>#__unchecked_set (; 127 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 128 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/string/String#substring (; 129 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 720
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
 (func $~lib/util/number/itoa32 (; 130 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/itoa<i32> (; 131 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/number/I32#toString (; 132 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (; 133 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  i32.const 760
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
     i32.const 760
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
    end
    local.tee $5
    if (result i32)
     local.get $5
    else     
     local.get $4
     i32.const 2552
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
     i32.const 760
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.eq
     if
      local.get $0
      i32.const 3384
      call $~lib/assemblyscript-json/encoder/JSONEncoder#write
     else      
      local.get $4
      i32.const 2552
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      if
       local.get $0
       i32.const 3408
       call $~lib/assemblyscript-json/encoder/JSONEncoder#write
      else       
       local.get $4
       i32.const 2624
       i32.const 0
       call $~lib/string/String#charCodeAt
       i32.eq
       if
        local.get $0
        i32.const 3432
        call $~lib/assemblyscript-json/encoder/JSONEncoder#write
       else        
        local.get $4
        i32.const 2672
        i32.const 0
        call $~lib/string/String#charCodeAt
        i32.eq
        if
         local.get $0
         i32.const 3456
         call $~lib/assemblyscript-json/encoder/JSONEncoder#write
        else         
         local.get $4
         i32.const 2720
         i32.const 0
         call $~lib/string/String#charCodeAt
         i32.eq
         if
          local.get $0
          i32.const 3480
          call $~lib/assemblyscript-json/encoder/JSONEncoder#write
         else          
          local.get $4
          i32.const 2768
          i32.const 0
          call $~lib/string/String#charCodeAt
          i32.eq
          if
           local.get $0
           i32.const 3504
           call $~lib/assemblyscript-json/encoder/JSONEncoder#write
          else           
           i32.const 0
           i32.eqz
           if
            i32.const 3528
            local.get $4
            call $~lib/number/I32#toString
            local.tee $7
            call $~lib/string/String.__concat
            local.tee $8
            i32.const 3616
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
  i32.const 760
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $5
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey (; 134 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 2128
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
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
   local.get $0
   i32.const 2952
   call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeInteger (; 135 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/number/I64#toString
  local.tee $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger (; 136 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#toString (; 137 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 720
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $~lib/string/String.UTF8.byteLength (; 138 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.UTF8.encode (; 139 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 2504
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
    i32.const 2504
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
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (; 140 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#serialize (; 141 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/typedarray/Uint8Array#get:buffer (; 142 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $main_near/add (; 143 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/near-runtime-ts/storage/storage
  i32.const 4
  i32.const 0
  i32.const 0
  call $~lib/near-runtime-ts/storage/Storage#_internalReadBytes
  local.tee $0
  if (result i32)
   local.get $0
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  call $main_near/__near_ArgsParser_add#constructor
  local.set $1
  local.get $1
  local.tee $2
  local.get $0
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
  local.tee $3
  i32.const 0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#constructor
  local.set $2
  local.get $3
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=4
  local.get $1
  i32.load offset=4
  local.get $0
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_add>#deserialize
  local.get $1
  i32.load offset=12
  local.get $1
  i32.load offset=16
  call $main/add
  local.set $2
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  i64.extend_i32_s
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  call $main_near/return_value
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $main_near/__near_ArgsParser_rewrapFoobar#setNull (; 144 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 3704
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
 (func $main_near/__near_ArgsParser_rewrapFoobar#pushArray (; 145 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $model_near/ContainerClass#constructor (; 146 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 20
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $model_near/__near_JSONHandler_ContainerClass#constructor (; 147 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#constructor (; 148 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar (; 149 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#isWhitespace (; 150 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar (; 151 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#skipWhitespace (; 152 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model_near/FooBar#constructor (; 153 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 56
   i32.const 21
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
  i32.const 3824
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
 (func $model_near/__near_JSONHandler_FooBar#constructor (; 154 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#constructor (; 155 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar (; 156 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#isWhitespace (; 157 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar (; 158 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#skipWhitespace (; 159 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model_near/__near_JSONHandler_FooBar#pushObject (; 160 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 3744
    i32.const 223
    i32.const 6
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
    i32.const 3744
    i32.const 227
    i32.const 6
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readHexDigit (; 161 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readEscapedChar (; 162 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readString (; 163 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseKey (; 164 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseObject (; 165 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_FooBar#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor (; 166 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 22
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
   i32.const 2272
   i32.const 2384
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
 (func $model_near/__near_JSONHandler_Array_Array_String#constructor (; 167 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#constructor (; 168 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar (; 169 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#isWhitespace (; 170 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar (; 171 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#skipWhitespace (; 172 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model_near/__near_JSONHandler_Array_String#constructor (; 173 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 30
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#constructor (; 174 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar (; 175 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#isWhitespace (; 176 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar (; 177 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#skipWhitespace (; 178 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readHexDigit (; 179 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readEscapedChar (; 180 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readString (; 181 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseKey (; 182 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseObject (; 183 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
  i32.const 2080
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
  i32.const 720
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_Array_String#pushArray (; 184 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3744
   i32.const 299
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
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseArray (; 185 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_String#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $model_near/__near_JSONHandler_Array_String#setString (; 186 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseString (; 187 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readString
  local.tee $1
  call $model_near/__near_JSONHandler_Array_String#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readAndAssert (; 188 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseBoolean (; 189 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseNumber (; 190 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readChar
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
 (func $model_near/__near_JSONHandler_Array_String#setNull (; 191 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseNull (; 192 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model_near/__near_JSONHandler_Array_String#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseValue (; 193 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#deserialize (; 194 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_Array_String (; 195 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_Array_String#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_String>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#push (; 196 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $model_near/__near_JSONHandler_Array_Array_String#pushObject (; 197 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $model_near/__near_decode_Array_String
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readHexDigit (; 198 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readEscapedChar (; 199 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readString (; 200 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseKey (; 201 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseObject (; 202 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_Array_String#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_Array_Array_String#pushArray (; 203 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3744
   i32.const 271
   i32.const 8
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
  call $model_near/__near_decode_Array_String
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseArray (; 204 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_Array_String#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseString (; 205 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readAndAssert (; 206 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseBoolean (; 207 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseNumber (; 208 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseNull (; 209 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseValue (; 210 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#deserialize (; 211 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_Array_Array_String (; 212 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_Array_Array_String#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_String>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<u32>#constructor (; 213 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $model_near/__near_JSONHandler_Array_u32#constructor (; 214 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 32
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#constructor (; 215 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 33
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar (; 216 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#isWhitespace (; 217 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar (; 218 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#skipWhitespace (; 219 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readHexDigit (; 220 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readEscapedChar (; 221 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readString (; 222 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseKey (; 223 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseObject (; 224 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
  i32.const 2080
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
  i32.const 720
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_Array_u32#pushArray (; 225 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3744
   i32.const 347
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
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseArray (; 226 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_u32#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseString (; 227 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readAndAssert (; 228 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseBoolean (; 229 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readAndAssert
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
 (func $~lib/array/Array<u32>#push (; 230 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $model_near/__near_JSONHandler_Array_u32#setInteger (; 231 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseNumber (; 232 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readChar
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
   call $model_near/__near_JSONHandler_Array_u32#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model_near/__near_JSONHandler_Array_u32#setNull (; 233 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseNull (; 234 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model_near/__near_JSONHandler_Array_u32#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseValue (; 235 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#deserialize (; 236 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_Array_u32 (; 237 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_Array_u32#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_u32>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model_near/__near_JSONHandler_Array_i32#constructor (; 238 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 34
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#constructor (; 239 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 35
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar (; 240 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#isWhitespace (; 241 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar (; 242 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#skipWhitespace (; 243 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readHexDigit (; 244 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readEscapedChar (; 245 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readString (; 246 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseKey (; 247 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseObject (; 248 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
  i32.const 2080
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
  i32.const 720
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_Array_i32#pushArray (; 249 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3744
   i32.const 383
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
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseArray (; 250 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_i32#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseString (; 251 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readAndAssert (; 252 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseBoolean (; 253 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readAndAssert
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
 (func $model_near/__near_JSONHandler_Array_i32#setInteger (; 254 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseNumber (; 255 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readChar
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
   call $model_near/__near_JSONHandler_Array_i32#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model_near/__near_JSONHandler_Array_i32#setNull (; 256 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseNull (; 257 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model_near/__near_JSONHandler_Array_i32#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseValue (; 258 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#deserialize (; 259 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_Array_i32 (; 260 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_Array_i32#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_i32>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#constructor (; 261 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 23
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
   i32.const 2272
   i32.const 2384
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
 (func $model_near/__near_JSONHandler_Array_Uint8Array#constructor (; 262 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 36
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#constructor (; 263 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 37
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar (; 264 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#isWhitespace (; 265 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar (; 266 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#skipWhitespace (; 267 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readHexDigit (; 268 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readEscapedChar (; 269 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readString (; 270 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseKey (; 271 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseObject (; 272 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 2080
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
  i32.const 720
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_Array_Uint8Array#pushArray (; 273 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3744
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
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseArray (; 274 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_Uint8Array#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/string/String#charAt (; 275 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 720
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
 (func $~lib/string/String#indexOf (; 276 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/near-runtime-ts/util/base64.getByte64 (; 277 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/typedarray/Uint8Array#__set (; 278 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1912
   i32.const 1968
   i32.const 127
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
 (func $~lib/near-runtime-ts/util/base64.decode (; 279 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#push (; 280 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $model_near/__near_JSONHandler_Array_Uint8Array#setString (; 281 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseString (; 282 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readString
  local.tee $1
  call $model_near/__near_JSONHandler_Array_Uint8Array#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readAndAssert (; 283 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseBoolean (; 284 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseNumber (; 285 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readChar
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
 (func $model_near/__near_JSONHandler_Array_Uint8Array#setNull (; 286 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseNull (; 287 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model_near/__near_JSONHandler_Array_Uint8Array#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseValue (; 288 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#deserialize (; 289 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_Array_Uint8Array (; 290 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_Array_Uint8Array#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Uint8Array>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model_near/__near_JSONHandler_FooBar#pushArray (; 291 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 3848
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
   call $model_near/__near_decode_Array_Array_String
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
  i32.const 3872
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
   call $model_near/__near_decode_Array_u32
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
  i32.const 3904
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
   call $model_near/__near_decode_Array_i32
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
  i32.const 3936
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
   call $model_near/__near_decode_Array_Uint8Array
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseArray (; 292 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_FooBar#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/util/string/isSpace (; 293 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 255
  i32.le_s
  if
   block $break|0
    block $case6|0
     block $case5|0
      block $case4|0
       block $case3|0
        block $case2|0
         block $case1|0
          block $case0|0
           local.get $0
           local.set $1
           local.get $1
           i32.const 9
           i32.eq
           br_if $case0|0
           local.get $1
           i32.const 10
           i32.eq
           br_if $case1|0
           local.get $1
           i32.const 11
           i32.eq
           br_if $case2|0
           local.get $1
           i32.const 12
           i32.eq
           br_if $case3|0
           local.get $1
           i32.const 13
           i32.eq
           br_if $case4|0
           local.get $1
           i32.const 32
           i32.eq
           br_if $case5|0
           local.get $1
           i32.const 160
           i32.eq
           br_if $case6|0
           br $break|0
          end
         end
        end
       end
      end
     end
    end
    i32.const 1
    return
   end
   i32.const 0
   return
  end
  local.get $0
  i32.const 8192
  i32.ge_s
  if (result i32)
   local.get $0
   i32.const 8202
   i32.le_s
  else   
   i32.const 0
  end
  if
   i32.const 1
   return
  end
  block $break|1
   block $case6|1
    block $case5|1
     block $case4|1
      block $case3|1
       block $case2|1
        block $case1|1
         block $case0|1
          local.get $0
          local.set $1
          local.get $1
          i32.const 5760
          i32.eq
          br_if $case0|1
          local.get $1
          i32.const 8232
          i32.eq
          br_if $case1|1
          local.get $1
          i32.const 8233
          i32.eq
          br_if $case2|1
          local.get $1
          i32.const 8239
          i32.eq
          br_if $case3|1
          local.get $1
          i32.const 8287
          i32.eq
          br_if $case4|1
          local.get $1
          i32.const 12288
          i32.eq
          br_if $case5|1
          local.get $1
          i32.const 65279
          i32.eq
          br_if $case6|1
          br $break|1
         end
        end
       end
      end
     end
    end
   end
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/util/string/strtol<i64> (; 294 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  i32.eqz
  if
   f64.const nan:0x8000000000000
   i64.trunc_f64_s
   local.set $3
   local.get $0
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $0
  local.set $4
  local.get $4
  i32.load16_u
  local.set $5
  i64.const 1
  local.set $6
  block $break|0
   loop $continue|0
    local.get $5
    call $~lib/util/string/isSpace
    i32.eqz
    br_if $break|0
    local.get $4
    i32.const 2
    i32.add
    local.tee $4
    i32.load16_u
    local.set $5
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $5
  i32.const 45
  i32.eq
  if
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.eqz
   if
    f64.const nan:0x8000000000000
    i64.trunc_f64_s
    local.set $3
    local.get $0
    call $~lib/rt/stub/__release
    local.get $3
    return
   end
   local.get $4
   i32.const 2
   i32.add
   local.tee $4
   i32.load16_u
   local.set $5
   i64.const -1
   local.set $6
  else   
   local.get $5
   i32.const 43
   i32.eq
   if
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.eqz
    if
     f64.const nan:0x8000000000000
     i64.trunc_f64_s
     local.set $3
     local.get $0
     call $~lib/rt/stub/__release
     local.get $3
     return
    end
    local.get $4
    i32.const 2
    i32.add
    local.tee $4
    i32.load16_u
    local.set $5
   end
  end
  local.get $1
  i32.eqz
  if
   local.get $5
   i32.const 48
   i32.eq
   if (result i32)
    local.get $2
    i32.const 2
    i32.gt_s
   else    
    i32.const 0
   end
   if
    block $break|1
     block $case6|1
      block $case5|1
       block $case4|1
        block $case3|1
         block $case2|1
          block $case1|1
           block $case0|1
            local.get $4
            i32.const 2
            i32.add
            i32.load16_u
            local.set $7
            local.get $7
            i32.const 66
            i32.eq
            br_if $case0|1
            local.get $7
            i32.const 98
            i32.eq
            br_if $case1|1
            local.get $7
            i32.const 79
            i32.eq
            br_if $case2|1
            local.get $7
            i32.const 111
            i32.eq
            br_if $case3|1
            local.get $7
            i32.const 88
            i32.eq
            br_if $case4|1
            local.get $7
            i32.const 120
            i32.eq
            br_if $case5|1
            br $case6|1
           end
          end
          local.get $4
          i32.const 4
          i32.add
          local.set $4
          local.get $2
          i32.const 2
          i32.sub
          local.set $2
          i32.const 2
          local.set $1
          br $break|1
         end
        end
        local.get $4
        i32.const 4
        i32.add
        local.set $4
        local.get $2
        i32.const 2
        i32.sub
        local.set $2
        i32.const 8
        local.set $1
        br $break|1
       end
      end
      local.get $4
      i32.const 4
      i32.add
      local.set $4
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      i32.const 16
      local.set $1
      br $break|1
     end
     i32.const 10
     local.set $1
    end
   else    
    i32.const 10
    local.set $1
   end
  else   
   local.get $1
   i32.const 2
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $1
    i32.const 36
    i32.gt_s
   end
   if
    f64.const nan:0x8000000000000
    i64.trunc_f64_s
    local.set $3
    local.get $0
    call $~lib/rt/stub/__release
    local.get $3
    return
   end
  end
  i64.const 0
  local.set $8
  block $break|2
   loop $continue|2
    local.get $2
    local.tee $7
    i32.const 1
    i32.sub
    local.set $2
    local.get $7
    i32.eqz
    br_if $break|2
    local.get $4
    i32.load16_u
    local.set $5
    local.get $5
    i32.const 48
    i32.ge_s
    if (result i32)
     local.get $5
     i32.const 57
     i32.le_s
    else     
     i32.const 0
    end
    if
     local.get $5
     i32.const 48
     i32.sub
     local.set $5
    else     
     local.get $5
     i32.const 65
     i32.ge_s
     if (result i32)
      local.get $5
      i32.const 90
      i32.le_s
     else      
      i32.const 0
     end
     if
      local.get $5
      i32.const 65
      i32.const 10
      i32.sub
      i32.sub
      local.set $5
     else      
      local.get $5
      i32.const 97
      i32.ge_s
      if (result i32)
       local.get $5
       i32.const 122
       i32.le_s
      else       
       i32.const 0
      end
      if
       local.get $5
       i32.const 97
       i32.const 10
       i32.sub
       i32.sub
       local.set $5
      else       
       br $break|2
      end
     end
    end
    local.get $5
    local.get $1
    i32.ge_s
    if
     br $break|2
    end
    local.get $8
    local.get $1
    i64.extend_i32_s
    i64.mul
    local.get $5
    i64.extend_i32_s
    i64.add
    local.set $8
    local.get $4
    i32.const 2
    i32.add
    local.set $4
    br $continue|2
   end
   unreachable
  end
  local.get $6
  local.get $8
  i64.mul
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/number/U64.parseInt (; 295 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i64>
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/number/I64.parseInt (; 296 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i64>
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/bignum/integer/u128/u128#constructor (; 297 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
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
 (func $~lib/array/Array<u8>#__unchecked_get (; 298 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (; 299 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 1912
   i32.const 2384
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__unchecked_get
 )
 (func $~lib/bignum/globals/__multi3 (; 300 ;) (type $FUNCSIG$vijjjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  local.get $1
  local.set $5
  local.get $3
  local.set $6
  local.get $5
  i64.const 4294967295
  i64.and
  local.set $9
  local.get $6
  i64.const 4294967295
  i64.and
  local.set $10
  local.get $9
  local.get $10
  i64.mul
  local.set $11
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $12
  local.get $5
  i64.const 32
  i64.shr_u
  local.set $5
  local.get $5
  local.get $10
  i64.mul
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  local.set $11
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $8
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $7
  local.get $6
  i64.const 32
  i64.shr_u
  local.set $6
  local.get $9
  local.get $6
  i64.mul
  local.get $8
  i64.add
  local.set $11
  local.get $12
  local.get $11
  i64.const 32
  i64.shl
  i64.add
  local.set $13
  local.get $5
  local.get $6
  i64.mul
  local.get $7
  i64.add
  local.set $14
  local.get $14
  local.get $2
  local.get $3
  i64.mul
  i64.add
  local.set $14
  local.get $14
  local.get $1
  local.get $4
  i64.mul
  i64.add
  local.set $14
  local.get $14
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  local.set $14
  local.get $13
  global.set $~lib/bignum/globals/__res128_lo
  local.get $14
  global.set $~lib/bignum/globals/__res128_hi
 )
 (func $~lib/bignum/utils/atou128 (; 301 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.eqz
  if
   i32.const 10
   local.set $1
  end
  local.get $1
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   local.get $0
   call $~lib/rt/stub/__release
   i32.const 4136
   i32.const 4184
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/bignum/integer/u128/u128#constructor
   local.tee $3
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $3
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $0
  i32.const 0
  call $~lib/string/String#charCodeAt
  local.set $5
  local.get $2
  i32.const 1
  i32.eq
  if (result i32)
   local.get $5
   i32.const 48
   i32.eq
  else   
   i32.const 0
  end
  if
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/bignum/integer/u128/u128#constructor
   local.tee $3
   call $~lib/rt/stub/__retain
   local.set $4
   local.get $3
   call $~lib/rt/stub/__release
   local.get $0
   call $~lib/rt/stub/__release
   local.get $4
   return
  end
  local.get $5
  i32.const 45
  i32.eq
  local.set $6
  local.get $6
  if (result i32)
   local.get $6
  else   
   local.get $5
   i32.const 43
   i32.eq
  end
  local.set $7
  local.get $0
  local.get $7
  call $~lib/string/String#charCodeAt
  i32.const 48
  i32.eq
  if
   local.get $0
   local.get $7
   i32.const 1
   i32.add
   local.tee $7
   call $~lib/string/String#charCodeAt
   local.set $3
   local.get $3
   i32.const 120
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $3
    i32.const 88
    i32.eq
   end
   if
    i32.const 16
    local.set $1
    local.get $7
    i32.const 1
    i32.add
    local.set $7
   else    
    local.get $3
    i32.const 111
    i32.eq
    if (result i32)
     i32.const 1
    else     
     local.get $3
     i32.const 79
     i32.eq
    end
    if
     i32.const 8
     local.set $1
     local.get $7
     i32.const 1
     i32.add
     local.set $7
    else     
     local.get $3
     i32.const 98
     i32.eq
     if (result i32)
      i32.const 1
     else      
      local.get $3
      i32.const 66
      i32.eq
     end
     if
      i32.const 2
      local.set $1
      local.get $7
      i32.const 1
      i32.add
      local.set $7
     end
    end
   end
  end
  i32.const 0
  i64.const 0
  i64.const 0
  call $~lib/bignum/integer/u128/u128#constructor
  local.tee $3
  call $~lib/rt/stub/__retain
  local.set $8
  global.get $~lib/bignum/utils/RadixCharsTable
  call $~lib/rt/stub/__retain
  local.set $9
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       local.get $1
       local.set $4
       local.get $4
       i32.const 2
       i32.eq
       br_if $case0|0
       local.get $4
       i32.const 10
       i32.eq
       br_if $case1|0
       local.get $4
       i32.const 16
       i32.eq
       br_if $case2|0
       br $case3|0
      end
      block $break|1
       loop $continue|1
        local.get $0
        local.get $7
        call $~lib/string/String#charCodeAt
        i32.const 48
        i32.sub
        local.set $4
        local.get $4
        i32.const 2
        i32.ge_u
        if
         br $break|1
        end
        local.get $8
        call $~lib/rt/stub/__retain
        local.set $11
        i32.const 1
        local.set $10
        local.get $10
        i32.const 127
        i32.and
        local.set $10
        local.get $10
        i64.extend_i32_s
        local.set $12
        local.get $12
        i64.const 127
        i64.add
        local.get $12
        i64.or
        i64.const 64
        i64.and
        i64.const 6
        i64.shr_u
        i64.const 1
        i64.sub
        local.set $13
        local.get $12
        i64.const 6
        i64.shr_u
        i64.const 1
        i64.sub
        local.set $14
        local.get $12
        i64.const 63
        i64.and
        local.set $12
        local.get $11
        i64.load
        local.set $15
        local.get $15
        local.get $12
        i64.shl
        local.set $16
        local.get $16
        local.get $14
        i64.const -1
        i64.xor
        i64.and
        local.set $17
        local.get $17
        local.get $11
        i64.load offset=8
        local.get $12
        i64.shl
        local.get $15
        i64.const 64
        local.get $12
        i64.sub
        i64.shr_u
        local.get $13
        i64.and
        i64.or
        local.get $14
        i64.and
        i64.or
        local.set $17
        i32.const 0
        local.get $16
        local.get $14
        i64.and
        local.get $17
        call $~lib/bignum/integer/u128/u128#constructor
        local.set $18
        local.get $11
        call $~lib/rt/stub/__release
        local.get $18
        local.tee $11
        local.tee $18
        local.get $8
        local.tee $10
        i32.ne
        if
         local.get $18
         call $~lib/rt/stub/__retain
         drop
         local.get $10
         call $~lib/rt/stub/__release
        end
        local.get $18
        local.set $8
        local.get $8
        call $~lib/rt/stub/__retain
        local.set $19
        local.get $4
        i64.extend_i32_u
        local.set $12
        i32.const 0
        local.get $12
        i64.const 0
        call $~lib/bignum/integer/u128/u128#constructor
        local.tee $18
        call $~lib/rt/stub/__retain
        local.set $10
        i32.const 0
        local.get $19
        i64.load
        local.get $10
        i64.load
        i64.or
        local.get $19
        i64.load offset=8
        local.get $10
        i64.load offset=8
        i64.or
        call $~lib/bignum/integer/u128/u128#constructor
        local.set $20
        local.get $10
        call $~lib/rt/stub/__release
        local.get $19
        call $~lib/rt/stub/__release
        local.get $20
        local.tee $19
        local.tee $20
        local.get $8
        local.tee $10
        i32.ne
        if
         local.get $20
         call $~lib/rt/stub/__retain
         drop
         local.get $10
         call $~lib/rt/stub/__release
        end
        local.get $20
        local.set $8
        local.get $7
        i32.const 1
        i32.add
        local.tee $7
        local.get $2
        i32.lt_s
        br_if $continue|1
       end
      end
      br $break|0
     end
     block $break|2
      loop $continue|2
       local.get $0
       local.get $7
       call $~lib/string/String#charCodeAt
       i32.const 48
       i32.sub
       local.set $19
       local.get $19
       i32.const 10
       i32.ge_u
       if
        br $break|2
       end
       local.get $8
       call $~lib/rt/stub/__retain
       local.set $20
       i32.const 3
       local.set $10
       local.get $10
       i32.const 127
       i32.and
       local.set $10
       local.get $10
       i64.extend_i32_s
       local.set $12
       local.get $12
       i64.const 127
       i64.add
       local.get $12
       i64.or
       i64.const 64
       i64.and
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $17
       local.get $12
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $16
       local.get $12
       i64.const 63
       i64.and
       local.set $12
       local.get $20
       i64.load
       local.set $15
       local.get $15
       local.get $12
       i64.shl
       local.set $14
       local.get $14
       local.get $16
       i64.const -1
       i64.xor
       i64.and
       local.set $13
       local.get $13
       local.get $20
       i64.load offset=8
       local.get $12
       i64.shl
       local.get $15
       i64.const 64
       local.get $12
       i64.sub
       i64.shr_u
       local.get $17
       i64.and
       i64.or
       local.get $16
       i64.and
       i64.or
       local.set $13
       i32.const 0
       local.get $14
       local.get $16
       i64.and
       local.get $13
       call $~lib/bignum/integer/u128/u128#constructor
       local.set $18
       local.get $20
       call $~lib/rt/stub/__release
       local.get $18
       local.tee $20
       call $~lib/rt/stub/__retain
       local.set $21
       local.get $8
       call $~lib/rt/stub/__retain
       local.set $11
       i32.const 1
       local.set $4
       local.get $4
       i32.const 127
       i32.and
       local.set $4
       local.get $4
       i64.extend_i32_s
       local.set $13
       local.get $13
       i64.const 127
       i64.add
       local.get $13
       i64.or
       i64.const 64
       i64.and
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $14
       local.get $13
       i64.const 6
       i64.shr_u
       i64.const 1
       i64.sub
       local.set $15
       local.get $13
       i64.const 63
       i64.and
       local.set $13
       local.get $11
       i64.load
       local.set $16
       local.get $16
       local.get $13
       i64.shl
       local.set $17
       local.get $17
       local.get $15
       i64.const -1
       i64.xor
       i64.and
       local.set $12
       local.get $12
       local.get $11
       i64.load offset=8
       local.get $13
       i64.shl
       local.get $16
       i64.const 64
       local.get $13
       i64.sub
       i64.shr_u
       local.get $14
       i64.and
       i64.or
       local.get $15
       i64.and
       i64.or
       local.set $12
       i32.const 0
       local.get $17
       local.get $15
       i64.and
       local.get $12
       call $~lib/bignum/integer/u128/u128#constructor
       local.set $10
       local.get $11
       call $~lib/rt/stub/__release
       local.get $10
       local.tee $11
       call $~lib/rt/stub/__retain
       local.set $18
       local.get $18
       i64.load
       local.set $12
       local.get $21
       i64.load
       local.get $12
       i64.add
       local.set $17
       local.get $21
       i64.load offset=8
       local.get $18
       i64.load offset=8
       i64.add
       local.get $17
       local.get $12
       i64.lt_u
       i64.extend_i32_u
       i64.add
       local.set $16
       i32.const 0
       local.get $17
       local.get $16
       call $~lib/bignum/integer/u128/u128#constructor
       local.set $4
       local.get $18
       call $~lib/rt/stub/__release
       local.get $21
       call $~lib/rt/stub/__release
       local.get $4
       local.tee $21
       local.tee $10
       local.get $8
       local.tee $18
       i32.ne
       if
        local.get $10
        call $~lib/rt/stub/__retain
        drop
        local.get $18
        call $~lib/rt/stub/__release
       end
       local.get $10
       local.set $8
       local.get $8
       call $~lib/rt/stub/__retain
       local.set $18
       local.get $19
       i64.extend_i32_u
       local.set $13
       i32.const 0
       local.get $13
       i64.const 0
       call $~lib/bignum/integer/u128/u128#constructor
       local.tee $10
       call $~lib/rt/stub/__retain
       local.set $4
       local.get $4
       i64.load
       local.set $13
       local.get $18
       i64.load
       local.get $13
       i64.add
       local.set $16
       local.get $18
       i64.load offset=8
       local.get $4
       i64.load offset=8
       i64.add
       local.get $16
       local.get $13
       i64.lt_u
       i64.extend_i32_u
       i64.add
       local.set $17
       i32.const 0
       local.get $16
       local.get $17
       call $~lib/bignum/integer/u128/u128#constructor
       local.set $22
       local.get $4
       call $~lib/rt/stub/__release
       local.get $18
       call $~lib/rt/stub/__release
       local.get $22
       local.tee $18
       local.tee $22
       local.get $8
       local.tee $4
       i32.ne
       if
        local.get $22
        call $~lib/rt/stub/__retain
        drop
        local.get $4
        call $~lib/rt/stub/__release
       end
       local.get $22
       local.set $8
       local.get $7
       i32.const 1
       i32.add
       local.tee $7
       local.get $2
       i32.lt_s
       br_if $continue|2
      end
     end
     br $break|0
    end
    block $break|3
     loop $continue|3
      local.get $0
      local.get $7
      call $~lib/string/String#charCodeAt
      i32.const 48
      i32.sub
      local.set $18
      local.get $18
      i32.const 74
      i32.gt_u
      if
       br $break|3
      end
      local.get $9
      local.get $18
      call $~lib/array/Array<u8>#__get
      local.set $10
      local.get $10
      i32.const 16
      i32.ge_u
      if
       br $break|3
      end
      local.get $8
      call $~lib/rt/stub/__retain
      local.set $22
      i32.const 4
      local.set $4
      local.get $4
      i32.const 127
      i32.and
      local.set $4
      local.get $4
      i64.extend_i32_s
      local.set $17
      local.get $17
      i64.const 127
      i64.add
      local.get $17
      i64.or
      i64.const 64
      i64.and
      i64.const 6
      i64.shr_u
      i64.const 1
      i64.sub
      local.set $16
      local.get $17
      i64.const 6
      i64.shr_u
      i64.const 1
      i64.sub
      local.set $13
      local.get $17
      i64.const 63
      i64.and
      local.set $17
      local.get $22
      i64.load
      local.set $12
      local.get $12
      local.get $17
      i64.shl
      local.set $15
      local.get $15
      local.get $13
      i64.const -1
      i64.xor
      i64.and
      local.set $14
      local.get $14
      local.get $22
      i64.load offset=8
      local.get $17
      i64.shl
      local.get $12
      i64.const 64
      local.get $17
      i64.sub
      i64.shr_u
      local.get $16
      i64.and
      i64.or
      local.get $13
      i64.and
      i64.or
      local.set $14
      i32.const 0
      local.get $15
      local.get $13
      i64.and
      local.get $14
      call $~lib/bignum/integer/u128/u128#constructor
      local.set $21
      local.get $22
      call $~lib/rt/stub/__release
      local.get $21
      local.tee $22
      local.tee $19
      local.get $8
      local.tee $4
      i32.ne
      if
       local.get $19
       call $~lib/rt/stub/__retain
       drop
       local.get $4
       call $~lib/rt/stub/__release
      end
      local.get $19
      local.set $8
      local.get $8
      call $~lib/rt/stub/__retain
      local.set $11
      local.get $10
      i64.extend_i32_u
      local.set $17
      i32.const 0
      local.get $17
      i64.const 0
      call $~lib/bignum/integer/u128/u128#constructor
      local.tee $19
      call $~lib/rt/stub/__retain
      local.set $20
      i32.const 0
      local.get $11
      i64.load
      local.get $20
      i64.load
      i64.or
      local.get $11
      i64.load offset=8
      local.get $20
      i64.load offset=8
      i64.or
      call $~lib/bignum/integer/u128/u128#constructor
      local.set $4
      local.get $20
      call $~lib/rt/stub/__release
      local.get $11
      call $~lib/rt/stub/__release
      local.get $4
      local.tee $11
      local.tee $21
      local.get $8
      local.tee $20
      i32.ne
      if
       local.get $21
       call $~lib/rt/stub/__retain
       drop
       local.get $20
       call $~lib/rt/stub/__release
      end
      local.get $21
      local.set $8
      local.get $7
      i32.const 1
      i32.add
      local.tee $7
      local.get $2
      i32.lt_s
      br_if $continue|3
     end
    end
    br $break|0
   end
   local.get $1
   i64.extend_i32_s
   local.set $16
   i32.const 0
   local.get $16
   i64.const 0
   call $~lib/bignum/integer/u128/u128#constructor
   local.set $11
   block $break|4
    loop $continue|4
     local.get $0
     local.get $7
     call $~lib/string/String#charCodeAt
     i32.const 48
     i32.sub
     local.set $19
     local.get $19
     i32.const 74
     i32.gt_u
     if
      br $break|4
     end
     local.get $9
     local.get $19
     call $~lib/array/Array<u8>#__get
     local.set $22
     local.get $22
     local.get $1
     i32.const 255
     i32.and
     i32.ge_u
     if
      br $break|4
     end
     local.get $8
     call $~lib/rt/stub/__retain
     local.set $20
     local.get $11
     call $~lib/rt/stub/__retain
     local.set $4
     i32.const 0
     local.get $20
     i64.load
     local.get $20
     i64.load offset=8
     local.get $4
     i64.load
     local.get $4
     i64.load offset=8
     call $~lib/bignum/globals/__multi3
     i32.const 0
     global.get $~lib/bignum/globals/__res128_lo
     global.get $~lib/bignum/globals/__res128_hi
     call $~lib/bignum/integer/u128/u128#constructor
     local.set $10
     local.get $4
     call $~lib/rt/stub/__release
     local.get $20
     call $~lib/rt/stub/__release
     local.get $10
     local.tee $20
     local.tee $21
     local.get $8
     local.tee $4
     i32.ne
     if
      local.get $21
      call $~lib/rt/stub/__retain
      drop
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $21
     local.set $8
     local.get $8
     call $~lib/rt/stub/__retain
     local.set $10
     local.get $22
     i64.extend_i32_u
     local.set $13
     i32.const 0
     local.get $13
     i64.const 0
     call $~lib/bignum/integer/u128/u128#constructor
     local.tee $21
     call $~lib/rt/stub/__retain
     local.set $18
     local.get $18
     i64.load
     local.set $13
     local.get $10
     i64.load
     local.get $13
     i64.add
     local.set $16
     local.get $10
     i64.load offset=8
     local.get $18
     i64.load offset=8
     i64.add
     local.get $16
     local.get $13
     i64.lt_u
     i64.extend_i32_u
     i64.add
     local.set $17
     i32.const 0
     local.get $16
     local.get $17
     call $~lib/bignum/integer/u128/u128#constructor
     local.set $4
     local.get $18
     call $~lib/rt/stub/__release
     local.get $10
     call $~lib/rt/stub/__release
     local.get $4
     local.tee $10
     local.tee $4
     local.get $8
     local.tee $18
     i32.ne
     if
      local.get $4
      call $~lib/rt/stub/__retain
      drop
      local.get $18
      call $~lib/rt/stub/__release
     end
     local.get $4
     local.set $8
     local.get $7
     i32.const 1
     i32.add
     local.tee $7
     local.get $2
     i32.lt_s
     br_if $continue|4
    end
   end
   local.get $11
   call $~lib/rt/stub/__release
   br $break|0
  end
  local.get $6
  if (result i32)
   local.get $8
   local.set $18
   local.get $18
   i64.load
   i64.const -1
   i64.xor
   local.set $17
   local.get $18
   i64.load offset=8
   i64.const -1
   i64.xor
   local.set $16
   local.get $17
   i64.const 1
   i64.and
   local.get $17
   i64.const 1
   i64.shr_u
   i64.add
   i64.const 63
   i64.shr_u
   local.set $13
   i32.const 0
   local.get $17
   i64.const 1
   i64.add
   local.get $16
   local.get $13
   i64.add
   call $~lib/bignum/integer/u128/u128#constructor
   local.tee $18
   local.tee $11
  else   
   local.get $8
   call $~lib/rt/stub/__retain
   local.tee $10
  end
  call $~lib/rt/stub/__retain
  local.set $18
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $18
 )
 (func $model_near/__near_JSONHandler_FooBar#setString (; 302 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 3976
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.const 0
   call $~lib/number/U64.parseInt
   i64.store offset=8
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4008
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.const 0
   call $~lib/number/I64.parseInt
   i64.store offset=16
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4040
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
  i32.const 4064
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $2
   call $~lib/near-runtime-ts/util/base64.decode
   local.set $3
   local.get $4
   i32.load offset=32
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=32
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4104
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $4
   i32.const 0
   local.set $3
   local.get $4
   local.get $3
   call $~lib/bignum/utils/atou128
   local.set $5
   local.get $4
   call $~lib/rt/stub/__release
   local.get $5
   local.set $5
   local.get $3
   i32.load offset=48
   call $~lib/rt/stub/__release
   local.get $5
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseString (; 303 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readString
  local.tee $1
  call $model_near/__near_JSONHandler_FooBar#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readAndAssert (; 304 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $model_near/__near_JSONHandler_FooBar#setBoolean (; 305 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4368
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseBoolean (; 306 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $model_near/__near_JSONHandler_FooBar#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $model_near/__near_JSONHandler_FooBar#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model_near/__near_JSONHandler_FooBar#setInteger (; 307 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4392
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
  i32.const 4416
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseNumber (; 308 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readChar
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
   call $model_near/__near_JSONHandler_FooBar#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model_near/__near_JSONHandler_FooBar#setNull (; 309 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4392
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   i32.const 0
   i32.store
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4416
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   i32.const 0
   i32.store offset=4
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 3976
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   i32.const 0
   i64.extend_i32_u
   i64.store offset=8
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4008
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   i32.const 0
   i64.extend_i32_u
   i64.store offset=16
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4368
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   i32.const 0
   i32.store8 offset=24
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4040
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load offset=28
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
   i32.store offset=28
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4064
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.const 0
   local.tee $2
   local.get $3
   i32.load offset=32
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
   i32.store offset=32
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 3848
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
  i32.const 3872
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
  i32.const 3904
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
  i32.const 4104
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.const 0
   local.tee $2
   local.get $3
   i32.load offset=48
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
   i32.store offset=48
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 3936
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load offset=52
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseNull (; 310 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model_near/__near_JSONHandler_FooBar#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseValue (; 311 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#deserialize (; 312 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_FooBar (; 313 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   call $model_near/FooBar#constructor
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_FooBar#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_FooBar>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model_near/__near_JSONHandler_ContainerClass#pushObject (; 314 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 3744
    i32.const 482
    i32.const 6
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
    i32.const 3744
    i32.const 486
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.const 3792
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
   call $model_near/__near_decode_FooBar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readHexDigit (; 315 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readEscapedChar (; 316 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readString (; 317 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseKey (; 318 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseObject (; 319 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_ContainerClass#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_ContainerClass#pushArray (; 320 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseArray (; 321 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_ContainerClass#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseString (; 322 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readAndAssert (; 323 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseBoolean (; 324 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseNumber (; 325 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readChar
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
 (func $model_near/__near_JSONHandler_ContainerClass#setNull (; 326 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 3792
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseNull (; 327 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model_near/__near_JSONHandler_ContainerClass#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseValue (; 328 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#deserialize (; 329 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_ContainerClass (; 330 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   call $model_near/ContainerClass#constructor
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_ContainerClass#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_ContainerClass>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $main_near/__near_ArgsParser_rewrapFoobar#pushObject (; 331 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 1608
    i32.const 138
    i32.const 6
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
    i32.const 1608
    i32.const 142
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.const 3704
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
   call $model_near/__near_decode_ContainerClass
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
 (func $main_near/__near_ArgsParser_rewrapFoobar#constructor (; 332 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 18
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#constructor (; 333 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar (; 334 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#isWhitespace (; 335 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar (; 336 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#skipWhitespace (; 337 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readHexDigit (; 338 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readEscapedChar (; 339 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readString (; 340 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseKey (; 341 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseObject (; 342 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_rewrapFoobar#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseArray (; 343 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_rewrapFoobar#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseString (; 344 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readAndAssert (; 345 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseBoolean (; 346 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseNumber (; 347 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseNull (; 348 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main_near/__near_ArgsParser_rewrapFoobar#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseValue (; 349 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#deserialize (; 350 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/AnotherContainerClass#constructor (; 351 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 39
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $main/rewrapFoobar (; 352 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  call $model_near/AnotherContainerClass#constructor
  local.set $1
  local.get $1
  local.tee $3
  i32.const 1
  i32.const 2
  i32.const 41
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $2
  local.get $2
  i32.load offset=4
  local.set $3
  local.get $3
  i32.const 1
  i32.const 2
  i32.const 40
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject (; 353 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 2080
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray (; 354 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
  local.get $0
  i32.const 3080
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
 (func $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#get:length (; 355 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#__unchecked_get (; 356 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#__get (; 357 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2272
   i32.const 2384
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
   i32.const 1912
   i32.const 2384
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#__unchecked_get
 )
 (func $~lib/array/Array<model_near/FooBar>#get:length (; 358 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<model_near/FooBar>#__unchecked_get (; 359 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<model_near/FooBar>#__get (; 360 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2272
   i32.const 2384
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
   i32.const 1912
   i32.const 2384
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<model_near/FooBar>#__unchecked_get
 )
 (func $~lib/util/number/utoa64 (; 361 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/itoa<u64> (; 362 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/utoa64
  return
 )
 (func $~lib/number/U64#toString (; 363 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setString (; 364 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeBoolean (; 365 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setBoolean (; 366 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#setNull (; 367 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/near-runtime-ts/util/base64.encode (; 368 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 720
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
  i32.const 720
  call $~lib/array/Array<~lib/string/String>#join
  local.set $6
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#get:length (; 369 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__unchecked_get (; 370 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__get (; 371 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2272
   i32.const 2384
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
   i32.const 1912
   i32.const 2384
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__unchecked_get
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_get (; 372 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 373 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2272
   i32.const 2384
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
   i32.const 1912
   i32.const 2384
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__unchecked_get
 )
 (func $model_near/__near_encode_Array_String (; 374 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i32>#pop (; 375 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 4472
   i32.const 2384
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popArray (; 376 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 3104
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $model_near/__near_encode_Array_Array_String (; 377 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
     call $model_near/__near_encode_Array_String
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
 (func $~lib/array/Array<u32>#get:length (; 378 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__unchecked_get (; 379 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (; 380 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1912
   i32.const 2384
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__unchecked_get
 )
 (func $model_near/__near_encode_Array_u32 (; 381 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $model_near/__near_encode_Array_i32 (; 382 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/typedarray/Int8Array#constructor (; 383 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 42
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#get:length (; 384 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
 )
 (func $~lib/typedarray/Int8Array#__get (; 385 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1912
   i32.const 1968
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
 (func $~lib/typedarray/Int8Array#__set (; 386 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1912
   i32.const 1968
   i32.const 33
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
 (func $~lib/bignum/utils/processU64 (; 387 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
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
 (func $~lib/bignum/utils/u128toa10 (; 388 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const 720
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
 (func $~lib/bignum/integer/u128/u128#toString (; 389 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 4520
   i32.const 4616
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
  i32.const 720
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
  i32.const 4688
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#get:length (; 390 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_get (; 391 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/typedarray/Uint8Array>#__get (; 392 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2272
   i32.const 2384
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
   i32.const 1912
   i32.const 2384
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/typedarray/Uint8Array>#__unchecked_get
 )
 (func $model_near/__near_encode_Array_Uint8Array (; 393 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $model_near/__near_encode_FooBar (; 394 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  i32.const 4392
  local.get $0
  i32.load
  i64.extend_i32_s
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $1
  i32.const 4416
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $1
  i32.const 3976
  local.get $0
  i64.load offset=8
  call $~lib/number/U64#toString
  local.tee $2
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $1
  i32.const 4008
  local.get $0
  i64.load offset=16
  call $~lib/number/I64#toString
  local.tee $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  local.get $1
  i32.const 4368
  local.get $0
  i32.load8_u offset=24
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setBoolean
  local.get $0
  i32.load offset=28
  i32.const 0
  call $~lib/string/String.__ne
  if
   local.get $1
   i32.const 4040
   local.get $0
   i32.load offset=28
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  else   
   local.get $1
   i32.const 4040
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=32
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 4064
   local.get $0
   i32.load offset=32
   call $~lib/near-runtime-ts/util/base64.encode
   local.tee $4
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
   local.get $4
   call $~lib/rt/stub/__release
  else   
   local.get $1
   i32.const 4064
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=36
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 3848
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $0
   i32.load offset=36
   local.get $1
   call $model_near/__near_encode_Array_Array_String
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $1
   i32.const 3848
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=40
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 3872
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $0
   i32.load offset=40
   local.get $1
   call $model_near/__near_encode_Array_u32
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $1
   i32.const 3872
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=44
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 3904
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $0
   i32.load offset=44
   local.get $1
   call $model_near/__near_encode_Array_i32
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $1
   i32.const 3904
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=48
  call $~lib/rt/stub/__retain
  local.set $5
  i32.const 0
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
   i32.const 4104
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
   i32.const 4104
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=52
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 3936
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $0
   i32.load offset=52
   local.get $1
   call $model_near/__near_encode_Array_Uint8Array
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $1
   i32.const 3936
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
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#popObject (; 395 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 2104
  call $~lib/assemblyscript-json/encoder/JSONEncoder#write
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#pop
  drop
 )
 (func $model_near/__near_encode_Array_FooBar (; 396 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/array/Array<model_near/FooBar>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/array/Array<model_near/FooBar>#__get
    local.tee $3
    i32.const 0
    i32.ne
    if
     local.get $1
     i32.const 0
     call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
     drop
     local.get $0
     local.get $2
     call $~lib/array/Array<model_near/FooBar>#__get
     local.tee $4
     local.get $1
     call $model_near/__near_encode_FooBar
     local.get $1
     call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
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
 (func $model_near/__near_encode_Array_Array_FooBar (; 397 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#__get
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
     call $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#__get
     local.tee $4
     local.get $1
     call $model_near/__near_encode_Array_FooBar
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
 (func $model_near/__near_encode_AnotherContainerClass (; 398 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 4440
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $0
   i32.load
   local.get $1
   call $model_near/__near_encode_Array_Array_FooBar
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $1
   i32.const 4440
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $main_near/rewrapFoobar (; 399 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/near-runtime-ts/storage/storage
  i32.const 4
  i32.const 0
  i32.const 0
  call $~lib/near-runtime-ts/storage/Storage#_internalReadBytes
  local.tee $0
  if (result i32)
   local.get $0
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  call $main_near/__near_ArgsParser_rewrapFoobar#constructor
  local.set $1
  local.get $1
  local.tee $2
  local.get $0
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
  local.tee $3
  i32.const 0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#constructor
  local.set $2
  local.get $3
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=4
  local.get $1
  i32.load offset=4
  local.get $0
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_rewrapFoobar>#deserialize
  local.get $1
  i32.load offset=12
  call $main/rewrapFoobar
  local.set $2
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $3
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $3
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
   drop
   local.get $2
   local.get $3
   call $model_near/__near_encode_AnotherContainerClass
   local.get $3
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  else   
   local.get $3
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  call $main_near/return_value
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
 (func $main_near/__near_ArgsParser_unwrapFoobar#setNull (; 400 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 3704
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
 (func $main_near/__near_ArgsParser_unwrapFoobar#pushArray (; 401 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $model_near/__near_JSONHandler_AnotherContainerClass#constructor (; 402 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 45
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#constructor (; 403 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar (; 404 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#isWhitespace (; 405 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar (; 406 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#skipWhitespace (; 407 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model_near/__near_JSONHandler_AnotherContainerClass#pushObject (; 408 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 3744
    i32.const 573
    i32.const 6
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
    i32.const 3744
    i32.const 577
    i32.const 6
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readHexDigit (; 409 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readEscapedChar (; 410 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readString (; 411 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseKey (; 412 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseObject (; 413 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_AnotherContainerClass#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#constructor (; 414 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 41
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
   i32.const 2272
   i32.const 2384
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
 (func $model_near/__near_JSONHandler_Array_Array_FooBar#constructor (; 415 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#constructor (; 416 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar (; 417 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#isWhitespace (; 418 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar (; 419 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace (; 420 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<model_near/FooBar>#constructor (; 421 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 40
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
   i32.const 2272
   i32.const 2384
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
 (func $model_near/__near_JSONHandler_Array_FooBar#constructor (; 422 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#constructor (; 423 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar (; 424 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#isWhitespace (; 425 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar (; 426 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#skipWhitespace (; 427 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<model_near/FooBar>#push (; 428 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $model_near/__near_JSONHandler_Array_FooBar#pushObject (; 429 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $model_near/__near_decode_FooBar
  local.tee $2
  call $~lib/array/Array<model_near/FooBar>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readHexDigit (; 430 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readEscapedChar (; 431 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readString (; 432 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseKey (; 433 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseObject (; 434 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_FooBar#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_Array_FooBar#pushArray (; 435 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3744
   i32.const 635
   i32.const 8
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
  call $model_near/__near_decode_FooBar
  local.tee $2
  call $~lib/array/Array<model_near/FooBar>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseArray (; 436 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_FooBar#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseString (; 437 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readAndAssert (; 438 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseBoolean (; 439 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseNumber (; 440 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseNull (; 441 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseValue (; 442 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#deserialize (; 443 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_Array_FooBar (; 444 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   call $~lib/array/Array<model_near/FooBar>#constructor
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_Array_FooBar#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_FooBar>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#push (; 445 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $model_near/__near_JSONHandler_Array_Array_FooBar#pushObject (; 446 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $model_near/__near_decode_Array_FooBar
  local.tee $2
  call $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readHexDigit (; 447 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readEscapedChar (; 448 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readString (; 449 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseKey (; 450 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseObject (; 451 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_Array_FooBar#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_Array_Array_FooBar#pushArray (; 452 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3744
   i32.const 609
   i32.const 8
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
  call $model_near/__near_decode_Array_FooBar
  local.tee $2
  call $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseArray (; 453 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_Array_FooBar#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseString (; 454 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readAndAssert (; 455 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseBoolean (; 456 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseNumber (; 457 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseNull (; 458 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseValue (; 459 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#deserialize (; 460 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_Array_Array_FooBar (; 461 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   call $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#constructor
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_Array_Array_FooBar#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_Array_FooBar>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model_near/__near_JSONHandler_AnotherContainerClass#pushArray (; 462 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4440
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
   call $model_near/__near_decode_Array_Array_FooBar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseArray (; 463 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_AnotherContainerClass#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseString (; 464 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readAndAssert (; 465 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseBoolean (; 466 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseNumber (; 467 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readChar
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
 (func $model_near/__near_JSONHandler_AnotherContainerClass#setNull (; 468 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4440
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseNull (; 469 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model_near/__near_JSONHandler_AnotherContainerClass#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseValue (; 470 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#deserialize (; 471 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_AnotherContainerClass (; 472 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   call $model_near/AnotherContainerClass#constructor
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_AnotherContainerClass#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_AnotherContainerClass>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $main_near/__near_ArgsParser_unwrapFoobar#pushObject (; 473 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 1608
    i32.const 201
    i32.const 6
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
    i32.const 1608
    i32.const 205
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.const 3704
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
   call $model_near/__near_decode_AnotherContainerClass
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
 (func $main_near/__near_ArgsParser_unwrapFoobar#constructor (; 474 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 43
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#constructor (; 475 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 44
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar (; 476 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#isWhitespace (; 477 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar (; 478 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#skipWhitespace (; 479 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readHexDigit (; 480 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readEscapedChar (; 481 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readString (; 482 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseKey (; 483 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseObject (; 484 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_unwrapFoobar#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseArray (; 485 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_unwrapFoobar#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseString (; 486 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readAndAssert (; 487 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseBoolean (; 488 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseNumber (; 489 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseNull (; 490 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main_near/__near_ArgsParser_unwrapFoobar#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseValue (; 491 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#deserialize (; 492 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $main/unwrapFoobar (; 493 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.load
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<model_near/FooBar>>#__get
  local.tee $1
  i32.const 0
  call $~lib/array/Array<model_near/FooBar>#__get
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $main_near/unwrapFoobar (; 494 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/near-runtime-ts/storage/storage
  i32.const 4
  i32.const 0
  i32.const 0
  call $~lib/near-runtime-ts/storage/Storage#_internalReadBytes
  local.tee $0
  if (result i32)
   local.get $0
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  call $main_near/__near_ArgsParser_unwrapFoobar#constructor
  local.set $1
  local.get $1
  local.tee $2
  local.get $0
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
  local.tee $3
  i32.const 0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#constructor
  local.set $2
  local.get $3
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=4
  local.get $1
  i32.load offset=4
  local.get $0
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_unwrapFoobar>#deserialize
  local.get $1
  i32.load offset=12
  call $main/unwrapFoobar
  local.set $2
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $3
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $3
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
   drop
   local.get $2
   local.get $3
   call $model_near/__near_encode_FooBar
   local.get $3
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  else   
   local.get $3
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  call $main_near/return_value
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
 (func $main_near/__near_ArgsParser_getStringArrayLength#setNull (; 495 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 3848
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
 (func $main_near/__near_ArgsParser_getStringArrayLength#pushArray (; 496 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 3848
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
   call $model_near/__near_decode_Array_String
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
 (func $main_near/__near_ArgsParser_getStringArrayLength#pushObject (; 497 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 1608
    i32.const 264
    i32.const 6
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
    i32.const 1608
    i32.const 268
    i32.const 6
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
 (func $main_near/__near_ArgsParser_getStringArrayLength#constructor (; 498 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 51
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#constructor (; 499 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 52
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar (; 500 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#isWhitespace (; 501 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar (; 502 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#skipWhitespace (; 503 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readHexDigit (; 504 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readEscapedChar (; 505 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readString (; 506 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseKey (; 507 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseObject (; 508 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_getStringArrayLength#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseArray (; 509 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_getStringArrayLength#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseString (; 510 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readAndAssert (; 511 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseBoolean (; 512 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseNumber (; 513 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseNull (; 514 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main_near/__near_ArgsParser_getStringArrayLength#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseValue (; 515 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#deserialize (; 516 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $~lib/util/number/itoa_stream<i32> (; 517 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#join_int (; 518 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 720
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
 (func $~lib/array/Array<i32>#join (; 519 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<i32>#toString (; 520 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 2128
  call $~lib/array/Array<i32>#join
 )
 (func $~lib/near-runtime-ts/util/toString<~lib/array/Array<i32>> (; 521 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/near-runtime-ts/near/near.str<i32> (; 522 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  i32.const 2
  i32.const 14
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
 (func $~lib/near-runtime-ts/near/near.log (; 523 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/near-runtime-ts/imports/_near_log
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $main/getStringArrayLength (; 524 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 4728
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
 (func $main_near/getStringArrayLength (; 525 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/near-runtime-ts/storage/storage
  i32.const 4
  i32.const 0
  i32.const 0
  call $~lib/near-runtime-ts/storage/Storage#_internalReadBytes
  local.tee $0
  if (result i32)
   local.get $0
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  call $main_near/__near_ArgsParser_getStringArrayLength#constructor
  local.set $1
  local.get $1
  local.tee $2
  local.get $0
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
  local.tee $3
  i32.const 0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#constructor
  local.set $2
  local.get $3
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=4
  local.get $1
  i32.load offset=4
  local.get $0
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_getStringArrayLength>#deserialize
  local.get $1
  i32.load offset=12
  call $main/getStringArrayLength
  local.set $2
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $3
  local.get $3
  i32.const 0
  local.get $2
  i64.extend_i32_s
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setInteger
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  call $main_near/return_value
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
 )
 (func $main_near/__near_ArgsParser_convertFoobars#setNull (; 526 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4440
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
 (func $main_near/__near_ArgsParser_convertFoobars#pushArray (; 527 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4440
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
   call $model_near/__near_decode_Array_FooBar
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
 (func $main_near/__near_ArgsParser_convertFoobars#pushObject (; 528 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 1608
    i32.const 320
    i32.const 6
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
    i32.const 1608
    i32.const 324
    i32.const 6
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
 (func $~lib/array/Array<model_near/ContainerClass>#get:length (; 529 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<model_near/ContainerClass>#__unchecked_get (; 530 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<model_near/ContainerClass>#__get (; 531 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2272
   i32.const 2384
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
   i32.const 1912
   i32.const 2384
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<model_near/ContainerClass>#__unchecked_get
 )
 (func $model_near/__near_encode_ContainerClass (; 532 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 3792
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
   drop
   local.get $0
   i32.load
   local.get $1
   call $model_near/__near_encode_FooBar
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  else   
   local.get $1
   i32.const 3792
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $main_near/__near_encode_Array_ContainerClass (; 533 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/array/Array<model_near/ContainerClass>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/array/Array<model_near/ContainerClass>#__get
    local.tee $3
    i32.const 0
    i32.ne
    if
     local.get $1
     i32.const 0
     call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
     drop
     local.get $0
     local.get $2
     call $~lib/array/Array<model_near/ContainerClass>#__get
     local.tee $4
     local.get $1
     call $model_near/__near_encode_ContainerClass
     local.get $1
     call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
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
 (func $main_near/__near_ArgsParser_convertFoobars#constructor (; 534 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 53
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#constructor (; 535 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 54
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar (; 536 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#isWhitespace (; 537 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar (; 538 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#skipWhitespace (; 539 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readHexDigit (; 540 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readEscapedChar (; 541 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readString (; 542 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseKey (; 543 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseObject (; 544 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_convertFoobars#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseArray (; 545 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_convertFoobars#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseString (; 546 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readAndAssert (; 547 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseBoolean (; 548 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseNumber (; 549 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseNull (; 550 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main_near/__near_ArgsParser_convertFoobars#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseValue (; 551 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#deserialize (; 552 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $main/convertFoobars~anonymous|0 (; 553 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  i32.const 4
  i32.const 20
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
 (func $~lib/array/Array<model_near/FooBar>#map<model_near/ContainerClass> (; 554 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 55
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
 (func $main/convertFoobars (; 555 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 1
  call $~lib/array/Array<model_near/FooBar>#map<model_near/ContainerClass>
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $main_near/convertFoobars (; 556 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/near-runtime-ts/storage/storage
  i32.const 4
  i32.const 0
  i32.const 0
  call $~lib/near-runtime-ts/storage/Storage#_internalReadBytes
  local.tee $0
  if (result i32)
   local.get $0
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  call $main_near/__near_ArgsParser_convertFoobars#constructor
  local.set $1
  local.get $1
  local.tee $2
  local.get $0
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
  local.tee $3
  i32.const 0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#constructor
  local.set $2
  local.get $3
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=4
  local.get $1
  i32.load offset=4
  local.get $0
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_convertFoobars>#deserialize
  local.get $1
  i32.load offset=12
  call $main/convertFoobars
  local.set $2
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $3
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $3
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $2
   local.get $3
   call $main_near/__near_encode_Array_ContainerClass
   local.get $3
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $3
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  call $main_near/return_value
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
 (func $main_near/__near_ArgsParser_callbackWithName#setNull (; 557 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4792
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
 (func $main_near/__near_ArgsParser_callbackWithName#pushArray (; 558 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $model_near/PromiseArgs#constructor (; 559 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 28
   i32.const 58
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
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.store offset=24
  local.get $0
 )
 (func $model_near/__near_JSONHandler_PromiseArgs#constructor (; 560 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 59
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#constructor (; 561 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 60
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar (; 562 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#isWhitespace (; 563 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar (; 564 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#skipWhitespace (; 565 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model_near/__near_JSONHandler_PromiseArgs#pushObject (; 566 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 3744
    i32.const 790
    i32.const 6
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
    i32.const 3744
    i32.const 794
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.const 4792
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
   call $model_near/__near_decode_PromiseArgs
   local.set $3
   local.get $2
   i32.load offset=8
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=8
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  end
  local.get $1
  i32.const 4816
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
   call $model_near/__near_decode_PromiseArgs
   local.set $2
   local.get $3
   i32.load offset=20
   call $~lib/rt/stub/__release
   local.get $2
   i32.store offset=20
   i32.const 0
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#pushObject
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readHexDigit (; 567 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readEscapedChar (; 568 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readString (; 569 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseKey (; 570 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseObject (; 571 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_PromiseArgs#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_PromiseArgs#pushArray (; 572 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseArray (; 573 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_PromiseArgs#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $model_near/__near_JSONHandler_PromiseArgs#setString (; 574 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4856
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
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
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4888
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $2
   local.tee $3
   local.get $4
   i32.load offset=4
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
   i32.store offset=4
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4928
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $2
   local.tee $4
   local.get $3
   i32.load offset=16
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
   i32.store offset=16
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseString (; 575 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readString
  local.tee $1
  call $model_near/__near_JSONHandler_PromiseArgs#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readAndAssert (; 576 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseBoolean (; 577 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readAndAssert
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
 (func $model_near/__near_JSONHandler_PromiseArgs#setInteger (; 578 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4960
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.wrap_i64
   i32.store offset=12
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4992
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.wrap_i64
   i32.store offset=24
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseNumber (; 579 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readChar
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
   call $model_near/__near_JSONHandler_PromiseArgs#setInteger
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $model_near/__near_JSONHandler_PromiseArgs#setNull (; 580 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 4856
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
  local.get $1
  i32.const 4888
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.const 0
   local.tee $2
   local.get $3
   i32.load offset=4
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
   i32.store offset=4
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4792
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load offset=8
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
   i32.store offset=8
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4960
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   i32.const 0
   i32.store offset=12
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4928
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.const 0
   local.tee $2
   local.get $3
   i32.load offset=16
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
   i32.store offset=16
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4816
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load offset=20
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
   i32.store offset=20
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 4992
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   i32.const 0
   i32.store offset=24
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseNull (; 581 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model_near/__near_JSONHandler_PromiseArgs#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseValue (; 582 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#deserialize (; 583 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_PromiseArgs (; 584 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   call $model_near/PromiseArgs#constructor
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_PromiseArgs#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_PromiseArgs>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $main_near/__near_ArgsParser_callbackWithName#pushObject (; 585 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 1608
    i32.const 396
    i32.const 6
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
    i32.const 1608
    i32.const 400
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.const 4792
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
   call $model_near/__near_decode_PromiseArgs
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
 (func $main_near/__near_ArgsParser_callbackWithName#constructor (; 586 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 56
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#constructor (; 587 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 57
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar (; 588 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#isWhitespace (; 589 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar (; 590 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#skipWhitespace (; 591 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readHexDigit (; 592 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readEscapedChar (; 593 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readString (; 594 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseKey (; 595 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseObject (; 596 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_callbackWithName#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseArray (; 597 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $main_near/__near_ArgsParser_callbackWithName#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseString (; 598 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readAndAssert (; 599 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseBoolean (; 600 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseNumber (; 601 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseNull (; 602 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $main_near/__near_ArgsParser_callbackWithName#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseValue (; 603 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#deserialize (; 604 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $~lib/array/Array.create<~lib/near-runtime-ts/contract/ContractPromiseResult> (; 605 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 192
   i32.const 2384
   i32.const 45
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const 65
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
 (func $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__unchecked_set (; 606 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__set (; 607 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 2272
   i32.const 2384
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
  call $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__unchecked_set
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
 (func $~lib/near-runtime-ts/contract/ContractPromise.getResults (; 608 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  call $~lib/near-runtime-ts/imports/result_count
  local.set $0
  local.get $0
  call $~lib/array/Array.create<~lib/near-runtime-ts/contract/ContractPromiseResult>
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $continue|0
     local.get $2
     call $~lib/near-runtime-ts/imports/result_is_ok
     local.set $3
     local.get $3
     i32.const 0
     i32.ne
     i32.eqz
     if
      local.get $1
      local.get $2
      i32.const 8
      i32.const 64
      call $~lib/rt/stub/__alloc
      call $~lib/rt/stub/__retain
      local.set $4
      local.get $4
      i32.const 0
      i32.store8
      local.get $4
      i32.const 0
      i32.store offset=4
      local.get $4
      call $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__set
      local.get $4
      call $~lib/rt/stub/__release
      br $continue|0
     end
     global.get $~lib/near-runtime-ts/storage/storage
     global.get $~lib/near-runtime-ts/types/DATA_TYPE_RESULT
     i32.const 0
     local.get $2
     call $~lib/near-runtime-ts/storage/Storage#_internalReadBytes
     local.set $4
     local.get $1
     local.get $2
     i32.const 8
     i32.const 64
     call $~lib/rt/stub/__alloc
     call $~lib/rt/stub/__retain
     local.set $5
     local.get $5
     local.get $3
     i32.store8
     local.get $5
     local.get $4
     i32.store offset=4
     local.get $5
     call $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__set
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/array/Array<model_near/MyContractPromiseResult>#constructor (; 609 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 63
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
   i32.const 2272
   i32.const 2384
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
 (func $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#get:length (; 610 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $model_near/MyContractPromiseResult#constructor (; 611 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 62
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store8
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/Array<model_near/MyContractPromiseResult>#__unchecked_set (; 612 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<model_near/MyContractPromiseResult>#__set (; 613 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 2272
   i32.const 2384
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
  call $~lib/array/Array<model_near/MyContractPromiseResult>#__unchecked_set
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
 (func $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__unchecked_get (; 614 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__get (; 615 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2272
   i32.const 2384
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
   i32.const 1912
   i32.const 2384
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__unchecked_get
 )
 (func $~lib/array/Array<model_near/MyContractPromiseResult>#__unchecked_get (; 616 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<model_near/MyContractPromiseResult>#__get (; 617 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2272
   i32.const 2384
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
   i32.const 1912
   i32.const 2384
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<model_near/MyContractPromiseResult>#__unchecked_get
 )
 (func $model_near/MyCallbackResult#constructor (; 618 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 61
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
 )
 (func $model_near/__near_JSONHandler_MyCallbackResult#constructor (; 619 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 66
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#constructor (; 620 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 67
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar (; 621 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#isWhitespace (; 622 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar (; 623 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#skipWhitespace (; 624 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model_near/__near_JSONHandler_MyCallbackResult#pushObject (; 625 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 3744
    i32.const 955
    i32.const 6
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
    i32.const 3744
    i32.const 959
    i32.const 6
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readHexDigit (; 626 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readEscapedChar (; 627 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readString (; 628 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseKey (; 629 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseObject (; 630 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_MyCallbackResult#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_Array_MyContractPromiseResult#constructor (; 631 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 68
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#constructor (; 632 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 69
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar (; 633 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#isWhitespace (; 634 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar (; 635 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#skipWhitespace (; 636 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model_near/__near_JSONHandler_MyContractPromiseResult#constructor (; 637 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 70
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#constructor (; 638 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 71
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar (; 639 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#isWhitespace (; 640 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar (; 641 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 2024
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#skipWhitespace (; 642 ;) (type $FUNCSIG$vi) (param $0 i32)
  block $break|0
   loop $continue|0
    local.get $0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#isWhitespace
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
    drop
    br $continue|0
   end
   unreachable
  end
 )
 (func $model_near/__near_JSONHandler_MyContractPromiseResult#pushObject (; 643 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 3744
    i32.const 901
    i32.const 6
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
    i32.const 3744
    i32.const 905
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.const 2696
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
   call $model_near/__near_decode_MyCallbackResult
   local.set $3
   local.get $2
   i32.load offset=4
   call $~lib/rt/stub/__release
   local.get $3
   i32.store offset=4
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readHexDigit (; 644 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readEscapedChar (; 645 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readString (; 646 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseKey (; 647 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseObject (; 648 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_MyContractPromiseResult#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_MyContractPromiseResult#pushArray (; 649 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseArray (; 650 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_MyContractPromiseResult#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseString (; 651 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readAndAssert (; 652 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $model_near/__near_JSONHandler_MyContractPromiseResult#setBoolean (; 653 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 5064
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.store8
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseBoolean (; 654 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 0
   call $model_near/__near_JSONHandler_MyContractPromiseResult#setBoolean
   i32.const 1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   i32.const 1
   call $model_near/__near_JSONHandler_MyContractPromiseResult#setBoolean
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseNumber (; 655 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readChar
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
 (func $model_near/__near_JSONHandler_MyContractPromiseResult#setNull (; 656 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 5064
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   i32.const 0
   i32.store8
   local.get $1
   call $~lib/rt/stub/__release
   return
  end
  local.get $1
  i32.const 2696
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 0
   local.tee $3
   local.get $2
   i32.load offset=4
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
   i32.store offset=4
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseNull (; 657 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model_near/__near_JSONHandler_MyContractPromiseResult#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseValue (; 658 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#deserialize (; 659 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_MyContractPromiseResult (; 660 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   call $model_near/MyContractPromiseResult#constructor
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_MyContractPromiseResult#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyContractPromiseResult>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/array/Array<model_near/MyContractPromiseResult>#push (; 661 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $model_near/__near_JSONHandler_Array_MyContractPromiseResult#pushObject (; 662 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $model_near/__near_decode_MyContractPromiseResult
  local.tee $2
  call $~lib/array/Array<model_near/MyContractPromiseResult>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readHexDigit (; 663 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
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
  i32.const 14
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
   i32.const 2816
   i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readEscapedChar (; 664 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
  local.set $1
  local.get $1
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 760
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2552
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2552
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2576
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2576
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2600
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2624
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2648
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2672
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2696
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2720
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2744
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i32.const 2768
   call $~lib/rt/stub/__retain
   return
  end
  local.get $1
  i32.const 2792
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readHexDigit
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readHexDigit
   local.set $3
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readHexDigit
   local.set $4
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readHexDigit
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
   i32.const 2872
   i32.const 1
   global.set $~lib/argc
   local.get $1
   i32.const 0
   call $~lib/string/String.fromCharCode|trampoline
   local.tee $6
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 784
   i32.const 255
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 720
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $6
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readString (; 665 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
  i32.const 760
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2192
   i32.const 784
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
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
   local.set $3
   local.get $3
   i32.const 32
   i32.ge_s
   i32.eqz
   if
    i32.const 2432
    i32.const 784
    i32.const 203
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 760
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
    i32.const 720
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
    i32.const 2552
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readEscapedChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseKey (; 666 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#skipWhitespace
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readString
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/stub/__release
  local.get $2
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
  i32.const 2952
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  i32.eqz
  if
   i32.const 2976
   i32.const 784
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseObject (; 667 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
  i32.const 2080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_MyContractPromiseResult#pushObject
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
     i32.const 2104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseKey
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
   i32.const 2104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3016
    i32.const 784
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
 (func $model_near/__near_JSONHandler_Array_MyContractPromiseResult#pushArray (; 668 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3744
   i32.const 991
   i32.const 8
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
  call $model_near/__near_decode_MyContractPromiseResult
  local.tee $2
  call $~lib/array/Array<model_near/MyContractPromiseResult>#push
  drop
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseArray (; 669 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_Array_MyContractPromiseResult#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseString (; 670 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readString
  local.tee $1
  call $~lib/assemblyscript-json/decoder/ThrowingJSONHandler#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readAndAssert (; 671 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseBoolean (; 672 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseNumber (; 673 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readChar
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseNull (; 674 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseValue (; 675 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#deserialize (; 676 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_Array_MyContractPromiseResult (; 677 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   call $~lib/array/Array<model_near/MyContractPromiseResult>#constructor
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_Array_MyContractPromiseResult#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_Array_MyContractPromiseResult>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model_near/__near_JSONHandler_MyCallbackResult#pushArray (; 678 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 5040
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
   call $model_near/__near_decode_Array_MyContractPromiseResult
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseArray (; 679 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
  i32.const 3080
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
  i32.const 720
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
  call $model_near/__near_JSONHandler_MyCallbackResult#pushArray
  if
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
   drop
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#skipWhitespace
   i32.const 1
   local.set $3
   block $break|0
    loop $continue|0
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
     i32.const 3104
     i32.const 0
     call $~lib/string/String#charCodeAt
     i32.ne
     i32.eqz
     br_if $break|0
     local.get $3
     i32.eqz
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
      i32.const 2128
      i32.const 0
      call $~lib/string/String#charCodeAt
      i32.eq
      i32.eqz
      if
       i32.const 2152
       i32.const 784
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
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseValue
     drop
     br $continue|0
    end
    unreachable
   end
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
   i32.const 3104
   i32.const 0
   call $~lib/string/String#charCodeAt
   i32.eq
   i32.eqz
   if
    i32.const 3128
    i32.const 784
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
 (func $model_near/__near_JSONHandler_MyCallbackResult#setString (; 680 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 2648
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseString (; 681 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
  i32.const 760
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readString
  local.tee $1
  call $model_near/__near_JSONHandler_MyCallbackResult#setString
  i32.const 1
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readAndAssert (; 682 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
    i32.eq
    i32.eqz
    if
     i32.const 3192
     local.get $1
     call $~lib/string/String.__concat
     local.tee $3
     i32.const 3232
     call $~lib/string/String.__concat
     local.tee $4
     i32.const 784
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseBoolean (; 683 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
  i32.const 504
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/FALSE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readAndAssert
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
  i32.const 480
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/TRUE_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readAndAssert
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseNumber (; 684 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  i64.const 0
  local.set $1
  i64.const 1
  local.set $2
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
  i32.const 3256
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   i64.const -1
   local.set $2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
   drop
  end
  i32.const 0
  local.set $3
  block $break|0
   loop $continue|0
    global.get $~lib/assemblyscript-json/decoder/CHAR_0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
    i32.le_s
    if (result i32)
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
     global.get $~lib/assemblyscript-json/decoder/CHAR_9
     i32.le_s
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readChar
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
 (func $model_near/__near_JSONHandler_MyCallbackResult#setNull (; 685 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 5040
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
  local.get $1
  i32.const 2648
  call $~lib/string/String.__eq
  if
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.const 0
   local.tee $2
   local.get $3
   i32.load offset=4
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
   i32.store offset=4
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
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseNull (; 686 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#peekChar
  i32.const 536
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.eq
  if
   local.get $0
   global.get $~lib/assemblyscript-json/decoder/NULL_STR
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#readAndAssert
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   i32.load
   call $model_near/__near_JSONHandler_MyCallbackResult#setNull
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseValue (; 687 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#skipWhitespace
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseObject
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseArray
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseString
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseBoolean
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseNumber
  end
  local.tee $1
  if (result i32)
   local.get $1
  else   
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseNull
  end
  local.set $1
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#skipWhitespace
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#deserialize (; 688 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#parseValue
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 3280
   i32.const 784
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
 (func $model_near/__near_decode_MyCallbackResult (; 689 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   call $model_near/MyCallbackResult#constructor
   local.set $3
   local.get $2
   call $~lib/rt/stub/__release
   local.get $3
   local.set $2
  end
  i32.const 0
  local.get $2
  call $model_near/__near_JSONHandler_MyCallbackResult#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#constructor
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
  call $~lib/assemblyscript-json/decoder/JSONDecoder<model_near/__near_JSONHandler_MyCallbackResult>#deserialize
  local.get $2
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $model_near/MyCallbackResult#decode (; 690 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  local.get $0
  call $model_near/__near_decode_MyCallbackResult
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $model_near/MyCallbackResult.decode (; 691 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  i32.const 0
  call $model_near/MyCallbackResult#constructor
  local.set $1
  local.get $1
  local.get $0
  call $model_near/MyCallbackResult#decode
  call $~lib/rt/stub/__release
  local.get $1
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 692 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $~lib/string/String.UTF8.decode (; 693 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.get $1
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/near-runtime-ts/storage/Storage#_internalReadString (; 694 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/near-runtime-ts/storage/Storage#_internalBufferRead
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 0
   call $~lib/rt/stub/__retain
   return
  end
  local.get $0
  i32.load
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  i32.const 0
  call $~lib/string/String.UTF8.decode
  local.set $6
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $~lib/near-runtime-ts/contract/Context#get:contractName (; 695 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/near-runtime-ts/storage/storage
  global.get $~lib/near-runtime-ts/types/DATA_TYPE_CURRENT_ACCOUNT_ID
  i32.const 0
  i32.const 0
  call $~lib/near-runtime-ts/storage/Storage#_internalReadString
  local.tee $1
  if (result i32)
   local.get $1
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<model_near/MyContractPromiseResult>#get:length (; 696 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $model_near/__near_encode_MyContractPromiseResult (; 697 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 5064
  local.get $0
  i32.load8_u
  call $~lib/assemblyscript-json/encoder/JSONEncoder#setBoolean
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.ne
  if
   local.get $1
   i32.const 2696
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
   drop
   local.get $0
   i32.load offset=4
   local.get $1
   call $model_near/__near_encode_MyCallbackResult
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  else   
   local.get $1
   i32.const 2696
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $model_near/__near_encode_Array_MyContractPromiseResult (; 698 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    call $~lib/array/Array<model_near/MyContractPromiseResult>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/array/Array<model_near/MyContractPromiseResult>#__get
    local.tee $3
    i32.const 0
    i32.ne
    if
     local.get $1
     i32.const 0
     call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
     drop
     local.get $0
     local.get $2
     call $~lib/array/Array<model_near/MyContractPromiseResult>#__get
     local.tee $4
     local.get $1
     call $model_near/__near_encode_MyContractPromiseResult
     local.get $1
     call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
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
 (func $model_near/__near_encode_MyCallbackResult (; 699 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 5040
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushArray
   drop
   local.get $0
   i32.load
   local.get $1
   call $model_near/__near_encode_Array_MyContractPromiseResult
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popArray
  else   
   local.get $1
   i32.const 5040
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  i32.load offset=4
  i32.const 0
  call $~lib/string/String.__ne
  if
   local.get $1
   i32.const 2648
   local.get $0
   i32.load offset=4
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setString
  else   
   local.get $1
   i32.const 2648
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $model_near/MyCallbackResult#_encoder (; 700 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
  drop
  local.get $0
  local.get $1
  call $model_near/__near_encode_MyCallbackResult
  local.get $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  local.get $1
 )
 (func $model_near/MyCallbackResult#encode (; 701 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $model_near/MyCallbackResult#_encoder
  local.tee $1
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $2
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/near-runtime-ts/util/UTF8Length (; 702 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.byteLength
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/near-runtime-ts/util/toUTF8 (; 703 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.encode
  local.tee $2
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $~lib/near-runtime-ts/storage/Storage#setBytes (; 704 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $2
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  i32.const 0
  call $~lib/near-runtime-ts/util/UTF8Length
  i32.const 1
  i32.sub
  local.get $1
  i32.const 0
  call $~lib/near-runtime-ts/util/toUTF8
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $2
  call $~lib/near-runtime-ts/util/ptrTo
  call $~lib/near-runtime-ts/imports/storage_write
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $main/callbackWithName (; 705 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  call $~lib/near-runtime-ts/contract/ContractPromise.getResults
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#get:length
  call $~lib/array/Array<model_near/MyContractPromiseResult>#constructor
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    call $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 0
    call $model_near/MyContractPromiseResult#constructor
    local.tee $4
    call $~lib/array/Array<model_near/MyContractPromiseResult>#__set
    local.get $2
    local.get $3
    call $~lib/array/Array<model_near/MyContractPromiseResult>#__get
    local.tee $6
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__get
    local.tee $5
    i32.load8_u
    i32.store8
    local.get $2
    local.get $3
    call $~lib/array/Array<model_near/MyContractPromiseResult>#__get
    local.tee $7
    i32.load8_u
    if (result i32)
     local.get $1
     local.get $3
     call $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__get
     local.tee $8
     i32.load offset=4
     i32.const 0
     i32.ne
     local.set $9
     local.get $8
     call $~lib/rt/stub/__release
     local.get $9
    else     
     i32.const 0
    end
    if (result i32)
     local.get $1
     local.get $3
     call $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__get
     local.tee $8
     i32.load offset=4
     local.tee $9
     if (result i32)
      local.get $9
     else      
      unreachable
     end
     call $~lib/typedarray/Uint8Array#get:length
     i32.const 0
     i32.gt_s
     local.set $9
     local.get $8
     call $~lib/rt/stub/__release
     local.get $9
    else     
     i32.const 0
    end
    if
     local.get $2
     local.get $3
     call $~lib/array/Array<model_near/MyContractPromiseResult>#__get
     local.tee $9
     local.tee $10
     local.get $1
     local.get $3
     call $~lib/array/Array<~lib/near-runtime-ts/contract/ContractPromiseResult>#__get
     local.tee $8
     i32.load offset=4
     local.tee $9
     if (result i32)
      local.get $9
     else      
      unreachable
     end
     call $model_near/MyCallbackResult.decode
     local.set $11
     local.get $10
     i32.load offset=4
     call $~lib/rt/stub/__release
     local.get $11
     i32.store offset=4
     local.get $8
     call $~lib/rt/stub/__release
     local.get $9
     call $~lib/rt/stub/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/stub/__release
    local.get $5
    call $~lib/rt/stub/__release
    local.get $6
    call $~lib/rt/stub/__release
    local.get $7
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 8
  i32.const 61
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $7
  local.get $7
  local.get $2
  i32.store
  local.get $7
  global.get $~lib/near-runtime-ts/contract/context
  call $~lib/near-runtime-ts/contract/Context#get:contractName
  local.tee $6
  i32.store offset=4
  local.get $7
  call $~lib/rt/stub/__retain
  local.set $5
  local.get $5
  call $model_near/MyCallbackResult#encode
  local.set $4
  global.get $~lib/near-runtime-ts/storage/storage
  i32.const 5088
  local.get $4
  call $~lib/near-runtime-ts/storage/Storage#setBytes
  local.get $5
  local.set $3
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $main_near/callbackWithName (; 706 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/near-runtime-ts/storage/storage
  i32.const 4
  i32.const 0
  i32.const 0
  call $~lib/near-runtime-ts/storage/Storage#_internalReadBytes
  local.tee $0
  if (result i32)
   local.get $0
  else   
   unreachable
  end
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  call $main_near/__near_ArgsParser_callbackWithName#constructor
  local.set $1
  local.get $1
  local.tee $2
  local.get $0
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
  local.tee $3
  i32.const 0
  local.get $1
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#constructor
  local.set $2
  local.get $3
  i32.load offset=4
  call $~lib/rt/stub/__release
  local.get $2
  i32.store offset=4
  local.get $1
  i32.load offset=4
  local.get $0
  i32.const 0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<main_near/__near_ArgsParser_callbackWithName>#deserialize
  local.get $1
  i32.load offset=12
  call $main/callbackWithName
  local.set $2
  i32.const 0
  call $~lib/assemblyscript-json/encoder/JSONEncoder#constructor
  local.set $3
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $3
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#pushObject
   drop
   local.get $2
   local.get $3
   call $model_near/__near_encode_MyCallbackResult
   local.get $3
   call $~lib/assemblyscript-json/encoder/JSONEncoder#popObject
  else   
   local.get $3
   i32.const 0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#setNull
  end
  local.get $3
  call $~lib/assemblyscript-json/encoder/JSONEncoder#serialize
  local.set $4
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  call $main_near/return_value
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
 (func $start (; 707 ;) (type $FUNCSIG$v)
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
  call $start:main_near
 )
 (func $null (; 708 ;) (type $FUNCSIG$v)
 )
 (func $__near_ArgsParser_doNothing#get:buffer (; 709 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_doNothing#set:buffer (; 710 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $0
  local.get $0
  i32.load
  local.tee $1
  i32.ne
  if
   local.get $0
   call $~lib/rt/stub/__retain
   drop
   local.get $1
   call $~lib/rt/stub/__release
  end
  local.get $0
  i32.store
 )
 (func $__near_ArgsParser_doNothing#get:decoder (; 711 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_doNothing#set:decoder (; 712 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $__near_ArgsParser_doNothing#get:handledRoot (; 713 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=8
 )
 (func $__near_ArgsParser_doNothing#set:handledRoot (; 714 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=8
 )
 (func $__near_ArgsParser_add#get:buffer (; 715 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_add#set:buffer (; 716 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store
 )
 (func $__near_ArgsParser_add#get:decoder (; 717 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_add#set:decoder (; 718 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $__near_ArgsParser_add#get:handledRoot (; 719 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=8
 )
 (func $__near_ArgsParser_add#set:handledRoot (; 720 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=8
 )
 (func $__near_ArgsParser_add#get:__near_param_x (; 721 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $__near_ArgsParser_add#set:__near_param_x (; 722 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $__near_ArgsParser_add#get:__near_param_y (; 723 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
 )
 (func $__near_ArgsParser_add#set:__near_param_y (; 724 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $__near_ArgsParser_rewrapFoobar#get:buffer (; 725 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_rewrapFoobar#set:buffer (; 726 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store
 )
 (func $__near_ArgsParser_rewrapFoobar#get:decoder (; 727 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_rewrapFoobar#set:decoder (; 728 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $__near_ArgsParser_rewrapFoobar#get:handledRoot (; 729 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=8
 )
 (func $__near_ArgsParser_rewrapFoobar#set:handledRoot (; 730 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=8
 )
 (func $__near_ArgsParser_rewrapFoobar#get:__near_param_container (; 731 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_rewrapFoobar#set:__near_param_container (; 732 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=12
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=12
 )
 (func $__near_ArgsParser_unwrapFoobar#get:buffer (; 733 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_unwrapFoobar#set:buffer (; 734 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store
 )
 (func $__near_ArgsParser_unwrapFoobar#get:decoder (; 735 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_unwrapFoobar#set:decoder (; 736 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $__near_ArgsParser_unwrapFoobar#get:handledRoot (; 737 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=8
 )
 (func $__near_ArgsParser_unwrapFoobar#set:handledRoot (; 738 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=8
 )
 (func $__near_ArgsParser_unwrapFoobar#get:__near_param_container (; 739 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_unwrapFoobar#set:__near_param_container (; 740 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=12
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=12
 )
 (func $__near_ArgsParser_getStringArrayLength#get:buffer (; 741 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_getStringArrayLength#set:buffer (; 742 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store
 )
 (func $__near_ArgsParser_getStringArrayLength#get:decoder (; 743 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_getStringArrayLength#set:decoder (; 744 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $__near_ArgsParser_getStringArrayLength#get:handledRoot (; 745 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=8
 )
 (func $__near_ArgsParser_getStringArrayLength#set:handledRoot (; 746 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=8
 )
 (func $__near_ArgsParser_getStringArrayLength#get:__near_param_arr (; 747 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_getStringArrayLength#set:__near_param_arr (; 748 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=12
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=12
 )
 (func $__near_ArgsParser_convertFoobars#get:buffer (; 749 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_convertFoobars#set:buffer (; 750 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store
 )
 (func $__near_ArgsParser_convertFoobars#get:decoder (; 751 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_convertFoobars#set:decoder (; 752 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $__near_ArgsParser_convertFoobars#get:handledRoot (; 753 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=8
 )
 (func $__near_ArgsParser_convertFoobars#set:handledRoot (; 754 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=8
 )
 (func $__near_ArgsParser_convertFoobars#get:__near_param_foobars (; 755 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_convertFoobars#set:__near_param_foobars (; 756 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=12
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=12
 )
 (func $__near_ArgsParser_callbackWithName#get:buffer (; 757 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_callbackWithName#set:buffer (; 758 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store
 )
 (func $__near_ArgsParser_callbackWithName#get:decoder (; 759 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_callbackWithName#set:decoder (; 760 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $__near_ArgsParser_callbackWithName#get:handledRoot (; 761 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=8
 )
 (func $__near_ArgsParser_callbackWithName#set:handledRoot (; 762 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=8
 )
 (func $__near_ArgsParser_callbackWithName#get:__near_param_args (; 763 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/stub/__retain
 )
 (func $__near_ArgsParser_callbackWithName#set:__near_param_args (; 764 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $1
  local.get $0
  i32.load offset=12
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store offset=12
 )
)
