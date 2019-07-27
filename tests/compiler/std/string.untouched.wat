(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iijijiji (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (memory $0 1)
 (data (i32.const 8) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 56) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 104) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 120) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 168) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 216) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 272) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 312) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 368) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\00\00")
 (data (i32.const 392) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 416) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\006\00")
 (data (i32.const 440) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 488) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\004\d8\06\df")
 (data (i32.const 512) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00h\00i\00")
 (data (i32.const 536) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 560) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 592) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00I\00\'\00m\00")
 (data (i32.const 616) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00 \00")
 (data (i32.const 640) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00 \00 \00 \00")
 (data (i32.const 664) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c\00")
 (data (i32.const 688) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00 \00 \00a\00b\00c\00")
 (data (i32.const 720) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\002\003\00")
 (data (i32.const 744) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\002\003\00a\00b\00c\00")
 (data (i32.const 776) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\001\002\003\001\002\00a\00b\00c\00")
 (data (i32.const 808) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00a\00b\00c\00 \00 \00")
 (data (i32.const 840) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00a\00b\00c\00a\00b\00c\00")
 (data (i32.const 872) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00a\00b\00c\00a\00b\00c\00a\00b\00")
 (data (i32.const 904) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 928) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00x\00")
 (data (i32.const 952) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00,\00 \00I\00")
 (data (i32.const 976) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00g\00")
 (data (i32.const 1000) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00i\00")
 (data (i32.const 1024) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00a\00b\00 \00c\00")
 (data (i32.const 1048) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00 \00\n\00\t\00\0d\00a\00b\00c\00 \00\t\00\0d\00 \00")
 (data (i32.const 1088) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00a\00b\00c\00 \00\t\00\0d\00 \00")
 (data (i32.const 1120) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00 \00\n\00\t\00\0d\00a\00b\00c\00")
 (data (i32.const 1152) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 1176) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001\00")
 (data (i32.const 1200) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\000\00b\001\000\001\00")
 (data (i32.const 1232) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\000\00o\007\000\007\00")
 (data (i32.const 1264) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\000\00x\00f\000\00f\00")
 (data (i32.const 1296) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\000\00x\00F\000\00F\00")
 (data (i32.const 1328) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\001\001\00")
 (data (i32.const 1352) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\000\00x\001\00g\00")
 (data (i32.const 1376) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00 \00\t\00\n\001\00")
 (data (i32.const 1400) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00 \00\t\00\n\000\00x\000\002\00")
 (data (i32.const 1432) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\000\00x\007\00F\00F\00F\00F\00F\00F\00F\00")
 (data (i32.const 1472) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\000\00x\007\00F\00F\00F\00F\00F\00F\00F\00F\00F\00F\00F\00F\00F\00F\00F\00")
 (data (i32.const 1528) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1584) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\001\00")
 (data (i32.const 1608) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00.\002\005\00")
 (data (i32.const 1632) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00.\001\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 1664) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00 \00\t\00\n\00.\001\00")
 (data (i32.const 1696) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 1720) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00b\00")
 (data (i32.const 1744) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00k\00e\00y\001\00")
 (data (i32.const 1768) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00k\00e\00y\002\00")
 (data (i32.const 1792) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00k\00e\001\00")
 (data (i32.const 1816) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00k\00e\002\00")
 (data (i32.const 1840) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00k\00e\00y\001\002\00")
 (data (i32.const 1872) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00k\00e\00y\001\001\00")
 (data (i32.const 1904) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00\a40\ed0\cf0\cb0\db0\d80\c80")
 (data (i32.const 1936) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00\a60\f00\ce0\aa0\af0\e40\de0")
 (data (i32.const 1968) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00D\00\19 f\00h\00u\00a\00s\00c\00a\00i\00l\00")
 (data (i32.const 2008) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00D\00\19 \1f\1eu\00a\00s\00c\00a\00i\00l\00")
 (data (i32.const 2048) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00b\00a\00")
 (data (i32.const 2072) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00a\00")
 (data (i32.const 2096) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 2144) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00a\00a\00")
 (data (i32.const 2168) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00a\00b\00a\00b\00a\00b\00a\00b\00")
 (data (i32.const 2200) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00a\00a\00a\00a\00a\00")
 (data (i32.const 2232) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00a\00a\00a\00a\00a\00a\00")
 (data (i32.const 2264) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00a\00a\00a\00a\00a\00a\00a\00")
 (data (i32.const 2296) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00+\00")
 (data (i32.const 2320) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 2344) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00a\00b\00c\00d\00")
 (data (i32.const 2368) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00a\00-\00b\00-\00c\00")
 (data (i32.const 2400) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00a\00+\00b\00-\00c\00")
 (data (i32.const 2432) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00+\00a\00b\00c\00")
 (data (i32.const 2456) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00\n\00a\00b\00c\00")
 (data (i32.const 2480) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\n\00")
 (data (i32.const 2504) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00c\00")
 (data (i32.const 2528) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00+\00+\00")
 (data (i32.const 2552) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00a\00b\00+\00+\00")
 (data (i32.const 2576) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00a\00b\00c\00a\00b\00c\00a\00b\00c\00")
 (data (i32.const 2616) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00+\00+\00+\00")
 (data (i32.const 2640) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00a\00b\00c\00a\00b\00c\00a\00")
 (data (i32.const 2672) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00+\00+\00+\00b\00c\00+\00+\00+\00b\00c\00+\00+\00+\00")
 (data (i32.const 2720) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00+\00+\00c\00+\00+\00c\00")
 (data (i32.const 2752) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00c\00c\00c\00c\00")
 (data (i32.const 2776) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00c\00c\00")
 (data (i32.const 2800) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00+\00+\00+\00+\00")
 (data (i32.const 2824) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00e\00")
 (data (i32.const 2848) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00b\00c\00")
 (data (i32.const 2872) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00+\00")
 (data (i32.const 2896) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00a\00+\00b\00+\00c\00")
 (data (i32.const 2928) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00d\00")
 (data (i32.const 2952) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00+\00a\00+\00b\00+\00c\00+\00")
 (data (i32.const 2984) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00")
 (data (i32.const 3032) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 3056) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00j\00k\00l\00m\00n\00")
 (data (i32.const 3088) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00c\00d\00e\00f\00g\00")
 (data (i32.const 3120) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00d\00e\00f\00g\00h\00")
 (data (i32.const 3152) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00")
 (data (i32.const 3200) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 3248) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 3360) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00a\00,\00b\00,\00c\00")
 (data (i32.const 3392) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00.\00")
 (data (i32.const 3416) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 3832) "\10\00\00\00\01\00\00\00\05\00\00\00\10\00\00\00h\0d\00\00h\0d\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 3864) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\008\00")
 (data (i32.const 3888) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00-\001\000\000\000\00")
 (data (i32.const 3920) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\001\002\003\004\00")
 (data (i32.const 3944) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\001\002\003\004\005\00")
 (data (i32.const 3976) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\002\003\004\005\006\00")
 (data (i32.const 4008) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\001\001\001\001\001\001\001\00")
 (data (i32.const 4040) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\001\002\003\004\005\006\007\00")
 (data (i32.const 4072) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\006\00")
 (data (i32.const 4112) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\007\00")
 (data (i32.const 4152) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 4192) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00-\001\00")
 (data (i32.const 4216) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\001\000\000\000\00")
 (data (i32.const 4240) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 4280) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 4320) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\009\009\009\009\009\009\009\009\00")
 (data (i32.const 4352) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\000\000\000\000\000\000\000\000\00")
 (data (i32.const 4392) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4432) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4472) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4520) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4568) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4624) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00")
 (data (i32.const 4680) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00-\001\002\003\004\00")
 (data (i32.const 4712) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00-\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 4752) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00-\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4792) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00-\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4840) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00-\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4888) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00-\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4944) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 5000) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00-\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\008\00")
 (data (i32.const 5056) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000\00")
 (data (i32.const 5080) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N\00")
 (data (i32.const 5104) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 5144) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 5176) "\b8\02\00\00\01\00\00\00\00\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 5888) "\10\00\00\00\01\00\00\00\06\00\00\00\10\00\00\00H\14\00\00H\14\00\00\b8\02\00\00W\00\00\00")
 (data (i32.const 5920) "\ae\00\00\00\01\00\00\00\00\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 6112) "\10\00\00\00\01\00\00\00\07\00\00\00\10\00\00\000\17\00\000\17\00\00\ae\00\00\00W\00\00\00")
 (data (i32.const 6144) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 6200) "\10\00\00\00\01\00\00\00\05\00\00\00\10\00\00\00\10\18\00\00\10\18\00\00(\00\00\00\n\00\00\00")
 (data (i32.const 6232) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\002\00.\002\002\000\004\004\006\000\004\009\002\005\000\003\001\003\00e\00-\001\006\00")
 (data (i32.const 6296) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00-\002\00.\002\002\000\004\004\006\000\004\009\002\005\000\003\001\003\00e\00-\001\006\00")
 (data (i32.const 6360) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\001\00.\007\009\007\006\009\003\001\003\004\008\006\002\003\001\005\007\00e\00+\003\000\008\00")
 (data (i32.const 6424) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00-\001\00.\007\009\007\006\009\003\001\003\004\008\006\002\003\001\005\007\00e\00+\003\000\008\00")
 (data (i32.const 6488) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\004\00.\001\008\005\005\008\000\004\009\006\008\002\001\003\005\007\00e\00+\002\009\008\00")
 (data (i32.const 6552) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\002\00.\002\002\005\000\007\003\008\005\008\005\000\007\002\000\001\004\00e\00-\003\000\008\00")
 (data (i32.const 6616) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\004\00.\009\004\000\006\005\006\00e\00-\003\001\008\00")
 (data (i32.const 6664) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\009\000\006\000\008\000\001\001\005\003\004\003\003\006\000\000\00.\000\00")
 (data (i32.const 6720) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\004\007\000\008\003\005\006\000\002\004\007\001\001\005\001\002\000\000\000\00.\000\00")
 (data (i32.const 6784) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\009\004\000\009\003\004\000\000\001\002\005\006\008\002\004\008\000\000\000\00.\000\00")
 (data (i32.const 6848) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\005\00e\00-\003\002\004\00")
 (data (i32.const 6880) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\00.\000\00")
 (data (i32.const 6904) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00-\001\00.\000\00")
 (data (i32.const 6928) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00-\000\00.\001\00")
 (data (i32.const 6952) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 6992) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\000\00.\000\000\000\000\000\001\00")
 (data (i32.const 7024) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00-\001\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 7064) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\000\00.\000\000\000\000\000\001\00")
 (data (i32.const 7104) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\001\000\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 7144) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\001\00e\00-\007\00")
 (data (i32.const 7168) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00e\00+\003\000\008\00")
 (data (i32.const 7200) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00-\001\00e\00+\003\000\008\00")
 (data (i32.const 7232) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00e\00-\003\000\008\00")
 (data (i32.const 7264) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00-\001\00e\00-\003\000\008\00")
 (data (i32.const 7296) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00e\00-\003\002\003\00")
 (data (i32.const 7328) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00-\001\00e\00-\003\002\003\00")
 (data (i32.const 7360) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\004\002\009\004\009\006\007\002\007\002\00.\000\00")
 (data (i32.const 7400) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\001\00.\002\003\001\002\001\004\005\006\007\003\004\005\006\002\003\004\00e\00-\008\00")
 (data (i32.const 7464) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\005\005\005\005\005\005\005\005\005\00.\005\005\005\005\005\005\006\00")
 (data (i32.const 7520) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\000\00.\009\009\009\009\009\009\009\009\009\009\009\009\009\009\009\009\00")
 (data (i32.const 7576) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\001\002\00.\003\004\00")
 (data (i32.const 7608) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\000\00.\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\00")
 (data (i32.const 7664) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\001\002\003\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 7728) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\00.\002\003\004\00e\00+\002\001\00")
 (data (i32.const 7768) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\002\00.\007\001\008\002\008\00")
 (data (i32.const 7800) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\000\00.\000\002\007\001\008\002\008\00")
 (data (i32.const 7840) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\002\007\001\00.\008\002\008\00")
 (data (i32.const 7872) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\001\00.\001\00e\00+\001\002\008\00")
 (data (i32.const 7904) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\001\00.\001\00e\00-\006\004\00")
 (data (i32.const 7936) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\000\00.\000\000\000\000\003\005\006\008\009\00")
 (data (i32.const 7976) "\08\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93\04\00\00\02\00\00\00\93\00\00\00\02\00\00\00\13\01\00\00\02\00\00\00S\04\00\00\02\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $std/string/str (mut i32) (i32.const 24))
 (global $std/string/nullStr (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/string/String.MAX_LENGTH i32 (i32.const 536870904))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/number/I32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $~lib/number/I64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $~lib/builtins/i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~lib/builtins/f64.EPSILON f64 (f64.const 2.220446049250313e-16))
 (global $~lib/builtins/f64.MAX_VALUE f64 (f64.const 1797693134862315708145274e284))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 7976))
 (global $~lib/heap/__heap_base i32 (i32.const 8044))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (export "getString" (func $std/string/getString))
 (func $~lib/string/String#get:length (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charCodeAt (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/rt/pure/increment (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 104
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  call $~lib/rt/rtrace/onincrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/removeBlock (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 279
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else   
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 292
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 10 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 205
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 207
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 184
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 244
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else   
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/freeBlock (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 546
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
 )
 (func $~lib/rt/__typeinfo (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 232
   i32.const 288
   i32.const 22
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/rt/tlsf/addMemory (; 13 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 386
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 184
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else    
    nop
   end
  else   
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 184
    i32.const 408
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 48
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 16
  i32.const 1
  i32.shl
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initializeRoot (; 14 ;) (type $FUNCSIG$v)
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
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
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
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
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
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  i32.store
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 23
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.set $7
    local.get $5
    local.set $6
    i32.const 0
    local.set $4
    local.get $7
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store offset=4
    block $break|1
     i32.const 0
     local.set $7
     loop $loop|1
      local.get $7
      i32.const 16
      i32.lt_u
      i32.eqz
      br_if $break|1
      local.get $3
      local.set $9
      local.get $5
      local.set $8
      local.get $7
      local.set $6
      i32.const 0
      local.set $4
      local.get $9
      local.get $8
      i32.const 4
      i32.shl
      local.get $6
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $4
      i32.store offset=96
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $loop|1
     end
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.get $0
  i32.const 1572
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 328
   i32.const 184
   i32.const 457
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else   
   local.get $1
   i32.const 536870904
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else    
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 338
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else    
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 184
     i32.const 351
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else   
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 536870904
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 16
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (; 18 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 19 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 184
    i32.const 487
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 489
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
  call $~lib/rt/rtrace/onalloc
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.set $2
  local.get $2
  i32.eqz
  if
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
   local.set $2
  end
  local.get $2
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.set $3
  local.get $3
  local.get $1
  i32.store offset=8
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/util/memory/memcpy (; 21 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.copy (; 22 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/rt/tlsf/__free (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 576
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 577
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots (; 24 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  global.get $~lib/rt/pure/CUR
  local.get $0
  i32.sub
  local.set $1
  local.get $1
  i32.const 2
  i32.mul
  local.tee $2
  i32.const 64
  i32.const 2
  i32.shl
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $5
  i32.const 16
  i32.sub
  call $~lib/rt/rtrace/onfree
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/rtrace/onalloc
   local.get $0
   call $~lib/rt/tlsf/__free
  end
  local.get $5
  global.set $~lib/rt/pure/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.set $1
  local.get $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
   global.get $~lib/rt/pure/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   else    
    local.get $0
    i32.const -2147483648
    i32.const 0
    i32.or
    i32.const 0
    i32.or
    i32.store offset=4
   end
  else   
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 136
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.and
   i32.eqz
   if
    local.get $0
    i32.const -2147483648
    i32.const 805306368
    i32.or
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
    local.get $1
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   else    
    local.get $0
    local.get $1
    i32.const 268435455
    i32.const -1
    i32.xor
    i32.and
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
   end
  end
 )
 (func $~lib/rt/pure/__release (; 27 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/string/String.__not (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $0
   call $~lib/string/String#get:length
   i32.eqz
  end
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/string/String.fromCharCode (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/tlsf/__alloc
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
  call $~lib/rt/pure/__retain
 )
 (func $~lib/string/String.fromCharCode|trampoline (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/util/string/compareImpl (; 31 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
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
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/string/String.__eq (; 32 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
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
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
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
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
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
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.fromCodePoint (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 456
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
  call $~lib/rt/tlsf/__alloc
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
  call $~lib/rt/pure/__retain
 )
 (func $~lib/string/String#startsWith (; 34 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 552
   local.tee $3
   local.get $1
   local.tee $4
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $3
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $5
  local.get $2
  local.tee $3
  i32.const 0
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_s
  select
  local.tee $3
  local.get $5
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $6
  local.get $1
  call $~lib/string/String#get:length
  local.set $7
  local.get $7
  local.get $6
  i32.add
  local.get $5
  i32.gt_s
  if
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  local.get $6
  local.get $1
  i32.const 0
  local.get $7
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/string/String#endsWith (; 35 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $2
  local.tee $3
  i32.const 0
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_s
  select
  local.tee $3
  local.get $0
  call $~lib/string/String#get:length
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  local.get $2
  local.get $5
  i32.sub
  local.set $6
  local.get $6
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  local.get $6
  local.get $1
  i32.const 0
  local.get $5
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/string/String#indexOf (; 36 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
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
   call $~lib/rt/pure/__release
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
   call $~lib/rt/pure/__release
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
     call $~lib/rt/pure/__release
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
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/string/String#includes (; 37 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  local.get $2
  call $~lib/string/String#indexOf
  i32.const -1
  i32.ne
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/memory/memory.repeat (; 38 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  local.set $4
  local.get $2
  local.get $3
  i32.mul
  local.set $5
  block $break|0
   loop $continue|0
    local.get $4
    local.get $5
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $4
    i32.add
    local.get $1
    local.get $2
    call $~lib/memory/memory.copy
    local.get $4
    local.get $2
    i32.add
    local.set $4
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/string/String#padStart (; 39 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $1
  i32.const 1
  i32.shl
  local.set $4
  local.get $2
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $3
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $5
   i32.eqz
  end
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $2
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $4
  local.get $3
  i32.sub
  local.set $7
  local.get $4
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $8
  local.get $7
  local.get $5
  i32.gt_u
  if
   local.get $7
   i32.const 2
   i32.sub
   local.get $5
   i32.div_u
   local.set $6
   local.get $6
   local.get $5
   i32.mul
   local.set $9
   local.get $7
   local.get $9
   i32.sub
   local.set $10
   local.get $8
   local.get $2
   local.get $5
   local.get $6
   call $~lib/memory/memory.repeat
   local.get $8
   local.get $9
   i32.add
   local.get $2
   local.get $10
   call $~lib/memory/memory.copy
  else   
   local.get $8
   local.get $2
   local.get $7
   call $~lib/memory/memory.copy
  end
  local.get $8
  local.get $7
  i32.add
  local.get $0
  local.get $3
  call $~lib/memory/memory.copy
  local.get $8
  call $~lib/rt/pure/__retain
  local.set $10
  local.get $2
  call $~lib/rt/pure/__release
  local.get $10
 )
 (func $~lib/string/String#padEnd (; 40 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $1
  i32.const 1
  i32.shl
  local.set $4
  local.get $2
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $3
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $5
   i32.eqz
  end
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $2
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $4
  local.get $3
  i32.sub
  local.set $7
  local.get $4
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $8
  local.get $8
  local.get $0
  local.get $3
  call $~lib/memory/memory.copy
  local.get $7
  local.get $5
  i32.gt_u
  if
   local.get $7
   i32.const 2
   i32.sub
   local.get $5
   i32.div_u
   local.set $6
   local.get $6
   local.get $5
   i32.mul
   local.set $9
   local.get $7
   local.get $9
   i32.sub
   local.set $10
   local.get $8
   local.get $3
   i32.add
   local.get $2
   local.get $5
   local.get $6
   call $~lib/memory/memory.repeat
   local.get $8
   local.get $3
   i32.add
   local.get $9
   i32.add
   local.get $2
   local.get $10
   call $~lib/memory/memory.copy
  else   
   local.get $8
   local.get $3
   i32.add
   local.get $2
   local.get $7
   call $~lib/memory/memory.copy
  end
  local.get $8
  call $~lib/rt/pure/__retain
  local.set $10
  local.get $2
  call $~lib/rt/pure/__release
  local.get $10
 )
 (func $~lib/string/String#lastIndexOf (; 41 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   call $~lib/string/String#get:length
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
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
   call $~lib/rt/pure/__release
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
  local.get $3
  i32.sub
  local.tee $6
  local.get $4
  local.get $6
  i32.lt_s
  select
  local.set $7
  block $break|0
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
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
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  i32.const -1
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/util/string/isSpace (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/string/String#trimStart (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $1
  i32.const 0
  local.set $2
  block $break|0
   loop $continue|0
    local.get $2
    local.get $1
    i32.lt_u
    if (result i32)
     local.get $0
     local.get $2
     i32.add
     i32.load16_u
     call $~lib/util/string/isSpace
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $1
  local.get $2
  i32.sub
  local.set $1
  local.get $1
  i32.eqz
  if
   i32.const 120
   call $~lib/rt/pure/__retain
   return
  end
  local.get $1
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  local.get $0
  local.get $2
  i32.add
  local.get $1
  call $~lib/memory/memory.copy
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $~lib/string/String#trimEnd (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $1
  local.get $1
  local.set $2
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $0
     local.get $2
     i32.add
     i32.const 2
     i32.sub
     i32.load16_u
     call $~lib/util/string/isSpace
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $2
  i32.eqz
  if
   i32.const 120
   call $~lib/rt/pure/__retain
   return
  end
  local.get $2
  local.get $1
  i32.eq
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $2
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  local.get $0
  local.get $2
  call $~lib/memory/memory.copy
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $~lib/string/String#trim (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $1
  local.get $1
  i32.const 1
  i32.shl
  local.set $2
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $0
     local.get $2
     i32.add
     i32.const 2
     i32.sub
     i32.load16_u
     call $~lib/util/string/isSpace
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  i32.const 0
  local.set $3
  block $break|1
   loop $continue|1
    local.get $3
    local.get $2
    i32.lt_u
    if (result i32)
     local.get $0
     local.get $3
     i32.add
     i32.load16_u
     call $~lib/util/string/isSpace
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|1
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    br $continue|1
   end
   unreachable
  end
  local.get $2
  i32.eqz
  if
   i32.const 120
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  i32.eqz
  if (result i32)
   local.get $2
   local.get $1
   i32.const 1
   i32.shl
   i32.eq
  else   
   i32.const 0
  end
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $2
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $4
  local.get $0
  local.get $3
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $4
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/string/strtol<f64> (; 46 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  i32.eqz
  if
   f64.const nan:0x8000000000000
   local.set $3
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  local.set $4
  local.get $4
  i32.load16_u
  local.set $5
  f64.const 1
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
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $4
   i32.const 2
   i32.add
   local.tee $4
   i32.load16_u
   local.set $5
   f64.const -1
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
     local.set $3
     local.get $0
     call $~lib/rt/pure/__release
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
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  f64.const 0
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
    f64.convert_i32_s
    f64.mul
    local.get $5
    f64.convert_i32_s
    f64.add
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
  f64.mul
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/string/parseInt (; 47 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<f64>
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/util/string/strtol<i32> (; 48 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   local.set $3
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  local.set $4
  local.get $4
  i32.load16_u
  local.set $5
  i32.const 1
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
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $4
   i32.const 2
   i32.add
   local.tee $4
   i32.load16_u
   local.set $5
   i32.const -1
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
     i32.const 0
     local.set $3
     local.get $0
     call $~lib/rt/pure/__release
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
            local.set $3
            local.get $3
            i32.const 66
            i32.eq
            br_if $case0|1
            local.get $3
            i32.const 98
            i32.eq
            br_if $case1|1
            local.get $3
            i32.const 79
            i32.eq
            br_if $case2|1
            local.get $3
            i32.const 111
            i32.eq
            br_if $case3|1
            local.get $3
            i32.const 88
            i32.eq
            br_if $case4|1
            local.get $3
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
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  i32.const 0
  local.set $7
  block $break|2
   loop $continue|2
    local.get $2
    local.tee $3
    i32.const 1
    i32.sub
    local.set $2
    local.get $3
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
    local.get $7
    local.get $1
    i32.mul
    local.get $5
    i32.add
    local.set $7
    local.get $4
    i32.const 2
    i32.add
    local.set $4
    br $continue|2
   end
   unreachable
  end
  local.get $6
  local.get $7
  i32.mul
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/number/I32.parseInt (; 49 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i32>
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/util/string/strtol<i64> (; 50 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  i32.eqz
  if
   i64.const 0
   local.set $3
   local.get $0
   call $~lib/rt/pure/__release
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
    i64.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
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
     i64.const 0
     local.set $3
     local.get $0
     call $~lib/rt/pure/__release
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
    i64.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
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
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/number/I64.parseInt (; 51 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<i64>
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/util/string/strtod (; 52 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  local.set $1
  local.get $1
  i32.eqz
  if
   f64.const nan:0x8000000000000
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load16_u
  local.set $4
  f64.const 1
  local.set $5
  block $break|0
   loop $continue|0
    local.get $4
    call $~lib/util/string/isSpace
    i32.eqz
    br_if $break|0
    local.get $3
    i32.const 2
    i32.add
    local.tee $3
    i32.load16_u
    local.set $4
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $continue|0
   end
   unreachable
  end
  local.get $4
  i32.const 45
  i32.eq
  if
   local.get $1
   i32.const 1
   i32.sub
   local.tee $1
   i32.eqz
   if
    f64.const nan:0x8000000000000
    local.set $2
    local.get $0
    call $~lib/rt/pure/__release
    local.get $2
    return
   end
   local.get $3
   i32.const 2
   i32.add
   local.tee $3
   i32.load16_u
   local.set $4
   f64.const -1
   local.set $5
  else   
   local.get $4
   i32.const 43
   i32.eq
   if
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.eqz
    if
     f64.const nan:0x8000000000000
     local.set $2
     local.get $0
     call $~lib/rt/pure/__release
     local.get $2
     return
    end
    local.get $3
    i32.const 2
    i32.add
    local.tee $3
    i32.load16_u
    local.set $4
   end
  end
  f64.const 0
  local.set $6
  block $break|1
   loop $continue|1
    local.get $1
    local.tee $7
    i32.const 1
    i32.sub
    local.set $1
    local.get $7
    i32.eqz
    br_if $break|1
    local.get $3
    i32.load16_u
    local.set $4
    local.get $4
    i32.const 46
    i32.eq
    if
     local.get $3
     i32.const 2
     i32.add
     local.set $3
     f64.const 0.1
     local.set $2
     block $break|2
      loop $continue|2
       local.get $1
       local.tee $7
       i32.const 1
       i32.sub
       local.set $1
       local.get $7
       i32.eqz
       br_if $break|2
       local.get $3
       i32.load16_u
       local.set $4
       local.get $4
       i32.const 69
       i32.eq
       if (result i32)
        i32.const 1
       else        
        local.get $4
        i32.const 101
        i32.eq
       end
       if
        i32.const 0
        i32.eqz
        if
         i32.const 0
         i32.const 1544
         i32.const 197
         i32.const 10
         call $~lib/builtins/abort
         unreachable
        end
       end
       local.get $4
       i32.const 48
       i32.sub
       local.set $4
       local.get $4
       i32.const 9
       i32.gt_u
       if
        br $break|2
       end
       local.get $6
       local.get $4
       f64.convert_i32_s
       local.get $2
       f64.mul
       f64.add
       local.set $6
       local.get $2
       f64.const 0.1
       f64.mul
       local.set $2
       local.get $3
       i32.const 2
       i32.add
       local.set $3
       br $continue|2
      end
      unreachable
     end
     br $break|1
    end
    local.get $4
    i32.const 48
    i32.sub
    local.set $4
    local.get $4
    i32.const 10
    i32.ge_u
    if
     br $break|1
    end
    local.get $6
    f64.const 10
    f64.mul
    local.get $4
    f64.convert_i32_s
    f64.add
    local.set $6
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    br $continue|1
   end
   unreachable
  end
  local.get $5
  local.get $6
  f64.mul
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/parseFloat (; 53 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/util/string/strtod
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/string/String#concat (; 54 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 552
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    drop
    local.get $3
    call $~lib/rt/pure/__release
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
   i32.const 120
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $6
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__concat (; 55 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 552
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__ne (; 56 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__gt (; 57 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $0
   i32.const 0
   i32.eq
  end
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
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  local.get $3
  i32.eqz
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $4
  i32.eqz
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  local.tee $2
  local.get $4
  local.tee $5
  local.get $2
  local.get $5
  i32.lt_s
  select
  call $~lib/util/string/compareImpl
  i32.const 0
  i32.gt_s
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__lt (; 58 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $0
   i32.const 0
   i32.eq
  end
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
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  local.get $4
  i32.eqz
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $3
  i32.eqz
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  local.tee $2
  local.get $4
  local.tee $5
  local.get $2
  local.get $5
  i32.lt_s
  select
  call $~lib/util/string/compareImpl
  i32.const 0
  i32.lt_s
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__gte (; 59 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/string/String.__lt
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__lte (; 60 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/string/String.__gt
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String#repeat (; 61 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 1
  else   
   local.get $2
   i64.extend_i32_s
   local.get $1
   i64.extend_i32_s
   i64.mul
   i64.const 268435456
   i64.gt_u
  end
  if
   i32.const 2112
   i32.const 456
   i32.const 299
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $2
   i32.eqz
  end
  if
   i32.const 120
   call $~lib/rt/pure/__retain
   return
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $2
  local.get $1
  i32.mul
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  local.get $0
  local.get $2
  i32.const 1
  i32.shl
  local.get $1
  call $~lib/memory/memory.repeat
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $~lib/string/String#replace (; 62 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  local.get $3
  local.get $4
  i32.le_u
  if
   local.get $3
   local.get $4
   i32.lt_u
   if (result i32)
    local.get $0
    call $~lib/rt/pure/__retain
    local.tee $5
   else    
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/string/String.__eq
    select
    call $~lib/rt/pure/__retain
    local.tee $6
   end
   call $~lib/rt/pure/__retain
   local.set $7
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $7
   return
  end
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/string/String#indexOf
  local.set $8
  local.get $8
  i32.const -1
  i32.xor
  if
   local.get $2
   call $~lib/string/String#get:length
   local.set $6
   local.get $3
   local.get $4
   i32.sub
   local.set $3
   local.get $3
   local.get $6
   i32.add
   local.set $5
   local.get $5
   if
    local.get $5
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tlsf/__alloc
    local.set $7
    local.get $7
    local.get $0
    local.get $8
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $7
    local.get $8
    i32.const 1
    i32.shl
    i32.add
    local.get $2
    local.get $6
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $7
    local.get $8
    local.get $6
    i32.add
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $8
    local.get $4
    i32.add
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    local.get $8
    i32.sub
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $9
    local.get $1
    call $~lib/rt/pure/__release
    local.get $2
    call $~lib/rt/pure/__release
    local.get $9
    return
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 63 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.set $4
  local.get $4
  i32.const 1
  i32.and
  i32.eqz
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const -268435456
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 504
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  local.set $5
  local.get $5
  i32.const 16
  i32.add
  local.get $5
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $6
  local.get $6
  i32.load
  local.set $7
  local.get $7
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $7
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $5
   local.get $5
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    i32.const 3
    i32.and
    local.get $5
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=8
  i32.store offset=8
  local.get $8
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $4
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (; 64 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 568
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/string/String#replaceAll (; 65 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  local.get $3
  local.get $4
  i32.le_u
  if
   local.get $3
   local.get $4
   i32.lt_u
   if (result i32)
    local.get $0
    call $~lib/rt/pure/__retain
    local.tee $5
   else    
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/string/String.__eq
    select
    call $~lib/rt/pure/__retain
    local.tee $6
   end
   call $~lib/rt/pure/__retain
   local.set $7
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $7
   return
  end
  local.get $2
  call $~lib/string/String#get:length
  local.set $8
  local.get $4
  i32.eqz
  if
   local.get $8
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__retain
    local.set $6
    local.get $1
    call $~lib/rt/pure/__release
    local.get $2
    call $~lib/rt/pure/__release
    local.get $6
    return
   end
   local.get $3
   local.get $3
   i32.const 1
   i32.add
   local.get $8
   i32.mul
   i32.add
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.set $6
   local.get $6
   local.get $2
   local.get $8
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
   local.get $8
   local.set $5
   block $break|0
    i32.const 0
    local.set $7
    loop $loop|0
     local.get $7
     local.get $3
     i32.lt_u
     i32.eqz
     br_if $break|0
     local.get $6
     local.get $5
     local.tee $9
     i32.const 1
     i32.add
     local.set $5
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     local.get $7
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     i32.store16
     local.get $6
     local.get $5
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $8
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $5
     local.get $8
     i32.add
     local.set $5
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $loop|0
    end
    unreachable
   end
   local.get $6
   call $~lib/rt/pure/__retain
   local.set $7
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $7
   return
  end
  i32.const 0
  local.set $10
  i32.const 0
  local.set $11
  local.get $4
  local.get $8
  i32.eq
  if
   local.get $3
   i32.const 1
   i32.shl
   local.set $5
   local.get $5
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.set $6
   local.get $6
   local.get $0
   local.get $5
   call $~lib/memory/memory.copy
   block $break|1
    loop $continue|1
     local.get $0
     local.get $1
     local.get $10
     call $~lib/string/String#indexOf
     local.tee $11
     i32.const -1
     i32.xor
     i32.eqz
     br_if $break|1
     local.get $6
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $8
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $11
     local.get $4
     i32.add
     local.set $10
     br $continue|1
    end
    unreachable
   end
   local.get $6
   call $~lib/rt/pure/__retain
   local.set $7
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $7
   return
  end
  i32.const 0
  local.set $12
  i32.const 0
  local.set $13
  local.get $3
  local.set $14
  block $break|2
   loop $continue|2
    local.get $0
    local.get $1
    local.get $10
    call $~lib/string/String#indexOf
    local.tee $11
    i32.const -1
    i32.xor
    i32.eqz
    br_if $break|2
    local.get $12
    i32.eqz
    if
     local.get $3
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/tlsf/__alloc
     local.set $12
    end
    local.get $13
    local.get $14
    i32.gt_u
    if
     local.get $14
     i32.const 1
     i32.shl
     local.set $6
     local.get $12
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/rt/tlsf/__realloc
     local.set $12
     local.get $6
     local.set $14
    end
    local.get $11
    local.get $10
    i32.sub
    local.set $6
    local.get $12
    local.get $13
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $10
    i32.const 1
    i32.shl
    i32.add
    local.get $6
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $13
    local.get $6
    i32.add
    local.set $13
    local.get $12
    local.get $13
    i32.const 1
    i32.shl
    i32.add
    local.get $2
    local.get $8
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $13
    local.get $8
    i32.add
    local.set $13
    local.get $11
    local.get $4
    i32.add
    local.set $10
    br $continue|2
   end
   unreachable
  end
  local.get $13
  if
   local.get $13
   local.get $14
   i32.gt_u
   if
    local.get $14
    i32.const 1
    i32.shl
    local.set $6
    local.get $12
    local.get $6
    i32.const 1
    i32.shl
    call $~lib/rt/tlsf/__realloc
    local.set $12
    local.get $6
    local.set $14
   end
   local.get $3
   local.get $10
   i32.sub
   local.set $6
   local.get $6
   if
    local.get $12
    local.get $13
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $10
    i32.const 1
    i32.shl
    i32.add
    local.get $6
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
   end
   local.get $6
   local.get $13
   i32.add
   local.set $6
   local.get $14
   local.get $6
   i32.gt_u
   if
    local.get $12
    local.get $6
    i32.const 1
    i32.shl
    call $~lib/rt/tlsf/__realloc
    local.set $12
   end
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $~lib/string/String#slice (; 66 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $2
  local.get $2
  local.get $1
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.le_s
  if
   i32.const 120
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $6
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $3
  i32.const 1
  i32.shl
  call $~lib/memory/memory.copy
  local.get $6
  call $~lib/rt/pure/__retain
 )
 (func $~lib/rt/__allocArray (; 67 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/pure/__retain
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
 (func $~lib/memory/memory.fill (; 68 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/ensureSize (; 69 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 2112
    i32.const 3216
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
   call $~lib/rt/tlsf/__realloc
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
    call $~lib/rt/pure/__retain
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
 (func $~lib/array/Array<~lib/string/String>#push (; 70 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
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
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/string/String#split (; 71 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 0
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 0
   call $~lib/rt/__allocArray
   local.set $3
   local.get $3
   i32.load offset=4
   local.set $4
   local.get $4
   local.get $0
   call $~lib/rt/pure/__retain
   i32.store
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $5
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  local.get $2
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $2
  end
  local.get $6
  i32.eqz
  if
   local.get $5
   i32.eqz
   if
    i32.const 0
    i32.const 2
    i32.const 3
    i32.const 0
    call $~lib/rt/__allocArray
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $1
    call $~lib/rt/pure/__release
    local.get $4
    return
   end
   local.get $5
   local.tee $4
   local.get $2
   local.tee $3
   local.get $4
   local.get $3
   i32.lt_s
   select
   local.set $5
   local.get $5
   i32.const 2
   i32.const 3
   i32.const 0
   call $~lib/rt/__allocArray
   local.set $4
   local.get $4
   i32.load offset=4
   local.set $3
   block $break|0
    i32.const 0
    local.set $7
    loop $loop|0
     local.get $7
     local.get $5
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 2
     i32.const 1
     call $~lib/rt/tlsf/__alloc
     local.set $8
     local.get $8
     local.get $0
     local.get $7
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     i32.store16
     local.get $3
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $8
     i32.store
     local.get $8
     call $~lib/rt/pure/__retain
     drop
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $loop|0
    end
    unreachable
   end
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $8
   local.get $1
   call $~lib/rt/pure/__release
   local.get $8
   return
  else   
   local.get $5
   i32.eqz
   if
    i32.const 1
    i32.const 2
    i32.const 3
    i32.const 0
    call $~lib/rt/__allocArray
    local.set $3
    local.get $3
    i32.load offset=4
    i32.const 120
    i32.store
    local.get $3
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $1
    call $~lib/rt/pure/__release
    local.get $4
    return
   end
  end
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $9
  i32.const 0
  local.set $10
  i32.const 0
  local.set $11
  i32.const 0
  local.set $12
  block $break|1
   loop $continue|1
    local.get $0
    local.get $1
    local.get $11
    call $~lib/string/String#indexOf
    local.tee $10
    i32.const -1
    i32.xor
    i32.eqz
    br_if $break|1
    local.get $10
    local.get $11
    i32.sub
    local.set $3
    local.get $3
    i32.const 0
    i32.gt_s
    if
     local.get $3
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/tlsf/__alloc
     local.set $4
     local.get $4
     local.get $0
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $3
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $4
     call $~lib/array/Array<~lib/string/String>#push
     drop
    else     
     local.get $9
     i32.const 120
     call $~lib/array/Array<~lib/string/String>#push
     drop
    end
    local.get $12
    i32.const 1
    i32.add
    local.tee $12
    local.get $2
    i32.eq
    if
     local.get $9
     local.set $4
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $10
    local.get $6
    i32.add
    local.set $11
    br $continue|1
   end
   unreachable
  end
  local.get $11
  i32.eqz
  if
   local.get $9
   local.get $0
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $9
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $5
  local.get $11
  i32.sub
  local.set $13
  local.get $13
  i32.const 0
  i32.gt_s
  if
   local.get $13
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.set $3
   local.get $3
   local.get $0
   local.get $11
   i32.const 1
   i32.shl
   i32.add
   local.get $13
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
   local.get $9
   local.get $3
   call $~lib/array/Array<~lib/string/String>#push
   drop
  else   
   local.get $9
   i32.const 120
   call $~lib/array/Array<~lib/string/String>#push
   drop
  end
  local.get $9
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (; 72 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_get (; 73 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 74 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 3264
   i32.const 3216
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
   i32.const 232
   i32.const 3216
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__unchecked_get
 )
 (func $~lib/util/number/decimalCount32 (; 75 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 76 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 3848
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
 (func $~lib/util/number/itoa32 (; 77 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1168
   call $~lib/rt/pure/__retain
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
  call $~lib/rt/tlsf/__alloc
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
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/utoa32 (; 78 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1168
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $2
  local.set $5
  local.get $0
  local.set $4
  local.get $1
  local.set $3
  local.get $5
  local.get $4
  local.get $3
  call $~lib/util/number/utoa32_lut
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/decimalCount64 (; 79 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 80 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
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
  i32.const 3848
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
 (func $~lib/util/number/utoa64 (; 81 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 1168
   call $~lib/rt/pure/__retain
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
   call $~lib/rt/tlsf/__alloc
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
   call $~lib/rt/tlsf/__alloc
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
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa64 (; 82 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 1168
   call $~lib/rt/pure/__retain
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
   call $~lib/rt/tlsf/__alloc
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
   call $~lib/rt/tlsf/__alloc
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
  call $~lib/rt/pure/__retain
 )
 (func $~lib/number/isFinite<f64> (; 83 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/number/isNaN<f64> (; 84 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 85 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 86 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/util/number/genDigits (; 87 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  i32.const 0
  local.get $4
  i32.sub
  local.set $7
  i64.const 1
  local.get $7
  i64.extend_i32_s
  i64.shl
  local.set $8
  local.get $8
  i64.const 1
  i64.sub
  local.set $9
  local.get $3
  local.get $1
  i64.sub
  local.set $10
  local.get $4
  local.set $11
  local.get $3
  local.get $7
  i64.extend_i32_s
  i64.shr_u
  i32.wrap_i64
  local.set $12
  local.get $3
  local.get $9
  i64.and
  local.set $13
  local.get $12
  call $~lib/util/number/decimalCount32
  local.set $14
  local.get $6
  local.set $15
  i32.const 6216
  i32.load offset=4
  local.set $16
  block $break|0
   loop $continue|0
    local.get $14
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block $break|1
     block $case10|1
      block $case9|1
       block $case8|1
        block $case7|1
         block $case6|1
          block $case5|1
           block $case4|1
            block $case3|1
             block $case2|1
              block $case1|1
               block $case0|1
                local.get $14
                local.set $18
                local.get $18
                i32.const 10
                i32.eq
                br_if $case0|1
                local.get $18
                i32.const 9
                i32.eq
                br_if $case1|1
                local.get $18
                i32.const 8
                i32.eq
                br_if $case2|1
                local.get $18
                i32.const 7
                i32.eq
                br_if $case3|1
                local.get $18
                i32.const 6
                i32.eq
                br_if $case4|1
                local.get $18
                i32.const 5
                i32.eq
                br_if $case5|1
                local.get $18
                i32.const 4
                i32.eq
                br_if $case6|1
                local.get $18
                i32.const 3
                i32.eq
                br_if $case7|1
                local.get $18
                i32.const 2
                i32.eq
                br_if $case8|1
                local.get $18
                i32.const 1
                i32.eq
                br_if $case9|1
                br $case10|1
               end
               local.get $12
               i32.const 1000000000
               i32.div_u
               local.set $17
               local.get $12
               i32.const 1000000000
               i32.rem_u
               local.set $12
               br $break|1
              end
              local.get $12
              i32.const 100000000
              i32.div_u
              local.set $17
              local.get $12
              i32.const 100000000
              i32.rem_u
              local.set $12
              br $break|1
             end
             local.get $12
             i32.const 10000000
             i32.div_u
             local.set $17
             local.get $12
             i32.const 10000000
             i32.rem_u
             local.set $12
             br $break|1
            end
            local.get $12
            i32.const 1000000
            i32.div_u
            local.set $17
            local.get $12
            i32.const 1000000
            i32.rem_u
            local.set $12
            br $break|1
           end
           local.get $12
           i32.const 100000
           i32.div_u
           local.set $17
           local.get $12
           i32.const 100000
           i32.rem_u
           local.set $12
           br $break|1
          end
          local.get $12
          i32.const 10000
          i32.div_u
          local.set $17
          local.get $12
          i32.const 10000
          i32.rem_u
          local.set $12
          br $break|1
         end
         local.get $12
         i32.const 1000
         i32.div_u
         local.set $17
         local.get $12
         i32.const 1000
         i32.rem_u
         local.set $12
         br $break|1
        end
        local.get $12
        i32.const 100
        i32.div_u
        local.set $17
        local.get $12
        i32.const 100
        i32.rem_u
        local.set $12
        br $break|1
       end
       local.get $12
       i32.const 10
       i32.div_u
       local.set $17
       local.get $12
       i32.const 10
       i32.rem_u
       local.set $12
       br $break|1
      end
      local.get $12
      local.set $17
      i32.const 0
      local.set $12
      br $break|1
     end
     i32.const 0
     local.set $17
     br $break|1
    end
    local.get $17
    local.get $15
    i32.or
    if
     local.get $0
     local.get $15
     local.tee $18
     i32.const 1
     i32.add
     local.set $15
     local.get $18
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     local.get $17
     i32.const 65535
     i32.and
     i32.add
     i32.store16
    end
    local.get $14
    i32.const 1
    i32.sub
    local.set $14
    local.get $12
    i64.extend_i32_u
    local.get $7
    i64.extend_i32_s
    i64.shl
    local.get $13
    i64.add
    local.set $19
    local.get $19
    local.get $5
    i64.le_u
    if
     global.get $~lib/util/number/_K
     local.get $14
     i32.add
     global.set $~lib/util/number/_K
     local.get $0
     local.set $24
     local.get $15
     local.set $18
     local.get $5
     local.set $23
     local.get $19
     local.set $22
     local.get $16
     local.get $14
     i32.const 2
     i32.shl
     i32.add
     i64.load32_u
     local.get $7
     i64.extend_i32_s
     i64.shl
     local.set $21
     local.get $10
     local.set $20
     local.get $24
     local.get $18
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     i32.add
     local.set $25
     local.get $25
     i32.load16_u
     local.set $26
     block $break|2
      loop $continue|2
       local.get $22
       local.get $20
       i64.lt_u
       if (result i32)
        local.get $23
        local.get $22
        i64.sub
        local.get $21
        i64.ge_u
       else        
        i32.const 0
       end
       if (result i32)
        local.get $22
        local.get $21
        i64.add
        local.get $20
        i64.lt_u
        if (result i32)
         i32.const 1
        else         
         local.get $20
         local.get $22
         i64.sub
         local.get $22
         local.get $21
         i64.add
         local.get $20
         i64.sub
         i64.gt_u
        end
       else        
        i32.const 0
       end
       i32.eqz
       br_if $break|2
       local.get $26
       i32.const 1
       i32.sub
       local.set $26
       local.get $22
       local.get $21
       i64.add
       local.set $22
       br $continue|2
      end
      unreachable
     end
     local.get $25
     local.get $26
     i32.store16
     local.get $15
     return
    end
    br $continue|0
   end
   unreachable
  end
  loop $continue|3
   local.get $13
   i64.const 10
   i64.mul
   local.set $13
   local.get $5
   i64.const 10
   i64.mul
   local.set $5
   local.get $13
   local.get $7
   i64.extend_i32_s
   i64.shr_u
   local.set $19
   local.get $19
   local.get $15
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $0
    local.get $15
    local.tee $17
    i32.const 1
    i32.add
    local.set $15
    local.get $17
    i32.const 1
    i32.shl
    i32.add
    i32.const 48
    local.get $19
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.add
    i32.store16
   end
   local.get $13
   local.get $9
   i64.and
   local.set $13
   local.get $14
   i32.const 1
   i32.sub
   local.set $14
   local.get $13
   local.get $5
   i64.lt_u
   if
    global.get $~lib/util/number/_K
    local.get $14
    i32.add
    global.set $~lib/util/number/_K
    local.get $10
    local.get $16
    i32.const 0
    local.get $14
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    i64.mul
    local.set $10
    local.get $0
    local.set $24
    local.get $15
    local.set $18
    local.get $5
    local.set $23
    local.get $13
    local.set $22
    local.get $8
    local.set $21
    local.get $10
    local.set $20
    local.get $24
    local.get $18
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.set $17
    local.get $17
    i32.load16_u
    local.set $26
    block $break|4
     loop $continue|4
      local.get $22
      local.get $20
      i64.lt_u
      if (result i32)
       local.get $23
       local.get $22
       i64.sub
       local.get $21
       i64.ge_u
      else       
       i32.const 0
      end
      if (result i32)
       local.get $22
       local.get $21
       i64.add
       local.get $20
       i64.lt_u
       if (result i32)
        i32.const 1
       else        
        local.get $20
        local.get $22
        i64.sub
        local.get $22
        local.get $21
        i64.add
        local.get $20
        i64.sub
        i64.gt_u
       end
      else       
       i32.const 0
      end
      i32.eqz
      br_if $break|4
      local.get $26
      i32.const 1
      i32.sub
      local.set $26
      local.get $22
      local.get $21
      i64.add
      local.set $22
      br $continue|4
     end
     unreachable
    end
    local.get $17
    local.get $26
    i32.store16
    local.get $15
    return
   end
   br $continue|3
  end
  unreachable
 )
 (func $~lib/util/number/prettify (; 88 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $2
  i32.eqz
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.shl
   i32.add
   i32.const 46
   i32.const 48
   i32.const 16
   i32.shl
   i32.or
   i32.store
   local.get $1
   i32.const 2
   i32.add
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.set $3
  local.get $1
  local.get $3
  i32.le_s
  if (result i32)
   local.get $3
   i32.const 21
   i32.le_s
  else   
   i32.const 0
  end
  if
   block $break|0
    local.get $1
    local.set $4
    loop $loop|0
     local.get $4
     local.get $3
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     i32.store16
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $loop|0
    end
    unreachable
   end
   local.get $0
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   i32.const 46
   i32.const 48
   i32.const 16
   i32.shl
   i32.or
   i32.store
   local.get $3
   i32.const 2
   i32.add
   return
  else   
   local.get $3
   i32.const 0
   i32.gt_s
   if (result i32)
    local.get $3
    i32.const 21
    i32.le_s
   else    
    i32.const 0
   end
   if
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    local.set $4
    local.get $4
    i32.const 2
    i32.add
    local.get $4
    i32.const 0
    local.get $2
    i32.sub
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    i32.const 46
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    return
   else    
    i32.const -6
    local.get $3
    i32.lt_s
    if (result i32)
     local.get $3
     i32.const 0
     i32.le_s
    else     
     i32.const 0
    end
    if
     i32.const 2
     local.get $3
     i32.sub
     local.set $4
     local.get $0
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     i32.const 48
     i32.const 46
     i32.const 16
     i32.shl
     i32.or
     i32.store
     block $break|1
      i32.const 2
      local.set $5
      loop $loop|1
       local.get $5
       local.get $4
       i32.lt_s
       i32.eqz
       br_if $break|1
       local.get $0
       local.get $5
       i32.const 1
       i32.shl
       i32.add
       i32.const 48
       i32.store16
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $loop|1
      end
      unreachable
     end
     local.get $1
     local.get $4
     i32.add
     return
    else     
     local.get $1
     i32.const 1
     i32.eq
     if
      local.get $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.set $4
      local.get $3
      i32.const 1
      i32.sub
      local.set $5
      local.get $5
      i32.const 0
      i32.lt_s
      local.set $6
      local.get $6
      if
       i32.const 0
       local.get $5
       i32.sub
       local.set $5
      end
      local.get $5
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.set $7
      local.get $4
      local.set $10
      local.get $5
      local.set $9
      local.get $7
      local.set $8
      local.get $10
      local.get $9
      local.get $8
      call $~lib/util/number/utoa32_lut
      local.get $4
      i32.const 45
      i32.const 43
      local.get $6
      select
      i32.store16
      local.get $7
      local.set $1
      local.get $1
      i32.const 2
      i32.add
      return
     else      
      local.get $1
      i32.const 1
      i32.shl
      local.set $7
      local.get $0
      i32.const 4
      i32.add
      local.get $0
      i32.const 2
      i32.add
      local.get $7
      i32.const 2
      i32.sub
      call $~lib/memory/memory.copy
      local.get $0
      i32.const 46
      i32.store16 offset=2
      local.get $0
      local.get $7
      i32.add
      i32.const 101
      i32.store16 offset=2
      local.get $1
      local.get $0
      local.get $7
      i32.add
      i32.const 4
      i32.add
      local.set $9
      local.get $3
      i32.const 1
      i32.sub
      local.set $8
      local.get $8
      i32.const 0
      i32.lt_s
      local.set $6
      local.get $6
      if
       i32.const 0
       local.get $8
       i32.sub
       local.set $8
      end
      local.get $8
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.set $4
      local.get $9
      local.set $11
      local.get $8
      local.set $5
      local.get $4
      local.set $10
      local.get $11
      local.get $5
      local.get $10
      call $~lib/util/number/utoa32_lut
      local.get $9
      i32.const 45
      i32.const 43
      local.get $6
      select
      i32.store16
      local.get $4
      i32.add
      local.set $1
      local.get $1
      i32.const 2
      i32.add
      return
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/dtoa_core (; 89 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i64)
  (local $25 i64)
  (local $26 i32)
  (local $27 i64)
  (local $28 i32)
  local.get $1
  f64.const 0
  f64.lt
  local.set $2
  local.get $2
  if
   local.get $1
   f64.neg
   local.set $1
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $1
  local.set $5
  local.get $0
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i64.reinterpret_f64
  local.set $6
  local.get $6
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.set $7
  local.get $6
  i64.const 4503599627370495
  i64.and
  local.set $8
  local.get $7
  i32.const 0
  i32.ne
  i64.extend_i32_u
  i64.const 52
  i64.shl
  local.get $8
  i64.add
  local.set $9
  local.get $7
  i32.const 1
  local.get $7
  i32.const 0
  i32.ne
  select
  i32.const 1023
  i32.const 52
  i32.add
  i32.sub
  local.set $7
  local.get $9
  local.set $11
  local.get $7
  local.set $10
  local.get $11
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.set $12
  local.get $10
  i32.const 1
  i32.sub
  local.set $13
  local.get $12
  i64.clz
  i32.wrap_i64
  local.set $14
  local.get $12
  local.get $14
  i64.extend_i32_s
  i64.shl
  local.set $12
  local.get $13
  local.get $14
  i32.sub
  local.set $13
  i32.const 1
  local.get $11
  i64.const 4503599627370496
  i64.eq
  i32.add
  local.set $15
  local.get $12
  global.set $~lib/util/number/_frc_plus
  local.get $11
  local.get $15
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $10
  local.get $15
  i32.sub
  local.get $13
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $13
  global.set $~lib/util/number/_exp
  global.get $~lib/util/number/_exp
  local.set $10
  i32.const -61
  local.get $10
  i32.sub
  f64.convert_i32_s
  f64.const 0.30102999566398114
  f64.mul
  f64.const 347
  f64.add
  local.set $16
  local.get $16
  i32.trunc_f64_s
  local.set $15
  local.get $15
  local.get $15
  f64.convert_i32_s
  local.get $16
  f64.ne
  i32.add
  local.set $15
  local.get $15
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.set $14
  i32.const 348
  local.get $14
  i32.const 3
  i32.shl
  i32.sub
  global.set $~lib/util/number/_K
  i32.const 5904
  local.get $14
  call $~lib/array/Array<u64>#__unchecked_get
  global.set $~lib/util/number/_frc_pow
  i32.const 6128
  local.get $14
  call $~lib/array/Array<i16>#__unchecked_get
  global.set $~lib/util/number/_exp_pow
  local.get $9
  i64.clz
  i32.wrap_i64
  local.set $14
  local.get $9
  local.get $14
  i64.extend_i32_s
  i64.shl
  local.set $9
  local.get $7
  local.get $14
  i32.sub
  local.set $7
  global.get $~lib/util/number/_frc_pow
  local.set $12
  global.get $~lib/util/number/_exp_pow
  local.set $15
  local.get $9
  local.set $17
  local.get $12
  local.set $11
  local.get $17
  i64.const 4294967295
  i64.and
  local.set $18
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $19
  local.get $17
  i64.const 32
  i64.shr_u
  local.set $20
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $21
  local.get $18
  local.get $19
  i64.mul
  local.set $22
  local.get $20
  local.get $19
  i64.mul
  local.get $22
  i64.const 32
  i64.shr_u
  i64.add
  local.set $23
  local.get $18
  local.get $21
  i64.mul
  local.get $23
  i64.const 4294967295
  i64.and
  i64.add
  local.set $24
  local.get $24
  i64.const 2147483647
  i64.add
  local.set $24
  local.get $23
  i64.const 32
  i64.shr_u
  local.set $23
  local.get $24
  i64.const 32
  i64.shr_u
  local.set $24
  local.get $20
  local.get $21
  i64.mul
  local.get $23
  i64.add
  local.get $24
  i64.add
  local.set $24
  local.get $7
  local.set $10
  local.get $15
  local.set $13
  local.get $10
  local.get $13
  i32.add
  i32.const 64
  i32.add
  local.set $10
  global.get $~lib/util/number/_frc_plus
  local.set $17
  local.get $12
  local.set $11
  local.get $17
  i64.const 4294967295
  i64.and
  local.set $23
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $22
  local.get $17
  i64.const 32
  i64.shr_u
  local.set $21
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $20
  local.get $23
  local.get $22
  i64.mul
  local.set $19
  local.get $21
  local.get $22
  i64.mul
  local.get $19
  i64.const 32
  i64.shr_u
  i64.add
  local.set $18
  local.get $23
  local.get $20
  i64.mul
  local.get $18
  i64.const 4294967295
  i64.and
  i64.add
  local.set $25
  local.get $25
  i64.const 2147483647
  i64.add
  local.set $25
  local.get $18
  i64.const 32
  i64.shr_u
  local.set $18
  local.get $25
  i64.const 32
  i64.shr_u
  local.set $25
  local.get $21
  local.get $20
  i64.mul
  local.get $18
  i64.add
  local.get $25
  i64.add
  i64.const 1
  i64.sub
  local.set $25
  global.get $~lib/util/number/_exp
  local.set $26
  local.get $15
  local.set $13
  local.get $26
  local.get $13
  i32.add
  i32.const 64
  i32.add
  local.set $26
  global.get $~lib/util/number/_frc_minus
  local.set $17
  local.get $12
  local.set $11
  local.get $17
  i64.const 4294967295
  i64.and
  local.set $18
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $19
  local.get $17
  i64.const 32
  i64.shr_u
  local.set $20
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $21
  local.get $18
  local.get $19
  i64.mul
  local.set $22
  local.get $20
  local.get $19
  i64.mul
  local.get $22
  i64.const 32
  i64.shr_u
  i64.add
  local.set $23
  local.get $18
  local.get $21
  i64.mul
  local.get $23
  i64.const 4294967295
  i64.and
  i64.add
  local.set $27
  local.get $27
  i64.const 2147483647
  i64.add
  local.set $27
  local.get $23
  i64.const 32
  i64.shr_u
  local.set $23
  local.get $27
  i64.const 32
  i64.shr_u
  local.set $27
  local.get $20
  local.get $21
  i64.mul
  local.get $23
  i64.add
  local.get $27
  i64.add
  i64.const 1
  i64.add
  local.set $27
  local.get $25
  local.get $27
  i64.sub
  local.set $23
  local.get $4
  local.get $24
  local.get $10
  local.get $25
  local.get $26
  local.get $23
  local.get $3
  call $~lib/util/number/genDigits
  local.set $28
  local.get $0
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $28
  local.get $2
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.set $28
  local.get $28
  local.get $2
  i32.add
 )
 (func $~lib/string/String#substring (; 90 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 120
   call $~lib/rt/pure/__retain
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
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $10
  local.get $10
  local.get $0
  local.get $8
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $10
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/dtoa (; 91 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 5072
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  call $~lib/number/isFinite<f64>
  i32.eqz
  if
   local.get $0
   call $~lib/number/isNaN<f64>
   if
    i32.const 5096
    call $~lib/rt/pure/__retain
    return
   end
   i32.const 5120
   i32.const 5160
   local.get $0
   f64.const 0
   f64.lt
   select
   call $~lib/rt/pure/__retain
   return
  end
  i32.const 28
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $1
  local.get $0
  call $~lib/util/number/dtoa_core
  local.set $2
  local.get $2
  i32.const 28
  i32.eq
  if
   local.get $1
   call $~lib/rt/pure/__retain
   return
  end
  local.get $1
  i32.const 0
  local.get $2
  call $~lib/string/String#substring
  local.set $3
  local.get $1
  call $~lib/rt/tlsf/__free
  local.get $3
 )
 (func $start:std/string (; 92 ;) (type $FUNCSIG$v)
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
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 i32)
  (local $102 i32)
  (local $103 i32)
  (local $104 i32)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 i32)
  (local $119 i32)
  (local $120 i32)
  (local $121 i32)
  (local $122 i32)
  (local $123 i32)
  (local $124 i32)
  (local $125 i32)
  (local $126 i32)
  (local $127 i32)
  (local $128 i32)
  (local $129 i32)
  (local $130 i32)
  (local $131 i32)
  (local $132 i32)
  (local $133 i32)
  (local $134 i32)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 i32)
  (local $139 i32)
  (local $140 i32)
  (local $141 i32)
  (local $142 i32)
  (local $143 i32)
  (local $144 i32)
  (local $145 i32)
  (local $146 i32)
  (local $147 i32)
  (local $148 i32)
  (local $149 i32)
  (local $150 i32)
  (local $151 i32)
  (local $152 i32)
  (local $153 i32)
  (local $154 i32)
  (local $155 i32)
  (local $156 i32)
  (local $157 i32)
  (local $158 i32)
  (local $159 i32)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 i32)
  (local $166 i32)
  (local $167 i32)
  (local $168 i32)
  (local $169 i32)
  (local $170 i32)
  (local $171 i32)
  global.get $std/string/str
  i32.const 24
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  call $~lib/string/String#get:length
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.const 104
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  call $~lib/string/String.__not
  i32.eqz
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 384
  call $~lib/string/String.__not
  i32.eqz
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  call $~lib/string/String.__not
  i32.eqz
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  i32.const 0
  i32.const 0
  call $~lib/string/String.fromCharCode|trampoline
  local.tee $0
  i32.const 384
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  i32.const 54
  i32.const 0
  call $~lib/string/String.fromCharCode|trampoline
  local.tee $1
  i32.const 432
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  i32.const 65590
  i32.const 0
  call $~lib/string/String.fromCharCode|trampoline
  local.tee $2
  i32.const 432
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/string/String.fromCodePoint
  local.tee $3
  i32.const 384
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 54
  call $~lib/string/String.fromCodePoint
  local.tee $4
  i32.const 432
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 22
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 119558
  call $~lib/string/String.fromCodePoint
  local.tee $5
  i32.eqz
  if
   i32.const 504
   i32.const 72
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 528
  i32.const 0
  call $~lib/string/String#startsWith
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 25
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 576
  i32.const 536870904
  call $~lib/string/String#endsWith
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 26
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 608
  i32.const 0
  call $~lib/string/String#includes
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 27
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 0
  i32.const 632
  call $~lib/string/String#padStart
  local.tee $6
  global.get $std/string/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 15
  i32.const 632
  call $~lib/string/String#padStart
  local.tee $7
  global.get $std/string/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 30
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 3
  i32.const 632
  call $~lib/string/String#padStart
  local.tee $8
  i32.const 656
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 10
  i32.const 120
  call $~lib/string/String#padStart
  local.tee $9
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 32
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 100
  i32.const 120
  call $~lib/string/String#padStart
  local.tee $10
  i32.const 408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 33
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 5
  i32.const 632
  call $~lib/string/String#padStart
  local.tee $11
  i32.const 704
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 34
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 6
  i32.const 736
  call $~lib/string/String#padStart
  local.tee $12
  i32.const 760
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 35
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 8
  i32.const 736
  call $~lib/string/String#padStart
  local.tee $13
  i32.const 792
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 36
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 0
  i32.const 632
  call $~lib/string/String#padEnd
  local.tee $14
  global.get $std/string/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 38
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 15
  i32.const 632
  call $~lib/string/String#padEnd
  local.tee $15
  global.get $std/string/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 39
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 3
  i32.const 632
  call $~lib/string/String#padEnd
  local.tee $16
  i32.const 656
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 40
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 10
  i32.const 120
  call $~lib/string/String#padEnd
  local.tee $17
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 100
  i32.const 120
  call $~lib/string/String#padEnd
  local.tee $18
  i32.const 408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 42
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 5
  i32.const 632
  call $~lib/string/String#padEnd
  local.tee $19
  i32.const 824
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 43
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 6
  i32.const 680
  call $~lib/string/String#padEnd
  local.tee $20
  i32.const 856
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 44
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 8
  i32.const 680
  call $~lib/string/String#padEnd
  local.tee $21
  i32.const 888
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 45
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 47
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 528
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 48
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 408
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 49
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  global.get $std/string/str
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 50
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 120
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 51
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 920
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 52
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 944
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 53
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 920
  i32.const 2
  call $~lib/string/String#indexOf
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 54
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 920
  i32.const 3
  call $~lib/string/String#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 55
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 968
  i32.const -1
  call $~lib/string/String#indexOf
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 56
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  i32.const 2147483647
  call $~lib/string/String#lastIndexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 58
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 528
  i32.const 2147483647
  call $~lib/string/String#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 59
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 120
  i32.const 2147483647
  call $~lib/string/String#lastIndexOf
  global.get $std/string/str
  call $~lib/string/String#get:length
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 60
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 920
  i32.const 2147483647
  call $~lib/string/String#lastIndexOf
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 61
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 944
  i32.const 2147483647
  call $~lib/string/String#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 62
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 992
  i32.const 2147483647
  call $~lib/string/String#lastIndexOf
  i32.const 15
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 63
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 920
  i32.const 2
  call $~lib/string/String#lastIndexOf
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 64
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 920
  i32.const 3
  call $~lib/string/String#lastIndexOf
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 65
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 968
  i32.const -1
  call $~lib/string/String#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 66
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 1016
  i32.const 0
  call $~lib/string/String#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 67
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 528
  i32.const 0
  call $~lib/string/String#lastIndexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 68
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  call $~lib/string/String#trimStart
  local.tee $22
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 70
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  call $~lib/string/String#trimStart
  local.tee $23
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 71
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1064
  call $~lib/string/String#trimStart
  local.tee $24
  i32.const 1104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 72
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  call $~lib/string/String#trimEnd
  local.tee $25
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 74
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  call $~lib/string/String#trimEnd
  local.tee $26
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 75
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1064
  call $~lib/string/String#trimEnd
  local.tee $27
  i32.const 1136
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 76
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  call $~lib/string/String#trim
  local.tee $28
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 78
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  call $~lib/string/String#trim
  local.tee $29
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 79
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1064
  call $~lib/string/String#trim
  local.tee $30
  i32.const 680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 80
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1168
  i32.const 0
  call $~lib/string/parseInt
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 82
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1192
  i32.const 0
  call $~lib/string/parseInt
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 83
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1216
  i32.const 0
  call $~lib/string/parseInt
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 84
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1248
  i32.const 0
  call $~lib/string/parseInt
  f64.const 455
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 85
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1280
  i32.const 0
  call $~lib/string/parseInt
  f64.const 3855
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 86
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1312
  i32.const 0
  call $~lib/string/parseInt
  f64.const 3855
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 87
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1344
  i32.const 0
  call $~lib/string/parseInt
  f64.const 11
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 88
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1368
  i32.const 0
  call $~lib/string/parseInt
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 89
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1392
  i32.const 0
  call $~lib/string/parseInt
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 91
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1416
  i32.const 0
  call $~lib/string/parseInt
  f64.const 2
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 92
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1448
  i32.const 0
  call $~lib/number/I32.parseInt
  i32.const 2147483647
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 94
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1488
  i32.const 0
  call $~lib/number/I64.parseInt
  i64.const 9223372036854775807
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 95
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1168
  call $~lib/string/parseFloat
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 97
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1192
  call $~lib/string/parseFloat
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 98
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1600
  call $~lib/string/parseFloat
  f64.const 0.1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 99
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1624
  call $~lib/string/parseFloat
  f64.const 0.25
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 100
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1648
  call $~lib/string/parseFloat
  f64.const 0.1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 101
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1680
  call $~lib/string/parseFloat
  f64.const 0.1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 103
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 1712
  call $~lib/string/String.__concat
  local.tee $31
  call $~lib/rt/pure/__retain
  local.set $32
  local.get $32
  i32.const 1736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 107
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $32
  i32.const 408
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 108
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $31
  call $~lib/rt/pure/__release
  local.get $32
  call $~lib/rt/pure/__release
  i32.const 120
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 110
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  global.get $std/string/nullStr
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 111
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/nullStr
  i32.const 120
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 112
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 1712
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 113
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 114
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1760
  i32.const 1784
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 115
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1760
  i32.const 1760
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 116
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1808
  i32.const 1832
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 117
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1856
  i32.const 1888
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 118
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1920
  i32.const 1920
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 119
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1920
  i32.const 1952
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 120
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1984
  i32.const 2024
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 121
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1712
  i32.const 408
  call $~lib/string/String.__gt
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 123
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2064
  i32.const 408
  call $~lib/string/String.__gt
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 124
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2064
  i32.const 2088
  call $~lib/string/String.__gte
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 125
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2064
  i32.const 1736
  call $~lib/string/String.__gt
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 126
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2064
  i32.const 1736
  call $~lib/string/String.__lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 127
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1712
  global.get $std/string/nullStr
  call $~lib/string/String.__lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 129
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/nullStr
  i32.const 1712
  call $~lib/string/String.__lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 130
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 120
  call $~lib/string/String.__gt
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 132
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 680
  call $~lib/string/String.__lt
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 133
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 120
  call $~lib/string/String.__gte
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 134
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 680
  call $~lib/string/String.__lte
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 135
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 120
  call $~lib/string/String.__lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 136
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 680
  call $~lib/string/String.__gt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 137
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  call $~lib/string/String.__lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 138
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  call $~lib/string/String.__gt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 139
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  call $~lib/string/String.__gte
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 140
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  call $~lib/string/String.__lte
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 141
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 65377
  call $~lib/string/String.fromCodePoint
  local.set $32
  i32.const 55296
  call $~lib/string/String.fromCodePoint
  local.tee $31
  i32.const 56322
  call $~lib/string/String.fromCodePoint
  local.tee $33
  call $~lib/string/String.__concat
  local.tee $34
  call $~lib/rt/pure/__retain
  local.set $35
  local.get $32
  local.get $35
  call $~lib/string/String.__gt
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 146
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $32
  call $~lib/rt/pure/__release
  local.get $31
  call $~lib/rt/pure/__release
  local.get $33
  call $~lib/rt/pure/__release
  local.get $34
  call $~lib/rt/pure/__release
  local.get $35
  call $~lib/rt/pure/__release
  i32.const 736
  call $~lib/string/String#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 149
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 100
  call $~lib/string/String#repeat
  local.tee $35
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 151
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 0
  call $~lib/string/String#repeat
  local.tee $34
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 152
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 1
  call $~lib/string/String#repeat
  local.tee $33
  i32.const 408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 153
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 2
  call $~lib/string/String#repeat
  local.tee $31
  i32.const 2088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 154
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 3
  call $~lib/string/String#repeat
  local.tee $32
  i32.const 2160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 155
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1736
  i32.const 4
  call $~lib/string/String#repeat
  local.tee $36
  i32.const 2184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 156
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 5
  call $~lib/string/String#repeat
  local.tee $37
  i32.const 2216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 157
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 6
  call $~lib/string/String#repeat
  local.tee $38
  i32.const 2248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 158
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 7
  call $~lib/string/String#repeat
  local.tee $39
  i32.const 2280
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 159
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  i32.const 120
  call $~lib/string/String#replace
  local.tee $40
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 161
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  i32.const 2312
  call $~lib/string/String#replace
  local.tee $41
  i32.const 2312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 162
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2312
  i32.const 2312
  i32.const 120
  call $~lib/string/String#replace
  local.tee $42
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 163
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2312
  i32.const 120
  i32.const 120
  call $~lib/string/String#replace
  local.tee $43
  i32.const 2312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 164
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 2336
  i32.const 2312
  call $~lib/string/String#replace
  local.tee $44
  i32.const 680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 165
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 680
  i32.const 2312
  call $~lib/string/String#replace
  local.tee $45
  i32.const 2312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 166
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 2360
  i32.const 2312
  call $~lib/string/String#replace
  local.tee $46
  i32.const 680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 167
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 1736
  i32.const 1736
  call $~lib/string/String#replace
  local.tee $47
  i32.const 680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 168
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2384
  i32.const 2336
  i32.const 2312
  call $~lib/string/String#replace
  local.tee $48
  i32.const 2416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 169
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 120
  i32.const 2312
  call $~lib/string/String#replace
  local.tee $49
  i32.const 2448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 170
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2472
  i32.const 2496
  i32.const 2312
  call $~lib/string/String#replace
  local.tee $50
  i32.const 2448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 171
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 2520
  i32.const 2544
  call $~lib/string/String#replace
  local.tee $51
  i32.const 2568
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 172
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 2520
  i32.const 120
  call $~lib/string/String#replace
  local.tee $52
  i32.const 1736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 173
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  i32.const 680
  call $~lib/string/String#replaceAll
  local.tee $53
  i32.const 680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 175
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 2336
  i32.const 2312
  call $~lib/string/String#replaceAll
  local.tee $54
  i32.const 680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 176
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 856
  i32.const 680
  i32.const 2312
  call $~lib/string/String#replaceAll
  local.tee $55
  i32.const 2544
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 178
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2592
  i32.const 680
  i32.const 2312
  call $~lib/string/String#replaceAll
  local.tee $56
  i32.const 2632
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 179
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 856
  i32.const 1736
  i32.const 1736
  call $~lib/string/String#replaceAll
  local.tee $57
  i32.const 856
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 180
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2656
  i32.const 408
  i32.const 2632
  call $~lib/string/String#replaceAll
  local.tee $58
  i32.const 2688
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 181
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 856
  i32.const 1736
  i32.const 2544
  call $~lib/string/String#replaceAll
  local.tee $59
  i32.const 2736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 182
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2768
  i32.const 2792
  i32.const 2544
  call $~lib/string/String#replaceAll
  local.tee $60
  i32.const 2816
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 183
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 2360
  i32.const 2312
  call $~lib/string/String#replaceAll
  local.tee $61
  i32.const 680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 184
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2360
  i32.const 2840
  i32.const 2544
  call $~lib/string/String#replaceAll
  local.tee $62
  i32.const 2360
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 185
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 2864
  i32.const 2312
  call $~lib/string/String#replaceAll
  local.tee $63
  i32.const 2888
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 186
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1736
  i32.const 1736
  i32.const 2312
  call $~lib/string/String#replaceAll
  local.tee $64
  i32.const 2312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 187
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2384
  i32.const 2336
  i32.const 2312
  call $~lib/string/String#replaceAll
  local.tee $65
  i32.const 2912
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 188
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  i32.const 120
  call $~lib/string/String#replaceAll
  local.tee $66
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 190
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  i32.const 2312
  call $~lib/string/String#replaceAll
  local.tee $67
  i32.const 2312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 191
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2312
  i32.const 2312
  i32.const 120
  call $~lib/string/String#replaceAll
  local.tee $68
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 192
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2312
  i32.const 120
  i32.const 120
  call $~lib/string/String#replaceAll
  local.tee $69
  i32.const 2312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 193
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 680
  i32.const 2336
  call $~lib/string/String#replaceAll
  local.tee $70
  i32.const 2336
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 194
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 2944
  i32.const 2336
  call $~lib/string/String#replaceAll
  local.tee $71
  i32.const 680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 195
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 120
  i32.const 2312
  call $~lib/string/String#replaceAll
  local.tee $72
  i32.const 2968
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 196
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 680
  i32.const 120
  i32.const 120
  call $~lib/string/String#replaceAll
  local.tee $73
  i32.const 680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 197
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3000
  local.tee $74
  global.get $std/string/str
  local.tee $75
  i32.ne
  if
   local.get $74
   call $~lib/rt/pure/__retain
   drop
   local.get $75
   call $~lib/rt/pure/__release
  end
  local.get $74
  global.set $std/string/str
  global.get $std/string/str
  i32.const 0
  i32.const 2147483647
  call $~lib/string/String#slice
  local.tee $74
  i32.const 3000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 201
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const -1
  i32.const 2147483647
  call $~lib/string/String#slice
  local.tee $75
  i32.const 3048
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 202
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const -5
  i32.const 2147483647
  call $~lib/string/String#slice
  local.tee $76
  i32.const 3072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 203
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 2
  i32.const 7
  call $~lib/string/String#slice
  local.tee $77
  i32.const 3104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 204
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const -11
  i32.const -6
  call $~lib/string/String#slice
  local.tee $78
  i32.const 3136
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 205
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 4
  i32.const 3
  call $~lib/string/String#slice
  local.tee $79
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 206
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 0
  i32.const -1
  call $~lib/string/String#slice
  local.tee $80
  i32.const 3168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 207
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $81
  i32.const 120
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  local.set $82
  local.get $81
  call $~lib/rt/pure/__release
  local.get $82
  local.set $81
  local.get $81
  call $~lib/array/Array<~lib/string/String>#get:length
  i32.const 1
  i32.eq
  if (result i32)
   local.get $81
   i32.const 0
   call $~lib/array/Array<~lib/string/String>#__get
   local.tee $82
   i32.const 120
   call $~lib/string/String.__eq
   local.set $83
   local.get $82
   call $~lib/rt/pure/__release
   local.get $83
  else   
   i32.const 0
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 213
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 120
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  local.set $83
  local.get $81
  call $~lib/rt/pure/__release
  local.get $83
  local.set $81
  local.get $81
  call $~lib/array/Array<~lib/string/String>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 215
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 920
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  local.set $82
  local.get $81
  call $~lib/rt/pure/__release
  local.get $82
  local.set $81
  local.get $81
  call $~lib/array/Array<~lib/string/String>#get:length
  i32.const 1
  i32.eq
  if (result i32)
   local.get $81
   i32.const 0
   call $~lib/array/Array<~lib/string/String>#__get
   local.tee $82
   i32.const 120
   call $~lib/string/String.__eq
   local.set $83
   local.get $82
   call $~lib/rt/pure/__release
   local.get $83
  else   
   i32.const 0
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 217
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3376
  i32.const 3408
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  local.set $83
  local.get $81
  call $~lib/rt/pure/__release
  local.get $83
  local.set $81
  local.get $81
  call $~lib/array/Array<~lib/string/String>#get:length
  i32.const 1
  i32.eq
  if (result i32)
   local.get $81
   i32.const 0
   call $~lib/array/Array<~lib/string/String>#__get
   local.tee $83
   i32.const 3376
   call $~lib/string/String.__eq
   local.set $82
   local.get $83
   call $~lib/rt/pure/__release
   local.get $82
  else   
   i32.const 0
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 219
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3376
  i32.const 920
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  local.set $82
  local.get $81
  call $~lib/rt/pure/__release
  local.get $82
  local.set $81
  local.get $81
  call $~lib/array/Array<~lib/string/String>#get:length
  i32.const 3
  i32.eq
  if (result i32)
   local.get $81
   i32.const 0
   call $~lib/array/Array<~lib/string/String>#__get
   local.tee $82
   i32.const 408
   call $~lib/string/String.__eq
   local.set $83
   local.get $82
   call $~lib/rt/pure/__release
   local.get $83
  else   
   i32.const 0
  end
  i32.const 0
  i32.ne
  if (result i32)
   local.get $81
   i32.const 1
   call $~lib/array/Array<~lib/string/String>#__get
   local.tee $82
   i32.const 1712
   call $~lib/string/String.__eq
   local.set $83
   local.get $82
   call $~lib/rt/pure/__release
   local.get $83
  else   
   i32.const 0
  end
  i32.const 0
  i32.ne
  if (result i32)
   local.get $81
   i32.const 2
   call $~lib/array/Array<~lib/string/String>#__get
   local.tee $82
   i32.const 2520
   call $~lib/string/String.__eq
   local.set $83
   local.get $82
   call $~lib/rt/pure/__release
   local.get $83
  else   
   i32.const 0
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 221
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $81
  call $~lib/rt/pure/__release
  i32.const 0
  call $~lib/util/number/itoa32
  local.tee $81
  i32.const 1168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 247
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/util/number/itoa32
  local.tee $82
  i32.const 1192
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 248
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  call $~lib/util/number/itoa32
  local.tee $83
  i32.const 3880
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 249
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 123
  call $~lib/util/number/itoa32
  local.tee $84
  i32.const 736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 250
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1000
  call $~lib/util/number/itoa32
  local.tee $85
  i32.const 3904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 251
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1234
  call $~lib/util/number/itoa32
  local.tee $86
  i32.const 3936
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 252
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12345
  call $~lib/util/number/itoa32
  local.tee $87
  i32.const 3960
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 253
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 123456
  call $~lib/util/number/itoa32
  local.tee $88
  i32.const 3992
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 254
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1111111
  call $~lib/util/number/itoa32
  local.tee $89
  i32.const 4024
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 255
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1234567
  call $~lib/util/number/itoa32
  local.tee $90
  i32.const 4056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 256
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2147483646
  call $~lib/util/number/itoa32
  local.tee $91
  i32.const 4088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 257
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2147483647
  call $~lib/util/number/itoa32
  local.tee $92
  i32.const 4128
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 258
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -2147483648
  call $~lib/util/number/itoa32
  local.tee $93
  i32.const 4168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 259
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  call $~lib/util/number/itoa32
  local.tee $94
  i32.const 4208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 260
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/util/number/utoa32
  local.tee $95
  i32.const 1168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 262
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1000
  call $~lib/util/number/utoa32
  local.tee $96
  i32.const 4232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 263
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2147483647
  call $~lib/util/number/utoa32
  local.tee $97
  i32.const 4128
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 264
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -2147483648
  call $~lib/util/number/utoa32
  local.tee $98
  i32.const 4256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 265
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  call $~lib/util/number/utoa32
  local.tee $99
  i32.const 4296
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 266
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  call $~lib/util/number/utoa64
  local.tee $100
  i32.const 1168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 268
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1234
  call $~lib/util/number/utoa64
  local.tee $101
  i32.const 3936
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 269
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 99999999
  call $~lib/util/number/utoa64
  local.tee $102
  i32.const 4336
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 270
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 100000000
  call $~lib/util/number/utoa64
  local.tee $103
  i32.const 4368
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 271
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 4294967295
  call $~lib/util/number/utoa64
  local.tee $104
  i32.const 4296
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 272
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 68719476735
  call $~lib/util/number/utoa64
  local.tee $105
  i32.const 4408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 273
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 868719476735
  call $~lib/util/number/utoa64
  local.tee $106
  i32.const 4448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 274
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 999868719476735
  call $~lib/util/number/utoa64
  local.tee $107
  i32.const 4488
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 275
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 9999868719476735
  call $~lib/util/number/utoa64
  local.tee $108
  i32.const 4536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 276
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 19999868719476735
  call $~lib/util/number/utoa64
  local.tee $109
  i32.const 4584
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 277
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -1
  call $~lib/util/number/utoa64
  local.tee $110
  i32.const 4640
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 278
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  call $~lib/util/number/itoa64
  local.tee $111
  i32.const 1168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 280
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -1234
  call $~lib/util/number/itoa64
  local.tee $112
  i32.const 4696
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 281
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 4294967295
  call $~lib/util/number/itoa64
  local.tee $113
  i32.const 4296
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 282
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -4294967295
  call $~lib/util/number/itoa64
  local.tee $114
  i32.const 4728
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 283
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 68719476735
  call $~lib/util/number/itoa64
  local.tee $115
  i32.const 4408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 284
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -68719476735
  call $~lib/util/number/itoa64
  local.tee $116
  i32.const 4768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 285
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -868719476735
  call $~lib/util/number/itoa64
  local.tee $117
  i32.const 4808
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 286
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -999868719476735
  call $~lib/util/number/itoa64
  local.tee $118
  i32.const 4856
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 287
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -19999868719476735
  call $~lib/util/number/itoa64
  local.tee $119
  i32.const 4904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 288
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 9223372036854775807
  call $~lib/util/number/itoa64
  local.tee $120
  i32.const 4960
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 289
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -9223372036854775808
  call $~lib/util/number/itoa64
  local.tee $121
  i32.const 5016
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 290
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  call $~lib/util/number/dtoa
  local.tee $122
  i32.const 5072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 293
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  call $~lib/util/number/dtoa
  local.tee $123
  i32.const 5072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 294
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  call $~lib/util/number/dtoa
  local.tee $124
  i32.const 5096
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 295
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  call $~lib/util/number/dtoa
  local.tee $125
  i32.const 5160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 296
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  call $~lib/util/number/dtoa
  local.tee $126
  i32.const 5120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 297
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2.220446049250313e-16
  call $~lib/util/number/dtoa
  local.tee $127
  i32.const 6248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 298
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -2.220446049250313e-16
  call $~lib/util/number/dtoa
  local.tee $128
  i32.const 6312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 299
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1797693134862315708145274e284
  call $~lib/util/number/dtoa
  local.tee $129
  i32.const 6376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 300
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1797693134862315708145274e284
  call $~lib/util/number/dtoa
  local.tee $130
  i32.const 6440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 301
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4185580496821356722454785e274
  call $~lib/util/number/dtoa
  local.tee $131
  i32.const 6504
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 302
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2.2250738585072014e-308
  call $~lib/util/number/dtoa
  local.tee $132
  i32.const 6568
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 303
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.940656e-318
  call $~lib/util/number/dtoa
  local.tee $133
  i32.const 6632
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 306
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9060801153433600
  call $~lib/util/number/dtoa
  local.tee $134
  i32.const 6680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 307
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4708356024711512064
  call $~lib/util/number/dtoa
  local.tee $135
  i32.const 6736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 308
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9409340012568248320
  call $~lib/util/number/dtoa
  local.tee $136
  i32.const 6800
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 309
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 5e-324
  call $~lib/util/number/dtoa
  local.tee $137
  i32.const 6864
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 310
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  call $~lib/util/number/dtoa
  local.tee $138
  i32.const 6896
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 316
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.1
  call $~lib/util/number/dtoa
  local.tee $139
  i32.const 1600
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 317
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  call $~lib/util/number/dtoa
  local.tee $140
  i32.const 6920
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 318
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.1
  call $~lib/util/number/dtoa
  local.tee $141
  i32.const 6944
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 319
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1e6
  call $~lib/util/number/dtoa
  local.tee $142
  i32.const 6968
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 321
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1e-06
  call $~lib/util/number/dtoa
  local.tee $143
  i32.const 7008
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 322
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1e6
  call $~lib/util/number/dtoa
  local.tee $144
  i32.const 7040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 323
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1e-06
  call $~lib/util/number/dtoa
  local.tee $145
  i32.const 7080
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 324
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1e7
  call $~lib/util/number/dtoa
  local.tee $146
  i32.const 7120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 325
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1e-07
  call $~lib/util/number/dtoa
  local.tee $147
  i32.const 7160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 326
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.e+308
  call $~lib/util/number/dtoa
  local.tee $148
  i32.const 7184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 328
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1.e+308
  call $~lib/util/number/dtoa
  local.tee $149
  i32.const 7216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 329
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  call $~lib/util/number/dtoa
  local.tee $150
  i32.const 5160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 330
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  call $~lib/util/number/dtoa
  local.tee $151
  i32.const 5120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 331
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1e-308
  call $~lib/util/number/dtoa
  local.tee $152
  i32.const 7248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 332
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1e-308
  call $~lib/util/number/dtoa
  local.tee $153
  i32.const 7280
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 333
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1e-323
  call $~lib/util/number/dtoa
  local.tee $154
  i32.const 7312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 334
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1e-323
  call $~lib/util/number/dtoa
  local.tee $155
  i32.const 7344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 335
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  call $~lib/util/number/dtoa
  local.tee $156
  i32.const 5072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 336
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4294967272
  call $~lib/util/number/dtoa
  local.tee $157
  i32.const 7376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 338
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.2312145673456234e-08
  call $~lib/util/number/dtoa
  local.tee $158
  i32.const 7416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 339
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 555555555.5555556
  call $~lib/util/number/dtoa
  local.tee $159
  i32.const 7480
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 341
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.9999999999999999
  call $~lib/util/number/dtoa
  local.tee $160
  i32.const 7536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 342
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  call $~lib/util/number/dtoa
  local.tee $161
  i32.const 6896
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 343
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 12.34
  call $~lib/util/number/dtoa
  local.tee $162
  i32.const 7592
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 344
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.3333333333333333
  call $~lib/util/number/dtoa
  local.tee $163
  i32.const 7624
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 346
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1234e17
  call $~lib/util/number/dtoa
  local.tee $164
  i32.const 7680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 347
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1234e18
  call $~lib/util/number/dtoa
  local.tee $165
  i32.const 7744
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 348
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2.71828
  call $~lib/util/number/dtoa
  local.tee $166
  i32.const 7784
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 349
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.0271828
  call $~lib/util/number/dtoa
  local.tee $167
  i32.const 7816
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 350
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 271.828
  call $~lib/util/number/dtoa
  local.tee $168
  i32.const 7856
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 351
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.1e+128
  call $~lib/util/number/dtoa
  local.tee $169
  i32.const 7888
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 352
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.1e-64
  call $~lib/util/number/dtoa
  local.tee $170
  i32.const 7920
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 353
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.000035689
  call $~lib/util/number/dtoa
  local.tee $171
  i32.const 7952
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 354
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $26
  call $~lib/rt/pure/__release
  local.get $27
  call $~lib/rt/pure/__release
  local.get $28
  call $~lib/rt/pure/__release
  local.get $29
  call $~lib/rt/pure/__release
  local.get $30
  call $~lib/rt/pure/__release
  local.get $31
  call $~lib/rt/pure/__release
  local.get $32
  call $~lib/rt/pure/__release
  local.get $33
  call $~lib/rt/pure/__release
  local.get $34
  call $~lib/rt/pure/__release
  local.get $35
  call $~lib/rt/pure/__release
  local.get $36
  call $~lib/rt/pure/__release
  local.get $37
  call $~lib/rt/pure/__release
  local.get $38
  call $~lib/rt/pure/__release
  local.get $39
  call $~lib/rt/pure/__release
  local.get $40
  call $~lib/rt/pure/__release
  local.get $41
  call $~lib/rt/pure/__release
  local.get $42
  call $~lib/rt/pure/__release
  local.get $43
  call $~lib/rt/pure/__release
  local.get $44
  call $~lib/rt/pure/__release
  local.get $45
  call $~lib/rt/pure/__release
  local.get $46
  call $~lib/rt/pure/__release
  local.get $47
  call $~lib/rt/pure/__release
  local.get $48
  call $~lib/rt/pure/__release
  local.get $49
  call $~lib/rt/pure/__release
  local.get $50
  call $~lib/rt/pure/__release
  local.get $51
  call $~lib/rt/pure/__release
  local.get $52
  call $~lib/rt/pure/__release
  local.get $53
  call $~lib/rt/pure/__release
  local.get $54
  call $~lib/rt/pure/__release
  local.get $55
  call $~lib/rt/pure/__release
  local.get $56
  call $~lib/rt/pure/__release
  local.get $57
  call $~lib/rt/pure/__release
  local.get $58
  call $~lib/rt/pure/__release
  local.get $59
  call $~lib/rt/pure/__release
  local.get $60
  call $~lib/rt/pure/__release
  local.get $61
  call $~lib/rt/pure/__release
  local.get $62
  call $~lib/rt/pure/__release
  local.get $63
  call $~lib/rt/pure/__release
  local.get $64
  call $~lib/rt/pure/__release
  local.get $65
  call $~lib/rt/pure/__release
  local.get $66
  call $~lib/rt/pure/__release
  local.get $67
  call $~lib/rt/pure/__release
  local.get $68
  call $~lib/rt/pure/__release
  local.get $69
  call $~lib/rt/pure/__release
  local.get $70
  call $~lib/rt/pure/__release
  local.get $71
  call $~lib/rt/pure/__release
  local.get $72
  call $~lib/rt/pure/__release
  local.get $73
  call $~lib/rt/pure/__release
  local.get $74
  call $~lib/rt/pure/__release
  local.get $75
  call $~lib/rt/pure/__release
  local.get $76
  call $~lib/rt/pure/__release
  local.get $77
  call $~lib/rt/pure/__release
  local.get $78
  call $~lib/rt/pure/__release
  local.get $79
  call $~lib/rt/pure/__release
  local.get $80
  call $~lib/rt/pure/__release
  local.get $81
  call $~lib/rt/pure/__release
  local.get $82
  call $~lib/rt/pure/__release
  local.get $83
  call $~lib/rt/pure/__release
  local.get $84
  call $~lib/rt/pure/__release
  local.get $85
  call $~lib/rt/pure/__release
  local.get $86
  call $~lib/rt/pure/__release
  local.get $87
  call $~lib/rt/pure/__release
  local.get $88
  call $~lib/rt/pure/__release
  local.get $89
  call $~lib/rt/pure/__release
  local.get $90
  call $~lib/rt/pure/__release
  local.get $91
  call $~lib/rt/pure/__release
  local.get $92
  call $~lib/rt/pure/__release
  local.get $93
  call $~lib/rt/pure/__release
  local.get $94
  call $~lib/rt/pure/__release
  local.get $95
  call $~lib/rt/pure/__release
  local.get $96
  call $~lib/rt/pure/__release
  local.get $97
  call $~lib/rt/pure/__release
  local.get $98
  call $~lib/rt/pure/__release
  local.get $99
  call $~lib/rt/pure/__release
  local.get $100
  call $~lib/rt/pure/__release
  local.get $101
  call $~lib/rt/pure/__release
  local.get $102
  call $~lib/rt/pure/__release
  local.get $103
  call $~lib/rt/pure/__release
  local.get $104
  call $~lib/rt/pure/__release
  local.get $105
  call $~lib/rt/pure/__release
  local.get $106
  call $~lib/rt/pure/__release
  local.get $107
  call $~lib/rt/pure/__release
  local.get $108
  call $~lib/rt/pure/__release
  local.get $109
  call $~lib/rt/pure/__release
  local.get $110
  call $~lib/rt/pure/__release
  local.get $111
  call $~lib/rt/pure/__release
  local.get $112
  call $~lib/rt/pure/__release
  local.get $113
  call $~lib/rt/pure/__release
  local.get $114
  call $~lib/rt/pure/__release
  local.get $115
  call $~lib/rt/pure/__release
  local.get $116
  call $~lib/rt/pure/__release
  local.get $117
  call $~lib/rt/pure/__release
  local.get $118
  call $~lib/rt/pure/__release
  local.get $119
  call $~lib/rt/pure/__release
  local.get $120
  call $~lib/rt/pure/__release
  local.get $121
  call $~lib/rt/pure/__release
  local.get $122
  call $~lib/rt/pure/__release
  local.get $123
  call $~lib/rt/pure/__release
  local.get $124
  call $~lib/rt/pure/__release
  local.get $125
  call $~lib/rt/pure/__release
  local.get $126
  call $~lib/rt/pure/__release
  local.get $127
  call $~lib/rt/pure/__release
  local.get $128
  call $~lib/rt/pure/__release
  local.get $129
  call $~lib/rt/pure/__release
  local.get $130
  call $~lib/rt/pure/__release
  local.get $131
  call $~lib/rt/pure/__release
  local.get $132
  call $~lib/rt/pure/__release
  local.get $133
  call $~lib/rt/pure/__release
  local.get $134
  call $~lib/rt/pure/__release
  local.get $135
  call $~lib/rt/pure/__release
  local.get $136
  call $~lib/rt/pure/__release
  local.get $137
  call $~lib/rt/pure/__release
  local.get $138
  call $~lib/rt/pure/__release
  local.get $139
  call $~lib/rt/pure/__release
  local.get $140
  call $~lib/rt/pure/__release
  local.get $141
  call $~lib/rt/pure/__release
  local.get $142
  call $~lib/rt/pure/__release
  local.get $143
  call $~lib/rt/pure/__release
  local.get $144
  call $~lib/rt/pure/__release
  local.get $145
  call $~lib/rt/pure/__release
  local.get $146
  call $~lib/rt/pure/__release
  local.get $147
  call $~lib/rt/pure/__release
  local.get $148
  call $~lib/rt/pure/__release
  local.get $149
  call $~lib/rt/pure/__release
  local.get $150
  call $~lib/rt/pure/__release
  local.get $151
  call $~lib/rt/pure/__release
  local.get $152
  call $~lib/rt/pure/__release
  local.get $153
  call $~lib/rt/pure/__release
  local.get $154
  call $~lib/rt/pure/__release
  local.get $155
  call $~lib/rt/pure/__release
  local.get $156
  call $~lib/rt/pure/__release
  local.get $157
  call $~lib/rt/pure/__release
  local.get $158
  call $~lib/rt/pure/__release
  local.get $159
  call $~lib/rt/pure/__release
  local.get $160
  call $~lib/rt/pure/__release
  local.get $161
  call $~lib/rt/pure/__release
  local.get $162
  call $~lib/rt/pure/__release
  local.get $163
  call $~lib/rt/pure/__release
  local.get $164
  call $~lib/rt/pure/__release
  local.get $165
  call $~lib/rt/pure/__release
  local.get $166
  call $~lib/rt/pure/__release
  local.get $167
  call $~lib/rt/pure/__release
  local.get $168
  call $~lib/rt/pure/__release
  local.get $169
  call $~lib/rt/pure/__release
  local.get $170
  call $~lib/rt/pure/__release
  local.get $171
  call $~lib/rt/pure/__release
 )
 (func $std/string/getString (; 93 ;) (type $FUNCSIG$i) (result i32)
  global.get $std/string/str
  call $~lib/rt/pure/__retain
 )
 (func $start (; 94 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  call $start:std/string
 )
 (func $~lib/rt/pure/markGray (; 95 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 2
   call $~lib/rt/__visit_members
  end
 )
 (func $~lib/rt/pure/scanBlack (; 96 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1879048192
  i32.const -1
  i32.xor
  i32.and
  i32.const 0
  i32.or
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (; 97 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $~lib/rt/pure/scanBlack
   else    
    local.get $0
    local.get $1
    i32.const 1879048192
    i32.const -1
    i32.xor
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 16
    i32.add
    i32.const 3
    call $~lib/rt/__visit_members
   end
  end
 )
 (func $~lib/rt/pure/collectWhite (; 98 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 0
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  end
 )
 (func $~lib/rt/pure/__visit (; 99 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $3
         local.get $3
         i32.const 1
         i32.eq
         br_if $case0|0
         local.get $3
         i32.const 2
         i32.eq
         br_if $case1|0
         local.get $3
         i32.const 3
         i32.eq
         br_if $case2|0
         local.get $3
         i32.const 4
         i32.eq
         br_if $case3|0
         local.get $3
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $2
        call $~lib/rt/pure/decrement
        br $break|0
       end
       local.get $2
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.gt_u
       i32.eqz
       if
        i32.const 0
        i32.const 136
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       local.get $2
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $2
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $2
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $2
     i32.load offset=4
     local.set $3
     local.get $3
     i32.const -268435456
     i32.and
     local.get $3
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 136
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     local.get $3
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $3
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $2
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 136
    i32.const 97
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/array/Array<~lib/string/String>#__visit_impl (; 100 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 101 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u32>#__visit_impl (; 102 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u64>#__visit_impl (; 103 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<i16>#__visit_impl (; 104 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/__visit_members (; 105 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$9
     block $switch$1$case$8
      block $switch$1$case$7
       block $switch$1$case$6
        block $switch$1$case$5
         block $switch$1$case$4
          block $switch$1$case$2
           local.get $0
           i32.const 8
           i32.sub
           i32.load
           br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$5 $switch$1$case$6 $switch$1$case$7 $switch$1$case$8 $switch$1$case$9 $switch$1$default
          end
          return
         end
         br $block$4$break
        end
        local.get $0
        local.get $1
        call $~lib/array/Array<~lib/string/String>#__visit_impl
        br $block$4$break
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<i32>#__visit_impl
       br $block$4$break
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<u32>#__visit_impl
      br $block$4$break
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<u64>#__visit_impl
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<i16>#__visit_impl
    br $block$4$break
   end
   unreachable
  end
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/pure/__visit
  end
  return
 )
 (func $null (; 106 ;) (type $FUNCSIG$v)
 )
)
