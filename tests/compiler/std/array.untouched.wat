(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$fiii (func (param i32 i32 i32) (result f32)))
 (type $FUNCSIG$fii (func (param i32 i32) (result f32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$jj (func (param i64) (result i64)))
 (type $FUNCSIG$iff (func (param f32 f32) (result i32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$iijijiji (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $FUNCSIG$iiid (func (param i32 i32 f64) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$iiij (func (param i32 i32 i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 56) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 112) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 160) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 216) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 264) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 320) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 360) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 400) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c\00")
 (data (i32.const 424) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\02\03\04\05")
 (data (i32.const 448) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 472) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 520) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00")
 (data (i32.const 544) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\00\00")
 (data (i32.const 568) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 592) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 616) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 656) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 696) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 736) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 776) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 816) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 856) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 904) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 920) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 936) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 976) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1016) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1056) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1096) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1136) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 1176) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1216) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1256) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1296) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1336) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1376) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1416) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1456) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1496) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1536) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1576) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1616) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1656) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1696) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1736) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1776) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1816) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1856) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 1896) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1936) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1976) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1992) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2032) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2064) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 2088) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2128) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 2152) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\05\00\00\00")
 (data (i32.const 2184) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2224) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 2248) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2280) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2320) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2344) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 2376) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2416) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2440) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 2472) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2512) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00")
 (data (i32.const 2536) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05\00\00\00")
 (data (i32.const 2568) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2608) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 2632) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2664) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2704) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2720) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2760) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2800) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2816) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2856) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2896) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2912) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2952) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2992) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3008) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 3048) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 3088) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3104) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 3144) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 3184) "\ac\00\00\00\01\00\00\00\01\00\00\00\ac\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?\00")
 (data (i32.const 3376) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 3424) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 3472) "@\00\00\00\01\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 3552) "@\00\00\00\01\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 3632) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02\00\00\00")
 (data (i32.const 3672) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 3712) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02\00\00\00")
 (data (i32.const 3752) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 3792) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3808) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 3832) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 3856) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 3888) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 3920) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00P\00R\00N\00G\00 \00m\00u\00s\00t\00 \00b\00e\00 \00s\00e\00e\00d\00e\00d\00.\00")
 (data (i32.const 3976) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 4000) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 4024) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 4136) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 4160) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 4184) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00b\00")
 (data (i32.const 4208) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00b\00a\00")
 (data (i32.const 4232) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 4248) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\008\10\00\00P\10\00\008\10\00\00h\10\00\00\80\10\00\00\98\10\00\00\00\00\00\00")
 (data (i32.const 4296) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\00\98\10\00\008\10\00\008\10\00\00h\10\00\00P\10\00\00\80\10\00\00\00\00\00\00")
 (data (i32.const 4344) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 4368) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\01\00")
 (data (i32.const 4392) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 4416) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 4448) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 4472) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e\00")
 (data (i32.const 4512) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 4544) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 4568) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 4984) "\10\00\00\00\01\00\00\00\07\00\00\00\10\00\00\00\e8\11\00\00\e8\11\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 5016) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\001\00-\002\00-\003\00")
 (data (i32.const 5048) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 5080) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 5104) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 5128) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00_\00_\00")
 (data (i32.const 5152) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 5216) "0\00\00\00\01\00\00\00\00\00\00\000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 5280) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00,\00 \00")
 (data (i32.const 5304) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000\00")
 (data (i32.const 5328) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N\00")
 (data (i32.const 5352) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 5392) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 5424) "\b8\02\00\00\01\00\00\00\00\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 6136) "\10\00\00\00\01\00\00\00\10\00\00\00\10\00\00\00@\15\00\00@\15\00\00\b8\02\00\00W\00\00\00")
 (data (i32.const 6168) "\ae\00\00\00\01\00\00\00\00\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 6360) "\10\00\00\00\01\00\00\00\11\00\00\00\10\00\00\00(\18\00\00(\18\00\00\ae\00\00\00W\00\00\00")
 (data (i32.const 6392) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 6448) "\10\00\00\00\01\00\00\00\07\00\00\00\10\00\00\00\08\19\00\00\08\19\00\00(\00\00\00\n\00\00\00")
 (data (i32.const 6480) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 6576) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001\00")
 (data (i32.const 6600) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\98\10\00\00\c0\19\00\00\00\00\00\00")
 (data (i32.const 6632) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 6680) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 6760) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6776) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 6800) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 6824) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 6856) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\00,\002\00")
 (data (i32.const 6880) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\000\00,\001\00,\002\00,\003\00")
 (data (i32.const 6912) "\03\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\01\ff\00")
 (data (i32.const 6936) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00,\00-\001\00,\000\00")
 (data (i32.const 6968) "\06\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\01\00\ff\ff\00\00")
 (data (i32.const 6992) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\00,\006\005\005\003\005\00,\000\00")
 (data (i32.const 7032) "\18\00\00\00\01\00\00\00\00\00\00\00\18\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 7072) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000\00")
 (data (i32.const 7136) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7184) "T\00\00\00\01\00\00\00\01\00\00\00T\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 7288) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\00\98\10\00\008\10\00\008\10\00\00h\10\00\00P\10\00\00\80\10\00\00\00\00\00\00")
 (data (i32.const 7336) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,\00")
 (data (i32.const 7384) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\002\00")
 (data (i32.const 7408) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\004\00")
 (data (i32.const 7432) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\c0\19\00\00\e8\1c\00\00\00\00\00\00\00\1d\00\00")
 (data (i32.const 7464) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00,\002\00,\00,\004\00")
 (data (i32.const 7496) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 7520) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 7544) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\001\00,\002\00,\003\00,\004\00")
 (data (i32.const 7576) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\01\02")
 (data (i32.const 7600) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\03\04")
 (data (i32.const 7624) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 7648) "\1a\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\003\00\00\00\02\00\00\00\93\00\00\00\02\00\00\00\93\0c\00\00\02\00\00\00\13\0d\00\00\02\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\930\00\00\02\00\00\00\93 \00\00\02\00\00\003\00\00\00\02\00\00\00\13\01\00\00\02\00\00\00S\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00\930\00\00\02\00\00\003\04\00\00\02\00\00\00S\00\00\00\02\00\00\00\13\05\00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00")
 (table $0 57 funcref)
 (elem (i32.const 0) $null $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|4 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|18 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|30 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|34 $start:std/array~anonymous|35 $start:std/array~anonymous|36 $start:std/array~anonymous|37 $start:std/array~anonymous|38 $start:std/array~anonymous|39 $start:std/array~anonymous|40 $start:std/array~anonymous|41 $start:std/array~anonymous|42 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|1 $start:std/array~anonymous|43 $start:std/array~anonymous|44 $start:std/array~anonymous|45 $start:std/array~anonymous|46 $start:std/array~anonymous|47 $start:std/array~anonymous|48 $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String>~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $std/array/charset i32 (i32.const 3200))
 (global $~lib/builtins/i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 7648))
 (global $~lib/heap/__heap_base i32 (i32.const 7860))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $~lib/rt/tlsf/removeBlock (; 6 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 128
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
   i32.const 128
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
   i32.const 128
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
 (func $~lib/rt/tlsf/insertBlock (; 7 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 128
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
   i32.const 128
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
    i32.const 128
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
   i32.const 128
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
   i32.const 128
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
   i32.const 128
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
 (func $~lib/rt/tlsf/addMemory (; 8 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 128
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
    i32.const 128
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
    i32.const 128
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
 (func $~lib/rt/tlsf/initializeRoot (; 9 ;) (type $FUNCSIG$v)
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
 (func $~lib/rt/tlsf/prepareSize (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 176
   i32.const 128
   i32.const 448
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
 (func $~lib/rt/tlsf/searchBlock (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 128
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
     i32.const 128
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
 (func $~lib/rt/tlsf/growMemory (; 12 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/rt/tlsf/prepareBlock (; 13 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 128
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
 (func $~lib/rt/tlsf/allocateBlock (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 128
    i32.const 478
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
   i32.const 128
   i32.const 480
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
 (func $~lib/rt/tlsf/__alloc (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/memory/memory.fill (; 16 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/rt/pure/increment (; 17 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   i32.const 232
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
   i32.const 232
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/rt/tlsf/freeBlock (; 19 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 128
   i32.const 537
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
 (func $~lib/rt/__typeinfo (; 20 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 280
   i32.const 336
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
   i32.const 128
   i32.const 567
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
   i32.const 128
   i32.const 568
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
   i32.const 232
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
    i32.const 232
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
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 28 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 24
   i32.const 72
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
  call $~lib/rt/tlsf/__alloc
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
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
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
   call $~lib/rt/pure/__retain
   drop
   local.get $4
   call $~lib/rt/pure/__release
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
 (func $~lib/array/Array<i32>#constructor (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 3
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
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
 (func $~lib/array/Array.isArray<~lib/array/Array<i32> | null> (; 30 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 1
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array.isArray<~lib/array/Array<i32>> (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 1
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $std/array/P#constructor (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array.isArray<std/array/P> (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 5
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/array/Array.isArray<~lib/typedarray/Uint8Array> (; 35 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array.isArray<i32> (; 36 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array.isArray<~lib/string/String> (; 37 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/rt/__allocArray (; 38 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<u8>#fill (; 39 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $5
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $2
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $2
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $3
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $3
  local.get $2
  local.get $3
  i32.lt_s
  if
   local.get $4
   local.get $2
   i32.add
   local.get $1
   local.get $3
   local.get $2
   i32.sub
   call $~lib/memory/memory.fill
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<u8>#get:length (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#__unchecked_get (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 488
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__unchecked_get
 )
 (func $std/array/isArraysEqual<u8> (; 43 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<u8>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<u8>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    call $~lib/array/Array<u8>#__get
    local.get $1
    local.get $3
    call $~lib/array/Array<u8>#__get
    i32.ne
    if
     i32.const 0
     local.set $4
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<u32>#fill (; 44 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $5
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $2
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $2
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $3
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $3
  block $break|0
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.get $1
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<u32>#get:length (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__unchecked_get (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 488
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__unchecked_get
 )
 (func $std/array/isArraysEqual<u32> (; 48 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<u32>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<u32>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    call $~lib/array/Array<u32>#__get
    local.get $1
    local.get $3
    call $~lib/array/Array<u32>#__get
    i32.ne
    if
     i32.const 0
     local.set $4
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#get:length (; 49 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 50 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $std/array/internalCapacity<i32> (; 51 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 2
  i32.shr_s
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
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
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const 268435455
   i32.const -1
   i32.xor
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 495
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
 (func $~lib/rt/tlsf/__realloc (; 53 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 559
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
   i32.const 128
   i32.const 560
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
 (func $~lib/array/ensureSize (; 54 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 24
    i32.const 488
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
 (func $~lib/array/Array<i32>#push (; 55 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<i32>#__unchecked_get (; 56 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 57 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 488
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $~lib/array/Array<i32>#pop (; 58 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 872
   i32.const 488
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
 (func $~lib/array/Array<i32>#concat (; 59 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.load offset=12
  local.set $2
  i32.const 0
  local.get $1
  i32.load offset=12
  local.get $1
  i32.const 0
  i32.eq
  select
  local.set $3
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $4
  i32.const 268435452
  i32.gt_u
  if
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 488
   i32.const 217
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $5
  i32.load offset=4
  local.set $6
  local.get $2
  i32.const 2
  i32.shl
  local.set $7
  local.get $6
  local.get $0
  i32.load offset=4
  local.get $7
  call $~lib/memory/memory.copy
  local.get $6
  local.get $7
  i32.add
  local.get $1
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $5
  local.set $8
  local.get $1
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/array/Array<i32>#copyWithin (; 60 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $5
  local.get $3
  local.tee $6
  local.get $5
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $1
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $1
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $8
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $2
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $9
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $3
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $10
  local.get $10
  local.get $9
  i32.sub
  local.tee $6
  local.get $5
  local.get $8
  i32.sub
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  local.set $11
  local.get $4
  local.get $8
  i32.const 2
  i32.shl
  i32.add
  local.get $4
  local.get $9
  i32.const 2
  i32.shl
  i32.add
  local.get $11
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $std/array/isArraysEqual<i32> (; 61 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<i32>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<i32>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    call $~lib/array/Array<i32>#__get
    local.get $1
    local.get $3
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     local.set $4
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#unshift (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.add
  local.set $2
  local.get $0
  local.get $2
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $3
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/array/Array<i32>#shift (; 63 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 872
   i32.const 488
   i32.const 348
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  i32.load
  local.set $3
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  local.get $2
  local.get $2
  i32.const 4
  i32.add
  local.get $4
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $2
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.const 0
  i32.store
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $3
 )
 (func $~lib/array/Array<i32>#reverse (; 64 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  if
   local.get $0
   i32.load offset=4
   local.set $2
   local.get $0
   i32.load offset=4
   local.get $1
   i32.const 1
   i32.sub
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
     local.get $2
     local.get $3
     i32.load
     i32.store
     local.get $3
     local.get $4
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
     local.get $3
     i32.const 4
     i32.sub
     local.set $3
     br $continue|0
    end
    unreachable
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<i32>#indexOf (; 65 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $3
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $2
   local.get $3
   i32.ge_s
  end
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $2
  end
  local.get $0
  i32.load offset=4
  local.set $6
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
  i32.const -1
 )
 (func $~lib/array/Array<i32>#includes (; 66 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#splice (; 67 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
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
  local.tee $4
  local.get $3
  local.get $1
  i32.sub
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $2
  local.get $2
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.set $8
  local.get $8
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $9
  local.get $7
  local.get $9
  local.get $2
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.set $10
  local.get $3
  local.get $10
  i32.ne
  if
   local.get $9
   local.get $8
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   local.get $10
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  i32.store offset=12
  local.get $6
 )
 (func $~lib/array/Array<i32>#__unchecked_set (; 68 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 69 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $start:std/array~anonymous|0 (; 70 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#findIndex (; 71 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    local.tee $4
    local.get $0
    i32.load offset=12
    local.tee $5
    local.get $4
    local.get $5
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  i32.const -1
 )
 (func $start:std/array~anonymous|1 (; 72 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 1
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|2 (; 73 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 100
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|3 (; 74 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 100
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|4 (; 75 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 100
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|5 (; 76 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 100
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|6 (; 77 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#every (; 78 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    local.tee $4
    local.get $0
    i32.load offset=12
    local.tee $5
    local.get $4
    local.get $5
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    i32.const 0
    i32.ne
    i32.eqz
    if
     i32.const 0
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  i32.const 1
 )
 (func $start:std/array~anonymous|7 (; 79 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.le_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|8 (; 80 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 10
  i32.lt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|9 (; 81 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 10
  i32.lt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|10 (; 82 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.lt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|11 (; 83 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 3
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#some (; 84 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    local.tee $4
    local.get $0
    i32.load offset=12
    local.tee $5
    local.get $4
    local.get $5
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    if
     i32.const 1
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $start:std/array~anonymous|12 (; 85 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const -1
  i32.le_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|13 (; 86 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 10
  i32.gt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|14 (; 87 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 10
  i32.gt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|15 (; 88 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.gt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|16 (; 89 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<i32>#forEach (; 90 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    local.tee $4
    local.get $0
    i32.load offset=12
    local.tee $5
    local.get $4
    local.get $5
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$viii)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
 )
 (func $start:std/array~anonymous|17 (; 91 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|18 (; 92 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|19 (; 93 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|20 (; 94 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     i32.const 4
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $2
     call $~lib/array/Array<i32>#pop
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   block $break|1
    i32.const 0
    local.set $3
    loop $loop|1
     local.get $3
     i32.const 100
     i32.lt_s
     i32.eqz
     br_if $break|1
     local.get $2
     i32.const 100
     local.get $3
     i32.add
     call $~lib/array/Array<i32>#push
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|1
    end
    unreachable
   end
   block $break|2
    i32.const 0
    local.set $3
    loop $loop|2
     local.get $3
     i32.const 100
     i32.lt_s
     i32.eqz
     br_if $break|2
     local.get $2
     call $~lib/array/Array<i32>#pop
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|2
    end
    unreachable
   end
   block $break|3
    i32.const 0
    local.set $3
    loop $loop|3
     local.get $3
     i32.const 100
     i32.lt_s
     i32.eqz
     br_if $break|3
     local.get $2
     local.get $3
     i32.const 200
     i32.add
     call $~lib/array/Array<i32>#push
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.const 2
  i32.eq
  if
   local.get $0
   i32.const 202
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 376
    i32.const 568
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|21 (; 95 ;) (type $FUNCSIG$fiii) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 f32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f32.convert_i32_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#map<f32> (; 96 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
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
    call_indirect (type $FUNCSIG$fiii)
    local.set $8
    local.get $4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    local.get $8
    f32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<f32>#get:length (; 97 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f32>#__unchecked_get (; 98 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__get (; 99 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 488
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__unchecked_get
 )
 (func $start:std/array~anonymous|22 (; 100 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#map<i32> (; 101 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
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
    local.set $6
    local.get $4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|23 (; 102 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|24 (; 103 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|25 (; 104 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#filter (; 105 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $0
   i32.load offset=12
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    local.tee $5
    local.get $0
    i32.load offset=12
    local.tee $6
    local.get $5
    local.get $6
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $5
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $3
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $2
     local.get $5
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $2
 )
 (func $start:std/array~anonymous|26 (; 106 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|27 (; 107 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|28 (; 108 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|29 (; 109 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 110 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   local.get $0
   i32.load offset=12
   local.set $5
   loop $loop|0
    local.get $4
    local.get $5
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
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $4
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|30 (; 111 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|31 (; 112 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 2
   i32.gt_s
  end
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduce<bool> (; 113 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   local.get $0
   i32.load offset=12
   local.set $5
   loop $loop|0
    local.get $4
    local.get $5
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
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $4
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|32 (; 114 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 100
   i32.gt_s
  end
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|33 (; 115 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|34 (; 116 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|35 (; 117 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|36 (; 118 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 119 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  local.set $3
  block $break|0
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $4
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|37 (; 120 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|38 (; 121 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 2
   i32.gt_s
  end
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduceRight<bool> (; 122 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  local.set $3
  block $break|0
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $4
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|39 (; 123 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 100
   i32.gt_s
  end
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|40 (; 124 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|41 (; 125 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|42 (; 126 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/math/murmurHash3 (; 127 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  i64.const -49064778989728563
  i64.mul
  local.set $0
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  i64.const -4265267296055464877
  i64.mul
  local.set $0
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
 )
 (func $~lib/math/splitMix32 (; 128 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1831565813
  i32.add
  local.set $0
  local.get $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  local.get $0
  i32.const 1
  i32.or
  i32.mul
  local.set $0
  local.get $0
  local.get $0
  local.get $0
  local.get $0
  i32.const 7
  i32.shr_u
  i32.xor
  local.get $0
  i32.const 61
  i32.or
  i32.mul
  i32.add
  i32.xor
  local.set $0
  local.get $0
  local.get $0
  i32.const 14
  i32.shr_u
  i32.xor
 )
 (func $~lib/math/NativeMath.seedRandom (; 129 ;) (type $FUNCSIG$vj) (param $0 i64)
  local.get $0
  i64.eqz
  if
   i32.const 0
   i32.const 3160
   i32.const 1020
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/math/random_seeded
  local.get $0
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state1_64
  local.get $0
  i32.wrap_i64
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state0_32
  global.get $~lib/math/random_state0_32
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state1_32
 )
 (func $~lib/util/sort/insertionSort<f32> (; 130 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      f32.load
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iff)
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       f32.store
      else       
       br $break|1
      end
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    f32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<f32> (; 131 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $4
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.set $6
    block $break|1
     loop $continue|1
      local.get $6
      i32.const 1
      i32.and
      local.get $4
      local.get $6
      i32.const 6
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 1
      i32.shr_s
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.eq
      i32.eqz
      br_if $break|1
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|1
     end
     unreachable
    end
    local.get $6
    i32.const 1
    i32.shr_s
    local.set $7
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $8
    local.get $0
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $9
    i32.const 2
    global.set $~lib/argc
    local.get $8
    local.get $9
    local.get $2
    call_indirect (type $FUNCSIG$iff)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     local.get $4
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     local.get $5
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     local.get $8
     f32.store
     local.get $0
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $9
     f32.store
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $loop|0
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|2
    local.get $7
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    local.get $0
    f32.load
    local.set $9
    local.get $0
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    f32.load
    f32.store
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $9
    f32.store
    i32.const 1
    local.set $6
    block $break|3
     loop $continue|3
      local.get $6
      i32.const 1
      i32.shl
      local.get $4
      local.get $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.add
      local.tee $5
      local.get $7
      i32.lt_s
      i32.eqz
      br_if $break|3
      local.get $5
      local.set $6
      br $continue|3
     end
     unreachable
    end
    block $break|4
     loop $continue|4
      local.get $6
      i32.const 0
      i32.gt_s
      i32.eqz
      br_if $break|4
      local.get $0
      f32.load
      local.set $9
      local.get $0
      local.get $6
      i32.const 2
      i32.shl
      i32.add
      f32.load
      local.set $8
      i32.const 2
      global.set $~lib/argc
      local.get $9
      local.get $8
      local.get $2
      call_indirect (type $FUNCSIG$iff)
      i32.const 0
      i32.lt_s
      if
       local.get $4
       local.get $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.get $4
       local.get $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 1
       local.get $6
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       local.get $9
       f32.store
       local.get $0
       local.get $8
       f32.store
      end
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|4
     end
     unreachable
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|2
   end
   unreachable
  end
  local.get $4
  call $~lib/rt/tlsf/__free
  local.get $0
  f32.load offset=4
  local.set $10
  local.get $0
  local.get $0
  f32.load
  f32.store offset=4
  local.get $0
  local.get $10
  f32.store
 )
 (func $~lib/array/Array<f32>#sort (; 132 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   f32.load offset=4
   local.set $4
   local.get $3
   f32.load
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iff)
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    f32.store offset=4
    local.get $3
    local.get $4
    f32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  local.set $8
  local.get $2
  local.set $7
  local.get $1
  local.set $6
  local.get $7
  i32.const 256
  i32.lt_s
  if
   local.get $8
   local.get $7
   local.get $6
   call $~lib/util/sort/insertionSort<f32>
  else   
   local.get $8
   local.get $7
   local.get $6
   call $~lib/util/sort/weakHeapSort<f32>
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<f32>~anonymous|0 (; 133 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.reinterpret_f32
  local.set $2
  local.get $1
  i32.reinterpret_f32
  local.set $3
  local.get $2
  local.get $2
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  i32.xor
  local.set $2
  local.get $3
  local.get $3
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  i32.xor
  local.set $3
  local.get $2
  local.get $3
  i32.gt_s
  local.get $2
  local.get $3
  i32.lt_s
  i32.sub
 )
 (func $~lib/array/Array<f32>#sort|trampoline (; 134 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<f32>|inlined.0 (result i32)
    i32.const 44
    br $~lib/util/sort/COMPARATOR<f32>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#sort
 )
 (func $~lib/number/isNaN<f32> (; 135 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $std/array/isArraysEqual<f32> (; 136 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<f32>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<f32>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $continue|0
     local.get $0
     local.get $3
     call $~lib/array/Array<f32>#__get
     call $~lib/number/isNaN<f32>
     local.get $1
     local.get $3
     call $~lib/array/Array<f32>#__get
     call $~lib/number/isNaN<f32>
     i32.eq
     if
      br $continue|0
     end
     local.get $0
     local.get $3
     call $~lib/array/Array<f32>#__get
     local.get $1
     local.get $3
     call $~lib/array/Array<f32>#__get
     f32.ne
     if
      i32.const 0
      local.set $4
      local.get $0
      call $~lib/rt/pure/__release
      local.get $1
      call $~lib/rt/pure/__release
      local.get $4
      return
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/util/sort/insertionSort<f64> (; 137 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       i32.add
       local.get $6
       f64.store
      else       
       br $break|1
      end
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    i32.add
    local.get $4
    f64.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<f64> (; 138 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $4
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.set $6
    block $break|1
     loop $continue|1
      local.get $6
      i32.const 1
      i32.and
      local.get $4
      local.get $6
      i32.const 6
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 1
      i32.shr_s
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.eq
      i32.eqz
      br_if $break|1
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|1
     end
     unreachable
    end
    local.get $6
    i32.const 1
    i32.shr_s
    local.set $7
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $8
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $9
    i32.const 2
    global.set $~lib/argc
    local.get $8
    local.get $9
    local.get $2
    call_indirect (type $FUNCSIG$idd)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     local.get $4
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     local.get $5
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     local.get $8
     f64.store
     local.get $0
     local.get $7
     i32.const 3
     i32.shl
     i32.add
     local.get $9
     f64.store
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $loop|0
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|2
    local.get $7
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    local.get $0
    f64.load
    local.set $9
    local.get $0
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    f64.load
    f64.store
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    local.get $9
    f64.store
    i32.const 1
    local.set $6
    block $break|3
     loop $continue|3
      local.get $6
      i32.const 1
      i32.shl
      local.get $4
      local.get $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.add
      local.tee $5
      local.get $7
      i32.lt_s
      i32.eqz
      br_if $break|3
      local.get $5
      local.set $6
      br $continue|3
     end
     unreachable
    end
    block $break|4
     loop $continue|4
      local.get $6
      i32.const 0
      i32.gt_s
      i32.eqz
      br_if $break|4
      local.get $0
      f64.load
      local.set $9
      local.get $0
      local.get $6
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.set $8
      i32.const 2
      global.set $~lib/argc
      local.get $9
      local.get $8
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      i32.const 0
      i32.lt_s
      if
       local.get $4
       local.get $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.get $4
       local.get $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 1
       local.get $6
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $6
       i32.const 3
       i32.shl
       i32.add
       local.get $9
       f64.store
       local.get $0
       local.get $8
       f64.store
      end
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|4
     end
     unreachable
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|2
   end
   unreachable
  end
  local.get $4
  call $~lib/rt/tlsf/__free
  local.get $0
  f64.load offset=8
  local.set $10
  local.get $0
  local.get $0
  f64.load
  f64.store offset=8
  local.get $0
  local.get $10
  f64.store
 )
 (func $~lib/array/Array<f64>#sort (; 139 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   f64.load offset=8
   local.set $4
   local.get $3
   f64.load
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$idd)
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    f64.store offset=8
    local.get $3
    local.get $4
    f64.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  local.set $8
  local.get $2
  local.set $7
  local.get $1
  local.set $6
  local.get $7
  i32.const 256
  i32.lt_s
  if
   local.get $8
   local.get $7
   local.get $6
   call $~lib/util/sort/insertionSort<f64>
  else   
   local.get $8
   local.get $7
   local.get $6
   call $~lib/util/sort/weakHeapSort<f64>
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 140 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $1
  i64.reinterpret_f64
  local.set $3
  local.get $2
  local.get $2
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.set $2
  local.get $3
  local.get $3
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.set $3
  local.get $2
  local.get $3
  i64.gt_s
  local.get $2
  local.get $3
  i64.lt_s
  i32.sub
 )
 (func $~lib/array/Array<f64>#sort|trampoline (; 141 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<f64>|inlined.0 (result i32)
    i32.const 45
    br $~lib/util/sort/COMPARATOR<f64>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#sort
 )
 (func $~lib/array/Array<f64>#get:length (; 142 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f64>#__unchecked_get (; 143 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__get (; 144 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 488
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__unchecked_get
 )
 (func $~lib/number/isNaN<f64> (; 145 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $std/array/isArraysEqual<f64> (; 146 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<f64>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<f64>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $continue|0
     local.get $0
     local.get $3
     call $~lib/array/Array<f64>#__get
     call $~lib/number/isNaN<f64>
     local.get $1
     local.get $3
     call $~lib/array/Array<f64>#__get
     call $~lib/number/isNaN<f64>
     i32.eq
     if
      br $continue|0
     end
     local.get $0
     local.get $3
     call $~lib/array/Array<f64>#__get
     local.get $1
     local.get $3
     call $~lib/array/Array<f64>#__get
     f64.ne
     if
      i32.const 0
      local.set $4
      local.get $0
      call $~lib/rt/pure/__release
      local.get $1
      call $~lib/rt/pure/__release
      local.get $4
      return
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/util/sort/insertionSort<i32> (; 147 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       br $break|1
      end
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<i32> (; 148 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $4
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.set $6
    block $break|1
     loop $continue|1
      local.get $6
      i32.const 1
      i32.and
      local.get $4
      local.get $6
      i32.const 6
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 1
      i32.shr_s
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.eq
      i32.eqz
      br_if $break|1
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|1
     end
     unreachable
    end
    local.get $6
    i32.const 1
    i32.shr_s
    local.set $7
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $8
    local.get $0
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $9
    i32.const 2
    global.set $~lib/argc
    local.get $8
    local.get $9
    local.get $2
    call_indirect (type $FUNCSIG$iii)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     local.get $4
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     local.get $5
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     local.get $8
     i32.store
     local.get $0
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $9
     i32.store
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $loop|0
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $9
   loop $loop|2
    local.get $9
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    local.get $0
    i32.load
    local.set $8
    local.get $0
    local.get $0
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $0
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    local.get $8
    i32.store
    i32.const 1
    local.set $7
    block $break|3
     loop $continue|3
      local.get $7
      i32.const 1
      i32.shl
      local.get $4
      local.get $7
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $7
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.add
      local.tee $6
      local.get $9
      i32.lt_s
      i32.eqz
      br_if $break|3
      local.get $6
      local.set $7
      br $continue|3
     end
     unreachable
    end
    block $break|4
     loop $continue|4
      local.get $7
      i32.const 0
      i32.gt_s
      i32.eqz
      br_if $break|4
      local.get $0
      i32.load
      local.set $8
      local.get $0
      local.get $7
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $5
      i32.const 2
      global.set $~lib/argc
      local.get $8
      local.get $5
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      i32.const 0
      i32.lt_s
      if
       local.get $4
       local.get $7
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.get $4
       local.get $7
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 1
       local.get $7
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $7
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.store
       local.get $0
       local.get $5
       i32.store
      end
      local.get $7
      i32.const 1
      i32.shr_s
      local.set $7
      br $continue|4
     end
     unreachable
    end
    local.get $9
    i32.const 1
    i32.sub
    local.set $9
    br $loop|2
   end
   unreachable
  end
  local.get $4
  call $~lib/rt/tlsf/__free
  local.get $0
  i32.load offset=4
  local.set $10
  local.get $0
  local.get $0
  i32.load
  i32.store offset=4
  local.get $0
  local.get $10
  i32.store
 )
 (func $~lib/array/Array<i32>#sort (; 149 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   local.set $4
   local.get $3
   i32.load
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  local.set $6
  local.get $2
  local.set $5
  local.get $1
  local.set $4
  local.get $5
  i32.const 256
  i32.lt_s
  if
   local.get $6
   local.get $5
   local.get $4
   call $~lib/util/sort/insertionSort<i32>
  else   
   local.get $6
   local.get $5
   local.get $4
   call $~lib/util/sort/weakHeapSort<i32>
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|0 (; 150 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/array/Array<i32>#sort|trampoline (; 151 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<i32>|inlined.0 (result i32)
    i32.const 46
    br $~lib/util/sort/COMPARATOR<i32>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
 )
 (func $~lib/util/sort/insertionSort<u32> (; 152 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       br $break|1
      end
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<u32> (; 153 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $4
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.set $6
    block $break|1
     loop $continue|1
      local.get $6
      i32.const 1
      i32.and
      local.get $4
      local.get $6
      i32.const 6
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 1
      i32.shr_s
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.eq
      i32.eqz
      br_if $break|1
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|1
     end
     unreachable
    end
    local.get $6
    i32.const 1
    i32.shr_s
    local.set $7
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $8
    local.get $0
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $9
    i32.const 2
    global.set $~lib/argc
    local.get $8
    local.get $9
    local.get $2
    call_indirect (type $FUNCSIG$iii)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     local.get $4
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     local.get $5
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     local.get $8
     i32.store
     local.get $0
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $9
     i32.store
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $loop|0
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $9
   loop $loop|2
    local.get $9
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    local.get $0
    i32.load
    local.set $8
    local.get $0
    local.get $0
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $0
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    local.get $8
    i32.store
    i32.const 1
    local.set $7
    block $break|3
     loop $continue|3
      local.get $7
      i32.const 1
      i32.shl
      local.get $4
      local.get $7
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $7
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.add
      local.tee $6
      local.get $9
      i32.lt_s
      i32.eqz
      br_if $break|3
      local.get $6
      local.set $7
      br $continue|3
     end
     unreachable
    end
    block $break|4
     loop $continue|4
      local.get $7
      i32.const 0
      i32.gt_s
      i32.eqz
      br_if $break|4
      local.get $0
      i32.load
      local.set $8
      local.get $0
      local.get $7
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $5
      i32.const 2
      global.set $~lib/argc
      local.get $8
      local.get $5
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      i32.const 0
      i32.lt_s
      if
       local.get $4
       local.get $7
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.get $4
       local.get $7
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 1
       local.get $7
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $7
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.store
       local.get $0
       local.get $5
       i32.store
      end
      local.get $7
      i32.const 1
      i32.shr_s
      local.set $7
      br $continue|4
     end
     unreachable
    end
    local.get $9
    i32.const 1
    i32.sub
    local.set $9
    br $loop|2
   end
   unreachable
  end
  local.get $4
  call $~lib/rt/tlsf/__free
  local.get $0
  i32.load offset=4
  local.set $10
  local.get $0
  local.get $0
  i32.load
  i32.store offset=4
  local.get $0
  local.get $10
  i32.store
 )
 (func $~lib/array/Array<u32>#sort (; 154 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   local.set $4
   local.get $3
   i32.load
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  local.set $6
  local.get $2
  local.set $5
  local.get $1
  local.set $4
  local.get $5
  i32.const 256
  i32.lt_s
  if
   local.get $6
   local.get $5
   local.get $4
   call $~lib/util/sort/insertionSort<u32>
  else   
   local.get $6
   local.get $5
   local.get $4
   call $~lib/util/sort/weakHeapSort<u32>
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<u32>~anonymous|0 (; 155 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $~lib/array/Array<u32>#sort|trampoline (; 156 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<u32>|inlined.0 (result i32)
    i32.const 47
    br $~lib/util/sort/COMPARATOR<u32>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#sort
 )
 (func $~lib/array/Array.create<i32> (; 157 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 24
   i32.const 488
   i32.const 45
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
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
 (func $std/array/createReverseOrderedArray (; 158 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/array/Array.create<i32>
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
    local.get $1
    local.get $2
    local.get $0
    i32.const 1
    i32.sub
    local.get $2
    i32.sub
    call $~lib/array/Array<i32>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/math/NativeMath.random (; 159 ;) (type $FUNCSIG$d) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   i32.const 3936
   i32.const 3160
   i32.const 1029
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/math/random_state0_64
  local.set $0
  global.get $~lib/math/random_state1_64
  local.set $1
  local.get $1
  global.set $~lib/math/random_state0_64
  local.get $0
  local.get $0
  i64.const 23
  i64.shl
  i64.xor
  local.set $0
  local.get $0
  local.get $0
  i64.const 17
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  local.get $1
  i64.xor
  local.set $0
  local.get $0
  local.get $1
  i64.const 26
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  global.set $~lib/math/random_state1_64
  local.get $1
  local.get $0
  i64.add
  i64.const 4503599627370495
  i64.and
  i64.const 4607182418800017408
  i64.or
  local.set $2
  local.get $2
  f64.reinterpret_i64
  f64.const 1
  f64.sub
 )
 (func $std/array/createRandomOrderedArray (; 160 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/array/Array.create<i32>
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
    local.get $1
    local.get $2
    call $~lib/math/NativeMath.random
    local.get $0
    f64.convert_i32_s
    f64.mul
    i32.trunc_f64_s
    call $~lib/array/Array<i32>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|1 (; 161 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $std/array/isSorted<i32> (; 162 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  block $break|0
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/array/Array<i32>#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 2
    global.set $~lib/argc
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.get $0
    local.get $2
    call $~lib/array/Array<i32>#__get
    local.get $1
    call_indirect (type $FUNCSIG$iii)
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     local.set $4
     local.get $0
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/array/assertSorted<i32> (; 163 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
  local.tee $2
  local.get $1
  call $std/array/isSorted<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 830
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/array/assertSortedDefault<i32> (; 164 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  block $~lib/util/sort/COMPARATOR<i32>|inlined.1 (result i32)
   i32.const 48
   br $~lib/util/sort/COMPARATOR<i32>|inlined.1
  end
  call $std/array/assertSorted<i32>
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|43 (; 165 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $start:std/array~anonymous|44 (; 166 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $start:std/array~anonymous|45 (; 167 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $start:std/array~anonymous|46 (; 168 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $~lib/array/Array.create<~lib/array/Array<i32>> (; 169 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 24
   i32.const 488
   i32.const 45
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const 10
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
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
 (func $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_set (; 170 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
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
   call $~lib/rt/pure/__retain
   i32.store
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (; 171 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 4040
   i32.const 488
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
  call $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_set
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
  call $~lib/rt/pure/__release
 )
 (func $std/array/createReverseOrderedNestedArray (; 172 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/array/Array.create<~lib/array/Array<i32>>
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
    i32.const 1
    call $~lib/array/Array.create<i32>
    local.set $3
    local.get $3
    i32.const 0
    local.get $0
    i32.const 1
    i32.sub
    local.get $2
    i32.sub
    call $~lib/array/Array<i32>#__set
    local.get $1
    local.get $2
    local.get $3
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $start:std/array~anonymous|47 (; 173 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.sub
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/util/sort/insertionSort<~lib/array/Array<i32>> (; 174 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      call $~lib/rt/pure/__retain
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       local.get $6
       call $~lib/rt/pure/__release
       br $break|1
      end
      local.get $6
      call $~lib/rt/pure/__release
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#sort (; 175 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $3
  local.set $5
  local.get $2
  local.set $4
  local.get $1
  local.set $6
  local.get $5
  local.get $4
  local.get $6
  call $~lib/util/sort/insertionSort<~lib/array/Array<i32>>
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#get:length (; 176 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_get (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__get (; 178 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 4040
   i32.const 488
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
   i32.const 280
   i32.const 488
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/array/Array<i32>> (; 179 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  block $break|0
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/array/Array<~lib/array/Array<i32>>#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 2
    global.set $~lib/argc
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<~lib/array/Array<i32>>#__get
    local.tee $4
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<i32>>#__get
    local.tee $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     local.set $6
     local.get $0
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $6
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $std/array/assertSorted<~lib/array/Array<i32>> (; 180 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#sort
  local.tee $2
  local.get $1
  call $std/array/isSorted<~lib/array/Array<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 830
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array.create<std/array/Proxy<i32>> (; 181 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 24
   i32.const 488
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
  call $~lib/rt/pure/__retain
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
 (func $std/array/Proxy<i32>#constructor (; 182 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 11
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_set (; 183 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
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
   call $~lib/rt/pure/__retain
   i32.store
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__set (; 184 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 4040
   i32.const 488
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
  call $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_set
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
  call $~lib/rt/pure/__release
 )
 (func $std/array/createReverseOrderedElementsArray (; 185 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/array/Array.create<std/array/Proxy<i32>>
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
    local.get $1
    local.get $2
    i32.const 0
    local.get $0
    i32.const 1
    i32.sub
    local.get $2
    i32.sub
    call $std/array/Proxy<i32>#constructor
    local.tee $3
    call $~lib/array/Array<std/array/Proxy<i32>>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $start:std/array~anonymous|48 (; 186 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/util/sort/insertionSort<std/array/Proxy<i32>> (; 187 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      call $~lib/rt/pure/__retain
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       local.get $6
       call $~lib/rt/pure/__release
       br $break|1
      end
      local.get $6
      call $~lib/rt/pure/__release
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#sort (; 188 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $3
  local.set $5
  local.get $2
  local.set $4
  local.get $1
  local.set $6
  local.get $5
  local.get $4
  local.get $6
  call $~lib/util/sort/insertionSort<std/array/Proxy<i32>>
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#get:length (; 189 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_get (; 190 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__get (; 191 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 4040
   i32.const 488
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
   i32.const 280
   i32.const 488
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_get
 )
 (func $std/array/isSorted<std/array/Proxy<i32>> (; 192 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  block $break|0
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/array/Array<std/array/Proxy<i32>>#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 2
    global.set $~lib/argc
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<std/array/Proxy<i32>>#__get
    local.tee $4
    local.get $0
    local.get $2
    call $~lib/array/Array<std/array/Proxy<i32>>#__get
    local.tee $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     local.set $6
     local.get $0
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $6
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $std/array/assertSorted<std/array/Proxy<i32>> (; 193 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Proxy<i32>>#sort
  local.tee $2
  local.get $1
  call $std/array/isSorted<std/array/Proxy<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 830
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/sort/insertionSort<~lib/string/String | null> (; 194 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      call $~lib/rt/pure/__retain
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       local.get $6
       call $~lib/rt/pure/__release
       br $break|1
      end
      local.get $6
      call $~lib/rt/pure/__release
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/string/String | null>#sort (; 195 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $3
  local.set $5
  local.get $2
  local.set $4
  local.get $1
  local.set $6
  local.get $5
  local.get $4
  local.get $6
  call $~lib/util/sort/insertionSort<~lib/string/String | null>
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String | null>#get:length (; 196 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String | null>#__unchecked_get (; 197 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String | null>#__get (; 198 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 488
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/string/String | null> (; 199 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  block $break|0
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/array/Array<~lib/string/String | null>#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 2
    global.set $~lib/argc
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<~lib/string/String | null>#__get
    local.tee $4
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/string/String | null>#__get
    local.tee $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     local.set $6
     local.get $0
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $6
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $std/array/assertSorted<~lib/string/String | null> (; 200 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#sort
  local.tee $2
  local.get $1
  call $std/array/isSorted<~lib/string/String | null>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 830
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/string/String#get:length (; 201 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 202 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
 (func $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 (; 203 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $4
   i32.eqz
  else   
   i32.const 0
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
  local.get $3
  i32.eqz
  if
   i32.const -1
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
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/array/assertSorted<~lib/string/String | null>|trampoline (; 204 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   block $~lib/util/sort/COMPARATOR<~lib/string/String | null>|inlined.0 (result i32)
    i32.const 55
    br $~lib/util/sort/COMPARATOR<~lib/string/String | null>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $std/array/assertSorted<~lib/string/String | null>
 )
 (func $~lib/string/String.__eq (; 205 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.__ne (; 206 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/isArraysEqual<~lib/string/String | null> (; 207 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<~lib/string/String | null>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<~lib/string/String | null>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/string/String | null>#__get
    local.tee $4
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/string/String | null>#__get
    local.tee $5
    call $~lib/string/String.__ne
    if
     i32.const 0
     local.set $6
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $6
     return
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/array/Array.create<~lib/string/String> (; 208 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 24
   i32.const 488
   i32.const 45
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const 14
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
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
 (func $~lib/string/String#charAt (; 209 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 4248
   call $~lib/rt/pure/__retain
   return
  end
  i32.const 2
  i32.const 1
  call $~lib/rt/tlsf/__alloc
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
  call $~lib/rt/pure/__retain
 )
 (func $~lib/string/String#concat (; 210 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 4360
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
   i32.const 4248
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
 (func $~lib/string/String.__concat (; 211 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 4360
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
 (func $std/array/createRandomString (; 212 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 4248
  call $~lib/rt/pure/__retain
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
    local.get $1
    global.get $std/array/charset
    call $~lib/math/NativeMath.random
    global.get $std/array/charset
    call $~lib/string/String#get:length
    f64.convert_i32_s
    f64.mul
    local.set $3
    local.get $3
    f64.floor
    i32.trunc_f64_s
    call $~lib/string/String#charAt
    local.tee $4
    call $~lib/string/String.__concat
    local.tee $5
    local.tee $6
    local.get $1
    local.tee $7
    i32.ne
    if
     local.get $6
     call $~lib/rt/pure/__retain
     drop
     local.get $7
     call $~lib/rt/pure/__release
    end
    local.get $6
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_set (; 213 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
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
   call $~lib/rt/pure/__retain
   i32.store
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/string/String>#__set (; 214 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 4040
   i32.const 488
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
  call $~lib/array/Array<~lib/string/String>#__unchecked_set
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
  call $~lib/rt/pure/__release
 )
 (func $std/array/createRandomStringArray (; 215 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/array/Array.create<~lib/string/String>
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
    local.get $1
    local.get $2
    call $~lib/math/NativeMath.random
    f64.const 32
    f64.mul
    i32.trunc_f64_s
    call $std/array/createRandomString
    local.tee $3
    call $~lib/array/Array<~lib/string/String>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/util/sort/insertionSort<~lib/string/String> (; 216 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      call $~lib/rt/pure/__retain
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       local.get $6
       call $~lib/rt/pure/__release
       br $break|1
      end
      local.get $6
      call $~lib/rt/pure/__release
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/string/String>#sort (; 217 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $3
  local.set $5
  local.get $2
  local.set $4
  local.get $1
  local.set $6
  local.get $5
  local.get $4
  local.get $6
  call $~lib/util/sort/insertionSort<~lib/string/String>
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (; 218 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_get (; 219 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 220 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 4040
   i32.const 488
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
   i32.const 280
   i32.const 488
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/string/String> (; 221 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  block $break|0
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/array/Array<~lib/string/String>#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 2
    global.set $~lib/argc
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $4
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     local.set $6
     local.get $0
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $6
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $std/array/assertSorted<~lib/string/String> (; 222 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#sort
  local.tee $2
  local.get $1
  call $std/array/isSorted<~lib/string/String>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 830
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/sort/COMPARATOR<~lib/string/String>~anonymous|0 (; 223 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $4
   i32.eqz
  else   
   i32.const 0
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
  local.get $3
  i32.eqz
  if
   i32.const -1
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
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/array/assertSorted<~lib/string/String>|trampoline (; 224 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   block $~lib/util/sort/COMPARATOR<~lib/string/String>|inlined.0 (result i32)
    i32.const 56
    br $~lib/util/sort/COMPARATOR<~lib/string/String>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $std/array/assertSorted<~lib/string/String>
 )
 (func $~lib/string/String#substring (; 225 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 4248
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
 (func $~lib/array/Array<bool>#join_bool (; 226 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   i32.const 4408
   i32.const 4432
   local.get $4
   i32.load8_u
   select
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  i32.const 5
  local.set $6
  local.get $6
  local.get $5
  i32.add
  local.get $2
  i32.mul
  local.get $6
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
    i32.add
    i32.load8_u
    local.set $10
    i32.const 4
    local.get $10
    i32.const 0
    i32.ne
    i32.eqz
    i32.add
    local.set $6
    local.get $8
    local.get $9
    i32.const 1
    i32.shl
    i32.add
    i32.const 4408
    i32.const 4432
    local.get $10
    select
    local.get $6
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $9
    local.get $6
    i32.add
    local.set $9
    local.get $5
    if
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $5
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
  i32.add
  i32.load8_u
  local.set $10
  i32.const 4
  local.get $10
  i32.const 0
  i32.ne
  i32.eqz
  i32.add
  local.set $6
  local.get $8
  local.get $9
  i32.const 1
  i32.shl
  i32.add
  i32.const 4408
  i32.const 4432
  local.get $10
  select
  local.get $6
  i32.const 1
  i32.shl
  call $~lib/memory/memory.copy
  local.get $9
  local.get $6
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
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<bool>#join (; 227 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<bool>#join_bool
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/util/number/decimalCount32 (; 228 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 229 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 5000
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
 (func $~lib/util/number/itoa32 (; 230 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4560
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
 (func $~lib/util/number/itoa<i32> (; 231 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/util/number/itoa_stream<i32> (; 232 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#join_int (; 233 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
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
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#join (; 234 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/util/number/utoa32 (; 235 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4560
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
 (func $~lib/util/number/itoa<u32> (; 236 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u32> (; 237 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  call $~lib/util/number/decimalCount32
  local.set $3
  local.get $0
  local.set $6
  local.get $2
  local.set $5
  local.get $3
  local.set $4
  local.get $6
  local.get $5
  local.get $4
  call $~lib/util/number/utoa32_lut
  local.get $3
 )
 (func $~lib/array/Array<u32>#join_int (; 238 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
   call $~lib/util/number/itoa<u32>
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 10
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 10
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
    call $~lib/util/number/itoa_stream<u32>
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
  call $~lib/util/number/itoa_stream<u32>
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
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<u32>#join (; 239 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/number/isFinite<f64> (; 240 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 241 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 242 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/util/number/genDigits (; 243 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  i32.const 6464
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
 (func $~lib/util/number/prettify (; 244 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/util/number/dtoa_core (; 245 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
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
  i32.const 6152
  local.get $14
  call $~lib/array/Array<u64>#__unchecked_get
  global.set $~lib/util/number/_frc_pow
  i32.const 6376
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
 (func $~lib/util/number/dtoa (; 246 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 5320
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
    i32.const 5344
    call $~lib/rt/pure/__retain
    return
   end
   i32.const 5368
   i32.const 5408
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
 (func $~lib/util/number/dtoa_stream (; 247 ;) (type $FUNCSIG$iiid) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  f64.const 0
  f64.eq
  if
   local.get $0
   i32.const 48
   i32.store16
   local.get $0
   i32.const 46
   i32.store16 offset=2
   local.get $0
   i32.const 48
   i32.store16 offset=4
   i32.const 3
   return
  end
  local.get $2
  call $~lib/number/isFinite<f64>
  i32.eqz
  if
   local.get $2
   call $~lib/number/isNaN<f64>
   if
    local.get $0
    i32.const 78
    i32.store16
    local.get $0
    i32.const 97
    i32.store16 offset=2
    local.get $0
    i32.const 78
    i32.store16 offset=4
    i32.const 3
    return
   else    
    local.get $2
    f64.const 0
    f64.lt
    local.set $3
    i32.const 8
    local.get $3
    i32.add
    local.set $4
    local.get $0
    i32.const 5368
    i32.const 5408
    local.get $3
    select
    local.get $4
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $4
    return
   end
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/util/number/dtoa_core
 )
 (func $~lib/array/Array<f64>#join_flt (; 248 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  local.get $1
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
   f64.load
   call $~lib/util/number/dtoa
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 28
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 28
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/dtoa_stream
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
  i32.const 3
  i32.shl
  i32.add
  f64.load
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/dtoa_stream
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
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<f64>#join (; 249 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#join_flt
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/string/String>#join_str (; 250 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
     call $~lib/rt/pure/__retain
     drop
     local.get $10
     call $~lib/rt/pure/__release
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
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
     call $~lib/rt/pure/__retain
     drop
     local.get $3
     call $~lib/rt/pure/__release
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
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
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
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 251 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#join_str
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $std/array/Ref#constructor (; 252 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 18
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array<std/array/Ref | null>#join_ref (; 253 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   i32.const 6648
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  i32.const 15
  local.get $5
  i32.add
  local.get $2
  i32.mul
  i32.const 15
  i32.add
  local.set $6
  local.get $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  i32.const 0
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
    local.tee $10
    local.get $9
    local.tee $11
    i32.ne
    if
     local.get $10
     call $~lib/rt/pure/__retain
     drop
     local.get $11
     call $~lib/rt/pure/__release
    end
    local.get $10
    local.set $9
    local.get $9
    if
     local.get $7
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     i32.const 6648
     i32.const 15
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $8
     i32.const 15
     i32.add
     local.set $8
    end
    local.get $5
    if
     local.get $7
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $8
     local.get $5
     i32.add
     local.set $8
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
  if
   local.get $7
   local.get $8
   i32.const 1
   i32.shl
   i32.add
   i32.const 6648
   i32.const 15
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
   local.get $8
   i32.const 15
   i32.add
   local.set $8
  end
  local.get $6
  local.get $8
  i32.gt_s
  if
   local.get $7
   i32.const 0
   local.get $8
   call $~lib/string/String#substring
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $7
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<std/array/Ref | null>#join (; 254 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Ref | null>#join_ref
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<i32>#toString (; 255 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4464
  call $~lib/array/Array<i32>#join
 )
 (func $~lib/util/number/itoa<i8> (; 256 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/util/number/itoa_stream<i8> (; 257 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
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
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
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
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/number/decimalCount32
  local.get $4
  i32.add
  local.set $3
  local.get $0
  local.set $7
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
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
 (func $~lib/array/Array<i8>#join_int (; 258 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
   i32.load8_s
   call $~lib/util/number/itoa<i8>
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
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
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
    i32.const 0
    i32.shl
    i32.add
    i32.load8_s
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<i8>
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
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<i8>
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
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i8>#join (; 259 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<i8>#toString (; 260 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4464
  call $~lib/array/Array<i8>#join
 )
 (func $~lib/util/number/itoa<u16> (; 261 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u16> (; 262 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i32.const 65535
  i32.and
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
  i32.const 65535
  i32.and
  call $~lib/util/number/decimalCount32
  local.set $3
  local.get $0
  local.set $6
  local.get $2
  i32.const 65535
  i32.and
  local.set $5
  local.get $3
  local.set $4
  local.get $6
  local.get $5
  local.get $4
  call $~lib/util/number/utoa32_lut
  local.get $3
 )
 (func $~lib/array/Array<u16>#join_int (; 263 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
   i32.load16_u
   call $~lib/util/number/itoa<u16>
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 10
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 10
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<u16>
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
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<u16>
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
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<u16>#join (; 264 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<u16>#toString (; 265 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4464
  call $~lib/array/Array<u16>#join
 )
 (func $~lib/util/number/decimalCount64 (; 266 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 267 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
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
  i32.const 5000
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
 (func $~lib/util/number/utoa64 (; 268 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 4560
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
 (func $~lib/util/number/itoa<u64> (; 269 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/utoa64
  return
 )
 (func $~lib/util/number/itoa_stream<u64> (; 270 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i64.eqz
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
  i64.const 4294967295
  i64.le_u
  if
   local.get $2
   i32.wrap_i64
   local.set $4
   local.get $4
   call $~lib/util/number/decimalCount32
   local.set $3
   local.get $0
   local.set $7
   local.get $4
   local.set $6
   local.get $3
   local.set $5
   local.get $7
   local.get $6
   local.get $5
   call $~lib/util/number/utoa32_lut
  else   
   local.get $2
   call $~lib/util/number/decimalCount64
   local.set $3
   local.get $0
   local.set $6
   local.get $2
   local.set $8
   local.get $3
   local.set $5
   local.get $6
   local.get $8
   local.get $5
   call $~lib/util/number/utoa64_lut
  end
  local.get $3
 )
 (func $~lib/array/Array<u64>#join_int (; 271 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  local.get $1
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
   i64.load
   call $~lib/util/number/itoa<u64>
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 20
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 20
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<u64>
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
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<u64>
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
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<u64>#join (; 272 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<u64>#toString (; 273 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4464
  call $~lib/array/Array<u64>#join
 )
 (func $~lib/util/number/itoa64 (; 274 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 4560
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
 (func $~lib/util/number/itoa<i64> (; 275 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa64
  return
 )
 (func $~lib/util/number/itoa_stream<i64> (; 276 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i64.eqz
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
  i64.const 0
  i64.lt_s
  local.set $4
  local.get $4
  if
   i64.const 0
   local.get $2
   i64.sub
   local.set $2
  end
  local.get $2
  i64.const 4294967295
  i64.le_u
  if
   local.get $2
   i32.wrap_i64
   local.set $5
   local.get $5
   call $~lib/util/number/decimalCount32
   local.get $4
   i32.add
   local.set $3
   local.get $0
   local.set $8
   local.get $5
   local.set $7
   local.get $3
   local.set $6
   local.get $8
   local.get $7
   local.get $6
   call $~lib/util/number/utoa32_lut
  else   
   local.get $2
   call $~lib/util/number/decimalCount64
   local.get $4
   i32.add
   local.set $3
   local.get $0
   local.set $7
   local.get $2
   local.set $9
   local.get $3
   local.set $6
   local.get $7
   local.get $9
   local.get $6
   call $~lib/util/number/utoa64_lut
  end
  local.get $4
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/array/Array<i64>#join_int (; 277 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  local.get $1
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
   i64.load
   call $~lib/util/number/itoa<i64>
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 21
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 21
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<i64>
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
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<i64>
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
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i64>#join (; 278 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<i64>#toString (; 279 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4464
  call $~lib/array/Array<i64>#join
 )
 (func $~lib/array/Array<~lib/string/String | null>#join_str (; 280 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
     call $~lib/rt/pure/__retain
     drop
     local.get $10
     call $~lib/rt/pure/__release
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
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
     call $~lib/rt/pure/__retain
     drop
     local.get $3
     call $~lib/rt/pure/__release
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
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
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
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/array/Array<~lib/string/String | null>#join (; 281 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#join_str
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/string/String | null>#toString (; 282 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4464
  call $~lib/array/Array<~lib/string/String | null>#join
 )
 (func $~lib/array/Array<~lib/string/String>#toString (; 283 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4464
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#join_arr (; 284 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 4248
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  i32.const 0
  local.set $7
  local.get $2
  i32.eqz
  if
   local.get $6
   i32.load
   local.tee $3
   local.get $7
   local.tee $8
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $3
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<i32>#join
   else    
    i32.const 4248
    call $~lib/rt/pure/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    local.get $7
    local.tee $9
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     drop
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $8
    local.set $7
    local.get $7
    if
     local.get $4
     local.get $7
     local.get $1
     call $~lib/array/Array<i32>#join
     local.tee $8
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $10
     local.get $4
     local.tee $11
     i32.ne
     if
      local.get $10
      call $~lib/rt/pure/__retain
      drop
      local.get $11
      call $~lib/rt/pure/__release
     end
     local.get $10
     local.set $4
     local.get $8
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $11
     local.get $4
     local.tee $8
     i32.ne
     if
      local.get $11
      call $~lib/rt/pure/__retain
      drop
      local.get $8
      call $~lib/rt/pure/__release
     end
     local.get $11
     local.set $4
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $6
  local.get $2
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
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $10
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<i32>#join
   local.tee $10
   call $~lib/string/String.__concat
   local.tee $3
   local.tee $8
   local.get $4
   local.tee $9
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $8
   local.set $4
   local.get $10
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#join (; 285 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#join_arr
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#toString (; 286 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4464
  call $~lib/array/Array<~lib/array/Array<i32>>#join
 )
 (func $~lib/util/number/itoa<u8> (; 287 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u8> (; 288 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i32.const 255
  i32.and
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
  i32.const 255
  i32.and
  call $~lib/util/number/decimalCount32
  local.set $3
  local.get $0
  local.set $6
  local.get $2
  i32.const 255
  i32.and
  local.set $5
  local.get $3
  local.set $4
  local.get $6
  local.get $5
  local.get $4
  call $~lib/util/number/utoa32_lut
  local.get $3
 )
 (func $~lib/array/Array<u8>#join_int (; 289 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
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
   i32.load8_u
   call $~lib/util/number/itoa<u8>
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 10
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 10
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
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
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<u8>
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
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<u8>
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
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<u8>#join (; 290 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#join_arr (; 291 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 4248
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  i32.const 0
  local.set $7
  local.get $2
  i32.eqz
  if
   local.get $6
   i32.load
   local.tee $3
   local.get $7
   local.tee $8
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $3
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<u8>#join
   else    
    i32.const 4248
    call $~lib/rt/pure/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    local.get $7
    local.tee $9
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     drop
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $8
    local.set $7
    local.get $7
    if
     local.get $4
     local.get $7
     local.get $1
     call $~lib/array/Array<u8>#join
     local.tee $8
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $10
     local.get $4
     local.tee $11
     i32.ne
     if
      local.get $10
      call $~lib/rt/pure/__retain
      drop
      local.get $11
      call $~lib/rt/pure/__release
     end
     local.get $10
     local.set $4
     local.get $8
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $11
     local.get $4
     local.tee $8
     i32.ne
     if
      local.get $11
      call $~lib/rt/pure/__retain
      drop
      local.get $8
      call $~lib/rt/pure/__release
     end
     local.get $11
     local.set $4
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $6
  local.get $2
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
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $10
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<u8>#join
   local.tee $10
   call $~lib/string/String.__concat
   local.tee $3
   local.tee $8
   local.get $4
   local.tee $9
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $8
   local.set $4
   local.get $10
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#join (; 292 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<u8>>#join_arr
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#toString (; 293 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4464
  call $~lib/array/Array<~lib/array/Array<u8>>#join
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#join_arr (; 294 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 4248
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  i32.const 0
  local.set $7
  local.get $2
  i32.eqz
  if
   local.get $6
   i32.load
   local.tee $3
   local.get $7
   local.tee $8
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $3
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<u32>#join
   else    
    i32.const 4248
    call $~lib/rt/pure/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    local.get $7
    local.tee $9
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     drop
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $8
    local.set $7
    local.get $7
    if
     local.get $4
     local.get $7
     local.get $1
     call $~lib/array/Array<u32>#join
     local.tee $8
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $10
     local.get $4
     local.tee $11
     i32.ne
     if
      local.get $10
      call $~lib/rt/pure/__retain
      drop
      local.get $11
      call $~lib/rt/pure/__release
     end
     local.get $10
     local.set $4
     local.get $8
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $11
     local.get $4
     local.tee $8
     i32.ne
     if
      local.get $11
      call $~lib/rt/pure/__retain
      drop
      local.get $8
      call $~lib/rt/pure/__release
     end
     local.get $11
     local.set $4
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $6
  local.get $2
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
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $10
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<u32>#join
   local.tee $10
   call $~lib/string/String.__concat
   local.tee $3
   local.tee $8
   local.get $4
   local.tee $9
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $8
   local.set $4
   local.get $10
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#join (; 295 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<u32>>#join_arr
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr (; 296 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
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
   i32.const 4248
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 4248
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  i32.const 0
  local.set $7
  local.get $2
  i32.eqz
  if
   local.get $6
   i32.load
   local.tee $3
   local.get $7
   local.tee $8
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $3
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<~lib/array/Array<u32>>#join
   else    
    i32.const 4248
    call $~lib/rt/pure/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    local.get $7
    local.tee $9
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     drop
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $8
    local.set $7
    local.get $7
    if
     local.get $4
     local.get $7
     local.get $1
     call $~lib/array/Array<~lib/array/Array<u32>>#join
     local.tee $8
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $10
     local.get $4
     local.tee $11
     i32.ne
     if
      local.get $10
      call $~lib/rt/pure/__retain
      drop
      local.get $11
      call $~lib/rt/pure/__release
     end
     local.get $10
     local.set $4
     local.get $8
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $11
     local.get $4
     local.tee $8
     i32.ne
     if
      local.get $11
      call $~lib/rt/pure/__retain
      drop
      local.get $8
      call $~lib/rt/pure/__release
     end
     local.get $11
     local.set $4
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $6
  local.get $2
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
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $10
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<~lib/array/Array<u32>>#join
   local.tee $10
   call $~lib/string/String.__concat
   local.tee $3
   local.tee $8
   local.get $4
   local.tee $9
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $8
   local.set $4
   local.get $10
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join (; 297 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#toString (; 298 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4464
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join
 )
 (func $start:std/array (; 299 ;) (type $FUNCSIG$v)
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
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  global.set $std/array/arr
  i32.const 0
  call $~lib/array/Array.isArray<~lib/array/Array<i32> | null>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 35
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array.isArray<~lib/array/Array<i32>>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $std/array/P#constructor
  local.tee $0
  call $~lib/array/Array.isArray<std/array/P>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  call $~lib/array/Array.isArray<~lib/typedarray/Uint8Array>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/array/Array.isArray<i32>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 39
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 416
  call $~lib/array/Array.isArray<~lib/string/String>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 40
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 440
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 464
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 48
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 536
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 51
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 560
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 54
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 584
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 57
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
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
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 632
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 672
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 67
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 0
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 712
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 70
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 752
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 73
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 792
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 76
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 832
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 79
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 85
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 86
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 42
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 90
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 91
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 92
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  local.set $2
  local.get $2
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 96
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 97
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 98
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 102
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 103
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 104
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 44
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 108
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 109
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 110
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 111
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 45
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 115
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 116
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 117
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 118
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 119
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.set $2
  global.get $std/array/arr
  local.get $2
  call $~lib/array/Array<i32>#concat
  local.set $0
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 128
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 129
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 130
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 920
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $~lib/array/Array<i32>#concat
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 133
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 135
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 137
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 46
  call $~lib/array/Array<i32>#push
  drop
  local.get $2
  i32.const 47
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  local.get $2
  call $~lib/array/Array<i32>#concat
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  local.set $0
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 144
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 145
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/array/Array<i32>#get:length
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 146
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 147
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 148
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 149
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 46
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 150
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/array/Array<i32>#__get
  i32.const 47
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 151
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  call $~lib/array/Array<i32>#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 154
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#concat
  local.set $6
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 157
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 158
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 936
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 161
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  global.get $std/array/arr
  call $~lib/array/Array<i32>#concat
  local.set $7
  local.get $0
  call $~lib/rt/pure/__release
  local.get $7
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 163
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 164
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $6
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 952
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  local.tee $4
  local.get $6
  local.tee $5
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   drop
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.set $6
  local.get $6
  i32.const 0
  i32.const 3
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  local.tee $4
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 992
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 172
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1032
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  local.tee $1
  local.get $6
  local.tee $5
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.set $6
  local.get $6
  i32.const 1
  i32.const 3
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  local.tee $1
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1072
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 174
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1112
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  local.tee $5
  local.get $6
  local.tee $9
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $5
  local.set $6
  local.get $6
  i32.const 1
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  local.tee $5
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1152
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 176
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1192
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $11
  local.tee $9
  local.get $6
  local.tee $12
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $9
  local.set $6
  local.get $6
  i32.const 2
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  local.tee $9
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1232
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $13
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 178
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1272
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $14
  local.tee $12
  local.get $6
  local.tee $15
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   drop
   local.get $15
   call $~lib/rt/pure/__release
  end
  local.get $12
  local.set $6
  local.get $6
  i32.const 0
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  local.tee $12
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1312
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $16
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 180
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1352
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $17
  local.tee $15
  local.get $6
  local.tee $18
  i32.ne
  if
   local.get $15
   call $~lib/rt/pure/__retain
   drop
   local.get $18
   call $~lib/rt/pure/__release
  end
  local.get $15
  local.set $6
  local.get $6
  i32.const 1
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  local.tee $15
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1392
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $19
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 182
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1432
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $20
  local.tee $18
  local.get $6
  local.tee $21
  i32.ne
  if
   local.get $18
   call $~lib/rt/pure/__retain
   drop
   local.get $21
   call $~lib/rt/pure/__release
  end
  local.get $18
  local.set $6
  local.get $6
  i32.const 1
  i32.const 2
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  local.tee $18
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1472
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $22
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 184
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1512
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $23
  local.tee $21
  local.get $6
  local.tee $24
  i32.ne
  if
   local.get $21
   call $~lib/rt/pure/__retain
   drop
   local.get $24
   call $~lib/rt/pure/__release
  end
  local.get $21
  local.set $6
  local.get $6
  i32.const 0
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  local.tee $21
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1552
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $25
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 186
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1592
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $26
  local.tee $24
  local.get $6
  local.tee $27
  i32.ne
  if
   local.get $24
   call $~lib/rt/pure/__retain
   drop
   local.get $27
   call $~lib/rt/pure/__release
  end
  local.get $24
  local.set $6
  local.get $6
  i32.const 0
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  local.tee $24
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1632
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $28
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 188
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1672
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $29
  local.tee $27
  local.get $6
  local.tee $30
  i32.ne
  if
   local.get $27
   call $~lib/rt/pure/__retain
   drop
   local.get $30
   call $~lib/rt/pure/__release
  end
  local.get $27
  local.set $6
  local.get $6
  i32.const -4
  i32.const -3
  i32.const -2
  call $~lib/array/Array<i32>#copyWithin
  local.tee $27
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1712
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $31
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 190
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1752
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $32
  local.tee $30
  local.get $6
  local.tee $33
  i32.ne
  if
   local.get $30
   call $~lib/rt/pure/__retain
   drop
   local.get $33
   call $~lib/rt/pure/__release
  end
  local.get $30
  local.set $6
  local.get $6
  i32.const -4
  i32.const -3
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  local.tee $30
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1792
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $34
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 192
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1832
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $35
  local.tee $33
  local.get $6
  local.tee $36
  i32.ne
  if
   local.get $33
   call $~lib/rt/pure/__retain
   drop
   local.get $36
   call $~lib/rt/pure/__release
  end
  local.get $33
  local.set $6
  local.get $6
  i32.const -4
  i32.const -3
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  local.tee $33
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1872
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $37
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 194
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $26
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $28
  call $~lib/rt/pure/__release
  local.get $29
  call $~lib/rt/pure/__release
  local.get $27
  call $~lib/rt/pure/__release
  local.get $31
  call $~lib/rt/pure/__release
  local.get $32
  call $~lib/rt/pure/__release
  local.get $30
  call $~lib/rt/pure/__release
  local.get $34
  call $~lib/rt/pure/__release
  local.get $35
  call $~lib/rt/pure/__release
  local.get $33
  call $~lib/rt/pure/__release
  local.get $37
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.const 42
  call $~lib/array/Array<i32>#unshift
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 202
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 203
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 204
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 205
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 206
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 207
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 41
  call $~lib/array/Array<i32>#unshift
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 211
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 212
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 41
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 213
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 214
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 215
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 216
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 4
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 217
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#shift
  global.set $std/array/i
  global.get $std/array/i
  i32.const 41
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 226
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 227
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 228
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 229
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 230
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 231
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 232
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  global.set $std/array/i
  global.get $std/array/i
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 236
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 237
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 238
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 239
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 240
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 241
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#reverse
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 249
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 250
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 251
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 252
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 253
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 44
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 44
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  global.set $std/array/i
  global.get $std/array/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 42
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  global.set $std/array/i
  global.get $std/array/i
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 266
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 45
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 269
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 100
  call $~lib/array/Array<i32>#indexOf
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 272
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -100
  call $~lib/array/Array<i32>#indexOf
  global.set $std/array/i
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 275
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -2
  call $~lib/array/Array<i32>#indexOf
  global.set $std/array/i
  global.get $std/array/i
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 278
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -4
  call $~lib/array/Array<i32>#indexOf
  global.set $std/array/i
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 281
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  global.set $std/array/i
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 284
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 1
  call $~lib/array/Array<i32>#indexOf
  global.set $std/array/i
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 287
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 2
  call $~lib/array/Array<i32>#indexOf
  global.set $std/array/i
  global.get $std/array/i
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 44
  i32.const 0
  call $~lib/array/Array<i32>#includes
  local.set $37
  local.get $37
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 297
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 42
  i32.const 0
  call $~lib/array/Array<i32>#includes
  local.set $37
  local.get $37
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 300
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 45
  i32.const 0
  call $~lib/array/Array<i32>#includes
  local.set $37
  local.get $37
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 303
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 100
  call $~lib/array/Array<i32>#includes
  local.set $37
  local.get $37
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 306
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -100
  call $~lib/array/Array<i32>#includes
  local.set $37
  local.get $37
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 309
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -2
  call $~lib/array/Array<i32>#includes
  local.set $37
  local.get $37
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 312
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -4
  call $~lib/array/Array<i32>#includes
  local.set $37
  local.get $37
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 315
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 0
  call $~lib/array/Array<i32>#includes
  local.set $37
  local.get $37
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 1
  call $~lib/array/Array<i32>#includes
  local.set $37
  local.get $37
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 321
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 2
  call $~lib/array/Array<i32>#includes
  local.set $37
  local.get $37
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 324
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  i32.const 1
  call $~lib/array/Array<i32>#splice
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 328
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 329
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 330
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 331
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1912
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $33
  call $~lib/rt/pure/__retain
  local.set $37
  local.get $37
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  local.tee $35
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1952
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $30
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 338
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 1992
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $32
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 339
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2008
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $31
  local.tee $36
  local.get $37
  local.tee $34
  i32.ne
  if
   local.get $36
   call $~lib/rt/pure/__retain
   drop
   local.get $34
   call $~lib/rt/pure/__release
  end
  local.get $36
  local.set $37
  local.get $37
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  local.tee $36
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 2048
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $27
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 342
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 2080
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $29
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 343
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2104
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $28
  local.tee $6
  local.get $37
  local.tee $34
  i32.ne
  if
   local.get $6
   call $~lib/rt/pure/__retain
   drop
   local.get $34
   call $~lib/rt/pure/__release
  end
  local.get $6
  local.set $37
  local.get $37
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#splice
  local.tee $6
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 2144
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $24
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 2168
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $26
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 347
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2200
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $25
  local.tee $3
  local.get $37
  local.tee $34
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   drop
   local.get $34
   call $~lib/rt/pure/__release
  end
  local.get $3
  local.set $37
  local.get $37
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $3
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 2240
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $21
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 350
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 2264
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $23
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 351
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2296
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $22
  local.tee $4
  local.get $37
  local.tee $34
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   drop
   local.get $34
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.set $37
  local.get $37
  i32.const -1
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  local.tee $4
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 2336
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $18
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 354
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 2360
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $20
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 355
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2392
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $19
  local.tee $0
  local.get $37
  local.tee $34
  i32.ne
  if
   local.get $0
   call $~lib/rt/pure/__retain
   drop
   local.get $34
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.set $37
  local.get $37
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  local.tee $0
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 2432
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $15
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 2456
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $17
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2488
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $16
  local.tee $2
  local.get $37
  local.tee $34
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   drop
   local.get $34
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.set $37
  local.get $37
  i32.const -2
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $2
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 2528
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $12
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 362
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 2552
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $14
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 363
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2584
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $13
  local.tee $1
  local.get $37
  local.tee $34
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $34
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.set $37
  local.get $37
  i32.const -7
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 2624
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $9
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 2648
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $11
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2680
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  local.tee $7
  local.get $37
  local.tee $34
  i32.ne
  if
   local.get $7
   call $~lib/rt/pure/__retain
   drop
   local.get $34
   call $~lib/rt/pure/__release
  end
  local.get $7
  local.set $37
  local.get $37
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#splice
  local.tee $7
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 2720
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 370
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2736
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 371
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2776
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $38
  local.tee $34
  local.get $37
  local.tee $39
  i32.ne
  if
   local.get $34
   call $~lib/rt/pure/__retain
   drop
   local.get $39
   call $~lib/rt/pure/__release
  end
  local.get $34
  local.set $37
  local.get $37
  i32.const 1
  i32.const -2
  call $~lib/array/Array<i32>#splice
  local.tee $34
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 2816
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $40
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 374
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2832
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $41
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 375
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2872
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $42
  local.tee $39
  local.get $37
  local.tee $43
  i32.ne
  if
   local.get $39
   call $~lib/rt/pure/__retain
   drop
   local.get $43
   call $~lib/rt/pure/__release
  end
  local.get $39
  local.set $37
  local.get $37
  i32.const 4
  i32.const 0
  call $~lib/array/Array<i32>#splice
  local.tee $39
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 2912
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $44
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 378
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2928
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $45
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2968
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $46
  local.tee $43
  local.get $37
  local.tee $47
  i32.ne
  if
   local.get $43
   call $~lib/rt/pure/__retain
   drop
   local.get $47
   call $~lib/rt/pure/__release
  end
  local.get $43
  local.set $37
  local.get $37
  i32.const 7
  i32.const 0
  call $~lib/array/Array<i32>#splice
  local.tee $43
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3008
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $48
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3024
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $49
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 383
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3064
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $50
  local.tee $47
  local.get $37
  local.tee $51
  i32.ne
  if
   local.get $47
   call $~lib/rt/pure/__retain
   drop
   local.get $51
   call $~lib/rt/pure/__release
  end
  local.get $47
  local.set $37
  local.get $37
  i32.const 7
  i32.const 5
  call $~lib/array/Array<i32>#splice
  local.tee $47
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3104
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $52
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 386
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $37
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3120
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $53
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 387
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $33
  call $~lib/rt/pure/__release
  local.get $37
  call $~lib/rt/pure/__release
  local.get $35
  call $~lib/rt/pure/__release
  local.get $30
  call $~lib/rt/pure/__release
  local.get $32
  call $~lib/rt/pure/__release
  local.get $31
  call $~lib/rt/pure/__release
  local.get $36
  call $~lib/rt/pure/__release
  local.get $27
  call $~lib/rt/pure/__release
  local.get $29
  call $~lib/rt/pure/__release
  local.get $28
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $26
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $38
  call $~lib/rt/pure/__release
  local.get $34
  call $~lib/rt/pure/__release
  local.get $40
  call $~lib/rt/pure/__release
  local.get $41
  call $~lib/rt/pure/__release
  local.get $42
  call $~lib/rt/pure/__release
  local.get $39
  call $~lib/rt/pure/__release
  local.get $44
  call $~lib/rt/pure/__release
  local.get $45
  call $~lib/rt/pure/__release
  local.get $46
  call $~lib/rt/pure/__release
  local.get $43
  call $~lib/rt/pure/__release
  local.get $48
  call $~lib/rt/pure/__release
  local.get $49
  call $~lib/rt/pure/__release
  local.get $50
  call $~lib/rt/pure/__release
  local.get $47
  call $~lib/rt/pure/__release
  local.get $52
  call $~lib/rt/pure/__release
  local.get $53
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#__set
  global.get $std/array/arr
  i32.const 1
  i32.const 1
  call $~lib/array/Array<i32>#__set
  global.get $std/array/arr
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#__set
  global.get $std/array/arr
  i32.const 3
  i32.const 3
  call $~lib/array/Array<i32>#__set
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 400
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 403
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 4
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 414
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 5
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  i32.const 6
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 431
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 7
  call $~lib/array/Array<i32>#every
  local.set $53
  local.get $53
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 8
  call $~lib/array/Array<i32>#every
  local.set $53
  local.get $53
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 444
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 9
  call $~lib/array/Array<i32>#every
  local.set $53
  local.get $53
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 452
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 453
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 10
  call $~lib/array/Array<i32>#every
  local.set $53
  local.get $53
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 455
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  i32.const 11
  call $~lib/array/Array<i32>#every
  local.set $53
  local.get $53
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 468
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 469
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 12
  call $~lib/array/Array<i32>#some
  local.set $53
  local.get $53
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 13
  call $~lib/array/Array<i32>#some
  local.set $53
  local.get $53
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 482
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 14
  call $~lib/array/Array<i32>#some
  local.set $53
  local.get $53
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 490
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 491
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 15
  call $~lib/array/Array<i32>#some
  local.set $53
  local.get $53
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 493
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  i32.const 16
  call $~lib/array/Array<i32>#some
  local.set $53
  local.get $53
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 506
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 507
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 17
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 518
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 18
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 19
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 20
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 545
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 546
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 21
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  block $break|0
   i32.const 0
   local.set $53
   loop $loop|0
    local.get $53
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    global.get $std/array/arr
    call $~lib/array/Array<i32>#pop
    drop
    local.get $53
    i32.const 1
    i32.add
    local.set $53
    br $loop|0
   end
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 22
  call $~lib/array/Array<i32>#map<f32>
  local.set $53
  local.get $53
  call $~lib/array/Array<f32>#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $53
  i32.const 0
  call $~lib/array/Array<f32>#__get
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 23
  call $~lib/array/Array<i32>#map<i32>
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 595
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 596
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 24
  call $~lib/array/Array<i32>#map<i32>
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 603
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 25
  call $~lib/array/Array<i32>#map<i32>
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 618
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 619
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  local.get $53
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.const 26
  call $~lib/array/Array<i32>#filter
  local.set $53
  local.get $53
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 629
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 27
  call $~lib/array/Array<i32>#filter
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 638
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 639
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 28
  call $~lib/array/Array<i32>#filter
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 646
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 29
  call $~lib/array/Array<i32>#filter
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 661
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 662
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  local.get $53
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.const 30
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 672
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 31
  i32.const 4
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 676
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 32
  i32.const 0
  call $~lib/array/Array<i32>#reduce<bool>
  local.set $53
  local.get $53
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 679
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 33
  i32.const 0
  call $~lib/array/Array<i32>#reduce<bool>
  local.set $53
  local.get $53
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 682
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 34
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 690
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 691
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 35
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 693
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  i32.const 36
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 706
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 707
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 37
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 717
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 38
  i32.const 4
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 721
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 39
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<bool>
  local.set $53
  local.get $53
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 724
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 40
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<bool>
  local.set $53
  local.get $53
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 727
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 41
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 735
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 736
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 42
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 738
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/arr
  i32.const 43
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 751
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 752
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  call $~lib/bindings/Math/random
  i64.reinterpret_f64
  call $~lib/math/NativeMath.seedRandom
  i32.const 8
  i32.const 2
  i32.const 8
  i32.const 3392
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $52
  call $~lib/rt/pure/__retain
  local.set $53
  i32.const 0
  global.set $~lib/argc
  local.get $53
  i32.const 0
  call $~lib/array/Array<f32>#sort|trampoline
  call $~lib/rt/pure/__release
  local.get $53
  i32.const 8
  i32.const 2
  i32.const 8
  i32.const 3440
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $50
  i32.const 0
  call $std/array/isArraysEqual<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 841
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 3
  i32.const 9
  i32.const 3488
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $49
  call $~lib/rt/pure/__retain
  local.set $47
  i32.const 0
  global.set $~lib/argc
  local.get $47
  i32.const 0
  call $~lib/array/Array<f64>#sort|trampoline
  call $~lib/rt/pure/__release
  local.get $47
  i32.const 8
  i32.const 3
  i32.const 9
  i32.const 3568
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $43
  i32.const 0
  call $std/array/isArraysEqual<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 845
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3648
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $46
  call $~lib/rt/pure/__retain
  local.set $48
  i32.const 0
  global.set $~lib/argc
  local.get $48
  i32.const 0
  call $~lib/array/Array<i32>#sort|trampoline
  call $~lib/rt/pure/__release
  local.get $48
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3688
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $44
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 849
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 3728
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $39
  call $~lib/rt/pure/__retain
  local.set $45
  i32.const 0
  global.set $~lib/argc
  local.get $45
  i32.const 0
  call $~lib/array/Array<u32>#sort|trampoline
  call $~lib/rt/pure/__release
  local.get $45
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 3768
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $41
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 853
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3808
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $40
  call $~lib/rt/pure/__retain
  local.set $42
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 3824
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $38
  call $~lib/rt/pure/__retain
  local.set $34
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 3848
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 3872
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  call $~lib/rt/pure/__retain
  local.set $7
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 3904
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $9
  call $~lib/rt/pure/__retain
  local.set $11
  i32.const 64
  call $std/array/createReverseOrderedArray
  local.set $1
  i32.const 128
  call $std/array/createReverseOrderedArray
  local.set $13
  i32.const 1024
  call $std/array/createReverseOrderedArray
  local.set $14
  i32.const 10000
  call $std/array/createReverseOrderedArray
  local.set $12
  i32.const 512
  call $std/array/createRandomOrderedArray
  local.set $2
  local.get $42
  call $std/array/assertSortedDefault<i32>
  local.get $34
  call $std/array/assertSortedDefault<i32>
  local.get $34
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 3992
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $17
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 873
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $std/array/assertSortedDefault<i32>
  local.get $8
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 4016
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $15
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 876
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $std/array/assertSortedDefault<i32>
  local.get $7
  local.get $11
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 879
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $std/array/assertSortedDefault<i32>
  local.get $1
  local.get $11
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 882
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $13
  call $std/array/assertSortedDefault<i32>
  local.get $13
  local.get $11
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 885
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $14
  call $std/array/assertSortedDefault<i32>
  local.get $14
  local.get $11
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 888
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $12
  call $std/array/assertSortedDefault<i32>
  local.get $12
  local.get $11
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 891
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $std/array/assertSortedDefault<i32>
  local.get $52
  call $~lib/rt/pure/__release
  local.get $53
  call $~lib/rt/pure/__release
  local.get $50
  call $~lib/rt/pure/__release
  local.get $49
  call $~lib/rt/pure/__release
  local.get $47
  call $~lib/rt/pure/__release
  local.get $43
  call $~lib/rt/pure/__release
  local.get $46
  call $~lib/rt/pure/__release
  local.get $48
  call $~lib/rt/pure/__release
  local.get $44
  call $~lib/rt/pure/__release
  local.get $39
  call $~lib/rt/pure/__release
  local.get $45
  call $~lib/rt/pure/__release
  local.get $41
  call $~lib/rt/pure/__release
  local.get $40
  call $~lib/rt/pure/__release
  local.get $42
  call $~lib/rt/pure/__release
  local.get $38
  call $~lib/rt/pure/__release
  local.get $34
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  i32.const 64
  call $std/array/createRandomOrderedArray
  local.set $15
  i32.const 257
  call $std/array/createRandomOrderedArray
  local.set $17
  local.get $15
  i32.const 49
  call $std/array/assertSorted<i32>
  local.get $15
  i32.const 50
  call $std/array/assertSorted<i32>
  local.get $17
  i32.const 51
  call $std/array/assertSorted<i32>
  local.get $17
  i32.const 52
  call $std/array/assertSorted<i32>
  local.get $15
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  i32.const 2
  call $std/array/createReverseOrderedNestedArray
  local.set $17
  local.get $17
  i32.const 53
  call $std/array/assertSorted<~lib/array/Array<i32>>
  local.get $17
  call $~lib/rt/pure/__release
  i32.const 512
  call $std/array/createReverseOrderedElementsArray
  local.set $17
  local.get $17
  i32.const 54
  call $std/array/assertSorted<std/array/Proxy<i32>>
  local.get $17
  call $~lib/rt/pure/__release
  i32.const 7
  i32.const 2
  i32.const 13
  i32.const 4264
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $15
  call $~lib/rt/pure/__retain
  local.set $17
  i32.const 7
  i32.const 2
  i32.const 13
  i32.const 4312
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $12
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 1
  global.set $~lib/argc
  local.get $17
  i32.const 0
  call $std/array/assertSorted<~lib/string/String | null>|trampoline
  local.get $17
  local.get $2
  i32.const 0
  call $std/array/isArraysEqual<~lib/string/String | null>
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 928
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 400
  call $std/array/createRandomStringArray
  local.set $14
  i32.const 1
  global.set $~lib/argc
  local.get $14
  i32.const 0
  call $std/array/assertSorted<~lib/string/String>|trampoline
  local.get $15
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  i32.const 2
  i32.const 0
  i32.const 15
  i32.const 4384
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 4464
  call $~lib/array/Array<bool>#join
  local.tee $14
  i32.const 4488
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 939
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 4528
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $17
  i32.const 4248
  call $~lib/array/Array<i32>#join
  local.tee $12
  i32.const 5032
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 940
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 7
  i32.const 5064
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $13
  i32.const 5096
  call $~lib/array/Array<u32>#join
  local.tee $15
  i32.const 5032
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 941
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 5120
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $11
  i32.const 5144
  call $~lib/array/Array<i32>#join
  local.tee $1
  i32.const 5168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 942
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  i32.const 3
  i32.const 9
  i32.const 5232
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  i32.const 5296
  call $~lib/array/Array<f64>#join
  local.tee $9
  i32.const 6496
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 943
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 14
  i32.const 6616
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  i32.const 4248
  call $~lib/array/Array<~lib/string/String>#join
  local.tee $10
  i32.const 6592
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 944
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 19
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $5
  local.get $5
  i32.load offset=4
  local.set $34
  local.get $34
  i32.const 0
  call $std/array/Ref#constructor
  local.tee $38
  call $~lib/rt/pure/__retain
  i32.store
  local.get $34
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $34
  i32.const 0
  call $std/array/Ref#constructor
  local.tee $42
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $5
  call $~lib/rt/pure/__retain
  local.set $34
  local.get $34
  i32.const 4464
  call $~lib/array/Array<std/array/Ref | null>#join
  local.tee $5
  i32.const 6696
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 946
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $38
  call $~lib/rt/pure/__release
  local.get $42
  call $~lib/rt/pure/__release
  local.get $34
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 6776
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $34
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 6792
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $38
  call $~lib/rt/pure/__retain
  local.set $42
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 6816
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $~lib/rt/pure/__retain
  local.set $10
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 6840
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $9
  local.get $5
  call $~lib/array/Array<i32>#toString
  local.tee $1
  i32.const 4248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 956
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $42
  call $~lib/array/Array<i32>#toString
  local.tee $11
  i32.const 6592
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 957
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  call $~lib/array/Array<i32>#toString
  local.tee $15
  i32.const 6872
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 958
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $~lib/array/Array<i32>#toString
  local.tee $13
  i32.const 6896
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 959
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 0
  i32.const 20
  i32.const 6928
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $17
  call $~lib/array/Array<i8>#toString
  local.tee $12
  i32.const 6952
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 961
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 1
  i32.const 21
  i32.const 6984
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/array/Array<u16>#toString
  local.tee $14
  i32.const 7008
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 962
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 3
  i32.const 16
  i32.const 7048
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $41
  call $~lib/array/Array<u64>#toString
  local.tee $40
  i32.const 7088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 963
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 3
  i32.const 22
  i32.const 7152
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $39
  call $~lib/array/Array<i64>#toString
  local.tee $45
  i32.const 7200
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 964
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7
  i32.const 2
  i32.const 13
  i32.const 7304
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $48
  call $~lib/rt/pure/__retain
  local.set $44
  local.get $44
  call $~lib/array/Array<~lib/string/String | null>#toString
  local.tee $46
  i32.const 7352
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 968
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 2
  i32.const 14
  i32.const 7448
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $47
  call $~lib/array/Array<~lib/string/String>#toString
  local.tee $43
  i32.const 7480
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 969
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 10
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $49
  local.get $49
  i32.load offset=4
  local.set $50
  local.get $50
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 7512
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $52
  call $~lib/rt/pure/__retain
  i32.store
  local.get $50
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 7536
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $16
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $49
  call $~lib/rt/pure/__retain
  local.set $54
  local.get $54
  call $~lib/array/Array<~lib/array/Array<i32>>#toString
  local.tee $50
  i32.const 7560
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 972
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 23
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $49
  local.get $49
  i32.load offset=4
  local.set $53
  local.get $53
  i32.const 2
  i32.const 0
  i32.const 6
  i32.const 7592
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $19
  call $~lib/rt/pure/__retain
  i32.store
  local.get $53
  i32.const 2
  i32.const 0
  i32.const 6
  i32.const 7616
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $20
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $49
  call $~lib/rt/pure/__retain
  local.set $55
  local.get $55
  call $~lib/array/Array<~lib/array/Array<u8>>#toString
  local.tee $53
  i32.const 7560
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 975
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 25
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $49
  local.get $49
  i32.load offset=4
  local.set $0
  local.get $0
  i32.const 1
  i32.const 2
  i32.const 24
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $18
  local.get $18
  i32.load offset=4
  local.set $4
  local.get $4
  i32.const 1
  i32.const 2
  i32.const 7
  i32.const 7640
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $23
  call $~lib/rt/pure/__retain
  i32.store
  local.get $18
  call $~lib/rt/pure/__retain
  i32.store
  local.get $49
  call $~lib/rt/pure/__retain
  local.set $56
  local.get $56
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#toString
  local.tee $0
  i32.const 6592
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 978
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $34
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $38
  call $~lib/rt/pure/__release
  local.get $42
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $41
  call $~lib/rt/pure/__release
  local.get $40
  call $~lib/rt/pure/__release
  local.get $39
  call $~lib/rt/pure/__release
  local.get $45
  call $~lib/rt/pure/__release
  local.get $48
  call $~lib/rt/pure/__release
  local.get $44
  call $~lib/rt/pure/__release
  local.get $46
  call $~lib/rt/pure/__release
  local.get $47
  call $~lib/rt/pure/__release
  local.get $43
  call $~lib/rt/pure/__release
  local.get $52
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $50
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $53
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $~lib/rt/pure/__release
  local.get $54
  call $~lib/rt/pure/__release
  local.get $55
  call $~lib/rt/pure/__release
  local.get $56
  call $~lib/rt/pure/__release
 )
 (func $start (; 300 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  call $start:std/array
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 301 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u8>#__visit_impl (; 302 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u32>#__visit_impl (; 303 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<f32>#__visit_impl (; 304 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<f64>#__visit_impl (; 305 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/pure/markGray (; 306 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/scanBlack (; 307 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/scan (; 308 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/collectWhite (; 309 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/__visit (; 310 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
        i32.const 232
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
      i32.const 232
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
    i32.const 232
    i32.const 97
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__visit_impl (; 311 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<std/array/Proxy<i32>>#__visit_impl (; 312 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<~lib/string/String | null>#__visit_impl (; 313 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<~lib/string/String>#__visit_impl (; 314 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<bool>#__visit_impl (; 315 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u64>#__visit_impl (; 316 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<i16>#__visit_impl (; 317 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<std/array/Ref | null>#__visit_impl (; 318 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i8>#__visit_impl (; 319 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u16>#__visit_impl (; 320 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<i64>#__visit_impl (; 321 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#__visit_impl (; 322 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<~lib/array/Array<u32>>#__visit_impl (; 323 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#__visit_impl (; 324 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/rt/__visit_members (; 325 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$27
     block $switch$1$case$26
      block $switch$1$case$25
       block $switch$1$case$24
        block $switch$1$case$23
         block $switch$1$case$22
          block $switch$1$case$21
           block $switch$1$case$19
            block $switch$1$case$18
             block $switch$1$case$17
              block $switch$1$case$16
               block $switch$1$case$15
                block $switch$1$case$14
                 block $switch$1$case$12
                  block $switch$1$case$11
                   block $switch$1$case$10
                    block $switch$1$case$9
                     block $switch$1$case$8
                      block $switch$1$case$5
                       block $switch$1$case$4
                        block $switch$1$case$2
                         local.get $0
                         i32.const 8
                         i32.sub
                         i32.load
                         br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$5 $switch$1$case$2 $switch$1$case$4 $switch$1$case$8 $switch$1$case$9 $switch$1$case$10 $switch$1$case$11 $switch$1$case$12 $switch$1$case$2 $switch$1$case$14 $switch$1$case$15 $switch$1$case$16 $switch$1$case$17 $switch$1$case$18 $switch$1$case$19 $switch$1$case$2 $switch$1$case$21 $switch$1$case$22 $switch$1$case$23 $switch$1$case$24 $switch$1$case$25 $switch$1$case$26 $switch$1$case$27 $switch$1$default
                        end
                        return
                       end
                       br $block$4$break
                      end
                      local.get $0
                      local.get $1
                      call $~lib/array/Array<i32>#__visit_impl
                      br $block$4$break
                     end
                     local.get $0
                     local.get $1
                     call $~lib/array/Array<u8>#__visit_impl
                     br $block$4$break
                    end
                    local.get $0
                    local.get $1
                    call $~lib/array/Array<u32>#__visit_impl
                    br $block$4$break
                   end
                   local.get $0
                   local.get $1
                   call $~lib/array/Array<f32>#__visit_impl
                   br $block$4$break
                  end
                  local.get $0
                  local.get $1
                  call $~lib/array/Array<f64>#__visit_impl
                  br $block$4$break
                 end
                 local.get $0
                 local.get $1
                 call $~lib/array/Array<~lib/array/Array<i32>>#__visit_impl
                 br $block$4$break
                end
                local.get $0
                local.get $1
                call $~lib/array/Array<std/array/Proxy<i32>>#__visit_impl
                br $block$4$break
               end
               local.get $0
               local.get $1
               call $~lib/array/Array<~lib/string/String | null>#__visit_impl
               br $block$4$break
              end
              local.get $0
              local.get $1
              call $~lib/array/Array<~lib/string/String>#__visit_impl
              br $block$4$break
             end
             local.get $0
             local.get $1
             call $~lib/array/Array<bool>#__visit_impl
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
          local.get $0
          local.get $1
          call $~lib/array/Array<std/array/Ref | null>#__visit_impl
          br $block$4$break
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<i8>#__visit_impl
         br $block$4$break
        end
        local.get $0
        local.get $1
        call $~lib/array/Array<u16>#__visit_impl
        br $block$4$break
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<i64>#__visit_impl
       br $block$4$break
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<~lib/array/Array<u8>>#__visit_impl
      br $block$4$break
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/array/Array<u32>>#__visit_impl
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#__visit_impl
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
 (func $null (; 326 ;) (type $FUNCSIG$v)
 )
)
