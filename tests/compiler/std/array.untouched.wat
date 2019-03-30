(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
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
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\1e\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 56) "\01\00\00\00&\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 112) "\01\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00a\00b\00c\00")
 (data (i32.const 136) "\01\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 176) "\02\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05")
 (data (i32.const 200) "\08\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\c0\00\00\00\c0\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 232) "\02\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\01\01\04\05")
 (data (i32.const 256) "\01\00\00\00\1a\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 304) "\02\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 328) "\02\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\01\00\00\00")
 (data (i32.const 352) "\02\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\01\00\02\02")
 (data (i32.const 376) "\02\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\01\00\02\02")
 (data (i32.const 400) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 440) "\n\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\a0\01\00\00\a0\01\00\00\14\00\00\00\05\00\00\00")
 (data (i32.const 472) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 512) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 552) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 592) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 632) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 672) "\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 688) "\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 704) "\04\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\c0\02\00\00\c0\02\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 736) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 776) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 816) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 856) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 896) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 936) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 976) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1016) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1056) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1096) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1136) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1176) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1216) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1256) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1296) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1336) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1376) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1416) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1456) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1496) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1536) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1576) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1616) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1656) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 1696) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1736) "\04\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\b0\06\00\00\b0\06\00\00\14\00\00\00\05\00\00\00")
 (data (i32.const 1768) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1808) "\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1824) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1864) "\02\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1896) "\02\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 1920) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1960) "\02\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 1984) "\02\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\05\00\00\00")
 (data (i32.const 2016) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2056) "\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00")
 (data (i32.const 2080) "\02\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2112) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2152) "\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00")
 (data (i32.const 2176) "\02\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 2208) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2248) "\02\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2272) "\02\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 2304) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2344) "\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00")
 (data (i32.const 2368) "\02\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05\00\00\00")
 (data (i32.const 2400) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2440) "\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00")
 (data (i32.const 2464) "\02\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2496) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2536) "\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2552) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2592) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2632) "\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2648) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2688) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2728) "\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2744) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2784) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2824) "\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2840) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2880) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2920) "\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2936) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2976) "\01\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 3016) "\01\00\00\00\ac\00\00\00\00\00\00\00\00\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?\00")
 (data (i32.const 3208) "\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 3256) "\"\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\98\0c\00\00\98\0c\00\00 \00\00\00\08\00\00\00")
 (data (i32.const 3288) "\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 3336) "\02\00\00\00@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 3416) ":\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\18\0d\00\00\18\0d\00\00@\00\00\00\08\00\00\00")
 (data (i32.const 3448) "\02\00\00\00@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 3528) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02\00\00\00")
 (data (i32.const 3568) "\04\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\d8\0d\00\00\d8\0d\00\00\14\00\00\00\05\00\00\00")
 (data (i32.const 3600) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 3640) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02\00\00\00")
 (data (i32.const 3680) "\n\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00H\0e\00\00H\0e\00\00\14\00\00\00\05\00\00\00")
 (data (i32.const 3712) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 3752) "\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3768) "\04\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\b8\0e\00\00\b8\0e\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3800) "\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00")
 (data (i32.const 3824) "\04\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\e8\0e\00\00\e8\0e\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 3856) "\02\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 3880) "\04\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00 \0f\00\00 \0f\00\00\08\00\00\00\02\00\00\00")
 (data (i32.const 3912) "\02\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 3944) "\04\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00X\0f\00\00X\0f\00\00\10\00\00\00\04\00\00\00")
 (data (i32.const 3976) "\02\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 4008) "\04\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\98\0f\00\00\98\0f\00\00\10\00\00\00\04\00\00\00")
 (data (i32.const 4040) "\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00")
 (data (i32.const 4064) "\02\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 4088) "\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00a\00")
 (data (i32.const 4112) "\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00b\00")
 (data (i32.const 4136) "\01\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00a\00b\00")
 (data (i32.const 4160) "\01\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00b\00a\00")
 (data (i32.const 4184) "\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4200) "\02\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00\08\10\00\00 \10\00\00\08\10\00\008\10\00\00P\10\00\00h\10\00\00\00\00\00\00")
 (data (i32.const 4248) "K\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00x\10\00\00x\10\00\00\1c\00\00\00\07\00\00\00")
 (data (i32.const 4280) "\02\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00h\10\00\00\08\10\00\00\08\10\00\008\10\00\00 \10\00\00P\10\00\00\00\00\00\00")
 (data (i32.const 4328) "K\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\c8\10\00\00\c8\10\00\00\1c\00\00\00\07\00\00\00")
 (data (i32.const 4360) "\01\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 4408) "\01\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00n\00u\00l\00l\00")
 (data (i32.const 4432) "\02\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\01\00")
 (data (i32.const 4456) "\01\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00t\00r\00u\00e\00")
 (data (i32.const 4480) "\01\00\00\00\n\00\00\00\00\00\00\00\00\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 4512) "\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00,\00")
 (data (i32.const 4536) "\02\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\01\00")
 (data (i32.const 4560) "\01\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e\00")
 (data (i32.const 4600) "\02\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 4632) "\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\000\00")
 (data (i32.const 4656) "\02\00\00\00\90\01\00\00\00\00\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 5072) "\n\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00@\12\00\00@\12\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 5104) "\02\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 5136) "\01\00\00\00\n\00\00\00\00\00\00\00\00\00\00\001\00-\002\00-\003\00")
 (data (i32.const 5168) "\02\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 5200) "\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00-\00")
 (data (i32.const 5224) "\02\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 5256) "\02\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 5280) "\01\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00_\00_\00")
 (data (i32.const 5304) "\02\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 5328) "\01\00\00\000\00\00\00\00\00\00\00\00\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 5392) "\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 5456) "\01\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00,\00 \00")
 (data (i32.const 5480) "\01\00\00\00\06\00\00\00\00\00\00\00\00\00\00\000\00.\000\00")
 (data (i32.const 5504) "\01\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00N\00a\00N\00")
 (data (i32.const 5528) "\01\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 5568) "\01\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 5600) "\02\00\00\00\b8\02\00\00\00\00\00\00\00\00\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 6312) "S\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\f0\15\00\00\f0\15\00\00\b8\02\00\00W\00\00\00")
 (data (i32.const 6344) "\02\00\00\00\ae\00\00\00\00\00\00\00\00\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 6536) "U\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\d8\18\00\00\d8\18\00\00\ae\00\00\00W\00\00\00")
 (data (i32.const 6568) "\02\00\00\00(\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 6624) "\n\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\b8\19\00\00\b8\19\00\00(\00\00\00\n\00\00\00")
 (data (i32.const 6656) "\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 6720) "\01\00\00\00P\00\00\00\00\00\00\00\00\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 6816) "\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\001\00")
 (data (i32.const 6840) "\02\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00h\10\00\00\b0\1a\00\00\00\00\00\00")
 (data (i32.const 6872) "\02\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00h\10\00\00\b0\1a\00\00\00\00\00\00")
 (data (i32.const 6904) "\01\00\00\00\1e\00\00\00\00\00\00\00\00\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 6952) "\01\00\00\00@\00\00\00\00\00\00\00\00\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 7032) "\01\00\00\00\06\00\00\00\00\00\00\00\00\00\00\001\00,\002\00")
 (data (i32.const 7056) "\01\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\000\00,\001\00,\002\00,\003\00")
 (data (i32.const 7088) "\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\01\ff\00")
 (data (i32.const 7112) "\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\01\ff\00")
 (data (i32.const 7136) "\01\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\001\00,\00-\001\00,\000\00")
 (data (i32.const 7168) "\02\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\01\00\ff\ff\00\00")
 (data (i32.const 7192) "\02\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\01\00\ff\ff\00\00")
 (data (i32.const 7216) "\01\00\00\00\12\00\00\00\00\00\00\00\00\00\00\001\00,\006\005\005\003\005\00,\000\00")
 (data (i32.const 7256) "\02\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 7296) "\02\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 7336) "\01\00\00\000\00\00\00\00\00\00\00\00\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000\00")
 (data (i32.const 7400) "\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7448) "\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7496) "\01\00\00\00T\00\00\00\00\00\00\00\00\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 7600) "\01\00\00\00\1a\00\00\00\00\00\00\00\00\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,\00")
 (data (i32.const 7648) "\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\002\00")
 (data (i32.const 7672) "\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\004\00")
 (data (i32.const 7696) "\02\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\b0\1a\00\00\f0\1d\00\00\00\00\00\00\08\1e\00\00")
 (data (i32.const 7728) "\02\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\b0\1a\00\00\f0\1d\00\00\00\00\00\00\08\1e\00\00")
 (data (i32.const 7760) "\01\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\001\00,\002\00,\00,\004\00")
 (data (i32.const 7792) "\02\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 7816) "\02\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 7840) "\02\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 7864) "\01\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\001\00,\002\00,\003\00,\004\00")
 (data (i32.const 7896) "\02\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\01\02")
 (data (i32.const 7920) "\02\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\01\02")
 (data (i32.const 7944) "\02\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\03\04")
 (data (i32.const 7968) "\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00")
 (data (i32.const 7992) "\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00")
 (data (i32.const 8016) "\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00")
 (data (i32.const 8040) "\02\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00")
 (table $0 102 funcref)
 (elem (i32.const 0) $null $~lib/string/String~iterate $~lib/arraybuffer/ArrayBuffer~iterate $~lib/runtime/ArrayBufferView~iterate $~lib/array/Array<i32>~iterate $~lib/array/Array<i32>~iterate $std/array/P~iterate $~lib/typedarray/Uint8Array~iterate $~lib/array/Array<u8>~iterate $~lib/array/Array<u8>~iterate $~lib/array/Array<u32>~iterate $~lib/array/Array<u32>~iterate $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|4 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|18 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $~lib/array/Array<f32>~iterate $~lib/array/Array<f32>~iterate $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|30 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|34 $start:std/array~anonymous|35 $start:std/array~anonymous|36 $start:std/array~anonymous|37 $start:std/array~anonymous|38 $start:std/array~anonymous|39 $start:std/array~anonymous|40 $start:std/array~anonymous|41 $start:std/array~anonymous|42 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/array/Array<f64>~iterate $~lib/array/Array<f64>~iterate $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|1 $start:std/array~anonymous|43 $start:std/array~anonymous|44 $start:std/array~anonymous|45 $start:std/array~anonymous|46 $~lib/array/Array<~lib/array/Array<i32>>~iterate $~lib/array/Array<~lib/array/Array<i32>>~iterate $start:std/array~anonymous|47 $~lib/array/Array<std/array/Proxy<i32>>~iterate $std/array/Proxy<i32>~iterate $~lib/array/Array<std/array/Proxy<i32>>~iterate $start:std/array~anonymous|48 $~lib/array/Array<~lib/string/String | null>~iterate $~lib/array/Array<~lib/string/String | null>~iterate $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 $~lib/array/Array<~lib/string/String>~iterate $~lib/array/Array<~lib/string/String>~iterate $~lib/util/sort/COMPARATOR<~lib/string/String>~anonymous|0 $~lib/array/Array<bool>~iterate $~lib/array/Array<bool>~iterate $~lib/array/Array<u64>~iterate $~lib/array/Array<u64>~iterate $~lib/array/Array<i16>~iterate $~lib/array/Array<i16>~iterate $std/array/Ref~iterate $~lib/array/Array<std/array/Ref | null>~iterate $~lib/array/Array<std/array/Ref | null>~iterate $~lib/array/Array<i8>~iterate $~lib/array/Array<i8>~iterate $~lib/array/Array<u16>~iterate $~lib/array/Array<u16>~iterate $~lib/array/Array<i64>~iterate $~lib/array/Array<i64>~iterate $~lib/array/Array<~lib/array/Array<u8>>~iterate $~lib/array/Array<~lib/array/Array<u8>>~iterate $~lib/array/Array<~lib/array/Array<u32>>~iterate $~lib/array/Array<~lib/array/Array<u32>>~iterate $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>~iterate $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>~iterate)
 (global $~lib/runtime/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/runtime/MAX_BYTELENGTH i32 (i32.const 1073741808))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/num (mut i32) (i32.const 1))
 (global $std/array/Null (mut i32) (i32.const 0))
 (global $std/array/str (mut i32) (i32.const 128))
 (global $std/array/arr8 (mut i32) (i32.const 216))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/array/arr32 (mut i32) (i32.const 456))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $std/array/other (mut i32) (i32.const 0))
 (global $std/array/out (mut i32) (i32.const 0))
 (global $std/array/source (mut i32) (i32.const 720))
 (global $std/array/cwArr (mut i32) (i32.const 0))
 (global $std/array/includes (mut i32) (i32.const 0))
 (global $std/array/sarr (mut i32) (i32.const 1752))
 (global $std/array/every (mut i32) (i32.const 0))
 (global $std/array/some (mut i32) (i32.const 0))
 (global $std/array/newArr (mut i32) (i32.const 0))
 (global $std/array/filteredArr (mut i32) (i32.const 0))
 (global $std/array/boolVal (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $std/array/charset i32 (i32.const 3032))
 (global $std/array/f32ArrayTyped (mut i32) (i32.const 3272))
 (global $std/array/f64ArrayTyped (mut i32) (i32.const 3432))
 (global $std/array/i32ArrayTyped (mut i32) (i32.const 3584))
 (global $std/array/u32ArrayTyped (mut i32) (i32.const 3696))
 (global $std/array/reversed0 (mut i32) (i32.const 3784))
 (global $std/array/reversed1 (mut i32) (i32.const 3840))
 (global $std/array/reversed2 (mut i32) (i32.const 3896))
 (global $std/array/reversed4 (mut i32) (i32.const 3960))
 (global $std/array/expected4 (mut i32) (i32.const 4024))
 (global $std/array/reversed64 (mut i32) (i32.const 0))
 (global $std/array/reversed128 (mut i32) (i32.const 0))
 (global $std/array/reversed1024 (mut i32) (i32.const 0))
 (global $std/array/reversed10000 (mut i32) (i32.const 0))
 (global $std/array/randomized512 (mut i32) (i32.const 0))
 (global $std/array/randomized64 (mut i32) (i32.const 0))
 (global $std/array/randomized257 (mut i32) (i32.const 0))
 (global $std/array/reversedNested512 (mut i32) (i32.const 0))
 (global $std/array/reversedElements512 (mut i32) (i32.const 0))
 (global $std/array/randomStringsActual (mut i32) (i32.const 4264))
 (global $std/array/randomStringsExpected (mut i32) (i32.const 4344))
 (global $std/array/randomStrings400 (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/builtins/i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $std/array/refArr (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $std/array/subarr32 (mut i32) (i32.const 0))
 (global $std/array/subarr8 (mut i32) (i32.const 0))
 (global $std/array/subarrU32 (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8060))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/array/main))
 (export ".capabilities" (global $~lib/capabilities))
 (func $~lib/string/String~iterate (; 2 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
 )
 (func $~lib/runtime/ADJUSTOBLOCK (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__mem_allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__mem_allocate
  return
 )
 (func $~lib/runtime/allocate (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/runtime/ADJUSTOBLOCK
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/memory/memory.fill (; 7 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 1
   i32.add
   local.get $1
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 2
   i32.sub
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 3
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 3
   i32.add
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 4
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
   i32.sub
   local.set $2
   local.get $2
   i32.const -4
   i32.and
   local.set $2
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $1
   i32.const 255
   i32.and
   i32.mul
   local.set $4
   local.get $0
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store
   local.get $2
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 4
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 8
   i32.add
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 12
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 8
   i32.sub
   local.get $4
   i32.store
   local.get $2
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 12
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 16
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 20
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 24
   i32.add
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 28
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 24
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 20
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 16
   i32.sub
   local.get $4
   i32.store
   i32.const 24
   local.get $0
   i32.const 4
   i32.and
   i32.add
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
   i32.sub
   local.set $2
   local.get $4
   i64.extend_i32_u
   local.get $4
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $6
   block $break|0
    loop $continue|0
     local.get $2
     i32.const 32
     i32.ge_u
     if
      block
       local.get $0
       local.get $6
       i64.store
       local.get $0
       i32.const 8
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 16
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 24
       i32.add
       local.get $6
       i64.store
       local.get $2
       i32.const 32
       i32.sub
       local.set $2
       local.get $0
       i32.const 32
       i32.add
       local.set $0
      end
      br $continue|0
     end
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer~iterate (; 8 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
 )
 (func $~lib/collector/dummy/__ref_register (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/runtime/register (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 149
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load
  global.get $~lib/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 151
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $~lib/collector/dummy/__ref_register
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  global.get $~lib/runtime/MAX_BYTELENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 72
   i32.const 25
   i32.const 43
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/ALLOCATE|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/runtime/allocate
  end
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  block $~lib/runtime/REGISTER<~lib/arraybuffer/ArrayBuffer>|inlined.0 (result i32)
   local.get $3
   local.set $2
   local.get $2
   i32.const 2
   call $~lib/runtime/register
  end
 )
 (func $~lib/runtime/ArrayBufferView~iterate (; 12 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call_indirect (type $FUNCSIG$vi)
   local.get $2
   local.get $1
   call $~lib/arraybuffer/ArrayBuffer~iterate
  end
 )
 (func $~lib/collector/dummy/__ref_link (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/collector/dummy/__ref_unlink (; 14 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/runtime/ArrayBufferView#constructor (; 15 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  global.get $~lib/runtime/MAX_BYTELENGTH
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 24
   i32.const 232
   i32.const 57
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/runtime/allocate
    i32.const 3
    call $~lib/runtime/register
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
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if (result i32)
   local.get $6
   if
    local.get $6
    local.get $4
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $5
   local.get $4
   call $~lib/collector/dummy/__ref_link
   local.get $5
  else   
   local.get $5
  end
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<i32>~iterate (; 16 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/array/Array<i32>#constructor (; 17 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   call $~lib/runtime/allocate
   i32.const 4
   call $~lib/runtime/register
  end
  local.get $1
  i32.const 2
  call $~lib/runtime/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array.isArray<~lib/array/Array<i32> | null> (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 1
  end
 )
 (func $~lib/array/Array.isArray<~lib/array/Array<i32>> (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 1
  end
 )
 (func $std/array/P~iterate (; 20 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
 )
 (func $std/array/P#constructor (; 21 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/runtime/allocate
   i32.const 6
   call $~lib/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array.isArray<std/array/P> (; 22 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/typedarray/Uint8Array~iterate (; 23 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/runtime/ArrayBufferView~iterate
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   call $~lib/runtime/allocate
   i32.const 7
   call $~lib/runtime/register
  end
  local.get $1
  i32.const 0
  call $~lib/runtime/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/array/Array.isArray<~lib/typedarray/Uint8Array> (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array.isArray<i32> (; 26 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array.isArray<~lib/string/String> (; 27 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array<u8>~iterate (; 28 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/array/Array<u8>#fill (; 29 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 )
 (func $~lib/util/memory/memcpy (; 30 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
     local.get $2
    end
    if
     block
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
     end
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
      block
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
      end
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
          block
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
          end
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
         block
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
         end
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
        block
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
        end
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
 (func $~lib/memory/memory.copy (; 31 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $1
   local.get $2
   i32.add
   local.get $0
   i32.le_u
   local.tee $5
   if (result i32)
    local.get $5
   else    
    local.get $0
    local.get $2
    i32.add
    local.get $1
    i32.le_u
   end
   if
    local.get $0
    local.get $1
    local.get $2
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $0
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $2
         i32.const 1
         i32.sub
         local.set $2
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
        br $continue|0
       end
      end
     end
     block $break|1
      loop $continue|1
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $0
         local.get $1
         i64.load
         i64.store
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         i32.const 8
         i32.add
         local.set $0
         local.get $1
         i32.const 8
         i32.add
         local.set $1
        end
        br $continue|1
       end
      end
     end
    end
    block $break|2
     loop $continue|2
      local.get $2
      if
       block
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
       end
       br $continue|2
      end
     end
    end
   else    
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $0
       local.get $2
       i32.add
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $0
         local.get $2
         i32.const 1
         i32.sub
         local.tee $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i32.load8_u
         i32.store8
        end
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         local.get $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i64.load
         i64.store
        end
        br $continue|4
       end
      end
     end
    end
    block $break|5
     loop $continue|5
      local.get $2
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.add
       local.get $1
       local.get $2
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
 (func $~lib/runtime/makeArray (; 32 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 16
  call $~lib/runtime/allocate
  local.get $1
  call $~lib/runtime/register
  local.set $4
  local.get $0
  local.get $2
  i32.shl
  local.set $5
  local.get $0
  local.get $2
  i32.shl
  call $~lib/runtime/allocate
  i32.const 2
  call $~lib/runtime/register
  local.set $6
  local.get $4
  local.tee $7
  local.get $6
  local.tee $8
  local.get $7
  i32.load
  local.tee $9
  i32.ne
  if (result i32)
   local.get $9
   if
    local.get $9
    local.get $7
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $8
   local.get $7
   call $~lib/collector/dummy/__ref_link
   local.get $8
  else   
   local.get $8
  end
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
 (func $~lib/array/Array<u8>#get:length (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#__unchecked_get (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (; 35 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__unchecked_get
 )
 (func $std/array/isArraysEqual<u8> (; 36 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
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
  i32.const 1
 )
 (func $~lib/array/Array<u32>~iterate (; 37 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/array/Array<u32>#fill (; 38 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 )
 (func $~lib/array/Array<u32>#get:length (; 39 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__unchecked_get (; 40 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__unchecked_get
 )
 (func $std/array/isArraysEqual<u32> (; 42 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
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
  i32.const 1
 )
 (func $~lib/array/Array<i32>#get:length (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
 )
 (func $std/array/internalCapacity<i32> (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.set $1
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 2
  i32.shr_s
 )
 (func $~lib/allocator/arena/__mem_free (; 46 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/memory/memory.free (; 47 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/allocator/arena/__mem_free
 )
 (func $~lib/runtime/reallocate (; 48 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load offset=4
  local.set $3
  local.get $3
  local.get $1
  i32.lt_u
  if
   local.get $1
   call $~lib/runtime/ADJUSTOBLOCK
   local.set $4
   local.get $3
   call $~lib/runtime/ADJUSTOBLOCK
   i32.const 0
   local.get $0
   global.get $~lib/memory/HEAP_BASE
   i32.gt_u
   select
   local.get $4
   i32.lt_u
   if
    local.get $4
    call $~lib/memory/memory.allocate
    local.set $5
    local.get $5
    local.get $2
    i32.load
    i32.store
    local.get $5
    i32.const 0
    i32.store offset=8
    local.get $5
    i32.const 0
    i32.store offset=12
    local.get $5
    global.get $~lib/runtime/HEADER_SIZE
    i32.add
    local.set $6
    local.get $6
    local.get $0
    local.get $3
    call $~lib/memory/memory.copy
    local.get $6
    local.get $3
    i32.add
    i32.const 0
    local.get $1
    local.get $3
    i32.sub
    call $~lib/memory/memory.fill
    local.get $2
    i32.load
    global.get $~lib/runtime/HEADER_MAGIC
    i32.eq
    if
     local.get $0
     global.get $~lib/memory/HEAP_BASE
     i32.gt_u
     i32.eqz
     if
      i32.const 0
      i32.const 24
      i32.const 113
      i32.const 8
      call $~lib/env/abort
      unreachable
     end
     local.get $2
     call $~lib/memory/memory.free
    else     
     local.get $0
     call $~lib/collector/dummy/__ref_register
    end
    local.get $5
    local.set $2
    local.get $6
    local.set $0
   else    
    local.get $0
    local.get $3
    i32.add
    i32.const 0
    local.get $1
    local.get $3
    i32.sub
    call $~lib/memory/memory.fill
   end
  else   
   nop
  end
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/ensureCapacity (; 49 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   global.get $~lib/runtime/MAX_BYTELENGTH
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 0
    i32.const 272
    i32.const 13
    i32.const 64
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.get $2
   i32.shl
   local.set $4
   block $~lib/runtime/REALLOCATE|inlined.0 (result i32)
    local.get $3
    local.set $6
    local.get $4
    local.set $5
    local.get $6
    local.get $5
    call $~lib/runtime/reallocate
   end
   local.set $5
   local.get $5
   local.get $3
   i32.ne
   if
    local.get $0
    local.tee $6
    local.get $5
    local.tee $7
    local.get $6
    i32.load
    local.tee $8
    i32.ne
    if (result i32)
     local.get $8
     if
      local.get $8
      local.get $6
      call $~lib/collector/dummy/__ref_unlink
     end
     local.get $7
     local.get $6
     call $~lib/collector/dummy/__ref_link
     local.get $7
    else     
     local.get $7
    end
    i32.store
    local.get $0
    local.get $5
    i32.store offset=4
   end
   local.get $0
   local.get $4
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i32>#push (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/array/ensureCapacity
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
 (func $~lib/array/Array<i32>#__unchecked_get (; 51 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 52 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $~lib/array/Array<i32>#pop (; 53 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 0
   i32.const 272
   i32.const 308
   i32.const 20
   call $~lib/env/abort
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
 (func $~lib/array/Array<i32>#concat (; 54 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
  block $~lib/runtime/MAKEARRAY<i32>|inlined.0 (result i32)
   local.get $2
   local.get $3
   i32.add
   local.set $5
   i32.const 0
   local.set $4
   local.get $5
   i32.const 4
   i32.const 2
   local.get $4
   call $~lib/runtime/makeArray
  end
  local.set $6
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $2
  i32.const 2
  i32.shl
  local.set $8
  local.get $7
  local.get $0
  i32.load offset=4
  local.get $8
  call $~lib/memory/memory.copy
  local.get $7
  local.get $8
  i32.add
  local.get $1
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $6
 )
 (func $~lib/array/Array<i32>#copyWithin (; 55 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  local.tee $6
  if (result i32)
   local.get $8
   local.get $9
   local.get $11
   i32.add
   i32.lt_s
  else   
   local.get $6
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
      block
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
      end
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
 )
 (func $std/array/isArraysEqual<i32> (; 56 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
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
  i32.const 1
 )
 (func $~lib/array/Array<i32>#unshift (; 57 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/array/ensureCapacity
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
 (func $~lib/array/Array<i32>#shift (; 58 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 0
   i32.const 272
   i32.const 380
   i32.const 20
   call $~lib/env/abort
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
 (func $~lib/array/Array<i32>#reverse (; 59 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
      block
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
      end
      br $continue|0
     end
    end
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<i32>#indexOf (; 60 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.tee $4
  if (result i32)
   local.get $4
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
     block
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
     end
     br $continue|0
    end
   end
  end
  i32.const -1
 )
 (func $~lib/array/Array<i32>#includes (; 61 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#splice (; 62 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  block $~lib/runtime/MAKEARRAY<i32>|inlined.1 (result i32)
   local.get $2
   local.set $5
   i32.const 0
   local.set $4
   local.get $5
   i32.const 4
   i32.const 2
   local.get $4
   call $~lib/runtime/makeArray
  end
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
  local.get $6
  i32.load offset=4
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
 (func $~lib/array/Array<i32>#__unchecked_set (; 63 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 64 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureCapacity
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
 (func $start:std/array~anonymous|0 (; 65 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.eq
 )
 (func $~lib/array/Array<i32>#findIndex (; 66 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:std/array~anonymous|1 (; 67 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.eq
 )
 (func $start:std/array~anonymous|2 (; 68 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|3 (; 69 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|4 (; 70 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|5 (; 71 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|6 (; 72 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#every (; 73 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:std/array~anonymous|7 (; 74 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.le_s
 )
 (func $start:std/array~anonymous|8 (; 75 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|9 (; 76 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|10 (; 77 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.lt_s
 )
 (func $start:std/array~anonymous|11 (; 78 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 3
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#some (; 79 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:std/array~anonymous|12 (; 80 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const -1
  i32.le_s
 )
 (func $start:std/array~anonymous|13 (; 81 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|14 (; 82 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|15 (; 83 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.gt_s
 )
 (func $start:std/array~anonymous|16 (; 84 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $~lib/array/Array<i32>#forEach (; 85 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    block
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
 )
 (func $start:std/array~anonymous|17 (; 86 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|18 (; 87 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|19 (; 88 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|20 (; 89 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
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
    i32.const 152
    i32.const 562
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
 )
 (func $start:std/array~anonymous|21 (; 90 ;) (type $FUNCSIG$fiii) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  f32.convert_i32_s
 )
 (func $~lib/array/Array<f32>~iterate (; 91 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/array/Array<i32>#map<f32> (; 92 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  block $~lib/runtime/MAKEARRAY<f32>|inlined.0 (result i32)
   local.get $2
   local.set $4
   i32.const 0
   local.set $3
   local.get $4
   i32.const 34
   i32.const 2
   local.get $3
   call $~lib/runtime/makeArray
  end
  local.set $5
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
    local.get $3
    local.get $2
    local.tee $4
    local.get $0
    i32.load offset=12
    local.tee $7
    local.get $4
    local.get $7
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     i32.load offset=4
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $4
     local.get $6
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     block (result f32)
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $3
      local.get $0
      local.get $1
      call_indirect (type $FUNCSIG$fiii)
     end
     f32.store
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
  local.get $5
 )
 (func $~lib/array/Array<f32>#get:length (; 93 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f32>#__unchecked_get (; 94 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__get (; 95 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__unchecked_get
 )
 (func $start:std/array~anonymous|22 (; 96 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $~lib/array/Array<i32>#map<i32> (; 97 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  block $~lib/runtime/MAKEARRAY<i32>|inlined.2 (result i32)
   local.get $2
   local.set $4
   i32.const 0
   local.set $3
   local.get $4
   i32.const 4
   i32.const 2
   local.get $3
   call $~lib/runtime/makeArray
  end
  local.set $5
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
    local.get $3
    local.get $2
    local.tee $4
    local.get $0
    i32.load offset=12
    local.tee $7
    local.get $4
    local.get $7
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     i32.load offset=4
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $4
     local.get $6
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $3
      local.get $0
      local.get $1
      call_indirect (type $FUNCSIG$iiii)
     end
     i32.store
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
  local.get $5
 )
 (func $start:std/array~anonymous|23 (; 98 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|24 (; 99 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|25 (; 100 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#filter (; 101 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/runtime/MAKEARRAY<i32>|inlined.3 (result i32)
   i32.const 0
   local.set $3
   i32.const 0
   local.set $2
   local.get $3
   i32.const 4
   i32.const 2
   local.get $2
   call $~lib/runtime/makeArray
  end
  local.set $4
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
    block
     local.get $0
     i32.load offset=4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $5
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      local.get $5
      local.get $2
      local.get $0
      local.get $1
      call_indirect (type $FUNCSIG$iiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $4
      local.get $5
      call $~lib/array/Array<i32>#push
      drop
     end
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
  local.get $4
 )
 (func $start:std/array~anonymous|26 (; 102 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 )
 (func $start:std/array~anonymous|27 (; 103 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|28 (; 104 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 )
 (func $start:std/array~anonymous|29 (; 105 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 106 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|30 (; 107 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|31 (; 108 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
  else   
   local.get $1
   i32.const 2
   i32.gt_s
  end
 )
 (func $~lib/array/Array<i32>#reduce<bool> (; 109 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|32 (; 110 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
  else   
   local.get $1
   i32.const 100
   i32.gt_s
  end
 )
 (func $start:std/array~anonymous|33 (; 111 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|34 (; 112 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|35 (; 113 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|36 (; 114 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 115 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|37 (; 116 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|38 (; 117 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
  else   
   local.get $1
   i32.const 2
   i32.gt_s
  end
 )
 (func $~lib/array/Array<i32>#reduceRight<bool> (; 118 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|39 (; 119 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
  else   
   local.get $1
   i32.const 100
   i32.gt_s
  end
 )
 (func $start:std/array~anonymous|40 (; 120 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|41 (; 121 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|42 (; 122 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/math/murmurHash3 (; 123 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
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
 (func $~lib/math/splitMix32 (; 124 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/math/NativeMath.seedRandom (; 125 ;) (type $FUNCSIG$vj) (param $0 i64)
  local.get $0
  i64.eqz
  if
   i32.const 0
   i32.const 2992
   i32.const 1021
   i32.const 4
   call $~lib/env/abort
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
 (func $~lib/util/sort/insertionSort<f32> (; 126 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    block
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
        block
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
 )
 (func $~lib/util/sort/weakHeapSort<f32> (; 127 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/memory/memory.allocate
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
    block
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
   local.set $5
   loop $repeat|2
    local.get $5
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     f32.load
     local.set $9
     local.get $0
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     f32.load
     f32.store
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     local.get $9
     f32.store
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
       local.get $5
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
        block
         local.get $0
         f32.load
         local.set $9
         local.get $0
         local.get $7
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
          local.get $9
          f32.store
          local.get $0
          local.get $8
          f32.store
         end
         local.get $7
         i32.const 1
         i32.shr_s
         local.set $7
        end
        br $continue|4
       end
      end
     end
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $4
  call $~lib/memory/memory.free
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
 (func $~lib/array/Array<f32>#sort (; 128 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 272
   i32.const 525
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
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
 )
 (func $~lib/util/sort/COMPARATOR<f32>~anonymous|0 (; 129 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
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
 (func $~lib/array/Array<f32>#sort|trampoline (; 130 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<f32>|inlined.0 (result i32)
    i32.const 57
    br $~lib/util/sort/COMPARATOR<f32>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#sort
 )
 (func $~lib/builtins/isNaN<f32> (; 131 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $std/array/isArraysEqual<f32> (; 132 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
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
     block
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
       i32.const 0
       return
      end
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
  i32.const 1
 )
 (func $~lib/array/Array<f64>~iterate (; 133 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/util/sort/insertionSort<f64> (; 134 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    block
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
        block
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
 )
 (func $~lib/util/sort/weakHeapSort<f64> (; 135 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/memory/memory.allocate
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
    block
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
   local.set $5
   loop $repeat|2
    local.get $5
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     f64.load
     local.set $9
     local.get $0
     local.get $0
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     f64.load
     f64.store
     local.get $0
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     local.get $9
     f64.store
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
       local.get $5
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
        block
         local.get $0
         f64.load
         local.set $9
         local.get $0
         local.get $7
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
          i32.const 3
          i32.shl
          i32.add
          local.get $9
          f64.store
          local.get $0
          local.get $8
          f64.store
         end
         local.get $7
         i32.const 1
         i32.shr_s
         local.set $7
        end
        br $continue|4
       end
      end
     end
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $4
  call $~lib/memory/memory.free
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
 (func $~lib/array/Array<f64>#sort (; 136 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 272
   i32.const 525
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
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
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 137 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/array/Array<f64>#sort|trampoline (; 138 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<f64>|inlined.0 (result i32)
    i32.const 60
    br $~lib/util/sort/COMPARATOR<f64>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#sort
 )
 (func $~lib/array/Array<f64>#get:length (; 139 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f64>#__unchecked_get (; 140 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__get (; 141 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__unchecked_get
 )
 (func $~lib/builtins/isNaN<f64> (; 142 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $std/array/isArraysEqual<f64> (; 143 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
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
     block
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
       i32.const 0
       return
      end
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
  i32.const 1
 )
 (func $~lib/util/sort/insertionSort<i32> (; 144 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    block
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
        block
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
 )
 (func $~lib/util/sort/weakHeapSort<i32> (; 145 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/memory/memory.allocate
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
    block
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
   local.set $5
   loop $repeat|2
    local.get $5
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     i32.load
     local.set $9
     local.get $0
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.store
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     local.get $9
     i32.store
     i32.const 1
     local.set $8
     block $break|3
      loop $continue|3
       local.get $8
       i32.const 1
       i32.shl
       local.get $4
       local.get $8
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.get $8
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       local.tee $7
       local.get $5
       i32.lt_s
       if
        local.get $7
        local.set $8
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       local.get $8
       i32.const 0
       i32.gt_s
       if
        block
         local.get $0
         i32.load
         local.set $9
         local.get $0
         local.get $8
         i32.const 2
         i32.shl
         i32.add
         i32.load
         local.set $6
         block (result i32)
          i32.const 2
          global.set $~lib/argc
          local.get $9
          local.get $6
          local.get $2
          call_indirect (type $FUNCSIG$iii)
         end
         i32.const 0
         i32.lt_s
         if
          local.get $4
          local.get $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          local.get $4
          local.get $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          local.get $8
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          local.get $0
          local.get $8
          i32.const 2
          i32.shl
          i32.add
          local.get $9
          i32.store
          local.get $0
          local.get $6
          i32.store
         end
         local.get $8
         i32.const 1
         i32.shr_s
         local.set $8
        end
        br $continue|4
       end
      end
     end
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $4
  call $~lib/memory/memory.free
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
 (func $~lib/array/Array<i32>#sort (; 146 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 272
   i32.const 525
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
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
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|0 (; 147 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/array/Array<i32>#sort|trampoline (; 148 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<i32>|inlined.0 (result i32)
    i32.const 61
    br $~lib/util/sort/COMPARATOR<i32>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
 )
 (func $~lib/util/sort/insertionSort<u32> (; 149 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    block
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
        block
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
 )
 (func $~lib/util/sort/weakHeapSort<u32> (; 150 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/memory/memory.allocate
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
    block
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
   local.set $5
   loop $repeat|2
    local.get $5
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     local.get $0
     i32.load
     local.set $9
     local.get $0
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.store
     local.get $0
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     local.get $9
     i32.store
     i32.const 1
     local.set $8
     block $break|3
      loop $continue|3
       local.get $8
       i32.const 1
       i32.shl
       local.get $4
       local.get $8
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.get $8
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       local.tee $7
       local.get $5
       i32.lt_s
       if
        local.get $7
        local.set $8
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       local.get $8
       i32.const 0
       i32.gt_s
       if
        block
         local.get $0
         i32.load
         local.set $9
         local.get $0
         local.get $8
         i32.const 2
         i32.shl
         i32.add
         i32.load
         local.set $6
         block (result i32)
          i32.const 2
          global.set $~lib/argc
          local.get $9
          local.get $6
          local.get $2
          call_indirect (type $FUNCSIG$iii)
         end
         i32.const 0
         i32.lt_s
         if
          local.get $4
          local.get $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          local.get $4
          local.get $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          local.get $8
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          local.get $0
          local.get $8
          i32.const 2
          i32.shl
          i32.add
          local.get $9
          i32.store
          local.get $0
          local.get $6
          i32.store
         end
         local.get $8
         i32.const 1
         i32.shr_s
         local.set $8
        end
        br $continue|4
       end
      end
     end
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $4
  call $~lib/memory/memory.free
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
 (func $~lib/array/Array<u32>#sort (; 151 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 272
   i32.const 525
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
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
 )
 (func $~lib/util/sort/COMPARATOR<u32>~anonymous|0 (; 152 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $~lib/array/Array<u32>#sort|trampoline (; 153 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<u32>|inlined.0 (result i32)
    i32.const 62
    br $~lib/util/sort/COMPARATOR<u32>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#sort
 )
 (func $~lib/array/Array.create<i32> (; 154 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/runtime/MAX_BYTELENGTH
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 272
   i32.const 43
   i32.const 62
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/MAKEARRAY<i32>|inlined.4 (result i32)
   local.get $0
   local.set $2
   i32.const 0
   local.set $1
   local.get $2
   i32.const 4
   i32.const 2
   local.get $1
   call $~lib/runtime/makeArray
  end
  local.set $3
  local.get $3
  i32.load offset=4
  i32.const 0
  local.get $3
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $3
  i32.const 0
  i32.store offset=12
  local.get $3
 )
 (func $std/array/createReverseOrderedArray (; 155 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/math/NativeMath.random (; 156 ;) (type $FUNCSIG$d) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   i32.const 0
   i32.const 2992
   i32.const 1030
   i32.const 24
   call $~lib/env/abort
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
 (func $std/array/createRandomOrderedArray (; 157 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|1 (; 158 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $std/array/isSorted<i32> (; 159 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
 (func $std/array/assertSorted<i32> (; 160 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
  local.get $1
  call $std/array/isSorted<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 814
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/array/assertSortedDefault<i32> (; 161 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  block $~lib/util/sort/COMPARATOR<i32>|inlined.1 (result i32)
   i32.const 63
   br $~lib/util/sort/COMPARATOR<i32>|inlined.1
  end
  call $std/array/assertSorted<i32>
 )
 (func $start:std/array~anonymous|43 (; 162 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $start:std/array~anonymous|44 (; 163 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $start:std/array~anonymous|45 (; 164 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $start:std/array~anonymous|46 (; 165 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>~iterate (; 166 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
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
     block
      local.get $2
      i32.load
      local.set $4
      i32.const 1
      global.set $~lib/argc
      local.get $4
      local.get $1
      call_indirect (type $FUNCSIG$vi)
      local.get $4
      local.get $1
      call $~lib/array/Array<i32>~iterate
      local.get $2
      i32.const 4
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array.create<~lib/array/Array<i32>> (; 167 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/runtime/MAX_BYTELENGTH
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 272
   i32.const 43
   i32.const 62
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/MAKEARRAY<~lib/array/Array<i32>>|inlined.0 (result i32)
   local.get $0
   local.set $2
   i32.const 0
   local.set $1
   local.get $2
   i32.const 68
   i32.const 2
   local.get $1
   call $~lib/runtime/makeArray
  end
  local.set $3
  local.get $3
  i32.load offset=4
  i32.const 0
  local.get $3
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $3
  i32.const 0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_set (; 168 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
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
   i32.store
   local.get $4
   i32.const 0
   i32.ne
   if
    local.get $4
    local.get $0
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $0
   call $~lib/collector/dummy/__ref_link
  end
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (; 169 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   i32.const 0
   i32.const 272
   i32.const 110
   i32.const 38
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureCapacity
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
    block
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
  local.get $1
 )
 (func $start:std/array~anonymous|47 (; 171 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.sub
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
    block
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
        block
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
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#sort (; 173 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 272
   i32.const 525
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
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
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__get (; 176 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 95
   i32.const 45
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/array/Array<i32>> (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/array/Array<i32>>#__get
     local.get $1
     call_indirect (type $FUNCSIG$iii)
    end
    i32.const 0
    i32.gt_s
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
 (func $std/array/assertSorted<~lib/array/Array<i32>> (; 178 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#sort
  local.get $1
  call $std/array/isSorted<~lib/array/Array<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 814
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/array/Proxy<i32>~iterate (; 179 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>~iterate (; 180 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
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
     block
      local.get $2
      i32.load
      local.set $4
      i32.const 1
      global.set $~lib/argc
      local.get $4
      local.get $1
      call_indirect (type $FUNCSIG$vi)
      local.get $4
      local.get $1
      call $std/array/Proxy<i32>~iterate
      local.get $2
      i32.const 4
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array.create<std/array/Proxy<i32>> (; 181 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/runtime/MAX_BYTELENGTH
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 272
   i32.const 43
   i32.const 62
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/MAKEARRAY<std/array/Proxy<i32>>|inlined.0 (result i32)
   local.get $0
   local.set $2
   i32.const 0
   local.set $1
   local.get $2
   i32.const 71
   i32.const 2
   local.get $1
   call $~lib/runtime/makeArray
  end
  local.set $3
  local.get $3
  i32.load offset=4
  i32.const 0
  local.get $3
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $3
  i32.const 0
  i32.store offset=12
  local.get $3
 )
 (func $std/array/Proxy<i32>#constructor (; 182 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/runtime/allocate
   i32.const 72
   call $~lib/runtime/register
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
   i32.store
   local.get $4
   i32.const 0
   i32.ne
   if
    local.get $4
    local.get $0
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $0
   call $~lib/collector/dummy/__ref_link
  end
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__set (; 184 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   i32.const 0
   i32.const 272
   i32.const 110
   i32.const 38
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureCapacity
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
 )
 (func $std/array/createReverseOrderedElementsArray (; 185 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
    call $~lib/array/Array<std/array/Proxy<i32>>#__set
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
 (func $start:std/array~anonymous|48 (; 186 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
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
   loop $repeat|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
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
        block
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
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#sort (; 188 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 272
   i32.const 525
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
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
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__get (; 191 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 95
   i32.const 45
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_get
 )
 (func $std/array/isSorted<std/array/Proxy<i32>> (; 192 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
     local.get $0
     local.get $2
     call $~lib/array/Array<std/array/Proxy<i32>>#__get
     local.get $1
     call_indirect (type $FUNCSIG$iii)
    end
    i32.const 0
    i32.gt_s
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
 (func $std/array/assertSorted<std/array/Proxy<i32>> (; 193 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Proxy<i32>>#sort
  local.get $1
  call $std/array/isSorted<std/array/Proxy<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 814
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/string/String | null>~iterate (; 194 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
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
     block
      local.get $2
      i32.load
      local.set $4
      local.get $4
      if
       i32.const 1
       global.set $~lib/argc
       local.get $4
       local.get $1
       call_indirect (type $FUNCSIG$vi)
       local.get $4
       local.get $1
       call $~lib/string/String~iterate
      end
      local.get $2
      i32.const 4
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/util/sort/insertionSort<~lib/string/String | null> (; 195 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    block
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
        block
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
 )
 (func $~lib/array/Array<~lib/string/String | null>#sort (; 196 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 272
   i32.const 525
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
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
 )
 (func $~lib/array/Array<~lib/string/String | null>#get:length (; 197 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String | null>#__unchecked_get (; 198 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<~lib/string/String | null>#__get (; 199 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/string/String | null> (; 200 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/string/String | null>#__get
     local.get $1
     call_indirect (type $FUNCSIG$iii)
    end
    i32.const 0
    i32.gt_s
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
 (func $std/array/assertSorted<~lib/string/String | null> (; 201 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#sort
  local.get $1
  call $std/array/isSorted<~lib/string/String | null>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 814
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/string/String#get:length (; 202 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 203 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
     local.get $4
    end
    if
     block
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
     end
     br $continue|0
    end
   end
  end
  local.get $5
 )
 (func $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 (; 204 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $0
   i32.const 0
   i32.eq
  end
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
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
  local.tee $2
  if (result i32)
   local.get $4
   i32.eqz
  else   
   local.get $2
  end
  if
   i32.const 0
   return
  end
  local.get $3
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $4
  i32.eqz
  if
   i32.const 1
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
 )
 (func $std/array/assertSorted<~lib/string/String | null>|trampoline (; 205 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    i32.const 77
    br $~lib/util/sort/COMPARATOR<~lib/string/String | null>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $std/array/assertSorted<~lib/string/String | null>
 )
 (func $~lib/string/String.__eq (; 206 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
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
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/string/String.__ne (; 207 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
 )
 (func $std/array/isArraysEqual<~lib/string/String | null> (; 208 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
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
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/string/String | null>#__get
    call $~lib/string/String.__ne
    if
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
  i32.const 1
 )
 (func $~lib/array/Array<~lib/string/String>~iterate (; 209 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
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
     block
      local.get $2
      i32.load
      local.set $4
      i32.const 1
      global.set $~lib/argc
      local.get $4
      local.get $1
      call_indirect (type $FUNCSIG$vi)
      local.get $4
      local.get $1
      call $~lib/string/String~iterate
      local.get $2
      i32.const 4
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array.create<~lib/string/String> (; 210 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/runtime/MAX_BYTELENGTH
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 272
   i32.const 43
   i32.const 62
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/MAKEARRAY<~lib/string/String>|inlined.0 (result i32)
   local.get $0
   local.set $2
   i32.const 0
   local.set $1
   local.get $2
   i32.const 78
   i32.const 2
   local.get $1
   call $~lib/runtime/makeArray
  end
  local.set $3
  local.get $3
  i32.load offset=4
  i32.const 0
  local.get $3
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $3
  i32.const 0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/string/String#charAt (; 211 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 4376
   i32.const 39
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 4200
   return
  end
  block $~lib/runtime/ALLOCATE|inlined.1 (result i32)
   i32.const 2
   local.set $2
   local.get $2
   call $~lib/runtime/allocate
  end
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  i32.store16
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.0 (result i32)
   local.get $3
   local.set $2
   local.get $2
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/string/String#concat (; 212 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 4424
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
   i32.const 4200
   return
  end
  block $~lib/runtime/ALLOCATE|inlined.2 (result i32)
   local.get $4
   local.set $5
   local.get $5
   call $~lib/runtime/allocate
  end
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
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.1 (result i32)
   local.get $6
   local.set $5
   local.get $5
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/string/String.__concat (; 213 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 4424
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
 )
 (func $std/array/createRandomString (; 214 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  i32.const 4200
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
    call $~lib/string/String.__concat
    local.set $1
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
 (func $~lib/array/Array<~lib/string/String>#__unchecked_set (; 215 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
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
   i32.store
   local.get $4
   i32.const 0
   i32.ne
   if
    local.get $4
    local.get $0
    call $~lib/collector/dummy/__ref_unlink
   end
   local.get $2
   local.get $0
   call $~lib/collector/dummy/__ref_link
  end
 )
 (func $~lib/array/Array<~lib/string/String>#__set (; 216 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   i32.const 0
   i32.const 272
   i32.const 110
   i32.const 38
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureCapacity
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
 )
 (func $std/array/createRandomStringArray (; 217 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
    call $~lib/array/Array<~lib/string/String>#__set
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
 (func $~lib/util/sort/insertionSort<~lib/string/String> (; 218 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    block
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
        block
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
 )
 (func $~lib/array/Array<~lib/string/String>#sort (; 219 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 272
   i32.const 525
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
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
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (; 220 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_get (; 221 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 222 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 95
   i32.const 45
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 272
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/string/String> (; 223 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/string/String>#__get
     local.get $1
     call_indirect (type $FUNCSIG$iii)
    end
    i32.const 0
    i32.gt_s
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
 (func $std/array/assertSorted<~lib/string/String> (; 224 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#sort
  local.get $1
  call $std/array/isSorted<~lib/string/String>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 814
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/util/sort/COMPARATOR<~lib/string/String>~anonymous|0 (; 225 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $0
   i32.const 0
   i32.eq
  end
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
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
  local.tee $2
  if (result i32)
   local.get $4
   i32.eqz
  else   
   local.get $2
  end
  if
   i32.const 0
   return
  end
  local.get $3
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $4
  i32.eqz
  if
   i32.const 1
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
 )
 (func $std/array/assertSorted<~lib/string/String>|trampoline (; 226 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    i32.const 80
    br $~lib/util/sort/COMPARATOR<~lib/string/String>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $std/array/assertSorted<~lib/string/String>
 )
 (func $~lib/array/Array<bool>~iterate (; 227 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/string/String#substring (; 228 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 4376
   i32.const 189
   i32.const 4
   call $~lib/env/abort
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
   i32.const 4200
   return
  end
  local.get $8
  i32.eqz
  local.tee $4
  if (result i32)
   local.get $9
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   i32.eq
  else   
   local.get $4
  end
  if
   local.get $0
   return
  end
  block $~lib/runtime/ALLOCATE|inlined.4 (result i32)
   local.get $3
   local.set $4
   local.get $4
   call $~lib/runtime/allocate
  end
  local.set $10
  local.get $10
  local.get $0
  local.get $8
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.2 (result i32)
   local.get $10
   local.set $4
   local.get $4
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/runtime/discard (; 229 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 173
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  local.set $1
  local.get $1
  i32.load
  global.get $~lib/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 175
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/memory/memory.free
 )
 (func $~lib/array/Array<bool>#join_bool (; 230 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   i32.const 4472
   i32.const 4496
   local.get $3
   i32.load8_u
   i32.const 0
   i32.ne
   select
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 5
  local.set $5
  local.get $5
  local.get $4
  i32.add
  local.get $2
  i32.mul
  local.get $5
  i32.add
  local.set $6
  block $~lib/runtime/ALLOCATE|inlined.3 (result i32)
   local.get $6
   i32.const 1
   i32.shl
   local.set $7
   local.get $7
   call $~lib/runtime/allocate
  end
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $7
   loop $repeat|0
    local.get $7
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $7
     i32.add
     i32.load8_u
     local.set $10
     i32.const 4
     local.get $10
     i32.const 0
     i32.ne
     i32.eqz
     i32.add
     local.set $5
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     i32.const 4472
     i32.const 4496
     local.get $10
     i32.const 0
     i32.ne
     select
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $5
     i32.add
     local.set $9
     local.get $4
     if
      local.get $8
      local.get $9
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $9
      local.get $4
      i32.add
      local.set $9
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
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
  local.set $5
  local.get $8
  local.get $9
  i32.const 1
  i32.shl
  i32.add
  i32.const 4472
  i32.const 4496
  local.get $10
  i32.const 0
  i32.ne
  select
  local.get $5
  i32.const 1
  i32.shl
  call $~lib/memory/memory.copy
  local.get $9
  local.get $5
  i32.add
  local.set $9
  local.get $6
  local.get $9
  i32.gt_s
  if
   local.get $8
   i32.const 0
   local.get $9
   call $~lib/string/String#substring
   local.set $7
   block $~lib/runtime/DISCARD|inlined.0
    local.get $8
    local.set $11
    local.get $11
    call $~lib/runtime/discard
   end
   local.get $7
   return
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.3 (result i32)
   local.get $8
   local.set $7
   local.get $7
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<bool>#join (; 231 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<bool>#join_bool
  return
 )
 (func $~lib/util/number/decimalCount32 (; 232 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 233 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 5088
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i32.const 10000
    i32.ge_u
    if
     block
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
     end
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
 (func $~lib/util/number/itoa32 (; 234 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4648
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
  block $~lib/runtime/ALLOCATE|inlined.5 (result i32)
   local.get $2
   i32.const 1
   i32.shl
   local.set $3
   local.get $3
   call $~lib/runtime/allocate
  end
  local.set $4
  block $~lib/util/number/utoa32_core|inlined.0
   local.get $4
   local.set $6
   local.get $0
   local.set $5
   local.get $2
   local.set $3
   local.get $6
   local.get $5
   local.get $3
   call $~lib/util/number/utoa32_lut
  end
  local.get $1
  if
   local.get $4
   i32.const 45
   i32.store16
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.4 (result i32)
   local.get $4
   local.set $3
   local.get $3
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/util/number/itoa<i32> (; 235 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/util/number/itoa_stream<i32> (; 236 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#join_int (; 237 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load
   call $~lib/util/number/itoa<i32>
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 11
  local.get $4
  i32.add
  local.get $2
  i32.mul
  i32.const 11
  i32.add
  local.set $5
  block $~lib/runtime/ALLOCATE|inlined.6 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/allocate
  end
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $6
   loop $repeat|0
    local.get $6
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $9
     local.get $8
     local.get $7
     local.get $8
     local.get $9
     call $~lib/util/number/itoa_stream<i32>
     i32.add
     local.set $8
     local.get $4
     if
      local.get $7
      local.get $8
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $8
      local.get $4
      i32.add
      local.set $8
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $9
  local.get $8
  local.get $7
  local.get $8
  local.get $9
  call $~lib/util/number/itoa_stream<i32>
  i32.add
  local.set $8
  local.get $5
  local.get $8
  i32.gt_s
  if
   local.get $7
   i32.const 0
   local.get $8
   call $~lib/string/String#substring
   local.set $6
   block $~lib/runtime/DISCARD|inlined.1
    local.get $7
    local.set $10
    local.get $10
    call $~lib/runtime/discard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.5 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<i32>#join (; 238 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#join_int
  return
 )
 (func $~lib/util/number/utoa32 (; 239 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4648
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.set $1
  block $~lib/runtime/ALLOCATE|inlined.7 (result i32)
   local.get $1
   i32.const 1
   i32.shl
   local.set $2
   local.get $2
   call $~lib/runtime/allocate
  end
  local.set $3
  block $~lib/util/number/utoa32_core|inlined.2
   local.get $3
   local.set $5
   local.get $0
   local.set $4
   local.get $1
   local.set $2
   local.get $5
   local.get $4
   local.get $2
   call $~lib/util/number/utoa32_lut
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.6 (result i32)
   local.get $3
   local.set $2
   local.get $2
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/util/number/itoa<u32> (; 240 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u32> (; 241 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<u32>#join_int (; 242 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load
   call $~lib/util/number/itoa<u32>
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 10
  local.get $4
  i32.add
  local.get $2
  i32.mul
  i32.const 10
  i32.add
  local.set $5
  block $~lib/runtime/ALLOCATE|inlined.8 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/allocate
  end
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $6
   loop $repeat|0
    local.get $6
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $9
     local.get $8
     local.get $7
     local.get $8
     local.get $9
     call $~lib/util/number/itoa_stream<u32>
     i32.add
     local.set $8
     local.get $4
     if
      local.get $7
      local.get $8
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $8
      local.get $4
      i32.add
      local.set $8
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $9
  local.get $8
  local.get $7
  local.get $8
  local.get $9
  call $~lib/util/number/itoa_stream<u32>
  i32.add
  local.set $8
  local.get $5
  local.get $8
  i32.gt_s
  if
   local.get $7
   i32.const 0
   local.get $8
   call $~lib/string/String#substring
   local.set $6
   block $~lib/runtime/DISCARD|inlined.2
    local.get $7
    local.set $10
    local.get $10
    call $~lib/runtime/discard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.7 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<u32>#join (; 243 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#join_int
  return
 )
 (func $~lib/builtins/isFinite<f64> (; 244 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/array/Array<u64>~iterate (; 245 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 246 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i16>~iterate (; 247 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 248 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/util/number/genDigits (; 249 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  (local $27 i32)
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
  i32.const 6640
  i32.load offset=4
  local.set $16
  block $break|0
   loop $continue|0
    local.get $14
    i32.const 0
    i32.gt_s
    if
     block
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
          local.tee $27
          if (result i32)
           local.get $24
           local.get $23
           i64.sub
           local.get $22
           i64.ge_u
          else           
           local.get $27
          end
          local.tee $27
          if (result i32)
           local.get $23
           local.get $22
           i64.add
           local.get $21
           i64.lt_u
           local.tee $27
           if (result i32)
            local.get $27
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
           local.get $27
          end
          if
           block
            local.get $26
            i32.const 1
            i32.sub
            local.set $26
            local.get $23
            local.get $22
            i64.add
            local.set $23
           end
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
     end
     br $continue|0
    end
   end
  end
  block $break|3
   loop $continue|3
    i32.const 1
    if
     block
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
          local.tee $20
          if (result i32)
           local.get $24
           local.get $23
           i64.sub
           local.get $22
           i64.ge_u
          else           
           local.get $20
          end
          local.tee $20
          if (result i32)
           local.get $23
           local.get $22
           i64.add
           local.get $21
           i64.lt_u
           local.tee $20
           if (result i32)
            local.get $20
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
           local.get $20
          end
          if
           block
            local.get $18
            i32.const 1
            i32.sub
            local.set $18
            local.get $23
            local.get $22
            i64.add
            local.set $23
           end
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
     end
     br $continue|3
    end
   end
  end
  local.get $15
 )
 (func $~lib/util/number/prettify (; 250 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.tee $4
  if (result i32)
   local.get $3
   i32.const 21
   i32.le_s
  else   
   local.get $4
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
   local.tee $4
   if (result i32)
    local.get $3
    i32.const 21
    i32.le_s
   else    
    local.get $4
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
    local.tee $4
    if (result i32)
     local.get $3
     i32.const 0
     i32.le_s
    else     
     local.get $4
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
 (func $~lib/util/number/dtoa_core (; 251 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
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
    i32.const 6328
    local.get $13
    call $~lib/array/Array<u64>#__unchecked_get
    global.set $~lib/util/number/_frc_pow
    i32.const 6552
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
 (func $~lib/util/number/dtoa (; 252 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 5496
   return
  end
  local.get $0
  call $~lib/builtins/isFinite<f64>
  i32.eqz
  if
   local.get $0
   call $~lib/builtins/isNaN<f64>
   if
    i32.const 5520
    return
   end
   i32.const 5544
   i32.const 5584
   local.get $0
   f64.const 0
   f64.lt
   select
   return
  end
  block $~lib/runtime/ALLOCATE|inlined.9 (result i32)
   i32.const 28
   i32.const 1
   i32.shl
   local.set $1
   local.get $1
   call $~lib/runtime/allocate
  end
  local.set $2
  local.get $2
  local.get $0
  call $~lib/util/number/dtoa_core
  local.set $3
  local.get $2
  i32.const 0
  local.get $3
  call $~lib/string/String#substring
  local.set $4
  block $~lib/runtime/DISCARD|inlined.3
   local.get $2
   local.set $1
   local.get $1
   call $~lib/runtime/discard
  end
  local.get $4
 )
 (func $~lib/util/number/dtoa_stream (; 253 ;) (type $FUNCSIG$iiid) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
    i32.const 5544
    i32.const 5584
    local.get $3
    select
    local.set $5
    local.get $0
    local.get $5
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
 (func $~lib/array/Array<f64>#join_flt (; 254 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   f64.load
   call $~lib/util/number/dtoa
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 28
  local.get $4
  i32.add
  local.get $2
  i32.mul
  i32.const 28
  i32.add
  local.set $5
  block $~lib/runtime/ALLOCATE|inlined.10 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/allocate
  end
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $6
   loop $repeat|0
    local.get $6
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $6
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.set $9
     local.get $8
     local.get $7
     local.get $8
     local.get $9
     call $~lib/util/number/dtoa_stream
     i32.add
     local.set $8
     local.get $4
     if
      local.get $7
      local.get $8
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $8
      local.get $4
      i32.add
      local.set $8
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  f64.load
  local.set $9
  local.get $8
  local.get $7
  local.get $8
  local.get $9
  call $~lib/util/number/dtoa_stream
  i32.add
  local.set $8
  local.get $5
  local.get $8
  i32.gt_s
  if
   local.get $7
   i32.const 0
   local.get $8
   call $~lib/string/String#substring
   local.set $6
   block $~lib/runtime/DISCARD|inlined.4
    local.get $7
    local.set $10
    local.get $10
    call $~lib/runtime/discard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.8 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<f64>#join (; 255 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#join_flt
  return
 )
 (func $~lib/array/Array<~lib/string/String>#join_str (; 256 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   block
    i32.const 0
    local.set $7
    local.get $2
    i32.const 1
    i32.add
    local.set $8
   end
   loop $repeat|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $6
     local.get $6
     i32.const 0
     i32.ne
     if
      local.get $5
      local.get $6
      call $~lib/string/String#get:length
      i32.add
      local.set $5
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
  local.set $9
  block $~lib/runtime/ALLOCATE|inlined.11 (result i32)
   local.get $5
   local.get $4
   local.get $2
   i32.mul
   i32.add
   i32.const 1
   i32.shl
   local.set $8
   local.get $8
   call $~lib/runtime/allocate
  end
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
    block
     local.get $3
     local.get $8
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $6
     local.get $6
     i32.const 0
     i32.ne
     if
      local.get $6
      call $~lib/string/String#get:length
      local.set $7
      local.get $10
      local.get $9
      i32.const 1
      i32.shl
      i32.add
      local.get $6
      local.get $7
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $9
      local.get $7
      i32.add
      local.set $9
     end
     local.get $4
     if
      local.get $10
      local.get $9
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $9
      local.get $4
      i32.add
      local.set $9
     end
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
  local.get $3
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $6
  local.get $6
  i32.const 0
  i32.ne
  if
   local.get $10
   local.get $9
   i32.const 1
   i32.shl
   i32.add
   local.get $6
   local.get $6
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.9 (result i32)
   local.get $10
   local.set $8
   local.get $8
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 257 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#join_str
  return
 )
 (func $std/array/Ref~iterate (; 258 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
 )
 (func $std/array/Ref#constructor (; 259 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/runtime/allocate
   i32.const 87
   call $~lib/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array<std/array/Ref | null>~iterate (; 260 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
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
     block
      local.get $2
      i32.load
      local.set $4
      local.get $4
      if
       i32.const 1
       global.set $~lib/argc
       local.get $4
       local.get $1
       call_indirect (type $FUNCSIG$vi)
       local.get $4
       local.get $1
       call $std/array/Ref~iterate
      end
      local.get $2
      i32.const 4
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<std/array/Ref | null>#join_ref (; 261 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   i32.const 6920
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 15
  local.get $4
  i32.add
  local.get $2
  i32.mul
  i32.const 15
  i32.add
  local.set $5
  block $~lib/runtime/ALLOCATE|inlined.12 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/allocate
  end
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $6
   loop $repeat|0
    local.get $6
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $9
     local.get $9
     if
      local.get $7
      local.get $8
      i32.const 1
      i32.shl
      i32.add
      i32.const 6920
      i32.const 15
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $8
      i32.const 15
      i32.add
      local.set $8
     end
     local.get $4
     if
      local.get $7
      local.get $8
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $8
      local.get $4
      i32.add
      local.set $8
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
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
   i32.const 6920
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
  local.get $8
  i32.gt_s
  if
   local.get $7
   i32.const 0
   local.get $8
   call $~lib/string/String#substring
   local.set $6
   block $~lib/runtime/DISCARD|inlined.5
    local.get $7
    local.set $10
    local.get $10
    call $~lib/runtime/discard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.10 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<std/array/Ref | null>#join (; 262 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Ref | null>#join_ref
  return
 )
 (func $~lib/array/Array<i32>#toString (; 263 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<i32>#join
 )
 (func $~lib/array/Array<i8>~iterate (; 264 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/util/number/itoa<i8> (; 265 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/util/number/itoa_stream<i8> (; 266 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i8>#join_int (; 267 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load8_s
   call $~lib/util/number/itoa<i8>
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 11
  local.get $4
  i32.add
  local.get $2
  i32.mul
  i32.const 11
  i32.add
  local.set $5
  block $~lib/runtime/ALLOCATE|inlined.13 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/allocate
  end
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $6
   loop $repeat|0
    local.get $6
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $6
     i32.const 0
     i32.shl
     i32.add
     i32.load8_s
     local.set $9
     local.get $8
     local.get $7
     local.get $8
     local.get $9
     call $~lib/util/number/itoa_stream<i8>
     i32.add
     local.set $8
     local.get $4
     if
      local.get $7
      local.get $8
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $8
      local.get $4
      i32.add
      local.set $8
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
  local.get $2
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s
  local.set $9
  local.get $8
  local.get $7
  local.get $8
  local.get $9
  call $~lib/util/number/itoa_stream<i8>
  i32.add
  local.set $8
  local.get $5
  local.get $8
  i32.gt_s
  if
   local.get $7
   i32.const 0
   local.get $8
   call $~lib/string/String#substring
   local.set $6
   block $~lib/runtime/DISCARD|inlined.6
    local.get $7
    local.set $10
    local.get $10
    call $~lib/runtime/discard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.11 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<i8>#join (; 268 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#join_int
  return
 )
 (func $~lib/array/Array<i8>#toString (; 269 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<i8>#join
 )
 (func $~lib/array/Array<u16>~iterate (; 270 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/util/number/itoa<u16> (; 271 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u16> (; 272 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<u16>#join_int (; 273 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load16_u
   call $~lib/util/number/itoa<u16>
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 10
  local.get $4
  i32.add
  local.get $2
  i32.mul
  i32.const 10
  i32.add
  local.set $5
  block $~lib/runtime/ALLOCATE|inlined.14 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/allocate
  end
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $6
   loop $repeat|0
    local.get $6
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.set $9
     local.get $8
     local.get $7
     local.get $8
     local.get $9
     call $~lib/util/number/itoa_stream<u16>
     i32.add
     local.set $8
     local.get $4
     if
      local.get $7
      local.get $8
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $8
      local.get $4
      i32.add
      local.set $8
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  local.set $9
  local.get $8
  local.get $7
  local.get $8
  local.get $9
  call $~lib/util/number/itoa_stream<u16>
  i32.add
  local.set $8
  local.get $5
  local.get $8
  i32.gt_s
  if
   local.get $7
   i32.const 0
   local.get $8
   call $~lib/string/String#substring
   local.set $6
   block $~lib/runtime/DISCARD|inlined.7
    local.get $7
    local.set $10
    local.get $10
    call $~lib/runtime/discard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.12 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<u16>#join (; 274 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#join_int
  return
 )
 (func $~lib/array/Array<u16>#toString (; 275 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<u16>#join
 )
 (func $~lib/util/number/decimalCount64 (; 276 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 277 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
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
  i32.const 5088
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i64.const 100000000
    i64.ge_u
    if
     block
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
     end
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
 (func $~lib/util/number/utoa64 (; 278 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 4648
   return
  end
  local.get $0
  global.get $~lib/builtins/u32.MAX_VALUE
  i64.extend_i32_u
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.set $2
   local.get $2
   call $~lib/util/number/decimalCount32
   local.set $3
   block $~lib/runtime/ALLOCATE|inlined.15 (result i32)
    local.get $3
    i32.const 1
    i32.shl
    local.set $4
    local.get $4
    call $~lib/runtime/allocate
   end
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
   block $~lib/runtime/ALLOCATE|inlined.16 (result i32)
    local.get $3
    i32.const 1
    i32.shl
    local.set $2
    local.get $2
    call $~lib/runtime/allocate
   end
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
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.13 (result i32)
   local.get $1
   local.set $3
   local.get $3
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/util/number/itoa<u64> (; 279 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/utoa64
  return
 )
 (func $~lib/util/number/itoa_stream<u64> (; 280 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
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
  global.get $~lib/builtins/u32.MAX_VALUE
  i64.extend_i32_u
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
 (func $~lib/array/Array<u64>#join_int (; 281 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i64.load
   call $~lib/util/number/itoa<u64>
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 20
  local.get $4
  i32.add
  local.get $2
  i32.mul
  i32.const 20
  i32.add
  local.set $5
  block $~lib/runtime/ALLOCATE|inlined.17 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/allocate
  end
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $6
   loop $repeat|0
    local.get $6
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $6
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.set $9
     local.get $8
     local.get $7
     local.get $8
     local.get $9
     call $~lib/util/number/itoa_stream<u64>
     i32.add
     local.set $8
     local.get $4
     if
      local.get $7
      local.get $8
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $8
      local.get $4
      i32.add
      local.set $8
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.set $9
  local.get $8
  local.get $7
  local.get $8
  local.get $9
  call $~lib/util/number/itoa_stream<u64>
  i32.add
  local.set $8
  local.get $5
  local.get $8
  i32.gt_s
  if
   local.get $7
   i32.const 0
   local.get $8
   call $~lib/string/String#substring
   local.set $6
   block $~lib/runtime/DISCARD|inlined.8
    local.get $7
    local.set $10
    local.get $10
    call $~lib/runtime/discard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.14 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<u64>#join (; 282 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#join_int
  return
 )
 (func $~lib/array/Array<u64>#toString (; 283 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<u64>#join
 )
 (func $~lib/array/Array<i64>~iterate (; 284 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
 )
 (func $~lib/util/number/itoa64 (; 285 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 4648
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
  global.get $~lib/builtins/u32.MAX_VALUE
  i64.extend_i32_u
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
   block $~lib/runtime/ALLOCATE|inlined.18 (result i32)
    local.get $4
    i32.const 1
    i32.shl
    local.set $5
    local.get $5
    call $~lib/runtime/allocate
   end
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
   block $~lib/runtime/ALLOCATE|inlined.19 (result i32)
    local.get $4
    i32.const 1
    i32.shl
    local.set $3
    local.get $3
    call $~lib/runtime/allocate
   end
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
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.15 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/util/number/itoa<i64> (; 286 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa64
  return
 )
 (func $~lib/util/number/itoa_stream<i64> (; 287 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
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
  global.get $~lib/builtins/u32.MAX_VALUE
  i64.extend_i32_u
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
 (func $~lib/array/Array<i64>#join_int (; 288 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i64.load
   call $~lib/util/number/itoa<i64>
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 21
  local.get $4
  i32.add
  local.get $2
  i32.mul
  i32.const 21
  i32.add
  local.set $5
  block $~lib/runtime/ALLOCATE|inlined.20 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/allocate
  end
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $6
   loop $repeat|0
    local.get $6
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $6
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.set $9
     local.get $8
     local.get $7
     local.get $8
     local.get $9
     call $~lib/util/number/itoa_stream<i64>
     i32.add
     local.set $8
     local.get $4
     if
      local.get $7
      local.get $8
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $8
      local.get $4
      i32.add
      local.set $8
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.set $9
  local.get $8
  local.get $7
  local.get $8
  local.get $9
  call $~lib/util/number/itoa_stream<i64>
  i32.add
  local.set $8
  local.get $5
  local.get $8
  i32.gt_s
  if
   local.get $7
   i32.const 0
   local.get $8
   call $~lib/string/String#substring
   local.set $6
   block $~lib/runtime/DISCARD|inlined.9
    local.get $7
    local.set $10
    local.get $10
    call $~lib/runtime/discard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.16 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<i64>#join (; 289 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#join_int
  return
 )
 (func $~lib/array/Array<i64>#toString (; 290 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<i64>#join
 )
 (func $~lib/array/Array<~lib/string/String | null>#join_str (; 291 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   block
    i32.const 0
    local.set $7
    local.get $2
    i32.const 1
    i32.add
    local.set $8
   end
   loop $repeat|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $6
     local.get $6
     i32.const 0
     i32.ne
     if
      local.get $5
      local.get $6
      call $~lib/string/String#get:length
      i32.add
      local.set $5
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
  local.set $9
  block $~lib/runtime/ALLOCATE|inlined.21 (result i32)
   local.get $5
   local.get $4
   local.get $2
   i32.mul
   i32.add
   i32.const 1
   i32.shl
   local.set $8
   local.get $8
   call $~lib/runtime/allocate
  end
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
    block
     local.get $3
     local.get $8
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $6
     local.get $6
     i32.const 0
     i32.ne
     if
      local.get $6
      call $~lib/string/String#get:length
      local.set $7
      local.get $10
      local.get $9
      i32.const 1
      i32.shl
      i32.add
      local.get $6
      local.get $7
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $9
      local.get $7
      i32.add
      local.set $9
     end
     local.get $4
     if
      local.get $10
      local.get $9
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $9
      local.get $4
      i32.add
      local.set $9
     end
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
  local.get $3
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $6
  local.get $6
  i32.const 0
  i32.ne
  if
   local.get $10
   local.get $9
   i32.const 1
   i32.shl
   i32.add
   local.get $6
   local.get $6
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.17 (result i32)
   local.get $10
   local.set $8
   local.get $8
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<~lib/string/String | null>#join (; 292 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#join_str
  return
 )
 (func $~lib/array/Array<~lib/string/String | null>#toString (; 293 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<~lib/string/String | null>#join
 )
 (func $~lib/array/Array<~lib/string/String>#toString (; 294 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#join_arr (; 295 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  i32.const 4200
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $2
  i32.eqz
  if
   local.get $5
   i32.load
   local.set $6
   local.get $6
   if (result i32)
    local.get $6
    local.get $1
    call $~lib/array/Array<i32>#join
   else    
    i32.const 4200
   end
   return
  end
  block $break|0
   i32.const 0
   local.set $7
   loop $repeat|0
    local.get $7
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $5
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $6
     local.get $6
     if
      local.get $3
      local.get $6
      local.get $1
      call $~lib/array/Array<i32>#join
      call $~lib/string/String.__concat
      local.set $3
     end
     local.get $4
     if
      local.get $3
      local.get $1
      call $~lib/string/String.__concat
      local.set $3
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $6
  local.get $6
  if
   local.get $3
   local.get $6
   local.get $1
   call $~lib/array/Array<i32>#join
   call $~lib/string/String.__concat
   local.set $3
  end
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#join (; 296 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#join_arr
  return
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#toString (; 297 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<~lib/array/Array<i32>>#join
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>~iterate (; 298 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
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
     block
      local.get $2
      i32.load
      local.set $4
      i32.const 1
      global.set $~lib/argc
      local.get $4
      local.get $1
      call_indirect (type $FUNCSIG$vi)
      local.get $4
      local.get $1
      call $~lib/array/Array<u8>~iterate
      local.get $2
      i32.const 4
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/util/number/itoa<u8> (; 299 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u8> (; 300 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<u8>#join_int (; 301 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load8_u
   call $~lib/util/number/itoa<u8>
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  i32.const 10
  local.get $4
  i32.add
  local.get $2
  i32.mul
  i32.const 10
  i32.add
  local.set $5
  block $~lib/runtime/ALLOCATE|inlined.22 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/allocate
  end
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $6
   loop $repeat|0
    local.get $6
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $6
     i32.const 0
     i32.shl
     i32.add
     i32.load8_u
     local.set $9
     local.get $8
     local.get $7
     local.get $8
     local.get $9
     call $~lib/util/number/itoa_stream<u8>
     i32.add
     local.set $8
     local.get $4
     if
      local.get $7
      local.get $8
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $8
      local.get $4
      i32.add
      local.set $8
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
  local.get $2
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
  local.set $9
  local.get $8
  local.get $7
  local.get $8
  local.get $9
  call $~lib/util/number/itoa_stream<u8>
  i32.add
  local.set $8
  local.get $5
  local.get $8
  i32.gt_s
  if
   local.get $7
   i32.const 0
   local.get $8
   call $~lib/string/String#substring
   local.set $6
   block $~lib/runtime/DISCARD|inlined.10
    local.get $7
    local.set $10
    local.get $10
    call $~lib/runtime/discard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.18 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/array/Array<u8>#join (; 302 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#join_int
  return
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#join_arr (; 303 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  i32.const 4200
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $2
  i32.eqz
  if
   local.get $5
   i32.load
   local.set $6
   local.get $6
   if (result i32)
    local.get $6
    local.get $1
    call $~lib/array/Array<u8>#join
   else    
    i32.const 4200
   end
   return
  end
  block $break|0
   i32.const 0
   local.set $7
   loop $repeat|0
    local.get $7
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $5
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $6
     local.get $6
     if
      local.get $3
      local.get $6
      local.get $1
      call $~lib/array/Array<u8>#join
      call $~lib/string/String.__concat
      local.set $3
     end
     local.get $4
     if
      local.get $3
      local.get $1
      call $~lib/string/String.__concat
      local.set $3
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $6
  local.get $6
  if
   local.get $3
   local.get $6
   local.get $1
   call $~lib/array/Array<u8>#join
   call $~lib/string/String.__concat
   local.set $3
  end
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#join (; 304 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<u8>>#join_arr
  return
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#toString (; 305 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<~lib/array/Array<u8>>#join
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>~iterate (; 306 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
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
     block
      local.get $2
      i32.load
      local.set $4
      i32.const 1
      global.set $~lib/argc
      local.get $4
      local.get $1
      call_indirect (type $FUNCSIG$vi)
      local.get $4
      local.get $1
      call $~lib/array/Array<u32>~iterate
      local.get $2
      i32.const 4
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>~iterate (; 307 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.load
  local.get $1
  call_indirect (type $FUNCSIG$vi)
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
     block
      local.get $2
      i32.load
      local.set $4
      i32.const 1
      global.set $~lib/argc
      local.get $4
      local.get $1
      call_indirect (type $FUNCSIG$vi)
      local.get $4
      local.get $1
      call $~lib/array/Array<~lib/array/Array<u32>>~iterate
      local.get $2
      i32.const 4
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#join_arr (; 308 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  i32.const 4200
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $2
  i32.eqz
  if
   local.get $5
   i32.load
   local.set $6
   local.get $6
   if (result i32)
    local.get $6
    local.get $1
    call $~lib/array/Array<u32>#join
   else    
    i32.const 4200
   end
   return
  end
  block $break|0
   i32.const 0
   local.set $7
   loop $repeat|0
    local.get $7
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $5
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $6
     local.get $6
     if
      local.get $3
      local.get $6
      local.get $1
      call $~lib/array/Array<u32>#join
      call $~lib/string/String.__concat
      local.set $3
     end
     local.get $4
     if
      local.get $3
      local.get $1
      call $~lib/string/String.__concat
      local.set $3
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $6
  local.get $6
  if
   local.get $3
   local.get $6
   local.get $1
   call $~lib/array/Array<u32>#join
   call $~lib/string/String.__concat
   local.set $3
  end
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#join (; 309 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<u32>>#join_arr
  return
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr (; 310 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4200
   return
  end
  i32.const 4200
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $2
  i32.eqz
  if
   local.get $5
   i32.load
   local.set $6
   local.get $6
   if (result i32)
    local.get $6
    local.get $1
    call $~lib/array/Array<~lib/array/Array<u32>>#join
   else    
    i32.const 4200
   end
   return
  end
  block $break|0
   i32.const 0
   local.set $7
   loop $repeat|0
    local.get $7
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $5
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $6
     local.get $6
     if
      local.get $3
      local.get $6
      local.get $1
      call $~lib/array/Array<~lib/array/Array<u32>>#join
      call $~lib/string/String.__concat
      local.set $3
     end
     local.get $4
     if
      local.get $3
      local.get $1
      call $~lib/string/String.__concat
      local.set $3
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $6
  local.get $6
  if
   local.get $3
   local.get $6
   local.get $1
   call $~lib/array/Array<~lib/array/Array<u32>>#join
   call $~lib/string/String.__concat
   local.set $3
  end
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join (; 311 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr
  return
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#toString (; 312 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join
 )
 (func $start:std/array (; 313 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  global.set $std/array/arr
  global.get $std/array/Null
  call $~lib/array/Array.isArray<~lib/array/Array<i32> | null>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 40
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array.isArray<~lib/array/Array<i32>>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 41
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $std/array/P#constructor
  call $~lib/array/Array.isArray<std/array/P>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 42
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#constructor
  call $~lib/array/Array.isArray<~lib/typedarray/Uint8Array>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 43
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/num
  call $~lib/array/Array.isArray<i32>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 44
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/str
  call $~lib/array/Array.isArray<~lib/string/String>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 45
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr8
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u8>#fill
  drop
  global.get $std/array/arr8
  i32.const 5
  i32.const 8
  i32.const 0
  i32.const 248
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 52
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr8
  i32.const 0
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<u8>#fill
  drop
  global.get $std/array/arr8
  i32.const 5
  i32.const 8
  i32.const 0
  i32.const 320
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 55
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr8
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u8>#fill
  drop
  global.get $std/array/arr8
  i32.const 5
  i32.const 8
  i32.const 0
  i32.const 344
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 58
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr8
  i32.const 2
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<u8>#fill
  drop
  global.get $std/array/arr8
  i32.const 5
  i32.const 8
  i32.const 0
  i32.const 368
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 61
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr8
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u8>#fill
  drop
  global.get $std/array/arr8
  i32.const 5
  i32.const 8
  i32.const 0
  i32.const 392
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 64
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr32
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u32>#fill
  drop
  global.get $std/array/arr32
  i32.const 5
  i32.const 10
  i32.const 2
  i32.const 488
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 69
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr32
  i32.const 0
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<u32>#fill
  drop
  global.get $std/array/arr32
  i32.const 5
  i32.const 10
  i32.const 2
  i32.const 528
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 72
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr32
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u32>#fill
  drop
  global.get $std/array/arr32
  i32.const 5
  i32.const 10
  i32.const 2
  i32.const 568
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 75
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr32
  i32.const 2
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<u32>#fill
  drop
  global.get $std/array/arr32
  i32.const 5
  i32.const 10
  i32.const 2
  i32.const 608
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 78
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr32
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u32>#fill
  drop
  global.get $std/array/arr32
  i32.const 5
  i32.const 10
  i32.const 2
  i32.const 648
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 81
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 85
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 86
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 90
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 91
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 92
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  global.set $std/array/i
  global.get $std/array/i
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 96
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 97
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 98
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 102
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 103
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 104
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 108
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 109
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 110
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 111
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 115
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 116
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 117
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 118
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 119
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  global.set $std/array/other
  global.get $std/array/arr
  global.get $std/array/other
  call $~lib/array/Array<i32>#concat
  global.set $std/array/out
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 126
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 127
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 128
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 0
  i32.const 4
  i32.const 2
  i32.const 688
  call $~lib/runtime/makeArray
  call $~lib/array/Array<i32>#concat
  drop
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 131
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 133
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 134
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 135
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/other
  i32.const 46
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/other
  i32.const 47
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  global.get $std/array/other
  call $~lib/array/Array<i32>#concat
  global.set $std/array/out
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 142
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/other
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 143
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  call $~lib/array/Array<i32>#get:length
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 144
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 145
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 146
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 147
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 46
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 148
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 4
  call $~lib/array/Array<i32>#__get
  i32.const 47
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 149
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/out
  call $~lib/array/Array<i32>#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 152
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#concat
  global.set $std/array/out
  global.get $std/array/out
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 155
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 156
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/source
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 159
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/source
  global.get $std/array/arr
  call $~lib/array/Array<i32>#concat
  global.set $std/array/out
  global.get $std/array/out
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 161
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/source
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 162
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 752
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const 3
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 792
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 168
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 832
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 3
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 872
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 170
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 912
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 952
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 172
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 992
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 2
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1032
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 174
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1072
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1112
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 176
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1152
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1192
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 178
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1232
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 2
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1272
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 180
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1312
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1352
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 182
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1392
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1432
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 184
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1472
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  i32.const -2
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1512
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 186
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1552
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1592
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 188
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1632
  call $~lib/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1672
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 190
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
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
   i32.const 152
   i32.const 196
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 197
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 198
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 199
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 200
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 201
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 205
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 206
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 207
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 208
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 209
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 210
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 211
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 217
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 218
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 219
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 220
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 221
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 222
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 223
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 227
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 228
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 229
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 230
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 231
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 232
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#reverse
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 238
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 239
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 240
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 241
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 242
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 251
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 255
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 259
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 263
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 267
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 271
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 275
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 279
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 283
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 287
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 44
  i32.const 0
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 293
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 42
  i32.const 0
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 297
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 45
  i32.const 0
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 301
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 100
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 305
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -100
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 309
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -2
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 313
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -4
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 317
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 0
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 321
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 1
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 325
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 2
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 329
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  i32.const 1
  call $~lib/array/Array<i32>#splice
  drop
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 333
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 334
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 335
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 336
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1784
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 341
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 0
  i32.const 4
  i32.const 2
  i32.const 1824
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 342
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1840
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  i32.const 3
  i32.const 4
  i32.const 2
  i32.const 1880
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 345
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 2
  i32.const 4
  i32.const 2
  i32.const 1912
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 346
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1936
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#splice
  i32.const 2
  i32.const 4
  i32.const 2
  i32.const 1976
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 349
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 3
  i32.const 4
  i32.const 2
  i32.const 2000
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 350
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2032
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#splice
  i32.const 1
  i32.const 4
  i32.const 2
  i32.const 2072
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 353
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 4
  i32.const 4
  i32.const 2
  i32.const 2096
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 354
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2128
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -1
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  i32.const 1
  i32.const 4
  i32.const 2
  i32.const 2168
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 357
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 4
  i32.const 4
  i32.const 2
  i32.const 2192
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 358
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2224
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  i32.const 2
  i32.const 4
  i32.const 2
  i32.const 2264
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 361
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 3
  i32.const 4
  i32.const 2
  i32.const 2288
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 362
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2320
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -2
  i32.const 1
  call $~lib/array/Array<i32>#splice
  i32.const 1
  i32.const 4
  i32.const 2
  i32.const 2360
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 365
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 4
  i32.const 4
  i32.const 2
  i32.const 2384
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 366
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2416
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -7
  i32.const 1
  call $~lib/array/Array<i32>#splice
  i32.const 1
  i32.const 4
  i32.const 2
  i32.const 2456
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 369
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 4
  i32.const 4
  i32.const 2
  i32.const 2480
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 370
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2512
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#splice
  i32.const 0
  i32.const 4
  i32.const 2
  i32.const 2552
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 373
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2568
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 374
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2608
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 1
  i32.const -2
  call $~lib/array/Array<i32>#splice
  i32.const 0
  i32.const 4
  i32.const 2
  i32.const 2648
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 377
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2664
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 378
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2704
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 4
  i32.const 0
  call $~lib/array/Array<i32>#splice
  i32.const 0
  i32.const 4
  i32.const 2
  i32.const 2744
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 381
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2760
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 382
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2800
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 7
  i32.const 0
  call $~lib/array/Array<i32>#splice
  i32.const 0
  i32.const 4
  i32.const 2
  i32.const 2840
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 385
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2856
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 386
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2896
  call $~lib/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 7
  i32.const 5
  call $~lib/array/Array<i32>#splice
  i32.const 0
  i32.const 4
  i32.const 2
  i32.const 2936
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 389
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 2952
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 390
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
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
  i32.const 12
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 400
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 13
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 403
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 14
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 406
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 15
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 414
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 415
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 16
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 417
   i32.const 0
   call $~lib/env/abort
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
  i32.const 17
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 430
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 431
   i32.const 0
   call $~lib/env/abort
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
  i32.const 18
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 439
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 19
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 442
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 20
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 450
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 451
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 21
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 453
   i32.const 0
   call $~lib/env/abort
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
  i32.const 22
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 466
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 467
   i32.const 0
   call $~lib/env/abort
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
  i32.const 23
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 475
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 24
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 478
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 25
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 486
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 487
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 26
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 489
   i32.const 0
   call $~lib/env/abort
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
  i32.const 27
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 502
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 503
   i32.const 0
   call $~lib/env/abort
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
  i32.const 28
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 512
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 29
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 521
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 522
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 30
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 525
   i32.const 0
   call $~lib/env/abort
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
  i32.const 31
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 539
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 540
   i32.const 0
   call $~lib/env/abort
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
  i32.const 32
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 565
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $break|0
   i32.const 0
   local.set $0
   loop $repeat|0
    local.get $0
    i32.const 100
    i32.lt_s
    i32.eqz
    br_if $break|0
    global.get $std/array/arr
    call $~lib/array/Array<i32>#pop
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
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
  global.get $std/array/arr
  i32.const 33
  call $~lib/array/Array<i32>#map<f32>
  global.set $std/array/newArr
  global.get $std/array/newArr
  call $~lib/array/Array<f32>#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 576
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/newArr
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
   i32.const 152
   i32.const 577
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 36
  call $~lib/array/Array<i32>#map<i32>
  drop
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 586
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 587
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 37
  call $~lib/array/Array<i32>#map<i32>
  drop
  global.get $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 594
   i32.const 0
   call $~lib/env/abort
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
  i32.const 38
  call $~lib/array/Array<i32>#map<i32>
  drop
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 609
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 610
   i32.const 0
   call $~lib/env/abort
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
  i32.const 39
  call $~lib/array/Array<i32>#filter
  global.set $std/array/filteredArr
  global.get $std/array/filteredArr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 618
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 40
  call $~lib/array/Array<i32>#filter
  drop
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 627
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 628
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 41
  call $~lib/array/Array<i32>#filter
  drop
  global.get $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 635
   i32.const 0
   call $~lib/env/abort
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
  i32.const 42
  call $~lib/array/Array<i32>#filter
  drop
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 650
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 651
   i32.const 0
   call $~lib/env/abort
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
  i32.const 43
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 659
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 44
  i32.const 4
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 663
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 45
  i32.const 0
  call $~lib/array/Array<i32>#reduce<bool>
  i32.const 0
  i32.ne
  global.set $std/array/boolVal
  global.get $std/array/boolVal
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 666
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 46
  i32.const 0
  call $~lib/array/Array<i32>#reduce<bool>
  i32.const 0
  i32.ne
  global.set $std/array/boolVal
  global.get $std/array/boolVal
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 669
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 47
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 677
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 678
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 48
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 680
   i32.const 0
   call $~lib/env/abort
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
  i32.const 49
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 693
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 694
   i32.const 0
   call $~lib/env/abort
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
  i32.const 50
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 702
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 51
  i32.const 4
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 706
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 52
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<bool>
  i32.const 0
  i32.ne
  global.set $std/array/boolVal
  global.get $std/array/boolVal
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 709
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 53
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<bool>
  i32.const 0
  i32.ne
  global.set $std/array/boolVal
  global.get $std/array/boolVal
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 712
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 54
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 720
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 721
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 55
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 723
   i32.const 0
   call $~lib/env/abort
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
  i32.const 56
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 736
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 737
   i32.const 0
   call $~lib/env/abort
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
  block (result i32)
   i32.const 0
   global.set $~lib/argc
   global.get $std/array/f32ArrayTyped
   i32.const 0
   call $~lib/array/Array<f32>#sort|trampoline
  end
  drop
  global.get $std/array/f32ArrayTyped
  i32.const 8
  i32.const 34
  i32.const 2
  i32.const 3304
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 825
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   global.set $~lib/argc
   global.get $std/array/f64ArrayTyped
   i32.const 0
   call $~lib/array/Array<f64>#sort|trampoline
  end
  drop
  global.get $std/array/f64ArrayTyped
  i32.const 8
  i32.const 58
  i32.const 3
  i32.const 3464
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 829
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   global.set $~lib/argc
   global.get $std/array/i32ArrayTyped
   i32.const 0
   call $~lib/array/Array<i32>#sort|trampoline
  end
  drop
  global.get $std/array/i32ArrayTyped
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 3616
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 833
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   global.set $~lib/argc
   global.get $std/array/u32ArrayTyped
   i32.const 0
   call $~lib/array/Array<u32>#sort|trampoline
  end
  drop
  global.get $std/array/u32ArrayTyped
  i32.const 5
  i32.const 10
  i32.const 2
  i32.const 3728
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 837
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 64
  call $std/array/createReverseOrderedArray
  global.set $std/array/reversed64
  i32.const 128
  call $std/array/createReverseOrderedArray
  global.set $std/array/reversed128
  i32.const 1024
  call $std/array/createReverseOrderedArray
  global.set $std/array/reversed1024
  i32.const 10000
  call $std/array/createReverseOrderedArray
  global.set $std/array/reversed10000
  i32.const 512
  call $std/array/createRandomOrderedArray
  global.set $std/array/randomized512
  global.get $std/array/reversed0
  call $std/array/assertSortedDefault<i32>
  global.get $std/array/reversed1
  call $std/array/assertSortedDefault<i32>
  global.get $std/array/reversed1
  i32.const 1
  i32.const 4
  i32.const 2
  i32.const 4056
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 857
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed2
  call $std/array/assertSortedDefault<i32>
  global.get $std/array/reversed2
  i32.const 2
  i32.const 4
  i32.const 2
  i32.const 4080
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 860
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed4
  call $std/array/assertSortedDefault<i32>
  global.get $std/array/reversed4
  global.get $std/array/expected4
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 863
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed64
  call $std/array/assertSortedDefault<i32>
  global.get $std/array/reversed64
  global.get $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 866
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed128
  call $std/array/assertSortedDefault<i32>
  global.get $std/array/reversed128
  global.get $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 869
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed1024
  call $std/array/assertSortedDefault<i32>
  global.get $std/array/reversed1024
  global.get $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 872
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed10000
  call $std/array/assertSortedDefault<i32>
  global.get $std/array/reversed10000
  global.get $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 875
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/randomized512
  call $std/array/assertSortedDefault<i32>
  i32.const 64
  call $std/array/createRandomOrderedArray
  global.set $std/array/randomized64
  i32.const 257
  call $std/array/createRandomOrderedArray
  global.set $std/array/randomized257
  global.get $std/array/randomized64
  i32.const 64
  call $std/array/assertSorted<i32>
  global.get $std/array/randomized64
  i32.const 65
  call $std/array/assertSorted<i32>
  global.get $std/array/randomized257
  i32.const 66
  call $std/array/assertSorted<i32>
  global.get $std/array/randomized257
  i32.const 67
  call $std/array/assertSorted<i32>
  i32.const 512
  call $std/array/createReverseOrderedNestedArray
  global.set $std/array/reversedNested512
  global.get $std/array/reversedNested512
  i32.const 70
  call $std/array/assertSorted<~lib/array/Array<i32>>
  i32.const 512
  call $std/array/createReverseOrderedElementsArray
  global.set $std/array/reversedElements512
  global.get $std/array/reversedElements512
  i32.const 74
  call $std/array/assertSorted<std/array/Proxy<i32>>
  block
   i32.const 1
   global.set $~lib/argc
   global.get $std/array/randomStringsActual
   i32.const 0
   call $std/array/assertSorted<~lib/string/String | null>|trampoline
  end
  global.get $std/array/randomStringsActual
  global.get $std/array/randomStringsExpected
  i32.const 0
  call $std/array/isArraysEqual<~lib/string/String | null>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 905
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 400
  call $std/array/createRandomStringArray
  global.set $std/array/randomStrings400
  block
   i32.const 1
   global.set $~lib/argc
   global.get $std/array/randomStrings400
   i32.const 0
   call $std/array/assertSorted<~lib/string/String>|trampoline
  end
  i32.const 2
  i32.const 81
  i32.const 0
  i32.const 4552
  call $~lib/runtime/makeArray
  i32.const 4528
  call $~lib/array/Array<bool>#join
  i32.const 4576
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 914
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  i32.const 2
  i32.const 5120
  call $~lib/runtime/makeArray
  i32.const 4200
  call $~lib/array/Array<i32>#join
  i32.const 5152
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 915
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 10
  i32.const 2
  i32.const 5240
  call $~lib/runtime/makeArray
  i32.const 5216
  call $~lib/array/Array<u32>#join
  i32.const 5152
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 916
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 4
  i32.const 2
  i32.const 5320
  call $~lib/runtime/makeArray
  i32.const 5296
  call $~lib/array/Array<i32>#join
  i32.const 5344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 917
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 6
  i32.const 58
  i32.const 3
  i32.const 6672
  call $~lib/runtime/makeArray
  i32.const 5472
  call $~lib/array/Array<f64>#join
  i32.const 6736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 918
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 78
  i32.const 2
  i32.const 6888
  call $~lib/runtime/makeArray
  i32.const 4200
  call $~lib/array/Array<~lib/string/String>#join
  i32.const 6832
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 919
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 3
   i32.const 88
   i32.const 2
   i32.const 0
   call $~lib/runtime/makeArray
   local.set $0
   local.get $0
   i32.load offset=4
   local.set $1
   local.get $1
   block (result i32)
    i32.const 0
    call $std/array/Ref#constructor
    local.set $2
    local.get $2
    if
     local.get $2
     local.get $0
     call $~lib/collector/dummy/__ref_link
    end
    local.get $2
   end
   i32.store
   local.get $1
   block (result i32)
    i32.const 0
    local.set $2
    local.get $2
    if
     local.get $2
     local.get $0
     call $~lib/collector/dummy/__ref_link
    end
    local.get $2
   end
   i32.store offset=4
   local.get $1
   block (result i32)
    i32.const 0
    call $std/array/Ref#constructor
    local.set $2
    local.get $2
    if
     local.get $2
     local.get $0
     call $~lib/collector/dummy/__ref_link
    end
    local.get $2
   end
   i32.store offset=8
   local.get $0
  end
  global.set $std/array/refArr
  global.get $std/array/refArr
  i32.const 4528
  call $~lib/array/Array<std/array/Ref | null>#join
  i32.const 6968
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 921
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed0
  call $~lib/array/Array<i32>#toString
  i32.const 4200
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 925
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed1
  call $~lib/array/Array<i32>#toString
  i32.const 6832
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 926
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed2
  call $~lib/array/Array<i32>#toString
  i32.const 7048
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 927
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed4
  call $~lib/array/Array<i32>#toString
  i32.const 7072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 928
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 90
  i32.const 0
  i32.const 7128
  call $~lib/runtime/makeArray
  call $~lib/array/Array<i8>#toString
  i32.const 7152
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 930
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 92
  i32.const 1
  i32.const 7208
  call $~lib/runtime/makeArray
  call $~lib/array/Array<u16>#toString
  i32.const 7232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 931
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 83
  i32.const 3
  i32.const 7312
  call $~lib/runtime/makeArray
  call $~lib/array/Array<u64>#toString
  i32.const 7352
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 932
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  i32.const 94
  i32.const 3
  i32.const 7464
  call $~lib/runtime/makeArray
  call $~lib/array/Array<i64>#toString
  i32.const 7512
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 933
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/randomStringsExpected
  call $~lib/array/Array<~lib/string/String | null>#toString
  i32.const 7616
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 934
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  i32.const 78
  i32.const 2
  i32.const 7744
  call $~lib/runtime/makeArray
  call $~lib/array/Array<~lib/string/String>#toString
  i32.const 7776
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 935
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   i32.const 68
   i32.const 2
   i32.const 0
   call $~lib/runtime/makeArray
   local.set $1
   local.get $1
   i32.load offset=4
   local.set $0
   local.get $0
   block (result i32)
    i32.const 2
    i32.const 4
    i32.const 2
    i32.const 7832
    call $~lib/runtime/makeArray
    local.set $2
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_link
    local.get $2
   end
   i32.store
   local.get $0
   block (result i32)
    i32.const 2
    i32.const 4
    i32.const 2
    i32.const 7856
    call $~lib/runtime/makeArray
    local.set $2
    local.get $2
    local.get $1
    call $~lib/collector/dummy/__ref_link
    local.get $2
   end
   i32.store offset=4
   local.get $1
  end
  global.set $std/array/subarr32
  global.get $std/array/subarr32
  call $~lib/array/Array<~lib/array/Array<i32>>#toString
  i32.const 7880
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 938
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   i32.const 96
   i32.const 2
   i32.const 0
   call $~lib/runtime/makeArray
   local.set $0
   local.get $0
   i32.load offset=4
   local.set $1
   local.get $1
   block (result i32)
    i32.const 2
    i32.const 8
    i32.const 0
    i32.const 7936
    call $~lib/runtime/makeArray
    local.set $2
    local.get $2
    local.get $0
    call $~lib/collector/dummy/__ref_link
    local.get $2
   end
   i32.store
   local.get $1
   block (result i32)
    i32.const 2
    i32.const 8
    i32.const 0
    i32.const 7960
    call $~lib/runtime/makeArray
    local.set $2
    local.get $2
    local.get $0
    call $~lib/collector/dummy/__ref_link
    local.get $2
   end
   i32.store offset=4
   local.get $0
  end
  global.set $std/array/subarr8
  global.get $std/array/subarr8
  call $~lib/array/Array<~lib/array/Array<u8>>#toString
  i32.const 7880
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 941
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   i32.const 100
   i32.const 2
   i32.const 0
   call $~lib/runtime/makeArray
   local.set $0
   local.get $0
   i32.load offset=4
   local.set $1
   local.get $1
   block (result i32)
    block (result i32)
     i32.const 1
     i32.const 98
     i32.const 2
     i32.const 0
     call $~lib/runtime/makeArray
     local.set $2
     local.get $2
     i32.load offset=4
     local.set $3
     local.get $3
     block (result i32)
      i32.const 1
      i32.const 10
      i32.const 2
      i32.const 8056
      call $~lib/runtime/makeArray
      local.set $4
      local.get $4
      local.get $2
      call $~lib/collector/dummy/__ref_link
      local.get $4
     end
     i32.store
     local.get $2
    end
    local.set $3
    local.get $3
    local.get $0
    call $~lib/collector/dummy/__ref_link
    local.get $3
   end
   i32.store
   local.get $0
  end
  global.set $std/array/subarrU32
  global.get $std/array/subarrU32
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#toString
  i32.const 6832
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 944
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/array/main (; 314 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $start (; 315 ;) (type $FUNCSIG$v)
  call $start:std/array
 )
 (func $null (; 316 ;) (type $FUNCSIG$v)
 )
)
