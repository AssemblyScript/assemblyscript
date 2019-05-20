(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
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
 (import "rtrace" "retain" (func $~lib/rt/purerc/onIncrement (param i32)))
 (import "rtrace" "free" (func $~lib/rt/tlsf/onFree (param i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (import "rtrace" "release" (func $~lib/rt/purerc/onDecrement (param i32)))
 (memory $0 1)
 (data (i32.const 8) "\1c\00\00\00\01\00\00\00\10\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 56) "&\00\00\00\01\00\00\00\10\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 112) "\1e\00\00\00\01\00\00\00\10\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 160) "(\00\00\00\01\00\00\00\10\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 216) "\18\00\00\00\01\00\00\00\10\00\00\00\18\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 256) "\06\00\00\00\01\00\00\00\10\00\00\00\06\00\00\00a\00b\00c\00")
 (data (i32.const 280) "\05\00\00\00\01\00\00\00\0f\00\00\00\05\00\00\00\01\02\03\04\05")
 (data (i32.const 304) "\"\00\00\00\01\00\00\00\10\00\00\00\"\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00r\00c\00.\00t\00s\00")
 (data (i32.const 360) "\05\00\00\00\01\00\00\00\0f\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 384) "$\00\00\00\01\00\00\00\10\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 440) "\1a\00\00\00\01\00\00\00\10\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 488) "\05\00\00\00\01\00\00\00\0f\00\00\00\05\00\00\00\00\00\00\00\00")
 (data (i32.const 512) "\05\00\00\00\01\00\00\00\0f\00\00\00\05\00\00\00\01\01\00\00\00")
 (data (i32.const 536) "\05\00\00\00\01\00\00\00\0f\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 560) "\05\00\00\00\01\00\00\00\0f\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 584) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 624) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 664) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 704) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 744) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 784) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 824) "\1c\00\00\00\01\00\00\00\10\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 872) "\00\00\00\00\01\00\00\00\0f\00\00\00\00\00\00\00")
 (data (i32.const 888) "\00\00\00\00\01\00\00\00\0f\00\00\00\00\00\00\00")
 (data (i32.const 904) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 944) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 984) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1024) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1064) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1104) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 1144) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1184) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1224) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1264) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1304) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1344) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1384) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1424) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1464) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1504) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1544) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1584) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1624) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1664) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1704) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1744) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1784) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1824) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 1864) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1904) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1944) "\00\00\00\00\01\00\00\00\0f\00\00\00\00\00\00\00")
 (data (i32.const 1960) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2000) "\0c\00\00\00\01\00\00\00\0f\00\00\00\0c\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2032) "\08\00\00\00\01\00\00\00\0f\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 2056) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2096) "\08\00\00\00\01\00\00\00\0f\00\00\00\08\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 2120) "\0c\00\00\00\01\00\00\00\0f\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\05\00\00\00")
 (data (i32.const 2152) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2192) "\04\00\00\00\01\00\00\00\0f\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 2216) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2248) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2288) "\04\00\00\00\01\00\00\00\0f\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2312) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 2344) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2384) "\08\00\00\00\01\00\00\00\0f\00\00\00\08\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2408) "\0c\00\00\00\01\00\00\00\0f\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 2440) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2480) "\04\00\00\00\01\00\00\00\0f\00\00\00\04\00\00\00\04\00\00\00")
 (data (i32.const 2504) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05\00\00\00")
 (data (i32.const 2536) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2576) "\04\00\00\00\01\00\00\00\0f\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 2600) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2632) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2672) "\00\00\00\00\01\00\00\00\0f\00\00\00\00\00\00\00")
 (data (i32.const 2688) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2728) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2768) "\00\00\00\00\01\00\00\00\0f\00\00\00\00\00\00\00")
 (data (i32.const 2784) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2824) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2864) "\00\00\00\00\01\00\00\00\0f\00\00\00\00\00\00\00")
 (data (i32.const 2880) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2920) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2960) "\00\00\00\00\01\00\00\00\0f\00\00\00\00\00\00\00")
 (data (i32.const 2976) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 3016) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 3056) "\00\00\00\00\01\00\00\00\0f\00\00\00\00\00\00\00")
 (data (i32.const 3072) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 3112) "\18\00\00\00\01\00\00\00\10\00\00\00\18\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 3152) "\ac\00\00\00\01\00\00\00\10\00\00\00\ac\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?\00")
 (data (i32.const 3344) " \00\00\00\01\00\00\00\0f\00\00\00 \00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 3392) " \00\00\00\01\00\00\00\0f\00\00\00 \00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 3440) "@\00\00\00\01\00\00\00\0f\00\00\00@\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 3520) "@\00\00\00\01\00\00\00\0f\00\00\00@\00\00\00\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 3600) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02\00\00\00")
 (data (i32.const 3640) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 3680) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02\00\00\00")
 (data (i32.const 3720) "\14\00\00\00\01\00\00\00\0f\00\00\00\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 3760) "\00\00\00\00\01\00\00\00\0f\00\00\00\00\00\00\00")
 (data (i32.const 3776) "\04\00\00\00\01\00\00\00\0f\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 3800) "\08\00\00\00\01\00\00\00\0f\00\00\00\08\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 3824) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 3856) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 3888) "(\00\00\00\01\00\00\00\10\00\00\00(\00\00\00P\00R\00N\00G\00 \00m\00u\00s\00t\00 \00b\00e\00 \00s\00e\00e\00d\00e\00d\00.\00")
 (data (i32.const 3944) "\04\00\00\00\01\00\00\00\0f\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 3968) "\08\00\00\00\01\00\00\00\0f\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 3992) "^\00\00\00\01\00\00\00\10\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 4104) "\"\00\00\00\01\00\00\00\10\00\00\00\"\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00c\00o\00m\00m\00o\00n\00.\00t\00s\00")
 (data (i32.const 4160) "\02\00\00\00\01\00\00\00\10\00\00\00\02\00\00\00a\00")
 (data (i32.const 4184) "\02\00\00\00\01\00\00\00\10\00\00\00\02\00\00\00b\00")
 (data (i32.const 4208) "\04\00\00\00\01\00\00\00\10\00\00\00\04\00\00\00a\00b\00")
 (data (i32.const 4232) "\04\00\00\00\01\00\00\00\10\00\00\00\04\00\00\00b\00a\00")
 (data (i32.const 4256) "\00\00\00\00\01\00\00\00\10\00\00\00\00\00\00\00")
 (data (i32.const 4272) "\1c\00\00\00\01\00\00\00\0f\00\00\00\1c\00\00\00P\10\00\00h\10\00\00P\10\00\00\80\10\00\00\98\10\00\00\b0\10\00\00\00\00\00\00")
 (data (i32.const 4320) "\1c\00\00\00\01\00\00\00\0f\00\00\00\1c\00\00\00\b0\10\00\00P\10\00\00P\10\00\00\80\10\00\00h\10\00\00\98\10\00\00\00\00\00\00")
 (data (i32.const 4368) "\1c\00\00\00\01\00\00\00\10\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 4416) "\08\00\00\00\01\00\00\00\10\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 4440) "\02\00\00\00\01\00\00\00\0f\00\00\00\02\00\00\00\01\00")
 (data (i32.const 4464) "\08\00\00\00\01\00\00\00\10\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 4488) "\n\00\00\00\01\00\00\00\10\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 4520) "\02\00\00\00\01\00\00\00\10\00\00\00\02\00\00\00,\00")
 (data (i32.const 4544) "\14\00\00\00\01\00\00\00\10\00\00\00\14\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e\00")
 (data (i32.const 4584) "\0c\00\00\00\01\00\00\00\0f\00\00\00\0c\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 4616) "\02\00\00\00\01\00\00\00\10\00\00\00\02\00\00\000\00")
 (data (i32.const 4640) "\90\01\00\00\01\00\00\00\0f\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 5056) "\10\00\00\00\01\00\00\00\15\00\00\00\10\00\00\000\12\00\000\12\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 5088) "\n\00\00\00\01\00\00\00\10\00\00\00\n\00\00\001\00-\002\00-\003\00")
 (data (i32.const 5120) "\0c\00\00\00\01\00\00\00\0f\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 5152) "\02\00\00\00\01\00\00\00\10\00\00\00\02\00\00\00-\00")
 (data (i32.const 5176) "\08\00\00\00\01\00\00\00\0f\00\00\00\08\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 5200) "\04\00\00\00\01\00\00\00\10\00\00\00\04\00\00\00_\00_\00")
 (data (i32.const 5224) "0\00\00\00\01\00\00\00\10\00\00\000\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 5288) "0\00\00\00\01\00\00\00\0f\00\00\000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 5352) "\04\00\00\00\01\00\00\00\10\00\00\00\04\00\00\00,\00 \00")
 (data (i32.const 5376) "\06\00\00\00\01\00\00\00\10\00\00\00\06\00\00\000\00.\000\00")
 (data (i32.const 5400) "\06\00\00\00\01\00\00\00\10\00\00\00\06\00\00\00N\00a\00N\00")
 (data (i32.const 5424) "\12\00\00\00\01\00\00\00\10\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 5464) "\10\00\00\00\01\00\00\00\10\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 5496) "\b8\02\00\00\01\00\00\00\0f\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 6208) "\10\00\00\00\01\00\00\00\1e\00\00\00\10\00\00\00\88\15\00\00\88\15\00\00\b8\02\00\00W\00\00\00")
 (data (i32.const 6240) "\ae\00\00\00\01\00\00\00\0f\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 6432) "\10\00\00\00\01\00\00\00\1f\00\00\00\10\00\00\00p\18\00\00p\18\00\00\ae\00\00\00W\00\00\00")
 (data (i32.const 6464) "(\00\00\00\01\00\00\00\0f\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 6520) "\10\00\00\00\01\00\00\00\15\00\00\00\10\00\00\00P\19\00\00P\19\00\00(\00\00\00\n\00\00\00")
 (data (i32.const 6552) "P\00\00\00\01\00\00\00\10\00\00\00P\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 6648) "\02\00\00\00\01\00\00\00\10\00\00\00\02\00\00\001\00")
 (data (i32.const 6672) "\0c\00\00\00\01\00\00\00\0f\00\00\00\0c\00\00\00\b0\10\00\00\08\1a\00\00\00\00\00\00")
 (data (i32.const 6704) "\1e\00\00\00\01\00\00\00\10\00\00\00\1e\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 6752) "@\00\00\00\01\00\00\00\10\00\00\00@\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 6832) "\00\00\00\00\01\00\00\00\0f\00\00\00\00\00\00\00")
 (data (i32.const 6848) "\04\00\00\00\01\00\00\00\0f\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 6872) "\08\00\00\00\01\00\00\00\0f\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 6896) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 6928) "\06\00\00\00\01\00\00\00\10\00\00\00\06\00\00\001\00,\002\00")
 (data (i32.const 6952) "\0e\00\00\00\01\00\00\00\10\00\00\00\0e\00\00\000\00,\001\00,\002\00,\003\00")
 (data (i32.const 6984) "\03\00\00\00\01\00\00\00\0f\00\00\00\03\00\00\00\01\ff\00")
 (data (i32.const 7008) "\0c\00\00\00\01\00\00\00\10\00\00\00\0c\00\00\001\00,\00-\001\00,\000\00")
 (data (i32.const 7040) "\06\00\00\00\01\00\00\00\0f\00\00\00\06\00\00\00\01\00\ff\ff\00\00")
 (data (i32.const 7064) "\12\00\00\00\01\00\00\00\10\00\00\00\12\00\00\001\00,\006\005\005\003\005\00,\000\00")
 (data (i32.const 7104) "\18\00\00\00\01\00\00\00\0f\00\00\00\18\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 7144) "0\00\00\00\01\00\00\00\10\00\00\000\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000\00")
 (data (i32.const 7208) " \00\00\00\01\00\00\00\0f\00\00\00 \00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7256) "T\00\00\00\01\00\00\00\10\00\00\00T\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 7360) "\1c\00\00\00\01\00\00\00\0f\00\00\00\1c\00\00\00\b0\10\00\00P\10\00\00P\10\00\00\80\10\00\00h\10\00\00\98\10\00\00\00\00\00\00")
 (data (i32.const 7408) "\1a\00\00\00\01\00\00\00\10\00\00\00\1a\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,\00")
 (data (i32.const 7456) "\02\00\00\00\01\00\00\00\10\00\00\00\02\00\00\002\00")
 (data (i32.const 7480) "\02\00\00\00\01\00\00\00\10\00\00\00\02\00\00\004\00")
 (data (i32.const 7504) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\08\1a\00\000\1d\00\00\00\00\00\00H\1d\00\00")
 (data (i32.const 7536) "\0c\00\00\00\01\00\00\00\10\00\00\00\0c\00\00\001\00,\002\00,\00,\004\00")
 (data (i32.const 7568) "\08\00\00\00\01\00\00\00\0f\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 7592) "\08\00\00\00\01\00\00\00\0f\00\00\00\08\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 7616) "\0e\00\00\00\01\00\00\00\10\00\00\00\0e\00\00\001\00,\002\00,\003\00,\004\00")
 (data (i32.const 7648) "\02\00\00\00\01\00\00\00\0f\00\00\00\02\00\00\00\01\02")
 (data (i32.const 7672) "\02\00\00\00\01\00\00\00\0f\00\00\00\02\00\00\00\03\04")
 (data (i32.const 7696) "\04\00\00\00\01\00\00\00\0f\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 7720) "\'\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00I\00\00\00\0e\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\0e\00\00\00\19\00\00\00\0e\00\00\00I\00\00\00\0e\00\00\00I\00\00\00\0e\00\00\00\89\00\00\00\0e\00\00\00I\04\00\00\0e\00\00\00\08\00\00\00\00\00\00\00I\04\00\00\0e\00\00\00I\06\00\00\0e\00\00\00I\04\00\00\0e\00\00\00\19\00\00\00\0e\00\00\00\89\00\00\00\0e\00\00\00)\00\00\00\0e\00\00\00\08\00\00\00\00\00\00\00I\06\00\00\0e\00\00\00\19\00\00\00\0e\00\00\00)\00\00\00\0e\00\00\00\89\00\00\00\0e\00\00\00I\04\00\00\0e\00\00\00I\04\00\00\0e\00\00\00I\04\00\00\0e\00\00\00")
 (table $0 57 funcref)
 (elem (i32.const 0) $null $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|4 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|18 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|30 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|34 $start:std/array~anonymous|35 $start:std/array~anonymous|36 $start:std/array~anonymous|37 $start:std/array~anonymous|38 $start:std/array~anonymous|39 $start:std/array~anonymous|40 $start:std/array~anonymous|41 $start:std/array~anonymous|42 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|1 $start:std/array~anonymous|43 $start:std/array~anonymous|44 $start:std/array~anonymous|45 $start:std/array~anonymous|46 $start:std/array~anonymous|47 $start:std/array~anonymous|48 $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String>~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $std/array/charset i32 (i32.const 3168))
 (global $~lib/rt/purerc/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/purerc/END (mut i32) (i32.const 0))
 (global $~lib/rt/purerc/ROOTS (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
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
 (global $~lib/builtins/RTTI_BASE i32 (i32.const 7720))
 (global $~lib/builtins/HEAP_BASE i32 (i32.const 8040))
 (export "memory" (memory $0))
 (export "main" (func $std/array/main))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__realloc" (func $~lib/rt/tlsf/__realloc))
 (export "__free" (func $~lib/rt/tlsf/__free))
 (export "__retain" (func $~lib/rt/purerc/__retain))
 (export "__release" (func $~lib/rt/purerc/__release))
 (export "__collect" (func $~lib/rt/purerc/__collect))
 (export "__instanceof" (func $~lib/rt/common/__instanceof))
 (export "__typeinfo" (func $~lib/rt/common/__typeinfo))
 (func $~lib/rt/tlsf/removeBlock (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 275
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
   i32.const 277
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
   i32.const 290
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
   block $~lib/rt/tlsf/SETHEAD|inlined.1
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
    block $~lib/rt/tlsf/SETSL|inlined.1
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
 (func $~lib/rt/tlsf/insertBlock (; 6 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 203
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
   i32.const 205
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
    i32.const 128
    i32.const 226
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
   i32.const 128
   i32.const 241
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
   i32.const 242
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
   i32.const 258
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
  block $~lib/rt/tlsf/SETHEAD|inlined.2
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
  block $~lib/rt/tlsf/SETSL|inlined.2
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
 (func $~lib/rt/tlsf/addMemory (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 384
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
    i32.const 128
    i32.const 394
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
    i32.const 406
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
 (func $~lib/rt/tlsf/initializeRoot (; 8 ;) (type $FUNCSIG$v)
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
  global.get $~lib/builtins/HEAP_BASE
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  current_memory
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
   grow_memory
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
    block $~lib/rt/tlsf/SETSL|inlined.0
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
      block $~lib/rt/tlsf/SETHEAD|inlined.0
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
  current_memory
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 176
   i32.const 128
   i32.const 446
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
 (func $~lib/rt/tlsf/searchBlock (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 336
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
     i32.const 128
     i32.const 349
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
 (func $~lib/rt/tlsf/growMemory (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  current_memory
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
  grow_memory
  i32.const 0
  i32.lt_s
  if
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  current_memory
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
 (func $~lib/rt/tlsf/prepareBlock (; 12 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 363
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
 (func $~lib/rt/tlsf/allocateBlock (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    i32.const 476
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
   i32.const 478
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
 )
 (func $~lib/rt/tlsf/__alloc (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 15 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
  i32.const 15
  call $~lib/rt/tlsf/__alloc
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    i32.const 14
    call $~lib/rt/tlsf/__alloc
    call $~lib/rt/purerc/__retain
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
  end
  local.tee $4
  local.get $3
  local.get $4
  i32.load
  call $~lib/rt/purerc/__retainRelease
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 17
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/purerc/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array.isArray<~lib/array/Array<i32> | null> (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  call $~lib/rt/purerc/__release
  i32.const 1
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array.isArray<~lib/array/Array<i32>> (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  call $~lib/rt/purerc/__release
  i32.const 1
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $std/array/P#constructor (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 18
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/purerc/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array.isArray<std/array/P> (; 20 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  call $~lib/rt/purerc/__release
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 19
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/purerc/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  local.set $0
  local.get $0
 )
 (func $~lib/array/Array.isArray<~lib/typedarray/Uint8Array> (; 22 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  call $~lib/rt/purerc/__release
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array.isArray<i32> (; 23 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array.isArray<~lib/string/String> (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  call $~lib/rt/purerc/__release
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/rt/purerc/increment (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   i32.const 320
   i32.const 103
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
  call $~lib/rt/purerc/onIncrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 320
   i32.const 106
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/purerc/__retain (; 26 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/builtins/HEAP_BASE
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/purerc/increment
  end
  local.get $0
 )
 (func $~lib/memory/memory.copy (; 27 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/rt/common/__allocArray (; 28 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  i32.const 15
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/purerc/__retain
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
 (func $~lib/memory/memory.fill (; 29 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<u8>#fill (; 30 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<u8>#get:length (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#__unchecked_get (; 32 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 400
   i32.const 456
   i32.const 100
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__unchecked_get
 )
 (func $std/array/isArraysEqual<u8> (; 34 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
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
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 0
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
     local.get $0
     call $~lib/rt/purerc/__release
     local.get $1
     call $~lib/rt/purerc/__release
     i32.const 0
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
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  i32.const 1
 )
 (func $~lib/array/Array<u32>#fill (; 35 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
   loop $repeat|0
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<u32>#get:length (; 36 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__unchecked_get (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 400
   i32.const 456
   i32.const 100
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__unchecked_get
 )
 (func $std/array/isArraysEqual<u32> (; 39 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
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
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 0
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
     local.get $0
     call $~lib/rt/purerc/__release
     local.get $1
     call $~lib/rt/purerc/__release
     i32.const 0
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
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  i32.const 1
 )
 (func $~lib/array/Array<i32>#get:length (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $std/array/internalCapacity<i32> (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.load
  call $~lib/rt/purerc/__retain
  local.set $1
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 2
  i32.shr_s
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 43 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 128
   i32.const 491
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
  local.get $1
  call $~lib/rt/tlsf/onFree
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 552
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
   i32.const 553
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
 (func $~lib/array/ensureSize (; 45 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 456
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
    call $~lib/rt/purerc/__retain
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
 (func $~lib/array/Array<i32>#push (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 400
   i32.const 456
   i32.const 100
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $~lib/array/Array<i32>#pop (; 49 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 840
   i32.const 456
   i32.const 250
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
 (func $~lib/array/Array<i32>#concat (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
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
   call $~lib/rt/purerc/__release
   block
    i32.const 24
    i32.const 456
    i32.const 197
    i32.const 59
    call $~lib/builtins/abort
    unreachable
    unreachable
   end
   unreachable
  end
  local.get $4
  i32.const 2
  i32.const 17
  i32.const 0
  call $~lib/rt/common/__allocArray
  call $~lib/rt/purerc/__retain
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
  call $~lib/rt/purerc/__release
  local.get $8
 )
 (func $~lib/array/Array<i32>#copyWithin (; 51 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  local.get $9
  local.get $8
  i32.lt_s
  if (result i32)
   local.get $8
   local.get $9
   local.get $11
   i32.add
   i32.lt_s
  else   
   i32.const 0
  end
  if
   local.get $9
   local.get $11
   i32.const 1
   i32.sub
   i32.add
   local.set $9
   local.get $8
   local.get $11
   i32.const 1
   i32.sub
   i32.add
   local.set $8
   block $break|0
    loop $continue|0
     local.get $11
     if
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
      i32.load
      i32.store
      local.get $9
      i32.const 1
      i32.sub
      local.set $9
      local.get $8
      i32.const 1
      i32.sub
      local.set $8
      local.get $11
      i32.const 1
      i32.sub
      local.set $11
      br $continue|0
     end
    end
   end
  else   
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
  end
  local.get $0
  call $~lib/rt/purerc/__retain
 )
 (func $std/array/isArraysEqual<i32> (; 52 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
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
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 0
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
     local.get $0
     call $~lib/rt/purerc/__release
     local.get $1
     call $~lib/rt/purerc/__release
     i32.const 0
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
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  i32.const 1
 )
 (func $~lib/array/Array<i32>#unshift (; 53 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<i32>#shift (; 54 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 840
   i32.const 456
   i32.const 311
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
 (func $~lib/array/Array<i32>#reverse (; 55 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
     if
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
    end
   end
  end
  local.get $0
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<i32>#indexOf (; 56 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    if
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
   end
  end
  i32.const -1
 )
 (func $~lib/array/Array<i32>#includes (; 57 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#splice (; 58 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 17
  i32.const 0
  call $~lib/rt/common/__allocArray
  call $~lib/rt/purerc/__retain
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
 (func $~lib/array/Array<i32>#__unchecked_set (; 59 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 60 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $start:std/array~anonymous|0 (; 61 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#findIndex (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   block
    i32.const 0
    local.set $2
    local.get $0
    i32.load offset=12
    local.set $3
   end
   loop $repeat|0
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
    block (result i32)
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
    end
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $start:std/array~anonymous|1 (; 63 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const 1
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $start:std/array~anonymous|2 (; 64 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const 100
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $start:std/array~anonymous|3 (; 65 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|4 (; 66 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const 100
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $start:std/array~anonymous|5 (; 67 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|6 (; 68 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const 0
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#every (; 69 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   block
    i32.const 0
    local.set $2
    local.get $0
    i32.load offset=12
    local.set $3
   end
   loop $repeat|0
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
    block (result i32)
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
    end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $start:std/array~anonymous|7 (; 70 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const 0
  i32.le_s
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $start:std/array~anonymous|8 (; 71 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|9 (; 72 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const 10
  i32.lt_s
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $start:std/array~anonymous|10 (; 73 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 3
  i32.lt_s
 )
 (func $start:std/array~anonymous|11 (; 74 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const 3
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#some (; 75 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   block
    i32.const 0
    local.set $2
    local.get $0
    i32.load offset=12
    local.set $3
   end
   loop $repeat|0
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
    block (result i32)
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
    end
    if
     i32.const 1
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
 )
 (func $start:std/array~anonymous|12 (; 76 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const -1
  i32.le_s
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $start:std/array~anonymous|13 (; 77 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|14 (; 78 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const 10
  i32.gt_s
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $start:std/array~anonymous|15 (; 79 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 3
  i32.gt_s
 )
 (func $start:std/array~anonymous|16 (; 80 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/purerc/__release
 )
 (func $~lib/array/Array<i32>#forEach (; 81 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   block
    i32.const 0
    local.set $2
    local.get $0
    i32.load offset=12
    local.set $3
   end
   loop $repeat|0
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $start:std/array~anonymous|17 (; 82 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
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
  call $~lib/rt/purerc/__release
 )
 (func $start:std/array~anonymous|18 (; 83 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/purerc/__release
 )
 (func $start:std/array~anonymous|19 (; 84 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/purerc/__release
 )
 (func $start:std/array~anonymous|20 (; 85 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   block $break|0
    i32.const 0
    local.set $3
    loop $repeat|0
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
     br $repeat|0
     unreachable
    end
    unreachable
   end
   block $break|1
    i32.const 0
    local.set $3
    loop $repeat|1
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
     br $repeat|1
     unreachable
    end
    unreachable
   end
   block $break|2
    i32.const 0
    local.set $3
    loop $repeat|2
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
     br $repeat|2
     unreachable
    end
    unreachable
   end
   block $break|3
    i32.const 0
    local.set $3
    loop $repeat|3
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
     br $repeat|3
     unreachable
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
    i32.const 232
    i32.const 570
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  call $~lib/rt/purerc/__release
 )
 (func $start:std/array~anonymous|21 (; 86 ;) (type $FUNCSIG$fiii) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 f32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  f32.convert_i32_s
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#map<f32> (; 87 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 22
  i32.const 0
  call $~lib/rt/common/__allocArray
  call $~lib/rt/purerc/__retain
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   loop $repeat|0
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
    block (result f32)
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
    end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
 )
 (func $~lib/array/Array<f32>#get:length (; 88 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f32>#__unchecked_get (; 89 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__get (; 90 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 400
   i32.const 456
   i32.const 100
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__unchecked_get
 )
 (func $start:std/array~anonymous|22 (; 91 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
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
  call $~lib/rt/purerc/__release
  local.get $0
 )
 (func $~lib/array/Array<i32>#map<i32> (; 92 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 17
  i32.const 0
  call $~lib/rt/common/__allocArray
  call $~lib/rt/purerc/__retain
  local.set $3
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   loop $repeat|0
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
    block (result i32)
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
    end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|23 (; 93 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
 )
 (func $start:std/array~anonymous|24 (; 94 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
 )
 (func $start:std/array~anonymous|25 (; 95 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const 2
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#filter (; 96 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  i32.const 2
  i32.const 17
  i32.const 0
  call $~lib/rt/common/__allocArray
  call $~lib/rt/purerc/__retain
  local.set $2
  block $break|0
   block
    i32.const 0
    local.set $3
    local.get $0
    i32.load offset=12
    local.set $4
   end
   loop $repeat|0
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
    block (result i32)
     i32.const 3
     global.set $~lib/argc
     local.get $5
     local.get $3
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
    end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $2
 )
 (func $start:std/array~anonymous|26 (; 97 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
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
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|27 (; 98 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|28 (; 99 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|29 (; 100 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/purerc/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 101 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  local.set $3
  block $break|0
   block
    i32.const 0
    local.set $4
    local.get $0
    i32.load offset=12
    local.set $5
   end
   loop $repeat|0
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
    block (result i32)
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
    end
    local.set $3
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
 )
 (func $start:std/array~anonymous|30 (; 102 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/purerc/__release
  local.get $4
 )
 (func $start:std/array~anonymous|31 (; 103 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/purerc/__retain
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
  call $~lib/rt/purerc/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduce<bool> (; 104 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  local.set $3
  block $break|0
   block
    i32.const 0
    local.set $4
    local.get $0
    i32.load offset=12
    local.set $5
   end
   loop $repeat|0
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
    block (result i32)
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
    end
    local.set $3
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
 )
 (func $start:std/array~anonymous|32 (; 105 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/purerc/__retain
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
  call $~lib/rt/purerc/__release
  local.get $4
 )
 (func $start:std/array~anonymous|33 (; 106 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/rt/purerc/__retain
  drop
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $3
  call $~lib/rt/purerc/__release
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|34 (; 107 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/purerc/__release
  local.get $4
 )
 (func $start:std/array~anonymous|35 (; 108 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/rt/purerc/__retain
  drop
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $3
  call $~lib/rt/purerc/__release
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|36 (; 109 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/purerc/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 110 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   loop $repeat|0
    local.get $4
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
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
    end
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|37 (; 111 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/purerc/__release
  local.get $4
 )
 (func $start:std/array~anonymous|38 (; 112 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/purerc/__retain
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
  call $~lib/rt/purerc/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduceRight<bool> (; 113 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   loop $repeat|0
    local.get $4
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
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
    end
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|39 (; 114 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/purerc/__retain
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
  call $~lib/rt/purerc/__release
  local.get $4
 )
 (func $start:std/array~anonymous|40 (; 115 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/rt/purerc/__retain
  drop
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $3
  call $~lib/rt/purerc/__release
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|41 (; 116 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/purerc/__release
  local.get $4
 )
 (func $start:std/array~anonymous|42 (; 117 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/rt/purerc/__retain
  drop
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $3
  call $~lib/rt/purerc/__release
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/math/murmurHash3 (; 118 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
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
 (func $~lib/math/splitMix32 (; 119 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/math/NativeMath.seedRandom (; 120 ;) (type $FUNCSIG$vj) (param $0 i64)
  local.get $0
  i64.eqz
  if
   i32.const 0
   i32.const 3128
   i32.const 1021
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
 (func $~lib/util/sort/insertionSort<f32> (; 121 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
      if
       local.get $0
       local.get $5
       i32.const 2
       i32.shl
       i32.add
       f32.load
       local.set $6
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $4
        local.get $6
        local.get $2
        call_indirect (type $FUNCSIG$iff)
       end
       i32.const 0
       i32.lt_s
       if
        local.get $0
        block (result i32)
         local.get $5
         local.tee $7
         i32.const 1
         i32.sub
         local.set $5
         local.get $7
        end
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
     end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/rt/tlsf/freeBlock (; 122 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 530
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
  call $~lib/rt/tlsf/onFree
 )
 (func $~lib/rt/tlsf/__free (; 123 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 560
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
   i32.const 561
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
 (func $~lib/util/sort/weakHeapSort<f32> (; 124 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   loop $repeat|0
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
      if
       local.get $6
       i32.const 1
       i32.shr_s
       local.set $6
       br $continue|1
      end
     end
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
    block (result i32)
     i32.const 2
     global.set $~lib/argc
     local.get $8
     local.get $9
     local.get $2
     call_indirect (type $FUNCSIG$iff)
    end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $7
   loop $repeat|2
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
      if
       local.get $5
       local.set $6
       br $continue|3
      end
     end
    end
    block $break|4
     loop $continue|4
      local.get $6
      i32.const 0
      i32.gt_s
      if
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
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $9
        local.get $8
        local.get $2
        call_indirect (type $FUNCSIG$iff)
       end
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
     end
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $repeat|2
    unreachable
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
 (func $~lib/array/Array<f32>#sort (; 125 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   call $~lib/rt/purerc/__retain
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
   block (result i32)
    i32.const 2
    global.set $~lib/argc
    local.get $4
    local.get $5
    local.get $1
    call_indirect (type $FUNCSIG$iff)
   end
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
   call $~lib/rt/purerc/__retain
   return
  end
  block $~lib/util/sort/SORT<f32>|inlined.0
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
  end
  local.get $0
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/util/sort/COMPARATOR<f32>~anonymous|0 (; 126 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
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
 (func $~lib/array/Array<f32>#sort|trampoline (; 127 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/builtins/isNaN<f32> (; 128 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $std/array/isArraysEqual<f32> (; 129 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
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
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 0
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
    block $continue|0
     local.get $3
     local.get $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $3
     call $~lib/array/Array<f32>#__get
     call $~lib/builtins/isNaN<f32>
     local.get $1
     local.get $3
     call $~lib/array/Array<f32>#__get
     call $~lib/builtins/isNaN<f32>
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
      local.get $0
      call $~lib/rt/purerc/__release
      local.get $1
      call $~lib/rt/purerc/__release
      i32.const 0
      return
     end
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
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  i32.const 1
 )
 (func $~lib/util/sort/insertionSort<f64> (; 130 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
      if
       local.get $0
       local.get $5
       i32.const 3
       i32.shl
       i32.add
       f64.load
       local.set $6
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $4
        local.get $6
        local.get $2
        call_indirect (type $FUNCSIG$idd)
       end
       i32.const 0
       i32.lt_s
       if
        local.get $0
        block (result i32)
         local.get $5
         local.tee $7
         i32.const 1
         i32.sub
         local.set $5
         local.get $7
        end
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
     end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<f64> (; 131 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   loop $repeat|0
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
      if
       local.get $6
       i32.const 1
       i32.shr_s
       local.set $6
       br $continue|1
      end
     end
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
    block (result i32)
     i32.const 2
     global.set $~lib/argc
     local.get $8
     local.get $9
     local.get $2
     call_indirect (type $FUNCSIG$idd)
    end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $7
   loop $repeat|2
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
      if
       local.get $5
       local.set $6
       br $continue|3
      end
     end
    end
    block $break|4
     loop $continue|4
      local.get $6
      i32.const 0
      i32.gt_s
      if
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
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $9
        local.get $8
        local.get $2
        call_indirect (type $FUNCSIG$idd)
       end
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
     end
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $repeat|2
    unreachable
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
 (func $~lib/array/Array<f64>#sort (; 132 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   call $~lib/rt/purerc/__retain
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
   block (result i32)
    i32.const 2
    global.set $~lib/argc
    local.get $4
    local.get $5
    local.get $1
    call_indirect (type $FUNCSIG$idd)
   end
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
   call $~lib/rt/purerc/__retain
   return
  end
  block $~lib/util/sort/SORT<f64>|inlined.0
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
  end
  local.get $0
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 133 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/array/Array<f64>#sort|trampoline (; 134 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<f64>#get:length (; 135 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f64>#__unchecked_get (; 136 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__get (; 137 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 400
   i32.const 456
   i32.const 100
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__unchecked_get
 )
 (func $~lib/builtins/isNaN<f64> (; 138 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $std/array/isArraysEqual<f64> (; 139 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
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
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 0
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
    block $continue|0
     local.get $3
     local.get $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $3
     call $~lib/array/Array<f64>#__get
     call $~lib/builtins/isNaN<f64>
     local.get $1
     local.get $3
     call $~lib/array/Array<f64>#__get
     call $~lib/builtins/isNaN<f64>
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
      local.get $0
      call $~lib/rt/purerc/__release
      local.get $1
      call $~lib/rt/purerc/__release
      i32.const 0
      return
     end
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
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  i32.const 1
 )
 (func $~lib/util/sort/insertionSort<i32> (; 140 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
      if
       local.get $0
       local.get $5
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.set $6
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $4
        local.get $6
        local.get $2
        call_indirect (type $FUNCSIG$iii)
       end
       i32.const 0
       i32.lt_s
       if
        local.get $0
        block (result i32)
         local.get $5
         local.tee $7
         i32.const 1
         i32.sub
         local.set $5
         local.get $7
        end
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
     end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<i32> (; 141 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   loop $repeat|0
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
      if
       local.get $6
       i32.const 1
       i32.shr_s
       local.set $6
       br $continue|1
      end
     end
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
    block (result i32)
     i32.const 2
     global.set $~lib/argc
     local.get $8
     local.get $9
     local.get $2
     call_indirect (type $FUNCSIG$iii)
    end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $9
   loop $repeat|2
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
      if
       local.get $6
       local.set $7
       br $continue|3
      end
     end
    end
    block $break|4
     loop $continue|4
      local.get $7
      i32.const 0
      i32.gt_s
      if
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
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $8
        local.get $5
        local.get $2
        call_indirect (type $FUNCSIG$iii)
       end
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
     end
    end
    local.get $9
    i32.const 1
    i32.sub
    local.set $9
    br $repeat|2
    unreachable
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
 (func $~lib/array/Array<i32>#sort (; 142 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   call $~lib/rt/purerc/__retain
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
   block (result i32)
    i32.const 2
    global.set $~lib/argc
    local.get $4
    local.get $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
   end
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
   call $~lib/rt/purerc/__retain
   return
  end
  block $~lib/util/sort/SORT<i32>|inlined.0
   local.get $3
   local.set $6
   local.get $2
   local.set $4
   local.get $1
   local.set $5
   local.get $4
   i32.const 256
   i32.lt_s
   if
    local.get $6
    local.get $4
    local.get $5
    call $~lib/util/sort/insertionSort<i32>
   else    
    local.get $6
    local.get $4
    local.get $5
    call $~lib/util/sort/weakHeapSort<i32>
   end
  end
  local.get $0
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|0 (; 143 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/array/Array<i32>#sort|trampoline (; 144 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/util/sort/insertionSort<u32> (; 145 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
      if
       local.get $0
       local.get $5
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.set $6
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $4
        local.get $6
        local.get $2
        call_indirect (type $FUNCSIG$iii)
       end
       i32.const 0
       i32.lt_s
       if
        local.get $0
        block (result i32)
         local.get $5
         local.tee $7
         i32.const 1
         i32.sub
         local.set $5
         local.get $7
        end
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
     end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<u32> (; 146 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   loop $repeat|0
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
      if
       local.get $6
       i32.const 1
       i32.shr_s
       local.set $6
       br $continue|1
      end
     end
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
    block (result i32)
     i32.const 2
     global.set $~lib/argc
     local.get $8
     local.get $9
     local.get $2
     call_indirect (type $FUNCSIG$iii)
    end
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $9
   loop $repeat|2
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
      if
       local.get $6
       local.set $7
       br $continue|3
      end
     end
    end
    block $break|4
     loop $continue|4
      local.get $7
      i32.const 0
      i32.gt_s
      if
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
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $8
        local.get $5
        local.get $2
        call_indirect (type $FUNCSIG$iii)
       end
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
     end
    end
    local.get $9
    i32.const 1
    i32.sub
    local.set $9
    br $repeat|2
    unreachable
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
 (func $~lib/array/Array<u32>#sort (; 147 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   call $~lib/rt/purerc/__retain
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
   block (result i32)
    i32.const 2
    global.set $~lib/argc
    local.get $4
    local.get $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
   end
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
   call $~lib/rt/purerc/__retain
   return
  end
  block $~lib/util/sort/SORT<u32>|inlined.0
   local.get $3
   local.set $6
   local.get $2
   local.set $4
   local.get $1
   local.set $5
   local.get $4
   i32.const 256
   i32.lt_s
   if
    local.get $6
    local.get $4
    local.get $5
    call $~lib/util/sort/insertionSort<u32>
   else    
    local.get $6
    local.get $4
    local.get $5
    call $~lib/util/sort/weakHeapSort<u32>
   end
  end
  local.get $0
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/util/sort/COMPARATOR<u32>~anonymous|0 (; 148 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $~lib/array/Array<u32>#sort|trampoline (; 149 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array.create<i32> (; 150 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 24
   i32.const 456
   i32.const 45
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const 17
  i32.const 0
  call $~lib/rt/common/__allocArray
  call $~lib/rt/purerc/__retain
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
 (func $std/array/createReverseOrderedArray (; 151 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/array/Array.create<i32>
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/math/NativeMath.random (; 152 ;) (type $FUNCSIG$d) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   i32.const 3904
   i32.const 3128
   i32.const 1030
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
 (func $std/array/createRandomOrderedArray (; 153 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/array/Array.create<i32>
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|1 (; 154 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $std/array/isSorted<i32> (; 155 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  block $break|0
   block
    i32.const 1
    local.set $2
    local.get $0
    call $~lib/array/Array<i32>#get:length
    local.set $3
   end
   loop $repeat|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
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
    end
    i32.const 0
    i32.gt_s
    if
     local.get $0
     call $~lib/rt/purerc/__release
     i32.const 0
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/purerc/__release
  i32.const 1
 )
 (func $std/array/assertSorted<i32> (; 156 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
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
   i32.const 232
   i32.const 832
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  call $~lib/rt/purerc/__release
 )
 (func $std/array/assertSortedDefault<i32> (; 157 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  block $~lib/util/sort/COMPARATOR<i32>|inlined.1 (result i32)
   i32.const 48
   br $~lib/util/sort/COMPARATOR<i32>|inlined.1
  end
  call $std/array/assertSorted<i32>
  local.get $0
  call $~lib/rt/purerc/__release
 )
 (func $start:std/array~anonymous|43 (; 158 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $start:std/array~anonymous|44 (; 159 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $start:std/array~anonymous|45 (; 160 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $start:std/array~anonymous|46 (; 161 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $~lib/array/Array.create<~lib/array/Array<i32>> (; 162 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 24
   i32.const 456
   i32.const 45
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const 24
  i32.const 0
  call $~lib/rt/common/__allocArray
  call $~lib/rt/purerc/__retain
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
 (func $~lib/rt/common/__typeinfo (; 163 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/builtins/RTTI_BASE
  local.set $1
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 1
  else   
   local.get $0
   local.get $1
   i32.load
   i32.gt_u
  end
  if
   i32.const 400
   i32.const 4120
   i32.const 55
   i32.const 34
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/rt/purerc/growRoots (; 164 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/purerc/ROOTS
  local.set $0
  global.get $~lib/rt/purerc/CUR
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
  global.set $~lib/rt/purerc/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $~lib/rt/purerc/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $~lib/rt/purerc/END
 )
 (func $~lib/rt/purerc/appendRoot (; 165 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/purerc/CUR
  local.set $1
  local.get $1
  global.get $~lib/rt/purerc/END
  i32.ge_u
  if
   call $~lib/rt/purerc/growRoots
   global.get $~lib/rt/purerc/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 1
  i32.add
  global.set $~lib/rt/purerc/CUR
 )
 (func $~lib/rt/purerc/decrement (; 166 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  call $~lib/rt/purerc/onDecrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 320
   i32.const 114
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
   call $~lib/builtins/__visit_members
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
    i32.const 320
    i32.const 123
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/common/__typeinfo
   i32.const 8
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
     call $~lib/rt/purerc/appendRoot
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
 (func $~lib/rt/purerc/__retainRelease (; 167 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.ne
  if
   global.get $~lib/builtins/HEAP_BASE
   local.set $2
   local.get $0
   local.get $2
   i32.gt_u
   if
    local.get $0
    i32.const 16
    i32.sub
    call $~lib/rt/purerc/increment
   end
   local.get $1
   local.get $2
   i32.gt_u
   if
    local.get $1
    i32.const 16
    i32.sub
    call $~lib/rt/purerc/decrement
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_set (; 168 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  local.get $3
  local.get $2
  local.get $3
  i32.load
  call $~lib/rt/purerc/__retainRelease
  i32.store
  local.get $2
  call $~lib/rt/purerc/__release
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (; 169 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $2
   call $~lib/rt/purerc/__release
   block
    i32.const 4008
    i32.const 456
    i32.const 112
    i32.const 38
    call $~lib/builtins/abort
    unreachable
    unreachable
   end
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
  call $~lib/rt/purerc/__release
 )
 (func $std/array/createReverseOrderedNestedArray (; 170 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/array/Array.create<~lib/array/Array<i32>>
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
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
    local.get $3
    call $~lib/rt/purerc/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
 )
 (func $start:std/array~anonymous|47 (; 171 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
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
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
 )
 (func $~lib/util/sort/insertionSort<~lib/array/Array<i32>> (; 172 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    call $~lib/rt/purerc/__retain
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
      if
       local.get $0
       local.get $5
       i32.const 2
       i32.shl
       i32.add
       i32.load
       call $~lib/rt/purerc/__retain
       local.set $6
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $4
        local.get $6
        local.get $2
        call_indirect (type $FUNCSIG$iii)
       end
       i32.const 0
       i32.lt_s
       if
        local.get $0
        block (result i32)
         local.get $5
         local.tee $7
         i32.const 1
         i32.sub
         local.set $5
         local.get $7
        end
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        local.get $6
        i32.store
       else        
        local.get $6
        call $~lib/rt/purerc/__release
        br $break|1
       end
       local.get $6
       call $~lib/rt/purerc/__release
       br $continue|1
      end
     end
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
    local.get $4
    call $~lib/rt/purerc/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#sort (; 173 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   call $~lib/rt/purerc/__retain
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
   call $~lib/rt/purerc/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/purerc/__retain
   local.set $5
   block (result i32)
    i32.const 2
    global.set $~lib/argc
    local.get $4
    local.get $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
   end
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
   call $~lib/rt/purerc/__retain
   local.set $6
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $5
   call $~lib/rt/purerc/__release
   local.get $6
   return
  end
  block $~lib/util/sort/SORT<~lib/array/Array<i32>>|inlined.0
   local.get $3
   local.set $6
   local.get $2
   local.set $4
   local.get $1
   local.set $5
   local.get $6
   local.get $4
   local.get $5
   call $~lib/util/sort/insertionSort<~lib/array/Array<i32>>
  end
  local.get $0
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#get:length (; 174 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_get (; 175 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__get (; 176 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 4008
   i32.const 456
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
   i32.const 400
   i32.const 456
   i32.const 100
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/array/Array<i32>> (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  block $break|0
   block
    i32.const 1
    local.set $2
    local.get $0
    call $~lib/array/Array<~lib/array/Array<i32>>#get:length
    local.set $3
   end
   loop $repeat|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
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
    end
    i32.const 0
    i32.gt_s
    if
     local.get $0
     call $~lib/rt/purerc/__release
     local.get $4
     call $~lib/rt/purerc/__release
     local.get $5
     call $~lib/rt/purerc/__release
     i32.const 0
     return
    end
    local.get $4
    call $~lib/rt/purerc/__release
    local.get $5
    call $~lib/rt/purerc/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/purerc/__release
  i32.const 1
 )
 (func $std/array/assertSorted<~lib/array/Array<i32>> (; 178 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
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
   i32.const 232
   i32.const 832
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  call $~lib/rt/purerc/__release
 )
 (func $~lib/array/Array.create<std/array/Proxy<i32>> (; 179 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 24
   i32.const 456
   i32.const 45
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const 26
  i32.const 0
  call $~lib/rt/common/__allocArray
  call $~lib/rt/purerc/__retain
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
 (func $std/array/Proxy<i32>#constructor (; 180 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 25
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/purerc/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_set (; 181 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  local.get $3
  local.get $2
  local.get $3
  i32.load
  call $~lib/rt/purerc/__retainRelease
  i32.store
  local.get $2
  call $~lib/rt/purerc/__release
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__set (; 182 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $2
   call $~lib/rt/purerc/__release
   block
    i32.const 4008
    i32.const 456
    i32.const 112
    i32.const 38
    call $~lib/builtins/abort
    unreachable
    unreachable
   end
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
  call $~lib/rt/purerc/__release
 )
 (func $std/array/createReverseOrderedElementsArray (; 183 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/array/Array.create<std/array/Proxy<i32>>
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
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
    local.get $3
    call $~lib/rt/purerc/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
 )
 (func $start:std/array~anonymous|48 (; 184 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
  local.set $2
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
 )
 (func $~lib/util/sort/insertionSort<std/array/Proxy<i32>> (; 185 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    call $~lib/rt/purerc/__retain
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
      if
       local.get $0
       local.get $5
       i32.const 2
       i32.shl
       i32.add
       i32.load
       call $~lib/rt/purerc/__retain
       local.set $6
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $4
        local.get $6
        local.get $2
        call_indirect (type $FUNCSIG$iii)
       end
       i32.const 0
       i32.lt_s
       if
        local.get $0
        block (result i32)
         local.get $5
         local.tee $7
         i32.const 1
         i32.sub
         local.set $5
         local.get $7
        end
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        local.get $6
        i32.store
       else        
        local.get $6
        call $~lib/rt/purerc/__release
        br $break|1
       end
       local.get $6
       call $~lib/rt/purerc/__release
       br $continue|1
      end
     end
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
    local.get $4
    call $~lib/rt/purerc/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#sort (; 186 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   call $~lib/rt/purerc/__retain
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
   call $~lib/rt/purerc/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/purerc/__retain
   local.set $5
   block (result i32)
    i32.const 2
    global.set $~lib/argc
    local.get $4
    local.get $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
   end
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
   call $~lib/rt/purerc/__retain
   local.set $6
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $5
   call $~lib/rt/purerc/__release
   local.get $6
   return
  end
  block $~lib/util/sort/SORT<std/array/Proxy<i32>>|inlined.0
   local.get $3
   local.set $6
   local.get $2
   local.set $4
   local.get $1
   local.set $5
   local.get $6
   local.get $4
   local.get $5
   call $~lib/util/sort/insertionSort<std/array/Proxy<i32>>
  end
  local.get $0
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#get:length (; 187 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_get (; 188 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__get (; 189 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 4008
   i32.const 456
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
   i32.const 400
   i32.const 456
   i32.const 100
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_get
 )
 (func $std/array/isSorted<std/array/Proxy<i32>> (; 190 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  block $break|0
   block
    i32.const 1
    local.set $2
    local.get $0
    call $~lib/array/Array<std/array/Proxy<i32>>#get:length
    local.set $3
   end
   loop $repeat|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
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
    end
    i32.const 0
    i32.gt_s
    if
     local.get $0
     call $~lib/rt/purerc/__release
     local.get $4
     call $~lib/rt/purerc/__release
     local.get $5
     call $~lib/rt/purerc/__release
     i32.const 0
     return
    end
    local.get $4
    call $~lib/rt/purerc/__release
    local.get $5
    call $~lib/rt/purerc/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/purerc/__release
  i32.const 1
 )
 (func $std/array/assertSorted<std/array/Proxy<i32>> (; 191 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
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
   i32.const 232
   i32.const 832
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  call $~lib/rt/purerc/__release
 )
 (func $~lib/util/sort/insertionSort<~lib/string/String | null> (; 192 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    call $~lib/rt/purerc/__retain
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
      if
       local.get $0
       local.get $5
       i32.const 2
       i32.shl
       i32.add
       i32.load
       call $~lib/rt/purerc/__retain
       local.set $6
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $4
        local.get $6
        local.get $2
        call_indirect (type $FUNCSIG$iii)
       end
       i32.const 0
       i32.lt_s
       if
        local.get $0
        block (result i32)
         local.get $5
         local.tee $7
         i32.const 1
         i32.sub
         local.set $5
         local.get $7
        end
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        local.get $6
        i32.store
       else        
        local.get $6
        call $~lib/rt/purerc/__release
        br $break|1
       end
       local.get $6
       call $~lib/rt/purerc/__release
       br $continue|1
      end
     end
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
    local.get $4
    call $~lib/rt/purerc/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/string/String | null>#sort (; 193 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   call $~lib/rt/purerc/__retain
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
   call $~lib/rt/purerc/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/purerc/__retain
   local.set $5
   block (result i32)
    i32.const 2
    global.set $~lib/argc
    local.get $4
    local.get $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
   end
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
   call $~lib/rt/purerc/__retain
   local.set $6
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $5
   call $~lib/rt/purerc/__release
   local.get $6
   return
  end
  block $~lib/util/sort/SORT<~lib/string/String | null>|inlined.0
   local.get $3
   local.set $6
   local.get $2
   local.set $4
   local.get $1
   local.set $5
   local.get $6
   local.get $4
   local.get $5
   call $~lib/util/sort/insertionSort<~lib/string/String | null>
  end
  local.get $0
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<~lib/string/String | null>#get:length (; 194 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String | null>#__unchecked_get (; 195 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<~lib/string/String | null>#__get (; 196 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 400
   i32.const 456
   i32.const 100
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/string/String | null> (; 197 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  block $break|0
   block
    i32.const 1
    local.set $2
    local.get $0
    call $~lib/array/Array<~lib/string/String | null>#get:length
    local.set $3
   end
   loop $repeat|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
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
    end
    i32.const 0
    i32.gt_s
    if
     local.get $0
     call $~lib/rt/purerc/__release
     local.get $4
     call $~lib/rt/purerc/__release
     local.get $5
     call $~lib/rt/purerc/__release
     i32.const 0
     return
    end
    local.get $4
    call $~lib/rt/purerc/__release
    local.get $5
    call $~lib/rt/purerc/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/purerc/__release
  i32.const 1
 )
 (func $std/array/assertSorted<~lib/string/String | null> (; 198 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
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
   i32.const 232
   i32.const 832
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  call $~lib/rt/purerc/__release
 )
 (func $~lib/string/String#get:length (; 199 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 200 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $2
  call $~lib/rt/purerc/__retain
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
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $5
 )
 (func $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 (; 201 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
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
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
  local.set $3
  local.get $2
  i32.eqz
  if (result i32)
   local.get $3
   i32.eqz
  else   
   i32.const 0
  end
  if
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   i32.const 0
   return
  end
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   i32.const -1
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   i32.const 1
   return
  end
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $2
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  call $~lib/util/string/compareImpl
 )
 (func $std/array/assertSorted<~lib/string/String | null>|trampoline (; 202 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/string/String.__eq (; 203 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   i32.const 1
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
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   i32.const 0
   return
  end
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/string/String.__ne (; 204 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
 )
 (func $std/array/isArraysEqual<~lib/string/String | null> (; 205 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
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
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 0
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    call $~lib/rt/purerc/__release
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
     local.get $0
     call $~lib/rt/purerc/__release
     local.get $1
     call $~lib/rt/purerc/__release
     local.get $4
     call $~lib/rt/purerc/__release
     local.get $5
     call $~lib/rt/purerc/__release
     i32.const 0
     return
    end
    local.get $4
    call $~lib/rt/purerc/__release
    local.get $5
    call $~lib/rt/purerc/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  i32.const 1
 )
 (func $~lib/array/Array.create<~lib/string/String> (; 206 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 24
   i32.const 456
   i32.const 45
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const 28
  i32.const 0
  call $~lib/rt/common/__allocArray
  call $~lib/rt/purerc/__retain
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
 (func $~lib/string/String#charAt (; 207 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 4384
   i32.const 40
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 4272
   call $~lib/rt/purerc/__retain
   return
  end
  i32.const 2
  i32.const 16
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
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/string/String#concat (; 208 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 4432
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $5
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $5
   return
  end
  local.get $4
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $6
  local.get $6
  local.get $0
  local.get $2
  call $~lib/memory/memory.copy
  local.get $6
  local.get $2
  i32.add
  local.get $1
  local.get $3
  call $~lib/memory/memory.copy
  local.get $6
  local.set $5
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $5
 )
 (func $~lib/string/String.__concat (; 209 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.const 4432
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
  local.set $2
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
 )
 (func $std/array/createRandomString (; 210 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  i32.const 4272
  call $~lib/rt/purerc/__retain
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    local.get $0
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    global.get $std/array/charset
    block $~lib/math/NativeMath.floor|inlined.0 (result f64)
     call $~lib/math/NativeMath.random
     global.get $std/array/charset
     call $~lib/string/String#get:length
     f64.convert_i32_s
     f64.mul
     local.set $3
     local.get $3
     f64.floor
    end
    i32.trunc_f64_s
    call $~lib/string/String#charAt
    local.tee $4
    call $~lib/string/String.__concat
    local.tee $5
    local.get $1
    call $~lib/rt/purerc/__retainRelease
    local.set $1
    local.get $4
    call $~lib/rt/purerc/__release
    local.get $5
    call $~lib/rt/purerc/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_set (; 211 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  local.get $3
  local.get $2
  local.get $3
  i32.load
  call $~lib/rt/purerc/__retainRelease
  i32.store
  local.get $2
  call $~lib/rt/purerc/__release
 )
 (func $~lib/array/Array<~lib/string/String>#__set (; 212 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $2
   call $~lib/rt/purerc/__release
   block
    i32.const 4008
    i32.const 456
    i32.const 112
    i32.const 38
    call $~lib/builtins/abort
    unreachable
    unreachable
   end
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
  call $~lib/rt/purerc/__release
 )
 (func $std/array/createRandomStringArray (; 213 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/array/Array.create<~lib/string/String>
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
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
    local.get $3
    call $~lib/rt/purerc/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/util/sort/insertionSort<~lib/string/String> (; 214 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    call $~lib/rt/purerc/__retain
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
      if
       local.get $0
       local.get $5
       i32.const 2
       i32.shl
       i32.add
       i32.load
       call $~lib/rt/purerc/__retain
       local.set $6
       block (result i32)
        i32.const 2
        global.set $~lib/argc
        local.get $4
        local.get $6
        local.get $2
        call_indirect (type $FUNCSIG$iii)
       end
       i32.const 0
       i32.lt_s
       if
        local.get $0
        block (result i32)
         local.get $5
         local.tee $7
         i32.const 1
         i32.sub
         local.set $5
         local.get $7
        end
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        local.get $6
        i32.store
       else        
        local.get $6
        call $~lib/rt/purerc/__release
        br $break|1
       end
       local.get $6
       call $~lib/rt/purerc/__release
       br $continue|1
      end
     end
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
    local.get $4
    call $~lib/rt/purerc/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/string/String>#sort (; 215 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   call $~lib/rt/purerc/__retain
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
   call $~lib/rt/purerc/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/purerc/__retain
   local.set $5
   block (result i32)
    i32.const 2
    global.set $~lib/argc
    local.get $4
    local.get $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
   end
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
   call $~lib/rt/purerc/__retain
   local.set $6
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $5
   call $~lib/rt/purerc/__release
   local.get $6
   return
  end
  block $~lib/util/sort/SORT<~lib/string/String>|inlined.0
   local.get $3
   local.set $6
   local.get $2
   local.set $4
   local.get $1
   local.set $5
   local.get $6
   local.get $4
   local.get $5
   call $~lib/util/sort/insertionSort<~lib/string/String>
  end
  local.get $0
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (; 216 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_get (; 217 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 218 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 4008
   i32.const 456
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
   i32.const 400
   i32.const 456
   i32.const 100
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/string/String> (; 219 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  block $break|0
   block
    i32.const 1
    local.set $2
    local.get $0
    call $~lib/array/Array<~lib/string/String>#get:length
    local.set $3
   end
   loop $repeat|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
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
    end
    i32.const 0
    i32.gt_s
    if
     local.get $0
     call $~lib/rt/purerc/__release
     local.get $4
     call $~lib/rt/purerc/__release
     local.get $5
     call $~lib/rt/purerc/__release
     i32.const 0
     return
    end
    local.get $4
    call $~lib/rt/purerc/__release
    local.get $5
    call $~lib/rt/purerc/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/purerc/__release
  i32.const 1
 )
 (func $std/array/assertSorted<~lib/string/String> (; 220 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
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
   i32.const 232
   i32.const 832
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/purerc/__release
  local.get $0
  call $~lib/rt/purerc/__release
 )
 (func $~lib/util/sort/COMPARATOR<~lib/string/String>~anonymous|0 (; 221 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/purerc/__retain
  drop
  local.get $1
  call $~lib/rt/purerc/__retain
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
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
  local.set $3
  local.get $2
  i32.eqz
  if (result i32)
   local.get $3
   i32.eqz
  else   
   i32.const 0
  end
  if
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   i32.const 0
   return
  end
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   i32.const -1
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   i32.const 1
   return
  end
  local.get $0
  call $~lib/rt/purerc/__release
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $2
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  call $~lib/util/string/compareImpl
 )
 (func $std/array/assertSorted<~lib/string/String>|trampoline (; 222 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/string/String#substring (; 223 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 4384
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
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
   call $~lib/rt/purerc/__retain
   return
  end
  local.get $3
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $10
  local.get $10
  local.get $0
  local.get $8
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $10
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/array/Array<bool>#join_bool (; 224 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   i32.const 4480
   i32.const 4504
   local.get $4
   i32.load8_u
   select
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    i32.const 4480
    i32.const 4504
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
    br $repeat|0
    unreachable
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
  i32.const 4480
  i32.const 4504
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
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<bool>#join (; 225 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<bool>#join_bool
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/util/number/decimalCount32 (; 226 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 227 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 5072
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
 (func $~lib/util/number/itoa32 (; 228 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4632
   call $~lib/rt/purerc/__retain
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
  i32.const 16
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
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/util/number/itoa<i32> (; 229 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/util/number/itoa_stream<i32> (; 230 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  block $~lib/util/number/utoa32_core|inlined.1
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
  end
  local.get $4
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/array/Array<i32>#join_int (; 231 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   call $~lib/rt/purerc/__retain
   local.set $5
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
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
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    br $repeat|0
    unreachable
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
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#join (; 232 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/util/number/utoa32 (; 233 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4632
   call $~lib/rt/purerc/__retain
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $1
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $2
  block $~lib/util/number/utoa32_core|inlined.2
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
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/util/number/itoa<u32> (; 234 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u32> (; 235 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  block $~lib/util/number/utoa32_core|inlined.3
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
  end
  local.get $3
 )
 (func $~lib/array/Array<u32>#join_int (; 236 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   call $~lib/rt/purerc/__retain
   local.set $5
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
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
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    br $repeat|0
    unreachable
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
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<u32>#join (; 237 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/builtins/isFinite<f64> (; 238 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 239 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 240 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/util/number/genDigits (; 241 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  i32.const 6536
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
 (func $~lib/util/number/prettify (; 242 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/util/number/dtoa_core (; 243 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
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
    i32.const 6224
    local.get $13
    call $~lib/array/Array<u64>#__unchecked_get
    global.set $~lib/util/number/_frc_pow
    i32.const 6448
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
 (func $~lib/util/number/dtoa (; 244 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 5392
   call $~lib/rt/purerc/__retain
   return
  end
  local.get $0
  call $~lib/builtins/isFinite<f64>
  i32.eqz
  if
   local.get $0
   call $~lib/builtins/isNaN<f64>
   if
    i32.const 5416
    call $~lib/rt/purerc/__retain
    return
   end
   i32.const 5440
   i32.const 5480
   local.get $0
   f64.const 0
   f64.lt
   select
   call $~lib/rt/purerc/__retain
   return
  end
  i32.const 28
  i32.const 1
  i32.shl
  i32.const 16
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
   call $~lib/rt/purerc/__retain
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
 (func $~lib/util/number/dtoa_stream (; 245 ;) (type $FUNCSIG$iiid) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
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
  call $~lib/builtins/isFinite<f64>
  i32.eqz
  if
   local.get $2
   call $~lib/builtins/isNaN<f64>
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
    i32.const 5440
    i32.const 5480
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
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/util/number/dtoa_core
 )
 (func $~lib/array/Array<f64>#join_flt (; 246 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   call $~lib/rt/purerc/__retain
   local.set $5
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
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
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    br $repeat|0
    unreachable
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
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<f64>#join (; 247 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#join_flt
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/string/String>#join_str (; 248 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   block
    i32.const 0
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $8
   end
   loop $repeat|0
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
    local.get $7
    call $~lib/rt/purerc/__retainRelease
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
  local.set $9
  local.get $6
  local.get $5
  local.get $2
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $10
  block $break|1
   i32.const 0
   local.set $8
   loop $repeat|1
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
    local.get $7
    call $~lib/rt/purerc/__retainRelease
    local.set $7
    local.get $7
    i32.const 0
    i32.ne
    if
     local.get $7
     call $~lib/string/String#get:length
     local.set $3
     local.get $10
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $7
     local.get $3
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $3
     i32.add
     local.set $9
    end
    local.get $5
    if
     local.get $10
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
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $7
  call $~lib/rt/purerc/__retainRelease
  local.set $7
  local.get $7
  i32.const 0
  i32.ne
  if
   local.get $10
   local.get $9
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
  local.get $10
  local.set $8
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $7
  call $~lib/rt/purerc/__release
  local.get $8
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 249 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#join_str
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $std/array/Ref#constructor (; 250 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 32
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/purerc/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array<std/array/Ref | null>#join_ref (; 251 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   i32.const 6720
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $7
  i32.const 0
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    local.get $9
    call $~lib/rt/purerc/__retainRelease
    local.set $9
    local.get $9
    if
     local.get $7
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     i32.const 6720
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
    br $repeat|0
    unreachable
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
   i32.const 6720
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
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $7
  local.set $3
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $9
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<std/array/Ref | null>#join (; 252 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Ref | null>#join_ref
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<i32>#toString (; 253 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<i32>#join
 )
 (func $~lib/util/number/itoa<i8> (; 254 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/util/number/itoa_stream<i8> (; 255 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  block $~lib/util/number/utoa32_core|inlined.6
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
  end
  local.get $4
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/array/Array<i8>#join_int (; 256 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   call $~lib/rt/purerc/__retain
   local.set $5
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
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
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    br $repeat|0
    unreachable
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
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<i8>#join (; 257 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<i8>#toString (; 258 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<i8>#join
 )
 (func $~lib/util/number/itoa<u16> (; 259 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u16> (; 260 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  block $~lib/util/number/utoa32_core|inlined.7
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
  end
  local.get $3
 )
 (func $~lib/array/Array<u16>#join_int (; 261 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   call $~lib/rt/purerc/__retain
   local.set $5
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
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
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    br $repeat|0
    unreachable
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
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<u16>#join (; 262 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<u16>#toString (; 263 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<u16>#join
 )
 (func $~lib/util/number/decimalCount64 (; 264 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 265 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
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
  i32.const 5072
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
 (func $~lib/util/number/utoa64 (; 266 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 4632
   call $~lib/rt/purerc/__retain
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
   i32.const 16
   call $~lib/rt/tlsf/__alloc
   local.set $1
   block $~lib/util/number/utoa32_core|inlined.8
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
   i32.const 16
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
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/util/number/itoa<u64> (; 267 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/utoa64
  return
 )
 (func $~lib/util/number/itoa_stream<u64> (; 268 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
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
   block $~lib/util/number/utoa32_core|inlined.9
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
   end
  else   
   local.get $2
   call $~lib/util/number/decimalCount64
   local.set $3
   block $~lib/util/number/utoa64_core|inlined.1
    local.get $0
    local.set $5
    local.get $2
    local.set $8
    local.get $3
    local.set $4
    local.get $5
    local.get $8
    local.get $4
    call $~lib/util/number/utoa64_lut
   end
  end
  local.get $3
 )
 (func $~lib/array/Array<u64>#join_int (; 269 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   call $~lib/rt/purerc/__retain
   local.set $5
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
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
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    br $repeat|0
    unreachable
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
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<u64>#join (; 270 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<u64>#toString (; 271 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<u64>#join
 )
 (func $~lib/util/number/itoa64 (; 272 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 4632
   call $~lib/rt/purerc/__retain
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
   i32.const 16
   call $~lib/rt/tlsf/__alloc
   local.set $2
   block $~lib/util/number/utoa32_core|inlined.10
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
   i32.const 16
   call $~lib/rt/tlsf/__alloc
   local.set $2
   block $~lib/util/number/utoa64_core|inlined.2
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
  call $~lib/rt/purerc/__retain
 )
 (func $~lib/util/number/itoa<i64> (; 273 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa64
  return
 )
 (func $~lib/util/number/itoa_stream<i64> (; 274 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
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
   block $~lib/util/number/utoa32_core|inlined.11
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
   end
  else   
   local.get $2
   call $~lib/util/number/decimalCount64
   local.get $4
   i32.add
   local.set $3
   block $~lib/util/number/utoa64_core|inlined.3
    local.get $0
    local.set $6
    local.get $2
    local.set $9
    local.get $3
    local.set $5
    local.get $6
    local.get $9
    local.get $5
    call $~lib/util/number/utoa64_lut
   end
  end
  local.get $4
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/array/Array<i64>#join_int (; 275 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   call $~lib/rt/purerc/__retain
   local.set $5
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
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
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    br $repeat|0
    unreachable
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
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<i64>#join (; 276 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<i64>#toString (; 277 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<i64>#join
 )
 (func $~lib/array/Array<~lib/string/String | null>#join_str (; 278 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   block
    i32.const 0
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $8
   end
   loop $repeat|0
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
    local.get $7
    call $~lib/rt/purerc/__retainRelease
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
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
  local.set $9
  local.get $6
  local.get $5
  local.get $2
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $10
  block $break|1
   i32.const 0
   local.set $8
   loop $repeat|1
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
    local.get $7
    call $~lib/rt/purerc/__retainRelease
    local.set $7
    local.get $7
    i32.const 0
    i32.ne
    if
     local.get $7
     call $~lib/string/String#get:length
     local.set $3
     local.get $10
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $7
     local.get $3
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $3
     i32.add
     local.set $9
    end
    local.get $5
    if
     local.get $10
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
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $repeat|1
    unreachable
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $7
  call $~lib/rt/purerc/__retainRelease
  local.set $7
  local.get $7
  i32.const 0
  i32.ne
  if
   local.get $10
   local.get $9
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
  local.get $10
  local.set $8
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $7
  call $~lib/rt/purerc/__release
  local.get $8
 )
 (func $~lib/array/Array<~lib/string/String | null>#join (; 279 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#join_str
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/string/String | null>#toString (; 280 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<~lib/string/String | null>#join
 )
 (func $~lib/array/Array<~lib/string/String>#toString (; 281 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#join_arr (; 282 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  i32.const 4272
  call $~lib/rt/purerc/__retain
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
   local.get $7
   call $~lib/rt/purerc/__retainRelease
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<i32>#join
   else    
    i32.const 4272
    call $~lib/rt/purerc/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    local.get $7
    call $~lib/rt/purerc/__retainRelease
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
     local.get $4
     call $~lib/rt/purerc/__retainRelease
     local.set $4
     local.get $8
     call $~lib/rt/purerc/__release
     local.get $9
     call $~lib/rt/purerc/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.tee $9
     local.get $4
     call $~lib/rt/purerc/__retainRelease
     local.set $4
     local.get $9
     call $~lib/rt/purerc/__release
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
  local.get $6
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $7
  call $~lib/rt/purerc/__retainRelease
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<i32>#join
   local.tee $3
   call $~lib/string/String.__concat
   local.tee $9
   local.get $4
   call $~lib/rt/purerc/__retainRelease
   local.set $4
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
  end
  local.get $4
  local.set $9
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $7
  call $~lib/rt/purerc/__release
  local.get $9
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#join (; 283 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#join_arr
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#toString (; 284 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<~lib/array/Array<i32>>#join
 )
 (func $~lib/util/number/itoa<u8> (; 285 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u8> (; 286 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  block $~lib/util/number/utoa32_core|inlined.12
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
  end
  local.get $3
 )
 (func $~lib/array/Array<u8>#join_int (; 287 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
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
   call $~lib/rt/purerc/__retain
   local.set $5
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
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
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/purerc/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    br $repeat|0
    unreachable
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
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $3
 )
 (func $~lib/array/Array<u8>#join (; 288 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#join_int
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#join_arr (; 289 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  i32.const 4272
  call $~lib/rt/purerc/__retain
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
   local.get $7
   call $~lib/rt/purerc/__retainRelease
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<u8>#join
   else    
    i32.const 4272
    call $~lib/rt/purerc/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    local.get $7
    call $~lib/rt/purerc/__retainRelease
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
     local.get $4
     call $~lib/rt/purerc/__retainRelease
     local.set $4
     local.get $8
     call $~lib/rt/purerc/__release
     local.get $9
     call $~lib/rt/purerc/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.tee $9
     local.get $4
     call $~lib/rt/purerc/__retainRelease
     local.set $4
     local.get $9
     call $~lib/rt/purerc/__release
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
  local.get $6
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $7
  call $~lib/rt/purerc/__retainRelease
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<u8>#join
   local.tee $3
   call $~lib/string/String.__concat
   local.tee $9
   local.get $4
   call $~lib/rt/purerc/__retainRelease
   local.set $4
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
  end
  local.get $4
  local.set $9
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $7
  call $~lib/rt/purerc/__release
  local.get $9
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#join (; 290 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<u8>>#join_arr
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#toString (; 291 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<~lib/array/Array<u8>>#join
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#join_arr (; 292 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  i32.const 4272
  call $~lib/rt/purerc/__retain
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
   local.get $7
   call $~lib/rt/purerc/__retainRelease
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<u32>#join
   else    
    i32.const 4272
    call $~lib/rt/purerc/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    local.get $7
    call $~lib/rt/purerc/__retainRelease
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
     local.get $4
     call $~lib/rt/purerc/__retainRelease
     local.set $4
     local.get $8
     call $~lib/rt/purerc/__release
     local.get $9
     call $~lib/rt/purerc/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.tee $9
     local.get $4
     call $~lib/rt/purerc/__retainRelease
     local.set $4
     local.get $9
     call $~lib/rt/purerc/__release
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
  local.get $6
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $7
  call $~lib/rt/purerc/__retainRelease
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<u32>#join
   local.tee $3
   call $~lib/string/String.__concat
   local.tee $9
   local.get $4
   call $~lib/rt/purerc/__retainRelease
   local.set $4
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
  end
  local.get $4
  local.set $9
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $7
  call $~lib/rt/purerc/__release
  local.get $9
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#join (; 293 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<u32>>#join_arr
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr (; 294 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
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
   i32.const 4272
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  i32.const 4272
  call $~lib/rt/purerc/__retain
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
   local.get $7
   call $~lib/rt/purerc/__retainRelease
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<~lib/array/Array<u32>>#join
   else    
    i32.const 4272
    call $~lib/rt/purerc/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
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
    local.get $7
    call $~lib/rt/purerc/__retainRelease
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
     local.get $4
     call $~lib/rt/purerc/__retainRelease
     local.set $4
     local.get $8
     call $~lib/rt/purerc/__release
     local.get $9
     call $~lib/rt/purerc/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.tee $9
     local.get $4
     call $~lib/rt/purerc/__retainRelease
     local.set $4
     local.get $9
     call $~lib/rt/purerc/__release
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
  local.get $6
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $7
  call $~lib/rt/purerc/__retainRelease
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<~lib/array/Array<u32>>#join
   local.tee $3
   call $~lib/string/String.__concat
   local.tee $9
   local.get $4
   call $~lib/rt/purerc/__retainRelease
   local.set $4
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
  end
  local.get $4
  local.set $9
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $7
  call $~lib/rt/purerc/__release
  local.get $9
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join (; 295 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/purerc/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr
  local.set $2
  local.get $1
  call $~lib/rt/purerc/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#toString (; 296 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join
 )
 (func $start:std/array (; 297 ;) (type $FUNCSIG$v)
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
  block
   i32.const 0
   call $~lib/array/Array.isArray<~lib/array/Array<i32> | null>
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 37
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
    i32.const 232
    i32.const 38
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
    i32.const 232
    i32.const 39
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
    i32.const 232
    i32.const 40
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
    i32.const 232
    i32.const 41
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 272
   call $~lib/array/Array.isArray<~lib/string/String>
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 42
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
  end
  block
   i32.const 5
   i32.const 0
   i32.const 20
   i32.const 296
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $0
   call $~lib/rt/purerc/__retain
   local.set $1
   local.get $1
   i32.const 1
   i32.const 1
   i32.const 3
   call $~lib/array/Array<u8>#fill
   call $~lib/rt/purerc/__release
   local.get $1
   i32.const 5
   i32.const 0
   i32.const 20
   i32.const 376
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $3
   i32.const 0
   call $std/array/isArraysEqual<u8>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 50
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 0
   i32.const 0
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<u8>#fill
   call $~lib/rt/purerc/__release
   local.get $1
   i32.const 5
   i32.const 0
   i32.const 20
   i32.const 504
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $4
   i32.const 0
   call $std/array/isArraysEqual<u8>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 53
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 1
   i32.const 0
   i32.const -3
   call $~lib/array/Array<u8>#fill
   call $~lib/rt/purerc/__release
   local.get $1
   i32.const 5
   i32.const 0
   i32.const 20
   i32.const 528
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $5
   i32.const 0
   call $std/array/isArraysEqual<u8>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 56
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.const -2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<u8>#fill
   call $~lib/rt/purerc/__release
   local.get $1
   i32.const 5
   i32.const 0
   i32.const 20
   i32.const 552
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $6
   i32.const 0
   call $std/array/isArraysEqual<u8>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 59
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~lib/array/Array<u8>#fill
   call $~lib/rt/purerc/__release
   local.get $1
   i32.const 5
   i32.const 0
   i32.const 20
   i32.const 576
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $7
   i32.const 0
   call $std/array/isArraysEqual<u8>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 62
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $5
   call $~lib/rt/purerc/__release
   local.get $6
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
  end
  block
   i32.const 5
   i32.const 2
   i32.const 21
   i32.const 600
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $6
   call $~lib/rt/purerc/__retain
   local.set $7
   local.get $7
   i32.const 1
   i32.const 1
   i32.const 3
   call $~lib/array/Array<u32>#fill
   call $~lib/rt/purerc/__release
   local.get $7
   i32.const 5
   i32.const 2
   i32.const 21
   i32.const 640
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $4
   i32.const 0
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 69
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const 0
   i32.const 0
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<u32>#fill
   call $~lib/rt/purerc/__release
   local.get $7
   i32.const 5
   i32.const 2
   i32.const 21
   i32.const 680
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $3
   i32.const 0
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 72
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const 1
   i32.const 0
   i32.const -3
   call $~lib/array/Array<u32>#fill
   call $~lib/rt/purerc/__release
   local.get $7
   i32.const 5
   i32.const 2
   i32.const 21
   i32.const 720
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $1
   i32.const 0
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 75
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const 2
   i32.const -2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<u32>#fill
   call $~lib/rt/purerc/__release
   local.get $7
   i32.const 5
   i32.const 2
   i32.const 21
   i32.const 760
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $0
   i32.const 0
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 78
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const 0
   i32.const 1
   i32.const 0
   call $~lib/array/Array<u32>#fill
   call $~lib/rt/purerc/__release
   local.get $7
   i32.const 5
   i32.const 2
   i32.const 21
   i32.const 800
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $2
   i32.const 0
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 81
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $2
   call $~lib/rt/purerc/__release
  end
  block
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 87
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
    i32.const 232
    i32.const 88
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
    i32.const 232
    i32.const 92
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
    i32.const 232
    i32.const 93
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
    i32.const 232
    i32.const 94
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
    i32.const 232
    i32.const 98
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
    i32.const 232
    i32.const 99
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
    i32.const 232
    i32.const 100
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
    i32.const 232
    i32.const 104
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
    i32.const 232
    i32.const 105
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
    i32.const 232
    i32.const 106
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
    i32.const 232
    i32.const 110
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
    i32.const 232
    i32.const 111
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
    i32.const 232
    i32.const 112
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
    i32.const 232
    i32.const 113
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
    i32.const 232
    i32.const 117
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
    i32.const 232
    i32.const 118
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
    i32.const 232
    i32.const 119
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
    i32.const 232
    i32.const 120
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
    i32.const 232
    i32.const 121
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
  end
  block
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
    i32.const 232
    i32.const 130
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
    i32.const 232
    i32.const 131
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
    i32.const 232
    i32.const 132
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   i32.const 2
   i32.const 17
   i32.const 888
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $3
   call $~lib/array/Array<i32>#concat
   call $~lib/rt/purerc/__release
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 135
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
    i32.const 232
    i32.const 137
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
    i32.const 232
    i32.const 138
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
    i32.const 232
    i32.const 139
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
   block (result i32)
    local.get $0
    call $~lib/rt/purerc/__release
    global.get $std/array/arr
    local.get $2
    call $~lib/array/Array<i32>#concat
   end
   local.set $0
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 146
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
    i32.const 232
    i32.const 147
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
    i32.const 232
    i32.const 148
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
    i32.const 232
    i32.const 149
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
    i32.const 232
    i32.const 150
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
    i32.const 232
    i32.const 151
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
    i32.const 232
    i32.const 152
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
    i32.const 232
    i32.const 153
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
    i32.const 232
    i32.const 156
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block (result i32)
    local.get $0
    call $~lib/rt/purerc/__release
    global.get $std/array/arr
    i32.const 0
    call $~lib/array/Array<i32>#concat
   end
   local.set $0
   local.get $0
   call $~lib/array/Array<i32>#get:length
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 159
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
    i32.const 232
    i32.const 160
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 2
   i32.const 17
   i32.const 904
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $4
   call $~lib/rt/purerc/__retain
   local.set $1
   local.get $1
   call $~lib/array/Array<i32>#get:length
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 163
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block (result i32)
    local.get $0
    call $~lib/rt/purerc/__release
    local.get $1
    global.get $std/array/arr
    call $~lib/array/Array<i32>#concat
   end
   local.set $0
   local.get $0
   call $~lib/array/Array<i32>#get:length
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 165
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/array/Array<i32>#get:length
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 166
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   call $~lib/rt/purerc/__release
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
  end
  block
   i32.const 0
   local.set $1
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 920
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $3
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const 0
   i32.const 3
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $4
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 960
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $2
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 174
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1000
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $7
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const 1
   i32.const 3
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $0
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1040
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $5
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 176
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1080
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $8
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const 1
   i32.const 2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $6
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1120
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $10
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 178
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1160
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $11
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const 2
   i32.const 2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $9
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1200
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $13
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 180
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1240
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $14
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const 0
   i32.const 3
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.tee $12
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1280
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $16
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 182
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1320
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $17
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const 1
   i32.const 3
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.tee $15
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1360
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $19
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 184
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1400
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $20
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const 1
   i32.const 2
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.tee $18
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1440
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $22
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 186
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1480
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $23
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const 0
   i32.const -2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $21
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1520
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $25
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 188
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1560
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $26
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const 0
   i32.const -2
   i32.const -1
   call $~lib/array/Array<i32>#copyWithin
   local.tee $24
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1600
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $28
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 190
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1640
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $29
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const -4
   i32.const -3
   i32.const -2
   call $~lib/array/Array<i32>#copyWithin
   local.tee $27
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1680
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $31
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 192
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1720
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $32
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const -4
   i32.const -3
   i32.const -1
   call $~lib/array/Array<i32>#copyWithin
   local.tee $30
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1760
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $34
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 194
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1800
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $35
   local.get $1
   call $~lib/rt/purerc/__retainRelease
   local.set $1
   local.get $1
   i32.const -4
   i32.const -3
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $33
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1840
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $37
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 196
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $2
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $5
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $6
   call $~lib/rt/purerc/__release
   local.get $10
   call $~lib/rt/purerc/__release
   local.get $11
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
   local.get $13
   call $~lib/rt/purerc/__release
   local.get $14
   call $~lib/rt/purerc/__release
   local.get $12
   call $~lib/rt/purerc/__release
   local.get $16
   call $~lib/rt/purerc/__release
   local.get $17
   call $~lib/rt/purerc/__release
   local.get $15
   call $~lib/rt/purerc/__release
   local.get $19
   call $~lib/rt/purerc/__release
   local.get $20
   call $~lib/rt/purerc/__release
   local.get $18
   call $~lib/rt/purerc/__release
   local.get $22
   call $~lib/rt/purerc/__release
   local.get $23
   call $~lib/rt/purerc/__release
   local.get $21
   call $~lib/rt/purerc/__release
   local.get $25
   call $~lib/rt/purerc/__release
   local.get $26
   call $~lib/rt/purerc/__release
   local.get $24
   call $~lib/rt/purerc/__release
   local.get $28
   call $~lib/rt/purerc/__release
   local.get $29
   call $~lib/rt/purerc/__release
   local.get $27
   call $~lib/rt/purerc/__release
   local.get $31
   call $~lib/rt/purerc/__release
   local.get $32
   call $~lib/rt/purerc/__release
   local.get $30
   call $~lib/rt/purerc/__release
   local.get $34
   call $~lib/rt/purerc/__release
   local.get $35
   call $~lib/rt/purerc/__release
   local.get $33
   call $~lib/rt/purerc/__release
   local.get $37
   call $~lib/rt/purerc/__release
  end
  block
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
    i32.const 232
    i32.const 204
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
    i32.const 232
    i32.const 205
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
    i32.const 232
    i32.const 206
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
    i32.const 232
    i32.const 207
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
    i32.const 232
    i32.const 208
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
    i32.const 232
    i32.const 209
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
    i32.const 232
    i32.const 213
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
    i32.const 232
    i32.const 214
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
    i32.const 232
    i32.const 215
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
    i32.const 232
    i32.const 216
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
    i32.const 232
    i32.const 217
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
    i32.const 232
    i32.const 218
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
    i32.const 232
    i32.const 219
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
  end
  block
   global.get $std/array/arr
   call $~lib/array/Array<i32>#shift
   global.set $std/array/i
   global.get $std/array/i
   i32.const 41
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 228
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
    i32.const 232
    i32.const 229
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
    i32.const 232
    i32.const 230
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
    i32.const 232
    i32.const 231
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
    i32.const 232
    i32.const 232
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
    i32.const 232
    i32.const 233
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
    i32.const 232
    i32.const 234
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
    i32.const 232
    i32.const 238
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
    i32.const 232
    i32.const 239
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
    i32.const 232
    i32.const 240
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
    i32.const 232
    i32.const 241
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
    i32.const 232
    i32.const 242
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
    i32.const 232
    i32.const 243
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
  end
  block
   global.get $std/array/arr
   call $~lib/array/Array<i32>#reverse
   call $~lib/rt/purerc/__release
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 251
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
    i32.const 232
    i32.const 252
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
    i32.const 232
    i32.const 253
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
    i32.const 232
    i32.const 254
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
    i32.const 232
    i32.const 255
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
  end
  block
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
    i32.const 232
    i32.const 265
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
    i32.const 232
    i32.const 268
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
    i32.const 232
    i32.const 271
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
    i32.const 232
    i32.const 274
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
    i32.const 232
    i32.const 277
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
    i32.const 232
    i32.const 280
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
    i32.const 232
    i32.const 283
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
    i32.const 232
    i32.const 286
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
    i32.const 232
    i32.const 289
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
    i32.const 232
    i32.const 292
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
  end
  block
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
    i32.const 232
    i32.const 299
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
    i32.const 232
    i32.const 302
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
    i32.const 232
    i32.const 305
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
    i32.const 232
    i32.const 308
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
    i32.const 232
    i32.const 311
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
    i32.const 232
    i32.const 314
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
    i32.const 232
    i32.const 317
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
    i32.const 232
    i32.const 320
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
    i32.const 232
    i32.const 323
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
    i32.const 232
    i32.const 326
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 1
   i32.const 1
   call $~lib/array/Array<i32>#splice
   call $~lib/rt/purerc/__release
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 330
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
    i32.const 232
    i32.const 331
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
    i32.const 232
    i32.const 332
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
    i32.const 232
    i32.const 333
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
  end
  block
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1880
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $33
   call $~lib/rt/purerc/__retain
   local.set $37
   local.get $37
   i32.const 0
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#splice
   local.tee $35
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1920
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $30
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 340
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 0
   i32.const 2
   i32.const 17
   i32.const 1960
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $32
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 341
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 1976
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $31
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const 2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#splice
   local.tee $34
   i32.const 3
   i32.const 2
   i32.const 17
   i32.const 2016
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $29
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 344
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 2
   i32.const 2
   i32.const 17
   i32.const 2048
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $28
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 345
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2072
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $24
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const 2
   i32.const 2
   call $~lib/array/Array<i32>#splice
   local.tee $27
   i32.const 2
   i32.const 2
   i32.const 17
   i32.const 2112
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $25
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 348
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 3
   i32.const 2
   i32.const 17
   i32.const 2136
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $21
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 349
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2168
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $23
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const 0
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.tee $26
   i32.const 1
   i32.const 2
   i32.const 17
   i32.const 2208
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $18
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 352
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 4
   i32.const 2
   i32.const 17
   i32.const 2232
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $20
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 353
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2264
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $19
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const -1
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#splice
   local.tee $22
   i32.const 1
   i32.const 2
   i32.const 17
   i32.const 2304
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $17
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 356
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 4
   i32.const 2
   i32.const 17
   i32.const 2328
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $16
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 357
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2360
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $12
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const -2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#splice
   local.tee $15
   i32.const 2
   i32.const 2
   i32.const 17
   i32.const 2400
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $13
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 360
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 3
   i32.const 2
   i32.const 17
   i32.const 2424
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $9
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 361
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2456
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $11
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const -2
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.tee $14
   i32.const 1
   i32.const 2
   i32.const 17
   i32.const 2496
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $6
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 364
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 4
   i32.const 2
   i32.const 17
   i32.const 2520
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $8
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 365
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2552
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $5
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const -7
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.tee $10
   i32.const 1
   i32.const 2
   i32.const 17
   i32.const 2592
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $7
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 368
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 4
   i32.const 2
   i32.const 17
   i32.const 2616
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $2
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 369
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2648
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $4
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const -2
   i32.const -1
   call $~lib/array/Array<i32>#splice
   local.tee $0
   i32.const 0
   i32.const 2
   i32.const 17
   i32.const 2688
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 372
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2704
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $36
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 373
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2744
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $38
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const 1
   i32.const -2
   call $~lib/array/Array<i32>#splice
   local.tee $3
   i32.const 0
   i32.const 2
   i32.const 17
   i32.const 2784
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $40
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 376
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2800
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $41
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 377
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2840
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $42
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const 4
   i32.const 0
   call $~lib/array/Array<i32>#splice
   local.tee $39
   i32.const 0
   i32.const 2
   i32.const 17
   i32.const 2880
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $44
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 380
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2896
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $45
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 381
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2936
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $46
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const 7
   i32.const 0
   call $~lib/array/Array<i32>#splice
   local.tee $43
   i32.const 0
   i32.const 2
   i32.const 17
   i32.const 2976
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $48
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 384
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 2992
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $49
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 385
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 3032
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $50
   local.get $37
   call $~lib/rt/purerc/__retainRelease
   local.set $37
   local.get $37
   i32.const 7
   i32.const 5
   call $~lib/array/Array<i32>#splice
   local.tee $47
   i32.const 0
   i32.const 2
   i32.const 17
   i32.const 3072
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $52
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 388
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 3088
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $53
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 389
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $33
   call $~lib/rt/purerc/__release
   local.get $37
   call $~lib/rt/purerc/__release
   local.get $35
   call $~lib/rt/purerc/__release
   local.get $30
   call $~lib/rt/purerc/__release
   local.get $32
   call $~lib/rt/purerc/__release
   local.get $31
   call $~lib/rt/purerc/__release
   local.get $34
   call $~lib/rt/purerc/__release
   local.get $29
   call $~lib/rt/purerc/__release
   local.get $28
   call $~lib/rt/purerc/__release
   local.get $24
   call $~lib/rt/purerc/__release
   local.get $27
   call $~lib/rt/purerc/__release
   local.get $25
   call $~lib/rt/purerc/__release
   local.get $21
   call $~lib/rt/purerc/__release
   local.get $23
   call $~lib/rt/purerc/__release
   local.get $26
   call $~lib/rt/purerc/__release
   local.get $18
   call $~lib/rt/purerc/__release
   local.get $20
   call $~lib/rt/purerc/__release
   local.get $19
   call $~lib/rt/purerc/__release
   local.get $22
   call $~lib/rt/purerc/__release
   local.get $17
   call $~lib/rt/purerc/__release
   local.get $16
   call $~lib/rt/purerc/__release
   local.get $12
   call $~lib/rt/purerc/__release
   local.get $15
   call $~lib/rt/purerc/__release
   local.get $13
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
   local.get $11
   call $~lib/rt/purerc/__release
   local.get $14
   call $~lib/rt/purerc/__release
   local.get $6
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $5
   call $~lib/rt/purerc/__release
   local.get $10
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
   local.get $2
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $36
   call $~lib/rt/purerc/__release
   local.get $38
   call $~lib/rt/purerc/__release
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $40
   call $~lib/rt/purerc/__release
   local.get $41
   call $~lib/rt/purerc/__release
   local.get $42
   call $~lib/rt/purerc/__release
   local.get $39
   call $~lib/rt/purerc/__release
   local.get $44
   call $~lib/rt/purerc/__release
   local.get $45
   call $~lib/rt/purerc/__release
   local.get $46
   call $~lib/rt/purerc/__release
   local.get $43
   call $~lib/rt/purerc/__release
   local.get $48
   call $~lib/rt/purerc/__release
   local.get $49
   call $~lib/rt/purerc/__release
   local.get $50
   call $~lib/rt/purerc/__release
   local.get $47
   call $~lib/rt/purerc/__release
   local.get $52
   call $~lib/rt/purerc/__release
   local.get $53
   call $~lib/rt/purerc/__release
  end
  block
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
    i32.const 232
    i32.const 402
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
    i32.const 232
    i32.const 405
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
    i32.const 232
    i32.const 408
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
    i32.const 232
    i32.const 416
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
    i32.const 232
    i32.const 417
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
    i32.const 232
    i32.const 419
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
    i32.const 232
    i32.const 432
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
    i32.const 232
    i32.const 433
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
  end
  block
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
    i32.const 232
    i32.const 443
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
    i32.const 232
    i32.const 446
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
    i32.const 232
    i32.const 454
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
    i32.const 232
    i32.const 455
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
    i32.const 232
    i32.const 457
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
    i32.const 232
    i32.const 470
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
    i32.const 232
    i32.const 471
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
  end
  block
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
    i32.const 232
    i32.const 481
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
    i32.const 232
    i32.const 484
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
    i32.const 232
    i32.const 492
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
    i32.const 232
    i32.const 493
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
    i32.const 232
    i32.const 495
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
    i32.const 232
    i32.const 508
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
    i32.const 232
    i32.const 509
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
  end
  block
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
    i32.const 232
    i32.const 520
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
    i32.const 232
    i32.const 529
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
    i32.const 232
    i32.const 530
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
    i32.const 232
    i32.const 533
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
    i32.const 232
    i32.const 547
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
    i32.const 232
    i32.const 548
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
    i32.const 232
    i32.const 573
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block $break|0
    i32.const 0
    local.set $53
    loop $repeat|0
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
     br $repeat|0
     unreachable
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
  end
  block
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
    i32.const 232
    i32.const 587
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
    i32.const 232
    i32.const 588
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 23
   call $~lib/array/Array<i32>#map<i32>
   call $~lib/rt/purerc/__release
   global.get $std/array/i
   i32.const 6
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 597
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
    i32.const 232
    i32.const 598
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 24
   call $~lib/array/Array<i32>#map<i32>
   call $~lib/rt/purerc/__release
   global.get $std/array/i
   i32.const 406
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 605
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
   call $~lib/rt/purerc/__release
   global.get $std/array/i
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 620
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
    i32.const 232
    i32.const 621
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
   call $~lib/rt/purerc/__release
  end
  block
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
    i32.const 232
    i32.const 631
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 27
   call $~lib/array/Array<i32>#filter
   call $~lib/rt/purerc/__release
   global.get $std/array/i
   i32.const 6
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 640
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
    i32.const 232
    i32.const 641
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 28
   call $~lib/array/Array<i32>#filter
   call $~lib/rt/purerc/__release
   global.get $std/array/i
   i32.const 406
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 648
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
   call $~lib/rt/purerc/__release
   global.get $std/array/i
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 663
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
    i32.const 232
    i32.const 664
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
   call $~lib/rt/purerc/__release
  end
  block
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
    i32.const 232
    i32.const 674
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
    i32.const 232
    i32.const 678
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
    i32.const 232
    i32.const 681
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
    i32.const 232
    i32.const 684
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
    i32.const 232
    i32.const 692
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
    i32.const 232
    i32.const 693
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
    i32.const 232
    i32.const 695
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
    i32.const 232
    i32.const 708
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
    i32.const 232
    i32.const 709
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
  end
  block
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
    i32.const 232
    i32.const 719
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
    i32.const 232
    i32.const 723
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
    i32.const 232
    i32.const 726
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
    i32.const 232
    i32.const 729
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
    i32.const 232
    i32.const 737
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
    i32.const 232
    i32.const 738
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
    i32.const 232
    i32.const 740
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
    i32.const 232
    i32.const 753
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
    i32.const 232
    i32.const 754
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
  end
  call $~lib/bindings/Math/random
  i64.reinterpret_f64
  call $~lib/math/NativeMath.seedRandom
  block
   i32.const 8
   i32.const 2
   i32.const 22
   i32.const 3360
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $52
   call $~lib/rt/purerc/__retain
   local.set $53
   i32.const 0
   global.set $~lib/argc
   local.get $53
   i32.const 0
   call $~lib/array/Array<f32>#sort|trampoline
   call $~lib/rt/purerc/__release
   local.get $53
   i32.const 8
   i32.const 2
   i32.const 22
   i32.const 3408
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $50
   i32.const 0
   call $std/array/isArraysEqual<f32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 843
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 8
   i32.const 3
   i32.const 23
   i32.const 3456
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $49
   call $~lib/rt/purerc/__retain
   local.set $47
   i32.const 0
   global.set $~lib/argc
   local.get $47
   i32.const 0
   call $~lib/array/Array<f64>#sort|trampoline
   call $~lib/rt/purerc/__release
   local.get $47
   i32.const 8
   i32.const 3
   i32.const 23
   i32.const 3536
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $43
   i32.const 0
   call $std/array/isArraysEqual<f64>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 847
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 3616
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $46
   call $~lib/rt/purerc/__retain
   local.set $48
   i32.const 0
   global.set $~lib/argc
   local.get $48
   i32.const 0
   call $~lib/array/Array<i32>#sort|trampoline
   call $~lib/rt/purerc/__release
   local.get $48
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 3656
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $44
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 851
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 21
   i32.const 3696
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $39
   call $~lib/rt/purerc/__retain
   local.set $45
   i32.const 0
   global.set $~lib/argc
   local.get $45
   i32.const 0
   call $~lib/array/Array<u32>#sort|trampoline
   call $~lib/rt/purerc/__release
   local.get $45
   i32.const 5
   i32.const 2
   i32.const 21
   i32.const 3736
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $41
   i32.const 0
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 855
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 2
   i32.const 17
   i32.const 3776
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $40
   call $~lib/rt/purerc/__retain
   local.set $42
   i32.const 1
   i32.const 2
   i32.const 17
   i32.const 3792
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $38
   call $~lib/rt/purerc/__retain
   local.set $3
   i32.const 2
   i32.const 2
   i32.const 17
   i32.const 3816
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $1
   call $~lib/rt/purerc/__retain
   local.set $36
   i32.const 4
   i32.const 2
   i32.const 17
   i32.const 3840
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $4
   call $~lib/rt/purerc/__retain
   local.set $0
   i32.const 4
   i32.const 2
   i32.const 17
   i32.const 3872
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $7
   call $~lib/rt/purerc/__retain
   local.set $2
   i32.const 64
   call $std/array/createReverseOrderedArray
   local.set $10
   i32.const 128
   call $std/array/createReverseOrderedArray
   local.set $5
   i32.const 1024
   call $std/array/createReverseOrderedArray
   local.set $8
   i32.const 10000
   call $std/array/createReverseOrderedArray
   local.set $6
   i32.const 512
   call $std/array/createRandomOrderedArray
   local.set $14
   local.get $42
   call $std/array/assertSortedDefault<i32>
   local.get $3
   call $std/array/assertSortedDefault<i32>
   local.get $3
   i32.const 1
   i32.const 2
   i32.const 17
   i32.const 3960
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $9
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 875
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $36
   call $std/array/assertSortedDefault<i32>
   local.get $36
   i32.const 2
   i32.const 2
   i32.const 17
   i32.const 3984
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $13
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 878
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $std/array/assertSortedDefault<i32>
   local.get $0
   local.get $2
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 881
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $10
   call $std/array/assertSortedDefault<i32>
   local.get $10
   local.get $2
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 884
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $5
   call $std/array/assertSortedDefault<i32>
   local.get $5
   local.get $2
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 887
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $8
   call $std/array/assertSortedDefault<i32>
   local.get $8
   local.get $2
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 890
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   call $std/array/assertSortedDefault<i32>
   local.get $6
   local.get $2
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 893
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $14
   call $std/array/assertSortedDefault<i32>
   local.get $52
   call $~lib/rt/purerc/__release
   local.get $53
   call $~lib/rt/purerc/__release
   local.get $50
   call $~lib/rt/purerc/__release
   local.get $49
   call $~lib/rt/purerc/__release
   local.get $47
   call $~lib/rt/purerc/__release
   local.get $43
   call $~lib/rt/purerc/__release
   local.get $46
   call $~lib/rt/purerc/__release
   local.get $48
   call $~lib/rt/purerc/__release
   local.get $44
   call $~lib/rt/purerc/__release
   local.get $39
   call $~lib/rt/purerc/__release
   local.get $45
   call $~lib/rt/purerc/__release
   local.get $41
   call $~lib/rt/purerc/__release
   local.get $40
   call $~lib/rt/purerc/__release
   local.get $42
   call $~lib/rt/purerc/__release
   local.get $38
   call $~lib/rt/purerc/__release
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $36
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
   local.get $2
   call $~lib/rt/purerc/__release
   local.get $10
   call $~lib/rt/purerc/__release
   local.get $5
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $6
   call $~lib/rt/purerc/__release
   local.get $14
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
   local.get $13
   call $~lib/rt/purerc/__release
  end
  block
   i32.const 64
   call $std/array/createRandomOrderedArray
   local.set $13
   i32.const 257
   call $std/array/createRandomOrderedArray
   local.set $9
   local.get $13
   i32.const 49
   call $std/array/assertSorted<i32>
   local.get $13
   i32.const 50
   call $std/array/assertSorted<i32>
   local.get $9
   i32.const 51
   call $std/array/assertSorted<i32>
   local.get $9
   i32.const 52
   call $std/array/assertSorted<i32>
   local.get $13
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
  end
  block
   i32.const 2
   call $std/array/createReverseOrderedNestedArray
   local.set $9
   local.get $9
   i32.const 53
   call $std/array/assertSorted<~lib/array/Array<i32>>
   local.get $9
   call $~lib/rt/purerc/__release
  end
  block
   i32.const 512
   call $std/array/createReverseOrderedElementsArray
   local.set $9
   local.get $9
   i32.const 54
   call $std/array/assertSorted<std/array/Proxy<i32>>
   local.get $9
   call $~lib/rt/purerc/__release
  end
  block
   i32.const 7
   i32.const 2
   i32.const 27
   i32.const 4288
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $13
   call $~lib/rt/purerc/__retain
   local.set $9
   i32.const 7
   i32.const 2
   i32.const 27
   i32.const 4336
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $6
   call $~lib/rt/purerc/__retain
   local.set $14
   i32.const 1
   global.set $~lib/argc
   local.get $9
   i32.const 0
   call $std/array/assertSorted<~lib/string/String | null>|trampoline
   local.get $9
   local.get $14
   i32.const 0
   call $std/array/isArraysEqual<~lib/string/String | null>
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 930
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 400
   call $std/array/createRandomStringArray
   local.set $8
   i32.const 1
   global.set $~lib/argc
   local.get $8
   i32.const 0
   call $std/array/assertSorted<~lib/string/String>|trampoline
   local.get $13
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
   local.get $6
   call $~lib/rt/purerc/__release
   local.get $14
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
  end
  block
   i32.const 2
   i32.const 0
   i32.const 29
   i32.const 4456
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $14
   i32.const 4536
   call $~lib/array/Array<bool>#join
   local.tee $8
   i32.const 4560
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 941
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 17
   i32.const 4600
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $9
   i32.const 4272
   call $~lib/array/Array<i32>#join
   local.tee $6
   i32.const 5104
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 942
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 21
   i32.const 5136
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $5
   i32.const 5168
   call $~lib/array/Array<u32>#join
   local.tee $13
   i32.const 5104
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 943
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 2
   i32.const 17
   i32.const 5192
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $2
   i32.const 5216
   call $~lib/array/Array<i32>#join
   local.tee $10
   i32.const 5240
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 944
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 6
   i32.const 3
   i32.const 23
   i32.const 5304
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $0
   i32.const 5368
   call $~lib/array/Array<f64>#join
   local.tee $7
   i32.const 6568
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 945
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 28
   i32.const 6688
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $36
   i32.const 4272
   call $~lib/array/Array<~lib/string/String>#join
   local.tee $4
   i32.const 6664
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 946
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block (result i32)
    i32.const 3
    i32.const 2
    i32.const 33
    i32.const 0
    call $~lib/rt/common/__allocArray
    local.set $1
    local.get $1
    i32.load offset=4
    local.set $3
    local.get $3
    i32.const 0
    call $std/array/Ref#constructor
    local.tee $38
    call $~lib/rt/purerc/__retain
    i32.store
    local.get $3
    i32.const 0
    call $~lib/rt/purerc/__retain
    i32.store offset=4
    local.get $3
    i32.const 0
    call $std/array/Ref#constructor
    local.tee $42
    call $~lib/rt/purerc/__retain
    i32.store offset=8
    local.get $1
   end
   call $~lib/rt/purerc/__retain
   local.set $3
   local.get $3
   i32.const 4536
   call $~lib/array/Array<std/array/Ref | null>#join
   local.tee $1
   i32.const 6768
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 948
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $14
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
   local.get $6
   call $~lib/rt/purerc/__release
   local.get $5
   call $~lib/rt/purerc/__release
   local.get $13
   call $~lib/rt/purerc/__release
   local.get $2
   call $~lib/rt/purerc/__release
   local.get $10
   call $~lib/rt/purerc/__release
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
   local.get $36
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $38
   call $~lib/rt/purerc/__release
   local.get $42
   call $~lib/rt/purerc/__release
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
  end
  block
   i32.const 0
   i32.const 2
   i32.const 17
   i32.const 6848
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $3
   call $~lib/rt/purerc/__retain
   local.set $1
   i32.const 1
   i32.const 2
   i32.const 17
   i32.const 6864
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $38
   call $~lib/rt/purerc/__retain
   local.set $42
   i32.const 2
   i32.const 2
   i32.const 17
   i32.const 6888
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $36
   call $~lib/rt/purerc/__retain
   local.set $4
   i32.const 4
   i32.const 2
   i32.const 17
   i32.const 6912
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $0
   call $~lib/rt/purerc/__retain
   local.set $7
   local.get $1
   call $~lib/array/Array<i32>#toString
   local.tee $10
   i32.const 4272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 958
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $42
   call $~lib/array/Array<i32>#toString
   local.tee $2
   i32.const 6664
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 959
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   call $~lib/array/Array<i32>#toString
   local.tee $13
   i32.const 6944
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 960
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   call $~lib/array/Array<i32>#toString
   local.tee $5
   i32.const 6968
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 961
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 0
   i32.const 34
   i32.const 7000
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $9
   call $~lib/array/Array<i8>#toString
   local.tee $6
   i32.const 7024
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 963
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 1
   i32.const 35
   i32.const 7056
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $14
   call $~lib/array/Array<u16>#toString
   local.tee $8
   i32.const 7080
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 964
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 3
   i32.const 30
   i32.const 7120
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $41
   call $~lib/array/Array<u64>#toString
   local.tee $40
   i32.const 7160
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 965
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 3
   i32.const 36
   i32.const 7224
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $39
   call $~lib/array/Array<i64>#toString
   local.tee $45
   i32.const 7272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 966
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 7
   i32.const 2
   i32.const 27
   i32.const 7376
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $48
   call $~lib/rt/purerc/__retain
   local.set $44
   local.get $44
   call $~lib/array/Array<~lib/string/String | null>#toString
   local.tee $46
   i32.const 7424
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 970
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 2
   i32.const 28
   i32.const 7520
   call $~lib/rt/common/__allocArray
   call $~lib/rt/purerc/__retain
   local.tee $47
   call $~lib/array/Array<~lib/string/String>#toString
   local.tee $43
   i32.const 7552
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 971
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block (result i32)
    i32.const 2
    i32.const 2
    i32.const 24
    i32.const 0
    call $~lib/rt/common/__allocArray
    local.set $49
    local.get $49
    i32.load offset=4
    local.set $50
    local.get $50
    i32.const 2
    i32.const 2
    i32.const 17
    i32.const 7584
    call $~lib/rt/common/__allocArray
    call $~lib/rt/purerc/__retain
    local.tee $52
    call $~lib/rt/purerc/__retain
    i32.store
    local.get $50
    i32.const 2
    i32.const 2
    i32.const 17
    i32.const 7608
    call $~lib/rt/common/__allocArray
    call $~lib/rt/purerc/__retain
    local.tee $11
    call $~lib/rt/purerc/__retain
    i32.store offset=4
    local.get $49
   end
   call $~lib/rt/purerc/__retain
   local.set $54
   local.get $54
   call $~lib/array/Array<~lib/array/Array<i32>>#toString
   local.tee $50
   i32.const 7632
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 974
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block (result i32)
    i32.const 2
    i32.const 2
    i32.const 37
    i32.const 0
    call $~lib/rt/common/__allocArray
    local.set $49
    local.get $49
    i32.load offset=4
    local.set $53
    local.get $53
    i32.const 2
    i32.const 0
    i32.const 20
    i32.const 7664
    call $~lib/rt/common/__allocArray
    call $~lib/rt/purerc/__retain
    local.tee $12
    call $~lib/rt/purerc/__retain
    i32.store
    local.get $53
    i32.const 2
    i32.const 0
    i32.const 20
    i32.const 7688
    call $~lib/rt/common/__allocArray
    call $~lib/rt/purerc/__retain
    local.tee $16
    call $~lib/rt/purerc/__retain
    i32.store offset=4
    local.get $49
   end
   call $~lib/rt/purerc/__retain
   local.set $55
   local.get $55
   call $~lib/array/Array<~lib/array/Array<u8>>#toString
   local.tee $53
   i32.const 7632
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 977
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block (result i32)
    i32.const 1
    i32.const 2
    i32.const 39
    i32.const 0
    call $~lib/rt/common/__allocArray
    local.set $49
    local.get $49
    i32.load offset=4
    local.set $15
    local.get $15
    block (result i32)
     i32.const 1
     i32.const 2
     i32.const 38
     i32.const 0
     call $~lib/rt/common/__allocArray
     local.set $17
     local.get $17
     i32.load offset=4
     local.set $22
     local.get $22
     i32.const 1
     i32.const 2
     i32.const 21
     i32.const 7712
     call $~lib/rt/common/__allocArray
     call $~lib/rt/purerc/__retain
     local.tee $20
     call $~lib/rt/purerc/__retain
     i32.store
     local.get $17
    end
    call $~lib/rt/purerc/__retain
    i32.store
    local.get $49
   end
   call $~lib/rt/purerc/__retain
   local.set $56
   local.get $56
   call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#toString
   local.tee $15
   i32.const 6664
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 980
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   call $~lib/rt/purerc/__release
   local.get $1
   call $~lib/rt/purerc/__release
   local.get $38
   call $~lib/rt/purerc/__release
   local.get $42
   call $~lib/rt/purerc/__release
   local.get $36
   call $~lib/rt/purerc/__release
   local.get $4
   call $~lib/rt/purerc/__release
   local.get $0
   call $~lib/rt/purerc/__release
   local.get $7
   call $~lib/rt/purerc/__release
   local.get $10
   call $~lib/rt/purerc/__release
   local.get $2
   call $~lib/rt/purerc/__release
   local.get $13
   call $~lib/rt/purerc/__release
   local.get $5
   call $~lib/rt/purerc/__release
   local.get $9
   call $~lib/rt/purerc/__release
   local.get $6
   call $~lib/rt/purerc/__release
   local.get $14
   call $~lib/rt/purerc/__release
   local.get $8
   call $~lib/rt/purerc/__release
   local.get $41
   call $~lib/rt/purerc/__release
   local.get $40
   call $~lib/rt/purerc/__release
   local.get $39
   call $~lib/rt/purerc/__release
   local.get $45
   call $~lib/rt/purerc/__release
   local.get $48
   call $~lib/rt/purerc/__release
   local.get $44
   call $~lib/rt/purerc/__release
   local.get $46
   call $~lib/rt/purerc/__release
   local.get $47
   call $~lib/rt/purerc/__release
   local.get $43
   call $~lib/rt/purerc/__release
   local.get $52
   call $~lib/rt/purerc/__release
   local.get $11
   call $~lib/rt/purerc/__release
   local.get $50
   call $~lib/rt/purerc/__release
   local.get $12
   call $~lib/rt/purerc/__release
   local.get $16
   call $~lib/rt/purerc/__release
   local.get $53
   call $~lib/rt/purerc/__release
   local.get $20
   call $~lib/rt/purerc/__release
   local.get $15
   call $~lib/rt/purerc/__release
  end
  i32.const 0
  global.get $std/array/arr
  call $~lib/rt/purerc/__retainRelease
  global.set $std/array/arr
  local.get $54
  call $~lib/rt/purerc/__release
  local.get $55
  call $~lib/rt/purerc/__release
  local.get $56
  call $~lib/rt/purerc/__release
 )
 (func $std/array/main (; 298 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $~lib/rt/purerc/__release (; 299 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/builtins/HEAP_BASE
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/purerc/decrement
  end
 )
 (func $~lib/rt/purerc/markGray (; 300 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   call $~lib/builtins/__visit_members
  end
 )
 (func $~lib/rt/purerc/scanBlack (; 301 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  call $~lib/builtins/__visit_members
 )
 (func $~lib/rt/purerc/scan (; 302 ;) (type $FUNCSIG$vi) (param $0 i32)
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
    call $~lib/rt/purerc/scanBlack
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
    call $~lib/builtins/__visit_members
   end
  end
 )
 (func $~lib/rt/purerc/collectWhite (; 303 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   call $~lib/builtins/__visit_members
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/purerc/__collect (; 304 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/purerc/ROOTS
  local.set $0
  local.get $0
  local.set $1
  block $break|0
   block
    local.get $1
    local.set $2
    global.get $~lib/rt/purerc/CUR
    local.set $3
   end
   loop $repeat|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $5
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else     
     i32.const 0
    end
    if
     local.get $4
     call $~lib/rt/purerc/markGray
     local.get $1
     local.get $4
     i32.store
     local.get $1
     i32.const 4
     i32.add
     local.set $1
    else     
     local.get $5
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.eq
     if (result i32)
      local.get $5
      i32.const 268435455
      i32.and
      i32.eqz
     else      
      i32.const 0
     end
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      call $~lib/rt/tlsf/freeBlock
     else      
      local.get $4
      local.get $5
      i32.const -2147483648
      i32.const -1
      i32.xor
      i32.and
      i32.store offset=4
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
  global.set $~lib/rt/purerc/CUR
  block $break|1
   local.get $0
   local.set $5
   loop $repeat|1
    local.get $5
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $5
    i32.load
    call $~lib/rt/purerc/scan
    local.get $5
    i32.const 4
    i32.add
    local.set $5
    br $repeat|1
    unreachable
   end
   unreachable
  end
  block $break|2
   local.get $0
   local.set $5
   loop $repeat|2
    local.get $5
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|2
    local.get $5
    i32.load
    local.set $4
    local.get $4
    local.get $4
    i32.load offset=4
    i32.const -2147483648
    i32.const -1
    i32.xor
    i32.and
    i32.store offset=4
    local.get $4
    call $~lib/rt/purerc/collectWhite
    local.get $5
    i32.const 4
    i32.add
    local.set $5
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  global.set $~lib/rt/purerc/CUR
 )
 (func $~lib/rt/common/__instanceof (; 305 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=8
  local.set $2
  global.get $~lib/builtins/RTTI_BASE
  local.set $3
  local.get $2
  if (result i32)
   local.get $2
   local.get $3
   i32.load
   i32.le_u
  else   
   i32.const 0
  end
  if
   loop $continue|0
    local.get $2
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $3
    local.get $2
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $2
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $start (; 306 ;) (type $FUNCSIG$v)
  call $start:std/array
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 307 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u8>#__visit_impl (; 308 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u32>#__visit_impl (; 309 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<f32>#__visit_impl (; 310 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<f64>#__visit_impl (; 311 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/purerc/__visit (; 312 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/builtins/HEAP_BASE
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
         call $~lib/rt/purerc/decrement
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
         i32.const 320
         i32.const 74
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
        call $~lib/rt/purerc/markGray
        br $break|0
        unreachable
       end
       unreachable
      end
      block
       local.get $2
       call $~lib/rt/purerc/scan
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
       i32.const 320
       i32.const 85
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
       call $~lib/rt/purerc/scanBlack
      end
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     local.get $2
     call $~lib/rt/purerc/collectWhite
     br $break|0
     unreachable
    end
    unreachable
   end
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 320
    i32.const 96
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__visit_impl (; 313 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
      call $~lib/rt/purerc/__visit
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
 (func $~lib/array/Array<std/array/Proxy<i32>>#__visit_impl (; 314 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
      call $~lib/rt/purerc/__visit
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
 (func $~lib/array/Array<~lib/string/String | null>#__visit_impl (; 315 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
      call $~lib/rt/purerc/__visit
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
 (func $~lib/array/Array<~lib/string/String>#__visit_impl (; 316 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
      call $~lib/rt/purerc/__visit
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
 (func $~lib/array/Array<bool>#__visit_impl (; 317 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u64>#__visit_impl (; 318 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<i16>#__visit_impl (; 319 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<std/array/Ref | null>#__visit_impl (; 320 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
      call $~lib/rt/purerc/__visit
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
 (func $~lib/array/Array<i8>#__visit_impl (; 321 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u16>#__visit_impl (; 322 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<i64>#__visit_impl (; 323 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#__visit_impl (; 324 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
      call $~lib/rt/purerc/__visit
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
 (func $~lib/array/Array<~lib/array/Array<u32>>#__visit_impl (; 325 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
      call $~lib/rt/purerc/__visit
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
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#__visit_impl (; 326 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
      call $~lib/rt/purerc/__visit
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
 (func $~lib/builtins/__visit_members (; 327 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$16$break
   block
   end
   block $switch$1$leave
    block $switch$1$case$41
     block $switch$1$case$40
      block $switch$1$case$39
       block $switch$1$case$38
        block $switch$1$case$37
         block $switch$1$case$36
          block $switch$1$case$35
           block $switch$1$case$33
            block $switch$1$case$32
             block $switch$1$case$31
              block $switch$1$case$30
               block $switch$1$case$29
                block $switch$1$case$28
                 block $switch$1$case$26
                  block $switch$1$case$25
                   block $switch$1$case$24
                    block $switch$1$case$23
                     block $switch$1$case$22
                      block $switch$1$case$19
                       block $switch$1$case$16
                        block $switch$1$case$3
                         block $switch$1$default
                          local.get $0
                          i32.const 8
                          i32.sub
                          i32.load
                          br_table $switch$1$default $switch$1$case$3 $switch$1$case$3 $switch$1$case$3 $switch$1$case$3 $switch$1$case$3 $switch$1$case$3 $switch$1$case$3 $switch$1$case$3 $switch$1$case$3 $switch$1$case$3 $switch$1$case$3 $switch$1$case$3 $switch$1$case$3 $switch$1$case$16 $switch$1$case$3 $switch$1$case$3 $switch$1$case$19 $switch$1$case$3 $switch$1$case$16 $switch$1$case$22 $switch$1$case$23 $switch$1$case$24 $switch$1$case$25 $switch$1$case$26 $switch$1$case$3 $switch$1$case$28 $switch$1$case$29 $switch$1$case$30 $switch$1$case$31 $switch$1$case$32 $switch$1$case$33 $switch$1$case$3 $switch$1$case$35 $switch$1$case$36 $switch$1$case$37 $switch$1$case$38 $switch$1$case$39 $switch$1$case$40 $switch$1$case$41 $switch$1$default
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
                        br $block$16$break
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
                         br $block$16$break
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
                       call $~lib/array/Array<u8>#__visit_impl
                       block
                        br $block$16$break
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
                       br $block$16$break
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
                     call $~lib/array/Array<f32>#__visit_impl
                     block
                      br $block$16$break
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
                    call $~lib/array/Array<f64>#__visit_impl
                    block
                     br $block$16$break
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
                   call $~lib/array/Array<~lib/array/Array<i32>>#__visit_impl
                   block
                    br $block$16$break
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
                  call $~lib/array/Array<std/array/Proxy<i32>>#__visit_impl
                  block
                   br $block$16$break
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
                 call $~lib/array/Array<~lib/string/String | null>#__visit_impl
                 block
                  br $block$16$break
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
                call $~lib/array/Array<~lib/string/String>#__visit_impl
                block
                 br $block$16$break
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
               call $~lib/array/Array<bool>#__visit_impl
               block
                br $block$16$break
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
               br $block$16$break
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
              br $block$16$break
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
            call $~lib/array/Array<std/array/Ref | null>#__visit_impl
            block
             br $block$16$break
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
           call $~lib/array/Array<i8>#__visit_impl
           block
            br $block$16$break
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
          call $~lib/array/Array<u16>#__visit_impl
          block
           br $block$16$break
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
         call $~lib/array/Array<i64>#__visit_impl
         block
          br $block$16$break
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
        call $~lib/array/Array<~lib/array/Array<u8>>#__visit_impl
        block
         br $block$16$break
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
       call $~lib/array/Array<~lib/array/Array<u32>>#__visit_impl
       block
        br $block$16$break
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
      call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#__visit_impl
      block
       br $block$16$break
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
  end
  block
   block
    local.get $0
    i32.load
    local.tee $2
    if
     local.get $2
     local.get $1
     call $~lib/rt/purerc/__visit
    end
    return
    unreachable
   end
   unreachable
   unreachable
  end
  unreachable
 )
 (func $null (; 328 ;) (type $FUNCSIG$v)
 )
)
