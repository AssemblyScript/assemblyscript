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
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
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
 (data (i32.const 1024) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 1048) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001\00")
 (data (i32.const 1072) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\000\00b\001\000\001\00")
 (data (i32.const 1104) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\000\00o\007\000\007\00")
 (data (i32.const 1136) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\000\00x\00f\000\00f\00")
 (data (i32.const 1168) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\000\00x\00F\000\00F\00")
 (data (i32.const 1200) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\001\001\00")
 (data (i32.const 1224) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\000\00x\001\00g\00")
 (data (i32.const 1248) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\001\00")
 (data (i32.const 1272) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00.\002\005\00")
 (data (i32.const 1296) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00.\001\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 1328) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 1352) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00b\00")
 (data (i32.const 1376) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00k\00e\00y\001\00")
 (data (i32.const 1400) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00k\00e\00y\002\00")
 (data (i32.const 1424) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00k\00e\001\00")
 (data (i32.const 1448) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00k\00e\002\00")
 (data (i32.const 1472) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00k\00e\00y\001\002\00")
 (data (i32.const 1504) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00k\00e\00y\001\001\00")
 (data (i32.const 1536) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00\a40\ed0\cf0\cb0\db0\d80\c80")
 (data (i32.const 1568) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00\a60\f00\ce0\aa0\af0\e40\de0")
 (data (i32.const 1600) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00D\00\19 f\00h\00u\00a\00s\00c\00a\00i\00l\00")
 (data (i32.const 1640) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00D\00\19 \1f\1eu\00a\00s\00c\00a\00i\00l\00")
 (data (i32.const 1680) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00b\00a\00")
 (data (i32.const 1704) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00a\00")
 (data (i32.const 1728) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 1776) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00a\00a\00")
 (data (i32.const 1800) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00a\00b\00a\00b\00a\00b\00a\00b\00")
 (data (i32.const 1832) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00a\00a\00a\00a\00a\00")
 (data (i32.const 1864) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00a\00a\00a\00a\00a\00a\00")
 (data (i32.const 1896) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00a\00a\00a\00a\00a\00a\00a\00")
 (data (i32.const 1928) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00")
 (data (i32.const 1976) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 2000) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00j\00k\00l\00m\00n\00")
 (data (i32.const 2032) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00c\00d\00e\00f\00g\00")
 (data (i32.const 2064) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00d\00e\00f\00g\00h\00")
 (data (i32.const 2096) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00")
 (data (i32.const 2144) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 2192) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 2304) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00a\00,\00b\00,\00c\00")
 (data (i32.const 2336) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00.\00")
 (data (i32.const 2360) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00c\00")
 (data (i32.const 2384) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 2800) "\10\00\00\00\01\00\00\00\05\00\00\00\10\00\00\00`\t\00\00`\t\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 2832) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\008\00")
 (data (i32.const 2856) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00-\001\000\000\000\00")
 (data (i32.const 2888) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\001\002\003\004\00")
 (data (i32.const 2912) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\001\002\003\004\005\00")
 (data (i32.const 2944) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\002\003\004\005\006\00")
 (data (i32.const 2976) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\001\001\001\001\001\001\001\00")
 (data (i32.const 3008) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\001\002\003\004\005\006\007\00")
 (data (i32.const 3040) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\006\00")
 (data (i32.const 3080) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\007\00")
 (data (i32.const 3120) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 3160) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00-\001\00")
 (data (i32.const 3184) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\001\000\000\000\00")
 (data (i32.const 3208) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 3248) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 3288) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\009\009\009\009\009\009\009\009\00")
 (data (i32.const 3320) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\000\000\000\000\000\000\000\000\00")
 (data (i32.const 3360) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 3400) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 3440) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 3488) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 3536) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 3592) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00")
 (data (i32.const 3648) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00-\001\002\003\004\00")
 (data (i32.const 3680) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00-\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 3720) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00-\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 3760) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00-\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 3808) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00-\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 3856) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00-\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 3912) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 3968) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00-\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\008\00")
 (data (i32.const 4024) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000\00")
 (data (i32.const 4048) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N\00")
 (data (i32.const 4072) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 4112) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 4144) "\b8\02\00\00\01\00\00\00\00\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 4856) "\10\00\00\00\01\00\00\00\06\00\00\00\10\00\00\00@\10\00\00@\10\00\00\b8\02\00\00W\00\00\00")
 (data (i32.const 4888) "\ae\00\00\00\01\00\00\00\00\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 5080) "\10\00\00\00\01\00\00\00\07\00\00\00\10\00\00\00(\13\00\00(\13\00\00\ae\00\00\00W\00\00\00")
 (data (i32.const 5112) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 5168) "\10\00\00\00\01\00\00\00\05\00\00\00\10\00\00\00\08\14\00\00\08\14\00\00(\00\00\00\n\00\00\00")
 (data (i32.const 5200) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\002\00.\002\002\000\004\004\006\000\004\009\002\005\000\003\001\003\00e\00-\001\006\00")
 (data (i32.const 5264) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00-\002\00.\002\002\000\004\004\006\000\004\009\002\005\000\003\001\003\00e\00-\001\006\00")
 (data (i32.const 5328) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\001\00.\007\009\007\006\009\003\001\003\004\008\006\002\003\001\005\007\00e\00+\003\000\008\00")
 (data (i32.const 5392) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00-\001\00.\007\009\007\006\009\003\001\003\004\008\006\002\003\001\005\007\00e\00+\003\000\008\00")
 (data (i32.const 5456) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\004\00.\001\008\005\005\008\000\004\009\006\008\002\001\003\005\007\00e\00+\002\009\008\00")
 (data (i32.const 5520) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\002\00.\002\002\005\000\007\003\008\005\008\005\000\007\002\000\001\004\00e\00-\003\000\008\00")
 (data (i32.const 5584) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\004\00.\009\004\000\006\005\006\00e\00-\003\001\008\00")
 (data (i32.const 5632) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\009\000\006\000\008\000\001\001\005\003\004\003\003\006\000\000\00.\000\00")
 (data (i32.const 5688) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\004\007\000\008\003\005\006\000\002\004\007\001\001\005\001\002\000\000\000\00.\000\00")
 (data (i32.const 5752) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\009\004\000\009\003\004\000\000\001\002\005\006\008\002\004\008\000\000\000\00.\000\00")
 (data (i32.const 5816) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\005\00e\00-\003\002\004\00")
 (data (i32.const 5848) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\00.\000\00")
 (data (i32.const 5872) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00-\001\00.\000\00")
 (data (i32.const 5896) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00-\000\00.\001\00")
 (data (i32.const 5920) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 5960) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\000\00.\000\000\000\000\000\001\00")
 (data (i32.const 5992) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00-\001\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 6032) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\000\00.\000\000\000\000\000\001\00")
 (data (i32.const 6072) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\001\000\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 6112) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\001\00e\00-\007\00")
 (data (i32.const 6136) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00e\00+\003\000\008\00")
 (data (i32.const 6168) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00-\001\00e\00+\003\000\008\00")
 (data (i32.const 6200) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00e\00-\003\000\008\00")
 (data (i32.const 6232) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00-\001\00e\00-\003\000\008\00")
 (data (i32.const 6264) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00e\00-\003\002\003\00")
 (data (i32.const 6296) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00-\001\00e\00-\003\002\003\00")
 (data (i32.const 6328) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\004\002\009\004\009\006\007\002\007\002\00.\000\00")
 (data (i32.const 6368) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\001\00.\002\003\001\002\001\004\005\006\007\003\004\005\006\002\003\004\00e\00-\008\00")
 (data (i32.const 6432) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\005\005\005\005\005\005\005\005\005\00.\005\005\005\005\005\005\006\00")
 (data (i32.const 6488) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\000\00.\009\009\009\009\009\009\009\009\009\009\009\009\009\009\009\009\00")
 (data (i32.const 6544) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\001\002\00.\003\004\00")
 (data (i32.const 6576) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\000\00.\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\00")
 (data (i32.const 6632) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\001\002\003\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 6696) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\00.\002\003\004\00e\00+\002\001\00")
 (data (i32.const 6736) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\002\00.\007\001\008\002\008\00")
 (data (i32.const 6768) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\000\00.\000\002\007\001\008\002\008\00")
 (data (i32.const 6808) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\002\007\001\00.\008\002\008\00")
 (data (i32.const 6840) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\001\00.\001\00e\00+\001\002\008\00")
 (data (i32.const 6872) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\001\00.\001\00e\00-\006\004\00")
 (data (i32.const 6904) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\000\00.\000\000\000\000\003\005\006\008\009\00")
 (data (i32.const 6944) "\08\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93\04\00\00\02\00\00\00\93\00\00\00\02\00\00\00\13\01\00\00\02\00\00\00S\04\00\00\02\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $std/string/str (mut i32) (i32.const 24))
 (global $std/string/nullStr (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/string/String.MAX_LENGTH i32 (i32.const 536870904))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
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
 (global $~lib/rt/RTTI_BASE i32 (i32.const 6944))
 (global $~lib/heap/HEAP_BASE i32 (i32.const 7012))
 (export "memory" (memory $0))
 (export "getString" (func $std/string/getString))
 (export "main" (func $std/string/main))
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
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const 268435455
  i32.const -1
  i32.xor
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
  global.get $~lib/heap/HEAP_BASE
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
   i32.const 276
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
   i32.const 278
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
   i32.const 291
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
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
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
  end
  i32.eq
  if
   block $~lib/rt/tlsf/SETHEAD|inlined.0
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
   end
   local.get $7
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
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
    end
    local.set $8
    block $~lib/rt/tlsf/SETSL|inlined.0
     local.get $0
     local.set $11
     local.get $4
     local.set $10
     local.get $8
     i32.const 1
     local.get $5
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     local.tee $8
     local.set $9
     local.get $11
     local.get $10
     i32.const 2
     i32.shl
     i32.add
     local.get $9
     i32.store offset=4
    end
    local.get $8
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
   i32.const 204
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
   i32.const 206
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
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
  end
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
    block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
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
    end
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
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $1
    local.set $3
    local.get $3
    i32.const 4
    i32.sub
    i32.load
   end
   local.set $3
   local.get $3
   i32.load
   local.set $6
   local.get $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 184
    i32.const 227
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
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
    local.get $3
    call $~lib/rt/tlsf/removeBlock
    local.get $3
    local.get $6
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $3
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
   i32.const 242
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
   i32.const 243
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
   i32.const 259
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $0
   local.set $3
   local.get $9
   local.set $6
   local.get $10
   local.set $7
   local.get $3
   local.get $6
   i32.const 4
   i32.shl
   local.get $7
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  end
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
  block $~lib/rt/tlsf/SETHEAD|inlined.1
   local.get $0
   local.set $12
   local.get $9
   local.set $3
   local.get $10
   local.set $6
   local.get $1
   local.set $7
   local.get $12
   local.get $3
   i32.const 4
   i32.shl
   local.get $6
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $7
   i32.store offset=96
  end
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  i32.store
  block $~lib/rt/tlsf/SETSL|inlined.1
   local.get $0
   local.set $3
   local.get $9
   local.set $6
   block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
    local.get $0
    local.set $13
    local.get $9
    local.set $12
    local.get $13
    local.get $12
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
   end
   i32.const 1
   local.get $10
   i32.shl
   i32.or
   local.set $7
   local.get $3
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   local.get $7
   i32.store offset=4
  end
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
   i32.const 531
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
  global.get $~lib/rt/RTTI_BASE
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
   i32.const 385
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $0
   local.set $3
   local.get $3
   i32.load offset=1568
  end
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
    i32.const 395
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
    i32.const 407
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
  i32.const 2
  i32.const 16
  i32.mul
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
  block $~lib/rt/tlsf/SETTAIL|inlined.1
   local.get $0
   local.set $9
   local.get $4
   local.set $3
   local.get $9
   local.get $3
   i32.store offset=1568
  end
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
  global.get $~lib/heap/HEAP_BASE
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
  block $~lib/rt/tlsf/SETTAIL|inlined.0
   local.get $3
   local.set $5
   i32.const 0
   local.set $4
   local.get $5
   local.get $4
   i32.store offset=1568
  end
  block $break|0
   i32.const 0
   local.set $4
   loop $repeat|0
    local.get $4
    i32.const 23
    i32.lt_u
    i32.eqz
    br_if $break|0
    block $~lib/rt/tlsf/SETSL|inlined.2
     local.get $3
     local.set $7
     local.get $4
     local.set $6
     i32.const 0
     local.set $5
     local.get $7
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     local.get $5
     i32.store offset=4
    end
    block $break|1
     i32.const 0
     local.set $5
     loop $repeat|1
      local.get $5
      i32.const 16
      i32.lt_u
      i32.eqz
      br_if $break|1
      block $~lib/rt/tlsf/SETHEAD|inlined.2
       local.get $3
       local.set $9
       local.get $4
       local.set $8
       local.get $5
       local.set $7
       i32.const 0
       local.set $6
       local.get $9
       local.get $8
       i32.const 4
       i32.shl
       local.get $7
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store offset=96
      end
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $repeat|1
      unreachable
     end
     unreachable
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $repeat|0
    unreachable
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
   i32.const 447
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
   i32.const 337
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
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
  end
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
   local.set $4
   local.get $4
   i32.eqz
   if
    i32.const 0
    local.set $7
   else    
    local.get $4
    i32.ctz
    local.set $2
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $0
     local.set $8
     local.get $2
     local.set $5
     local.get $8
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
    end
    local.set $6
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 184
     i32.const 350
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $0
     local.set $9
     local.get $2
     local.set $8
     local.get $6
     i32.ctz
     local.set $5
     local.get $9
     local.get $8
     i32.const 4
     i32.shl
     local.get $5
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=96
    end
    local.set $7
   end
  else   
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $0
    local.set $8
    local.get $2
    local.set $5
    local.get $6
    i32.ctz
    local.set $4
    local.get $8
    local.get $5
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   end
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
  memory.size
  local.set $2
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $3
  local.get $2
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
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
   i32.const 364
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
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
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
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
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
   end
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
    i32.const 477
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 479
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
    if
     block (result i32)
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
     end
     block (result i32)
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
     end
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
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
    end
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
    block (result i32)
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
    end
    block (result i32)
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
    end
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
      block
       local.get $1
       i32.load
       local.set $3
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
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
         if
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
        end
       end
       br $break|2
       unreachable
      end
      unreachable
     end
     block
      local.get $1
      i32.load
      local.set $3
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
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
        if
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
       end
      end
      br $break|2
      unreachable
     end
     unreachable
    end
    block
     local.get $1
     i32.load
     local.set $3
     block (result i32)
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
     end
     block (result i32)
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
     end
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
       if
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
      end
     end
     br $break|2
     unreachable
    end
    unreachable
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
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
       if
        local.get $3
        i32.eqz
        if
         br $~lib/util/memory/memmove|inlined.0
        end
        local.get $3
        i32.const 1
        i32.sub
        local.set $3
        block (result i32)
         local.get $5
         local.tee $6
         i32.const 1
         i32.add
         local.set $5
         local.get $6
        end
        block (result i32)
         local.get $4
         local.tee $6
         i32.const 1
         i32.add
         local.set $4
         local.get $6
        end
        i32.load8_u
        i32.store8
        br $continue|0
       end
      end
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       if
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
      end
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      if
       block (result i32)
        local.get $5
        local.tee $6
        i32.const 1
        i32.add
        local.set $5
        local.get $6
       end
       block (result i32)
        local.get $4
        local.tee $6
        i32.const 1
        i32.add
        local.set $4
        local.get $6
       end
       i32.load8_u
       i32.store8
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       br $continue|2
      end
     end
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
       if
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
      end
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       if
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
      end
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      if
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
     end
    end
   end
  end
 )
 (func $~lib/rt/pure/growRoots (; 23 ;) (type $FUNCSIG$v)
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
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
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
 (func $~lib/rt/pure/appendRoot (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  i32.const 1
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/__release (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/heap/HEAP_BASE
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/string/String.__not (; 27 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/string/String.fromCharCode (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 2
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $1
  local.get $0
  i32.store16
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/string/compareImpl (; 29 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
    if
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
   end
  end
  local.get $5
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/string/String.__eq (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.fromCodePoint (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 21
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 65535
  i32.gt_s
  local.set $1
  local.get $1
  i32.const 1
  i32.add
  i32.const 1
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
 (func $~lib/string/String#startsWith (; 32 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 456
   i32.const 171
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   block (result i32)
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
   end
   local.set $1
  end
  local.get $2
  local.set $5
  local.get $0
  call $~lib/string/String#get:length
  local.set $6
  local.get $5
  local.tee $3
  i32.const 0
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_s
  select
  local.tee $3
  local.get $6
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $7
  local.get $1
  call $~lib/string/String#get:length
  local.set $8
  local.get $8
  local.get $7
  i32.add
  local.get $6
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
  local.get $7
  local.get $1
  i32.const 0
  local.get $8
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/string/String#endsWith (; 33 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 456
   i32.const 78
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
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
  local.set $5
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  local.get $5
  local.get $6
  i32.sub
  local.set $7
  local.get $7
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
  local.get $7
  local.get $1
  i32.const 0
  local.get $6
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/string/String#indexOf (; 34 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 456
   i32.const 140
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   block (result i32)
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
   end
   local.set $1
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  local.get $5
  i32.eqz
  if
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $6
  local.get $6
  i32.eqz
  if
   i32.const -1
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
  local.get $6
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $7
  local.get $6
  local.get $5
  i32.sub
  local.set $6
  block $break|0
   local.get $7
   local.set $3
   loop $repeat|0
    local.get $3
    local.get $6
    i32.le_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    local.get $1
    i32.const 0
    local.get $5
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $3
     local.set $4
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/memory/memory.repeat (; 35 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
    if
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
   end
  end
 )
 (func $~lib/string/String#padStart (; 36 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 456
   i32.const 288
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
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
 (func $~lib/string/String#padEnd (; 37 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 456
   i32.const 309
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
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
 (func $~lib/string/String#lastIndexOf (; 38 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 456
   i32.const 156
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   block (result i32)
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
   end
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $5
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  local.get $6
  i32.eqz
  if
   local.get $5
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $5
  i32.eqz
  if
   i32.const -1
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
  local.get $5
  local.get $6
  i32.sub
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $7
  block $break|0
   local.get $7
   local.set $3
   loop $repeat|0
    local.get $3
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    local.get $1
    i32.const 0
    local.get $6
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $3
     local.set $4
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/util/string/parse<f64> (; 39 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
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
    f64.const 1
    local.set $6
   else    
    f64.const 1
    local.set $6
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
    block $break|0
     block $case6|0
      block $case5|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            local.get $4
            i32.const 2
            i32.add
            i32.load16_u
            local.set $7
            local.get $7
            i32.const 66
            i32.eq
            br_if $case0|0
            local.get $7
            i32.const 98
            i32.eq
            br_if $case1|0
            local.get $7
            i32.const 79
            i32.eq
            br_if $case2|0
            local.get $7
            i32.const 111
            i32.eq
            br_if $case3|0
            local.get $7
            i32.const 88
            i32.eq
            br_if $case4|0
            local.get $7
            i32.const 120
            i32.eq
            br_if $case5|0
            br $case6|0
           end
          end
          block
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
           br $break|0
           unreachable
          end
          unreachable
         end
        end
        block
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
         br $break|0
         unreachable
        end
        unreachable
       end
      end
      block
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
       br $break|0
       unreachable
      end
      unreachable
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
  block $break|1
   loop $continue|1
    block (result i32)
     local.get $2
     local.tee $7
     i32.const 1
     i32.sub
     local.set $2
     local.get $7
    end
    if
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
        br $break|1
       end
      end
     end
     local.get $5
     local.get $1
     i32.ge_s
     if
      br $break|1
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
     br $continue|1
    end
   end
  end
  local.get $6
  local.get $8
  f64.mul
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/string/parseInt (; 40 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/util/string/parse<f64>
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/parseFloat (; 41 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
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
    f64.const 1
    local.set $5
   else    
    f64.const 1
    local.set $5
   end
  end
  f64.const 0
  local.set $6
  block $break|0
   loop $continue|0
    block (result i32)
     local.get $1
     local.tee $7
     i32.const 1
     i32.sub
     local.set $1
     local.get $7
    end
    if
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
      block $break|1
       loop $continue|1
        block (result i32)
         local.get $1
         local.tee $7
         i32.const 1
         i32.sub
         local.set $1
         local.get $7
        end
        if
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
           i32.const 456
           i32.const 572
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
          br $break|1
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
         br $continue|1
        end
       end
      end
      br $break|0
     end
     local.get $4
     i32.const 48
     i32.sub
     local.set $4
     local.get $4
     i32.const 10
     i32.ge_u
     if
      br $break|0
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
     br $continue|0
    end
   end
  end
  local.get $5
  local.get $6
  f64.mul
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String#concat (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   block (result i32)
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
   end
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
 (func $~lib/string/String.__concat (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.__ne (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.__gt (; 45 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.__lt (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.__gte (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.__lte (; 48 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String#repeat (; 49 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 456
   i32.const 330
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
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
   i32.const 1744
   i32.const 456
   i32.const 335
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
 (func $~lib/string/String#slice (; 50 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
  local.set $6
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
  local.set $7
  local.get $7
  local.get $6
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
  local.set $8
  local.get $8
  local.get $0
  local.get $6
  i32.const 1
  i32.shl
  i32.add
  local.get $3
  i32.const 1
  i32.shl
  call $~lib/memory/memory.copy
  local.get $8
  call $~lib/rt/pure/__retain
 )
 (func $~lib/rt/__allocArray (; 51 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/rt/tlsf/reallocateBlock (; 52 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 493
   i32.const 13
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
  block $~lib/rt/tlsf/GETRIGHT|inlined.4 (result i32)
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
  end
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
  i32.load offset=4
  i32.store offset=4
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
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (; 53 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 553
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
   i32.const 554
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
 (func $~lib/memory/memory.fill (; 54 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
     if
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
    end
   end
  end
 )
 (func $~lib/array/ensureSize (; 55 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 1744
    i32.const 2160
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
 (func $~lib/array/Array<~lib/string/String>#push (; 56 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $1
  local.get $5
  i32.ne
  if
   local.get $4
   local.get $1
   call $~lib/rt/pure/__retain
   i32.store
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/string/String#split (; 57 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 456
   i32.const 357
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
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
   block (result i32)
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
   end
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
    loop $repeat|0
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
     br $repeat|0
     unreachable
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
    i32.ne
    if
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
   end
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
 (func $~lib/array/Array<~lib/string/String>#get:length (; 58 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_get (; 59 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 60 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2208
   i32.const 2160
   i32.const 97
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
   i32.const 2160
   i32.const 100
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__unchecked_get
 )
 (func $~lib/util/number/decimalCount32 (; 61 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   unreachable
  end
  unreachable
  unreachable
 )
 (func $~lib/util/number/utoa32_lut (; 62 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 2816
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i32.const 10000
    i32.ge_u
    if
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
   end
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
 (func $~lib/util/number/itoa32 (; 63 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1040
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
  block $~lib/util/number/utoa32_core|inlined.0
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
  end
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/utoa32 (; 64 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1040
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
  block $~lib/util/number/utoa32_core|inlined.1
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
  end
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/decimalCount64 (; 65 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   unreachable
  end
  unreachable
  unreachable
 )
 (func $~lib/util/number/utoa64_lut (; 66 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
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
  i32.const 2816
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i64.const 100000000
    i64.ge_u
    if
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
   end
  end
  local.get $0
  local.get $1
  i32.wrap_i64
  local.get $2
  call $~lib/util/number/utoa32_lut
 )
 (func $~lib/util/number/utoa64 (; 67 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 1040
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
   block $~lib/util/number/utoa32_core|inlined.2
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
   end
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
   block $~lib/util/number/utoa64_core|inlined.0
    local.get $1
    local.set $4
    local.get $0
    local.set $7
    local.get $3
    local.set $2
    local.get $4
    local.get $7
    local.get $2
    call $~lib/util/number/utoa64_lut
   end
  end
  local.get $1
  call $~lib/rt/pure/__retain
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
   i32.const 1040
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
   block $~lib/util/number/utoa32_core|inlined.3
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
   end
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
   block $~lib/util/number/utoa64_core|inlined.1
    local.get $2
    local.set $5
    local.get $0
    local.set $8
    local.get $4
    local.set $3
    local.get $5
    local.get $8
    local.get $3
    call $~lib/util/number/utoa64_lut
   end
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
 (func $~lib/builtins/isFinite<f64> (; 69 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/builtins/isNaN<f64> (; 70 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 71 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 72 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/util/number/genDigits (; 73 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  (local $20 i32)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i64)
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
  i32.const 5184
  i32.load offset=4
  local.set $16
  block $break|0
   loop $continue|0
    local.get $14
    i32.const 0
    i32.gt_s
    if
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
                block
                 local.get $12
                 i32.const 1000000000
                 i32.div_u
                 local.set $17
                 local.get $12
                 i32.const 1000000000
                 i32.rem_u
                 local.set $12
                 br $break|1
                 unreachable
                end
                unreachable
               end
               block
                local.get $12
                i32.const 100000000
                i32.div_u
                local.set $17
                local.get $12
                i32.const 100000000
                i32.rem_u
                local.set $12
                br $break|1
                unreachable
               end
               unreachable
              end
              block
               local.get $12
               i32.const 10000000
               i32.div_u
               local.set $17
               local.get $12
               i32.const 10000000
               i32.rem_u
               local.set $12
               br $break|1
               unreachable
              end
              unreachable
             end
             block
              local.get $12
              i32.const 1000000
              i32.div_u
              local.set $17
              local.get $12
              i32.const 1000000
              i32.rem_u
              local.set $12
              br $break|1
              unreachable
             end
             unreachable
            end
            block
             local.get $12
             i32.const 100000
             i32.div_u
             local.set $17
             local.get $12
             i32.const 100000
             i32.rem_u
             local.set $12
             br $break|1
             unreachable
            end
            unreachable
           end
           block
            local.get $12
            i32.const 10000
            i32.div_u
            local.set $17
            local.get $12
            i32.const 10000
            i32.rem_u
            local.set $12
            br $break|1
            unreachable
           end
           unreachable
          end
          block
           local.get $12
           i32.const 1000
           i32.div_u
           local.set $17
           local.get $12
           i32.const 1000
           i32.rem_u
           local.set $12
           br $break|1
           unreachable
          end
          unreachable
         end
         block
          local.get $12
          i32.const 100
          i32.div_u
          local.set $17
          local.get $12
          i32.const 100
          i32.rem_u
          local.set $12
          br $break|1
          unreachable
         end
         unreachable
        end
        block
         local.get $12
         i32.const 10
         i32.div_u
         local.set $17
         local.get $12
         i32.const 10
         i32.rem_u
         local.set $12
         br $break|1
         unreachable
        end
        unreachable
       end
       block
        local.get $12
        local.set $17
        i32.const 0
        local.set $12
        br $break|1
        unreachable
       end
       unreachable
      end
      block
       i32.const 0
       local.set $17
       br $break|1
       unreachable
      end
      unreachable
     end
     local.get $17
     local.get $15
     i32.or
     if
      local.get $0
      block (result i32)
       local.get $15
       local.tee $18
       i32.const 1
       i32.add
       local.set $15
       local.get $18
      end
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
      block $~lib/util/number/grisuRound|inlined.0
       local.get $0
       local.set $20
       local.get $15
       local.set $18
       local.get $5
       local.set $24
       local.get $19
       local.set $23
       local.get $16
       local.get $14
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u
       local.get $7
       i64.extend_i32_s
       i64.shl
       local.set $22
       local.get $10
       local.set $21
       local.get $20
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
         local.get $23
         local.get $21
         i64.lt_u
         if (result i32)
          local.get $24
          local.get $23
          i64.sub
          local.get $22
          i64.ge_u
         else          
          i32.const 0
         end
         if (result i32)
          local.get $23
          local.get $22
          i64.add
          local.get $21
          i64.lt_u
          if (result i32)
           i32.const 1
          else           
           local.get $21
           local.get $23
           i64.sub
           local.get $23
           local.get $22
           i64.add
           local.get $21
           i64.sub
           i64.gt_u
          end
         else          
          i32.const 0
         end
         if
          local.get $26
          i32.const 1
          i32.sub
          local.set $26
          local.get $23
          local.get $22
          i64.add
          local.set $23
          br $continue|2
         end
        end
       end
       local.get $25
       local.get $26
       i32.store16
      end
      local.get $15
      return
     end
     br $continue|0
    end
   end
  end
  block $break|3
   loop $continue|3
    i32.const 1
    if
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
      block (result i32)
       local.get $15
       local.tee $17
       i32.const 1
       i32.add
       local.set $15
       local.get $17
      end
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
      block $~lib/util/number/grisuRound|inlined.1
       local.get $0
       local.set $26
       local.get $15
       local.set $17
       local.get $5
       local.set $24
       local.get $13
       local.set $23
       local.get $8
       local.set $22
       local.get $10
       local.set $21
       local.get $26
       local.get $17
       i32.const 1
       i32.sub
       i32.const 1
       i32.shl
       i32.add
       local.set $25
       local.get $25
       i32.load16_u
       local.set $18
       block $break|4
        loop $continue|4
         local.get $23
         local.get $21
         i64.lt_u
         if (result i32)
          local.get $24
          local.get $23
          i64.sub
          local.get $22
          i64.ge_u
         else          
          i32.const 0
         end
         if (result i32)
          local.get $23
          local.get $22
          i64.add
          local.get $21
          i64.lt_u
          if (result i32)
           i32.const 1
          else           
           local.get $21
           local.get $23
           i64.sub
           local.get $23
           local.get $22
           i64.add
           local.get $21
           i64.sub
           i64.gt_u
          end
         else          
          i32.const 0
         end
         if
          local.get $18
          i32.const 1
          i32.sub
          local.set $18
          local.get $23
          local.get $22
          i64.add
          local.set $23
          br $continue|4
         end
        end
       end
       local.get $25
       local.get $18
       i32.store16
      end
      local.get $15
      return
     end
     br $continue|3
    end
   end
  end
  local.get $15
 )
 (func $~lib/util/number/prettify (; 74 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    loop $repeat|0
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
     br $repeat|0
     unreachable
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
      loop $repeat|1
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
       br $repeat|1
       unreachable
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
      block $~lib/util/number/genExponent|inlined.0 (result i32)
       local.get $0
       i32.const 4
       i32.add
       local.set $5
       local.get $3
       i32.const 1
       i32.sub
       local.set $4
       local.get $4
       i32.const 0
       i32.lt_s
       local.set $6
       local.get $6
       if
        i32.const 0
        local.get $4
        i32.sub
        local.set $4
       end
       local.get $4
       call $~lib/util/number/decimalCount32
       i32.const 1
       i32.add
       local.set $7
       block $~lib/util/number/utoa32_core|inlined.4
        local.get $5
        local.set $10
        local.get $4
        local.set $9
        local.get $7
        local.set $8
        local.get $10
        local.get $9
        local.get $8
        call $~lib/util/number/utoa32_lut
       end
       local.get $5
       i32.const 45
       i32.const 43
       local.get $6
       select
       i32.store16
       local.get $7
      end
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
      block $~lib/util/number/genExponent|inlined.1 (result i32)
       local.get $0
       local.get $7
       i32.add
       i32.const 4
       i32.add
       local.set $4
       local.get $3
       i32.const 1
       i32.sub
       local.set $6
       local.get $6
       i32.const 0
       i32.lt_s
       local.set $5
       local.get $5
       if
        i32.const 0
        local.get $6
        i32.sub
        local.set $6
       end
       local.get $6
       call $~lib/util/number/decimalCount32
       i32.const 1
       i32.add
       local.set $8
       block $~lib/util/number/utoa32_core|inlined.5
        local.get $4
        local.set $11
        local.get $6
        local.set $10
        local.get $8
        local.set $9
        local.get $11
        local.get $10
        local.get $9
        call $~lib/util/number/utoa32_lut
       end
       local.get $4
       i32.const 45
       i32.const 43
       local.get $5
       select
       i32.store16
       local.get $8
      end
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
  unreachable
 )
 (func $~lib/util/number/dtoa_core (; 75 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
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
  block $~lib/util/number/grisu2|inlined.0 (result i32)
   local.get $1
   local.set $3
   local.get $0
   local.set $5
   local.get $2
   local.set $4
   local.get $3
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
   block $~lib/util/number/normalizedBoundaries|inlined.0
    local.get $9
    local.set $10
    local.get $7
    local.set $11
    local.get $10
    i64.const 1
    i64.shl
    i64.const 1
    i64.add
    local.set $12
    local.get $11
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
    local.get $10
    i64.const 4503599627370496
    i64.eq
    i32.add
    local.set $15
    local.get $12
    global.set $~lib/util/number/_frc_plus
    local.get $10
    local.get $15
    i64.extend_i32_s
    i64.shl
    i64.const 1
    i64.sub
    local.get $11
    local.get $15
    i32.sub
    local.get $13
    i32.sub
    i64.extend_i32_s
    i64.shl
    global.set $~lib/util/number/_frc_minus
    local.get $13
    global.set $~lib/util/number/_exp
   end
   block $~lib/util/number/getCachedPower|inlined.0
    global.get $~lib/util/number/_exp
    local.set $15
    i32.const -61
    local.get $15
    i32.sub
    f64.convert_i32_s
    f64.const 0.30102999566398114
    f64.mul
    f64.const 347
    f64.add
    local.set $16
    local.get $16
    i32.trunc_f64_s
    local.set $14
    local.get $14
    local.get $14
    f64.convert_i32_s
    local.get $16
    f64.ne
    i32.add
    local.set $14
    local.get $14
    i32.const 3
    i32.shr_s
    i32.const 1
    i32.add
    local.set $13
    i32.const 348
    local.get $13
    i32.const 3
    i32.shl
    i32.sub
    global.set $~lib/util/number/_K
    i32.const 4872
    local.get $13
    call $~lib/array/Array<u64>#__unchecked_get
    global.set $~lib/util/number/_frc_pow
    i32.const 5096
    local.get $13
    call $~lib/array/Array<i16>#__unchecked_get
    global.set $~lib/util/number/_exp_pow
   end
   local.get $9
   i64.clz
   i32.wrap_i64
   local.set $13
   local.get $9
   local.get $13
   i64.extend_i32_s
   i64.shl
   local.set $9
   local.get $7
   local.get $13
   i32.sub
   local.set $7
   global.get $~lib/util/number/_frc_pow
   local.set $12
   global.get $~lib/util/number/_exp_pow
   local.set $14
   block $~lib/util/number/umul64f|inlined.0 (result i64)
    local.get $9
    local.set $17
    local.get $12
    local.set $10
    local.get $17
    i64.const 4294967295
    i64.and
    local.set $18
    local.get $10
    i64.const 4294967295
    i64.and
    local.set $19
    local.get $17
    i64.const 32
    i64.shr_u
    local.set $20
    local.get $10
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
   end
   local.set $24
   block $~lib/util/number/umul64e|inlined.0 (result i32)
    local.get $7
    local.set $11
    local.get $14
    local.set $15
    local.get $11
    local.get $15
    i32.add
    i32.const 64
    i32.add
   end
   local.set $15
   block $~lib/util/number/umul64f|inlined.1 (result i64)
    global.get $~lib/util/number/_frc_plus
    local.set $22
    local.get $12
    local.set $23
    local.get $22
    i64.const 4294967295
    i64.and
    local.set $21
    local.get $23
    i64.const 4294967295
    i64.and
    local.set $20
    local.get $22
    i64.const 32
    i64.shr_u
    local.set $19
    local.get $23
    i64.const 32
    i64.shr_u
    local.set $18
    local.get $21
    local.get $20
    i64.mul
    local.set $10
    local.get $19
    local.get $20
    i64.mul
    local.get $10
    i64.const 32
    i64.shr_u
    i64.add
    local.set $17
    local.get $21
    local.get $18
    i64.mul
    local.get $17
    i64.const 4294967295
    i64.and
    i64.add
    local.set $25
    local.get $25
    i64.const 2147483647
    i64.add
    local.set $25
    local.get $17
    i64.const 32
    i64.shr_u
    local.set $17
    local.get $25
    i64.const 32
    i64.shr_u
    local.set $25
    local.get $19
    local.get $18
    i64.mul
    local.get $17
    i64.add
    local.get $25
    i64.add
   end
   i64.const 1
   i64.sub
   local.set $25
   block $~lib/util/number/umul64e|inlined.1 (result i32)
    global.get $~lib/util/number/_exp
    local.set $26
    local.get $14
    local.set $11
    local.get $26
    local.get $11
    i32.add
    i32.const 64
    i32.add
   end
   local.set $11
   block $~lib/util/number/umul64f|inlined.2 (result i64)
    global.get $~lib/util/number/_frc_minus
    local.set $10
    local.get $12
    local.set $17
    local.get $10
    i64.const 4294967295
    i64.and
    local.set $18
    local.get $17
    i64.const 4294967295
    i64.and
    local.set $19
    local.get $10
    i64.const 32
    i64.shr_u
    local.set $20
    local.get $17
    i64.const 32
    i64.shr_u
    local.set $21
    local.get $18
    local.get $19
    i64.mul
    local.set $23
    local.get $20
    local.get $19
    i64.mul
    local.get $23
    i64.const 32
    i64.shr_u
    i64.add
    local.set $22
    local.get $18
    local.get $21
    i64.mul
    local.get $22
    i64.const 4294967295
    i64.and
    i64.add
    local.set $27
    local.get $27
    i64.const 2147483647
    i64.add
    local.set $27
    local.get $22
    i64.const 32
    i64.shr_u
    local.set $22
    local.get $27
    i64.const 32
    i64.shr_u
    local.set $27
    local.get $20
    local.get $21
    i64.mul
    local.get $22
    i64.add
    local.get $27
    i64.add
   end
   i64.const 1
   i64.add
   local.set $27
   local.get $25
   local.get $27
   i64.sub
   local.set $22
   local.get $5
   local.get $24
   local.get $15
   local.get $25
   local.get $11
   local.get $22
   local.get $4
   call $~lib/util/number/genDigits
  end
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
 (func $~lib/string/String#substring (; 76 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 456
   i32.const 196
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
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
 (func $~lib/rt/tlsf/__free (; 77 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 184
   i32.const 561
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
   i32.const 562
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
 (func $~lib/util/number/dtoa (; 78 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 4040
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  call $~lib/builtins/isFinite<f64>
  i32.eqz
  if
   local.get $0
   call $~lib/builtins/isNaN<f64>
   if
    i32.const 4064
    call $~lib/rt/pure/__retain
    return
   end
   i32.const 4088
   i32.const 4128
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
 (func $start:std/string (; 79 ;) (type $FUNCSIG$v)
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
  i32.const 0
  call $~lib/string/String.fromCharCode
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
  i32.const 54
  call $~lib/string/String.fromCharCode
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
  i32.const 65536
  i32.const 54
  i32.add
  call $~lib/string/String.fromCharCode
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
  global.get $~lib/string/String.MAX_LENGTH
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
  block $~lib/string/String#includes|inlined.0 (result i32)
   global.get $std/string/str
   local.set $8
   i32.const 608
   call $~lib/rt/pure/__retain
   local.set $7
   i32.const 0
   local.set $6
   local.get $8
   local.get $7
   local.get $6
   call $~lib/string/String#indexOf
   i32.const -1
   i32.ne
   local.set $9
   local.get $7
   call $~lib/rt/pure/__release
   local.get $9
  end
  i32.const 0
  i32.ne
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
  global.get $~lib/builtins/i32.MAX_VALUE
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
  global.get $~lib/builtins/i32.MAX_VALUE
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
  global.get $~lib/builtins/i32.MAX_VALUE
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
  global.get $~lib/builtins/i32.MAX_VALUE
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
  global.get $~lib/builtins/i32.MAX_VALUE
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
  global.get $~lib/builtins/i32.MAX_VALUE
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
  i32.const 1040
  i32.const 0
  call $~lib/string/parseInt
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 70
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1064
  i32.const 0
  call $~lib/string/parseInt
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 71
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1088
  i32.const 0
  call $~lib/string/parseInt
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 72
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1120
  i32.const 0
  call $~lib/string/parseInt
  f64.const 455
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 73
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1152
  i32.const 0
  call $~lib/string/parseInt
  f64.const 3855
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 74
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1184
  i32.const 0
  call $~lib/string/parseInt
  f64.const 3855
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 75
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1216
  i32.const 0
  call $~lib/string/parseInt
  f64.const 11
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 76
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1240
  i32.const 0
  call $~lib/string/parseInt
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 77
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  call $~lib/string/parseFloat
  f64.const 0
  f64.eq
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
  call $~lib/string/parseFloat
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 80
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1264
  call $~lib/string/parseFloat
  f64.const 0.1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 81
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1288
  call $~lib/string/parseFloat
  f64.const 0.25
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
  i32.const 1312
  call $~lib/string/parseFloat
  f64.const 0.1
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
  block
   i32.const 408
   i32.const 1344
   call $~lib/string/String.__concat
   local.tee $22
   call $~lib/rt/pure/__retain
   local.set $23
   local.get $23
   i32.const 1368
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 87
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $23
   i32.const 408
   call $~lib/string/String.__ne
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 88
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $22
   call $~lib/rt/pure/__release
   local.get $23
   call $~lib/rt/pure/__release
  end
  i32.const 120
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 90
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
   i32.const 91
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
   i32.const 92
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 1344
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 93
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
   i32.const 94
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1392
  i32.const 1416
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 95
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1392
  i32.const 1392
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 96
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1440
  i32.const 1464
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 97
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1488
  i32.const 1520
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 98
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1552
  i32.const 1552
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 99
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1552
  i32.const 1584
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 100
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1616
  i32.const 1656
  call $~lib/string/String.__ne
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 101
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1344
  i32.const 408
  call $~lib/string/String.__gt
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 103
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1696
  i32.const 408
  call $~lib/string/String.__gt
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 104
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1696
  i32.const 1720
  call $~lib/string/String.__gte
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 105
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1696
  i32.const 1368
  call $~lib/string/String.__gt
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 106
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1696
  i32.const 1368
  call $~lib/string/String.__lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 107
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1344
  global.get $std/string/nullStr
  call $~lib/string/String.__lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 109
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/nullStr
  i32.const 1344
  call $~lib/string/String.__lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 110
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
   i32.const 112
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
   i32.const 113
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
   i32.const 114
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
   i32.const 115
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
   i32.const 116
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
   i32.const 117
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
   i32.const 118
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
   i32.const 119
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
   i32.const 120
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
   i32.const 121
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  block
   i32.const 65377
   call $~lib/string/String.fromCodePoint
   local.set $23
   i32.const 55296
   call $~lib/string/String.fromCodePoint
   local.tee $22
   i32.const 56322
   call $~lib/string/String.fromCodePoint
   local.tee $24
   call $~lib/string/String.__concat
   local.tee $25
   call $~lib/rt/pure/__retain
   local.set $26
   local.get $23
   local.get $26
   call $~lib/string/String.__gt
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 126
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $23
   call $~lib/rt/pure/__release
   local.get $22
   call $~lib/rt/pure/__release
   local.get $24
   call $~lib/rt/pure/__release
   local.get $25
   call $~lib/rt/pure/__release
   local.get $26
   call $~lib/rt/pure/__release
  end
  i32.const 736
  call $~lib/string/String#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 129
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 120
  i32.const 100
  call $~lib/string/String#repeat
  local.tee $26
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 131
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 0
  call $~lib/string/String#repeat
  local.tee $25
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 132
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 1
  call $~lib/string/String#repeat
  local.tee $24
  i32.const 408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 133
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 2
  call $~lib/string/String#repeat
  local.tee $22
  i32.const 1720
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 134
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 3
  call $~lib/string/String#repeat
  local.tee $23
  i32.const 1792
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 135
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1368
  i32.const 4
  call $~lib/string/String#repeat
  local.tee $27
  i32.const 1816
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 136
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 5
  call $~lib/string/String#repeat
  local.tee $28
  i32.const 1848
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 137
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 6
  call $~lib/string/String#repeat
  local.tee $29
  i32.const 1880
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 138
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 7
  call $~lib/string/String#repeat
  local.tee $30
  i32.const 1912
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 139
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  block (result i32)
   i32.const 1944
   local.tee $31
   global.get $std/string/str
   local.tee $32
   i32.ne
   if
    local.get $31
    call $~lib/rt/pure/__retain
    drop
    local.get $32
    call $~lib/rt/pure/__release
   end
   local.get $31
  end
  global.set $std/string/str
  global.get $std/string/str
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#slice
  local.tee $31
  i32.const 1944
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 143
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const -1
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#slice
  local.tee $32
  i32.const 1992
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 144
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const -5
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#slice
  local.tee $33
  i32.const 2016
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 145
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 2
  i32.const 7
  call $~lib/string/String#slice
  local.tee $34
  i32.const 2048
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 146
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const -11
  i32.const -6
  call $~lib/string/String#slice
  local.tee $35
  i32.const 2080
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 147
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 4
  i32.const 3
  call $~lib/string/String#slice
  local.tee $36
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 148
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 0
  i32.const -1
  call $~lib/string/String#slice
  local.tee $37
  i32.const 2112
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 149
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  block
   i32.const 0
   local.set $38
   block (result i32)
    i32.const 120
    i32.const 0
    global.get $~lib/builtins/i32.MAX_VALUE
    call $~lib/string/String#split
    local.set $39
    local.get $38
    call $~lib/rt/pure/__release
    local.get $39
   end
   local.set $38
   local.get $38
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.const 1
   i32.eq
   if (result i32)
    local.get $38
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $39
    i32.const 120
    call $~lib/string/String.__eq
    local.set $40
    local.get $39
    call $~lib/rt/pure/__release
    local.get $40
   else    
    i32.const 0
   end
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 155
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block (result i32)
    i32.const 120
    i32.const 120
    global.get $~lib/builtins/i32.MAX_VALUE
    call $~lib/string/String#split
    local.set $40
    local.get $38
    call $~lib/rt/pure/__release
    local.get $40
   end
   local.set $38
   local.get $38
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 157
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block (result i32)
    i32.const 120
    i32.const 920
    global.get $~lib/builtins/i32.MAX_VALUE
    call $~lib/string/String#split
    local.set $39
    local.get $38
    call $~lib/rt/pure/__release
    local.get $39
   end
   local.set $38
   local.get $38
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.const 1
   i32.eq
   if (result i32)
    local.get $38
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $39
    i32.const 120
    call $~lib/string/String.__eq
    local.set $40
    local.get $39
    call $~lib/rt/pure/__release
    local.get $40
   else    
    i32.const 0
   end
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 159
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block (result i32)
    i32.const 2320
    i32.const 2352
    global.get $~lib/builtins/i32.MAX_VALUE
    call $~lib/string/String#split
    local.set $40
    local.get $38
    call $~lib/rt/pure/__release
    local.get $40
   end
   local.set $38
   local.get $38
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.const 1
   i32.eq
   if (result i32)
    local.get $38
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $40
    i32.const 2320
    call $~lib/string/String.__eq
    local.set $39
    local.get $40
    call $~lib/rt/pure/__release
    local.get $39
   else    
    i32.const 0
   end
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 161
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block (result i32)
    i32.const 2320
    i32.const 920
    global.get $~lib/builtins/i32.MAX_VALUE
    call $~lib/string/String#split
    local.set $39
    local.get $38
    call $~lib/rt/pure/__release
    local.get $39
   end
   local.set $38
   local.get $38
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.const 3
   i32.eq
   if (result i32)
    local.get $38
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $39
    i32.const 408
    call $~lib/string/String.__eq
    local.set $40
    local.get $39
    call $~lib/rt/pure/__release
    local.get $40
   else    
    i32.const 0
   end
   i32.const 0
   i32.ne
   if (result i32)
    local.get $38
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $39
    i32.const 1344
    call $~lib/string/String.__eq
    local.set $40
    local.get $39
    call $~lib/rt/pure/__release
    local.get $40
   else    
    i32.const 0
   end
   i32.const 0
   i32.ne
   if (result i32)
    local.get $38
    i32.const 2
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $39
    i32.const 2376
    call $~lib/string/String.__eq
    local.set $40
    local.get $39
    call $~lib/rt/pure/__release
    local.get $40
   else    
    i32.const 0
   end
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 163
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $38
   call $~lib/rt/pure/__release
  end
  i32.const 0
  call $~lib/util/number/itoa32
  local.tee $38
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 189
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/util/number/itoa32
  local.tee $39
  i32.const 1064
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
  i32.const 8
  call $~lib/util/number/itoa32
  local.tee $40
  i32.const 2848
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
  i32.const 123
  call $~lib/util/number/itoa32
  local.tee $41
  i32.const 736
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
  i32.const -1000
  call $~lib/util/number/itoa32
  local.tee $42
  i32.const 2872
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
  i32.const 1234
  call $~lib/util/number/itoa32
  local.tee $43
  i32.const 2904
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
  i32.const 12345
  call $~lib/util/number/itoa32
  local.tee $44
  i32.const 2928
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
  i32.const 123456
  call $~lib/util/number/itoa32
  local.tee $45
  i32.const 2960
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
  i32.const 1111111
  call $~lib/util/number/itoa32
  local.tee $46
  i32.const 2992
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
  i32.const 1234567
  call $~lib/util/number/itoa32
  local.tee $47
  i32.const 3024
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 198
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2147483646
  call $~lib/util/number/itoa32
  local.tee $48
  i32.const 3056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 199
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2147483647
  call $~lib/util/number/itoa32
  local.tee $49
  i32.const 3096
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 200
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -2147483648
  call $~lib/util/number/itoa32
  local.tee $50
  i32.const 3136
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
  i32.const -1
  call $~lib/util/number/itoa32
  local.tee $51
  i32.const 3176
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
  i32.const 0
  call $~lib/util/number/utoa32
  local.tee $52
  i32.const 1040
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
  i32.const 1000
  call $~lib/util/number/utoa32
  local.tee $53
  i32.const 3200
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
  i32.const 2147483647
  call $~lib/util/number/utoa32
  local.tee $54
  i32.const 3096
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
  i32.const -2147483648
  call $~lib/util/number/utoa32
  local.tee $55
  i32.const 3224
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
  global.get $~lib/builtins/u32.MAX_VALUE
  call $~lib/util/number/utoa32
  local.tee $56
  i32.const 3264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 208
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  call $~lib/util/number/utoa64
  local.tee $57
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 210
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1234
  call $~lib/util/number/utoa64
  local.tee $58
  i32.const 2904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 211
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 99999999
  call $~lib/util/number/utoa64
  local.tee $59
  i32.const 3304
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 212
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 100000000
  call $~lib/util/number/utoa64
  local.tee $60
  i32.const 3336
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 213
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 4294967295
  call $~lib/util/number/utoa64
  local.tee $61
  i32.const 3264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 214
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 68719476735
  call $~lib/util/number/utoa64
  local.tee $62
  i32.const 3376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 215
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 868719476735
  call $~lib/util/number/utoa64
  local.tee $63
  i32.const 3416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 216
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 999868719476735
  call $~lib/util/number/utoa64
  local.tee $64
  i32.const 3456
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 217
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 9999868719476735
  call $~lib/util/number/utoa64
  local.tee $65
  i32.const 3504
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 218
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 19999868719476735
  call $~lib/util/number/utoa64
  local.tee $66
  i32.const 3552
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 219
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/u64.MAX_VALUE
  call $~lib/util/number/utoa64
  local.tee $67
  i32.const 3608
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 220
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  call $~lib/util/number/itoa64
  local.tee $68
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 222
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -1234
  call $~lib/util/number/itoa64
  local.tee $69
  i32.const 3664
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 223
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 4294967295
  call $~lib/util/number/itoa64
  local.tee $70
  i32.const 3264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 224
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -4294967295
  call $~lib/util/number/itoa64
  local.tee $71
  i32.const 3696
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 225
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 68719476735
  call $~lib/util/number/itoa64
  local.tee $72
  i32.const 3376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 226
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -68719476735
  call $~lib/util/number/itoa64
  local.tee $73
  i32.const 3736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 227
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -868719476735
  call $~lib/util/number/itoa64
  local.tee $74
  i32.const 3776
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 228
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -999868719476735
  call $~lib/util/number/itoa64
  local.tee $75
  i32.const 3824
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 229
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -19999868719476735
  call $~lib/util/number/itoa64
  local.tee $76
  i32.const 3872
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 230
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/i64.MAX_VALUE
  call $~lib/util/number/itoa64
  local.tee $77
  i32.const 3928
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 231
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/i64.MIN_VALUE
  call $~lib/util/number/itoa64
  local.tee $78
  i32.const 3984
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 232
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  call $~lib/util/number/dtoa
  local.tee $79
  i32.const 4040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 235
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  call $~lib/util/number/dtoa
  local.tee $80
  i32.const 4040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 236
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  call $~lib/util/number/dtoa
  local.tee $81
  i32.const 4064
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 237
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  call $~lib/util/number/dtoa
  local.tee $82
  i32.const 4128
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 238
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.neg
  call $~lib/util/number/dtoa
  local.tee $83
  i32.const 4088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 239
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f64.EPSILON
  call $~lib/util/number/dtoa
  local.tee $84
  i32.const 5216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 240
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f64.EPSILON
  f64.neg
  call $~lib/util/number/dtoa
  local.tee $85
  i32.const 5280
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 241
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MAX_VALUE
  call $~lib/util/number/dtoa
  local.tee $86
  i32.const 5344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 242
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MAX_VALUE
  f64.neg
  call $~lib/util/number/dtoa
  local.tee $87
  i32.const 5408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 243
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4185580496821356722454785e274
  call $~lib/util/number/dtoa
  local.tee $88
  i32.const 5472
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 244
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2.2250738585072014e-308
  call $~lib/util/number/dtoa
  local.tee $89
  i32.const 5536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 245
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.940656e-318
  call $~lib/util/number/dtoa
  local.tee $90
  i32.const 5600
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
  f64.const 9060801153433600
  call $~lib/util/number/dtoa
  local.tee $91
  i32.const 5648
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
  f64.const 4708356024711512064
  call $~lib/util/number/dtoa
  local.tee $92
  i32.const 5704
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
  f64.const 9409340012568248320
  call $~lib/util/number/dtoa
  local.tee $93
  i32.const 5768
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
  f64.const 5e-324
  call $~lib/util/number/dtoa
  local.tee $94
  i32.const 5832
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
  f64.const 1
  call $~lib/util/number/dtoa
  local.tee $95
  i32.const 5864
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
  f64.const 0.1
  call $~lib/util/number/dtoa
  local.tee $96
  i32.const 1264
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
  f64.const -1
  call $~lib/util/number/dtoa
  local.tee $97
  i32.const 5888
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
  f64.const -0.1
  call $~lib/util/number/dtoa
  local.tee $98
  i32.const 5912
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 261
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1e6
  call $~lib/util/number/dtoa
  local.tee $99
  i32.const 5936
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
  f64.const 1e-06
  call $~lib/util/number/dtoa
  local.tee $100
  i32.const 5976
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
  f64.const -1e6
  call $~lib/util/number/dtoa
  local.tee $101
  i32.const 6008
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
  f64.const -1e-06
  call $~lib/util/number/dtoa
  local.tee $102
  i32.const 6048
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
  f64.const 1e7
  call $~lib/util/number/dtoa
  local.tee $103
  i32.const 6088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 267
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1e-07
  call $~lib/util/number/dtoa
  local.tee $104
  i32.const 6128
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
  f64.const 1.e+308
  call $~lib/util/number/dtoa
  local.tee $105
  i32.const 6152
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
  f64.const -1.e+308
  call $~lib/util/number/dtoa
  local.tee $106
  i32.const 6184
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
  f64.const inf
  call $~lib/util/number/dtoa
  local.tee $107
  i32.const 4128
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
  f64.const -inf
  call $~lib/util/number/dtoa
  local.tee $108
  i32.const 4088
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
  f64.const 1e-308
  call $~lib/util/number/dtoa
  local.tee $109
  i32.const 6216
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
  f64.const -1e-308
  call $~lib/util/number/dtoa
  local.tee $110
  i32.const 6248
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
  f64.const 1e-323
  call $~lib/util/number/dtoa
  local.tee $111
  i32.const 6280
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
  f64.const -1e-323
  call $~lib/util/number/dtoa
  local.tee $112
  i32.const 6312
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
  f64.const 0
  call $~lib/util/number/dtoa
  local.tee $113
  i32.const 4040
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
  f64.const 4294967272
  call $~lib/util/number/dtoa
  local.tee $114
  i32.const 6344
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
  f64.const 1.2312145673456234e-08
  call $~lib/util/number/dtoa
  local.tee $115
  i32.const 6384
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
  f64.const 555555555.5555556
  call $~lib/util/number/dtoa
  local.tee $116
  i32.const 6448
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
  f64.const 0.9999999999999999
  call $~lib/util/number/dtoa
  local.tee $117
  i32.const 6504
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
  f64.const 1
  call $~lib/util/number/dtoa
  local.tee $118
  i32.const 5864
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
  f64.const 12.34
  call $~lib/util/number/dtoa
  local.tee $119
  i32.const 6560
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
  f64.const 1
  f64.const 3
  f64.div
  call $~lib/util/number/dtoa
  local.tee $120
  i32.const 6592
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
  f64.const 1234e17
  call $~lib/util/number/dtoa
  local.tee $121
  i32.const 6648
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
  f64.const 1234e18
  call $~lib/util/number/dtoa
  local.tee $122
  i32.const 6712
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
  f64.const 2.71828
  call $~lib/util/number/dtoa
  local.tee $123
  i32.const 6752
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 291
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.0271828
  call $~lib/util/number/dtoa
  local.tee $124
  i32.const 6784
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 292
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 271.828
  call $~lib/util/number/dtoa
  local.tee $125
  i32.const 6824
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
  f64.const 1.1e+128
  call $~lib/util/number/dtoa
  local.tee $126
  i32.const 6856
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
  f64.const 1.1e-64
  call $~lib/util/number/dtoa
  local.tee $127
  i32.const 6888
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
  f64.const 0.000035689
  call $~lib/util/number/dtoa
  local.tee $128
  i32.const 6920
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
 )
 (func $std/string/getString (; 80 ;) (type $FUNCSIG$i) (result i32)
  global.get $std/string/str
  call $~lib/rt/pure/__retain
 )
 (func $std/string/main (; 81 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $start (; 82 ;) (type $FUNCSIG$v)
  call $start:std/string
 )
 (func $~lib/rt/pure/markGray (; 83 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/scanBlack (; 84 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/scan (; 85 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/collectWhite (; 86 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/__visit (; 87 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/heap/HEAP_BASE
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
        block
         local.get $2
         call $~lib/rt/pure/decrement
         br $break|0
         unreachable
        end
        unreachable
       end
       block
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
        unreachable
       end
       unreachable
      end
      block
       local.get $2
       call $~lib/rt/pure/scan
       br $break|0
       unreachable
      end
      unreachable
     end
     block
      local.get $2
      i32.load offset=4
      local.set $3
      local.get $3
      i32.const 268435455
      i32.const -1
      i32.xor
      i32.and
      local.get $3
      i32.const 1
      i32.add
      i32.const 268435455
      i32.const -1
      i32.xor
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
      unreachable
     end
     unreachable
    end
    block
     local.get $2
     call $~lib/rt/pure/collectWhite
     br $break|0
     unreachable
    end
    unreachable
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
 (func $~lib/array/Array<~lib/string/String>#__visit_impl (; 88 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=8
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
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
   end
  end
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 89 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u32>#__visit_impl (; 90 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u64>#__visit_impl (; 91 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<i16>#__visit_impl (; 92 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/__visit_members (; 93 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block
   end
   block $switch$1$leave
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
           block
            block
             return
             unreachable
            end
            unreachable
            unreachable
           end
           unreachable
          end
          block
           br $block$4$break
           unreachable
          end
          unreachable
         end
         block
          block
           local.get $0
           local.get $1
           call $~lib/array/Array<~lib/string/String>#__visit_impl
           block
            br $block$4$break
            unreachable
           end
           unreachable
           unreachable
          end
          unreachable
          unreachable
         end
         unreachable
        end
        block
         block
          local.get $0
          local.get $1
          call $~lib/array/Array<i32>#__visit_impl
          block
           br $block$4$break
           unreachable
          end
          unreachable
          unreachable
         end
         unreachable
         unreachable
        end
        unreachable
       end
       block
        block
         local.get $0
         local.get $1
         call $~lib/array/Array<u32>#__visit_impl
         block
          br $block$4$break
          unreachable
         end
         unreachable
         unreachable
        end
        unreachable
        unreachable
       end
       unreachable
      end
      block
       block
        local.get $0
        local.get $1
        call $~lib/array/Array<u64>#__visit_impl
        block
         br $block$4$break
         unreachable
        end
        unreachable
        unreachable
       end
       unreachable
       unreachable
      end
      unreachable
     end
     block
      block
       local.get $0
       local.get $1
       call $~lib/array/Array<i16>#__visit_impl
       block
        br $block$4$break
        unreachable
       end
       unreachable
       unreachable
      end
      unreachable
      unreachable
     end
     unreachable
    end
    block
     block
      unreachable
      unreachable
     end
     unreachable
     unreachable
    end
    unreachable
   end
  end
  block
   block
    local.get $0
    i32.load
    local.tee $2
    if
     local.get $2
     local.get $1
     call $~lib/rt/pure/__visit
    end
    return
    unreachable
   end
   unreachable
   unreachable
  end
  unreachable
 )
 (func $null (; 94 ;) (type $FUNCSIG$v)
 )
)
