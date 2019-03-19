(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
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
 (type $FUNCSIG$iijijiji (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $FUNCSIG$iiid (func (param i32 i32 f64) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$iiij (func (param i32 i32 i64) (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 48) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 96) "\01\00\00\00\06\00\00\00a\00b\00c\00")
 (data (i32.const 112) "\01\00\00\00\18\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 144) "\02\00\00\00\05\00\00\00\01\02\03\04\05")
 (data (i32.const 160) "\07\00\00\00\10\00\00\00\98\00\00\00\98\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 184) "\02\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 200) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 240) "\02\00\00\00\05\00\00\00\00\00\00\00\00")
 (data (i32.const 256) "\02\00\00\00\05\00\00\00\01\01\00\00\00")
 (data (i32.const 272) "\02\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 288) "\02\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 304) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 336) "\08\00\00\00\10\00\00\008\01\00\008\01\00\00\14\00\00\00\05\00\00\00")
 (data (i32.const 360) "\02\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 392) "\02\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 424) "\02\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 456) "\02\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 488) "\02\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 520) "\02\00\00\00\00\00\00\00")
 (data (i32.const 528) "\02\00\00\00\00\00\00\00")
 (data (i32.const 536) "\04\00\00\00\10\00\00\00\18\02\00\00\18\02\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 560) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 592) "\02\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 624) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 656) "\02\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 688) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 720) "\02\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 752) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 784) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 816) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 848) "\02\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 880) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 912) "\02\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 944) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 976) "\02\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1008) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1040) "\02\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1072) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1104) "\02\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1136) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1168) "\02\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1200) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1232) "\02\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1264) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1296) "\02\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 1328) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1360) "\04\00\00\00\10\00\00\008\05\00\008\05\00\00\14\00\00\00\05\00\00\00")
 (data (i32.const 1384) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1416) "\02\00\00\00\00\00\00\00")
 (data (i32.const 1424) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1456) "\02\00\00\00\0c\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1480) "\02\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 1496) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1528) "\02\00\00\00\08\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 1544) "\02\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\05\00\00\00")
 (data (i32.const 1568) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1600) "\02\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 1616) "\02\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1640) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1672) "\02\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1688) "\02\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 1712) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1744) "\02\00\00\00\08\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1760) "\02\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 1784) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1816) "\02\00\00\00\04\00\00\00\04\00\00\00")
 (data (i32.const 1832) "\02\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05\00\00\00")
 (data (i32.const 1856) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1888) "\02\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 1904) "\02\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1928) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1960) "\02\00\00\00\00\00\00\00")
 (data (i32.const 1968) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2000) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2032) "\02\00\00\00\00\00\00\00")
 (data (i32.const 2040) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2072) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2104) "\02\00\00\00\00\00\00\00")
 (data (i32.const 2112) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2144) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2176) "\02\00\00\00\00\00\00\00")
 (data (i32.const 2184) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2216) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2248) "\02\00\00\00\00\00\00\00")
 (data (i32.const 2256) "\02\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2288) "\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 2320) "\01\00\00\00\ac\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?\00")
 (data (i32.const 2504) "\02\00\00\00 \00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 2544) "\t\00\00\00\10\00\00\00\d0\t\00\00\d0\t\00\00 \00\00\00\08\00\00\00")
 (data (i32.const 2568) "\02\00\00\00 \00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 2608) "\02\00\00\00@\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 2680) "\n\00\00\00\10\00\00\008\n\00\008\n\00\00@\00\00\00\08\00\00\00")
 (data (i32.const 2704) "\02\00\00\00@\00\00\00\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 2776) "\02\00\00\00\14\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02\00\00\00")
 (data (i32.const 2808) "\04\00\00\00\10\00\00\00\e0\n\00\00\e0\n\00\00\14\00\00\00\05\00\00\00")
 (data (i32.const 2832) "\02\00\00\00\14\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 2864) "\02\00\00\00\14\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02\00\00\00")
 (data (i32.const 2896) "\08\00\00\00\10\00\00\008\0b\00\008\0b\00\00\14\00\00\00\05\00\00\00")
 (data (i32.const 2920) "\02\00\00\00\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 2952) "\02\00\00\00\00\00\00\00")
 (data (i32.const 2960) "\04\00\00\00\10\00\00\00\90\0b\00\00\90\0b\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2984) "\02\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 3000) "\04\00\00\00\10\00\00\00\b0\0b\00\00\b0\0b\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 3024) "\02\00\00\00\08\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 3040) "\04\00\00\00\10\00\00\00\d8\0b\00\00\d8\0b\00\00\08\00\00\00\02\00\00\00")
 (data (i32.const 3064) "\02\00\00\00\10\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 3088) "\04\00\00\00\10\00\00\00\00\0c\00\00\00\0c\00\00\10\00\00\00\04\00\00\00")
 (data (i32.const 3112) "\02\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 3136) "\04\00\00\00\10\00\00\000\0c\00\000\0c\00\00\10\00\00\00\04\00\00\00")
 (data (i32.const 3160) "\02\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 3176) "\02\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 3192) "\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 3208) "\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 3224) "\01\00\00\00\04\00\00\00a\00b\00")
 (data (i32.const 3240) "\01\00\00\00\04\00\00\00b\00a\00")
 (data (i32.const 3256) "\01\00\00\00\00\00\00\00")
 (data (i32.const 3264) "\02\00\00\00\1c\00\00\00\80\0c\00\00\90\0c\00\00\80\0c\00\00\a0\0c\00\00\b0\0c\00\00\c0\0c\00\00\00\00\00\00")
 (data (i32.const 3304) "\0e\00\00\00\10\00\00\00\c8\0c\00\00\c8\0c\00\00\1c\00\00\00\07\00\00\00")
 (data (i32.const 3328) "\02\00\00\00\1c\00\00\00\c0\0c\00\00\80\0c\00\00\80\0c\00\00\a0\0c\00\00\90\0c\00\00\b0\0c\00\00\00\00\00\00")
 (data (i32.const 3368) "\0e\00\00\00\10\00\00\00\08\0d\00\00\08\0d\00\00\1c\00\00\00\07\00\00\00")
 (data (i32.const 3392) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 3432) "\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 3448) "\02\00\00\00\02\00\00\00\01\00")
 (data (i32.const 3464) "\01\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 3480) "\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 3504) "\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 3520) "\02\00\00\00\02\00\00\00\01\00")
 (data (i32.const 3536) "\01\00\00\00\14\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e\00")
 (data (i32.const 3568) "\02\00\00\00\0c\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 3592) "\01\00\00\00\02\00\00\000\00")
 (data (i32.const 3608) "\02\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 4016) "\08\00\00\00\10\00\00\00 \0e\00\00 \0e\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 4040) "\02\00\00\00\0c\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 4064) "\01\00\00\00\n\00\00\001\00-\002\00-\003\00")
 (data (i32.const 4088) "\02\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 4112) "\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 4128) "\02\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 4152) "\02\00\00\00\08\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 4168) "\01\00\00\00\04\00\00\00_\00_\00")
 (data (i32.const 4184) "\02\00\00\00\08\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 4200) "\01\00\00\000\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 4256) "\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 4312) "\01\00\00\00\04\00\00\00,\00 \00")
 (data (i32.const 4328) "\01\00\00\00\06\00\00\000\00.\000\00")
 (data (i32.const 4344) "\01\00\00\00\06\00\00\00N\00a\00N\00")
 (data (i32.const 4360) "\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 4392) "\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 4416) "\02\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 5120) "\10\00\00\00\10\00\00\00H\11\00\00H\11\00\00\b8\02\00\00W\00\00\00")
 (data (i32.const 5144) "\02\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 5328) "\11\00\00\00\10\00\00\00 \14\00\00 \14\00\00\ae\00\00\00W\00\00\00")
 (data (i32.const 5352) "\02\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 5400) "\08\00\00\00\10\00\00\00\f0\14\00\00\f0\14\00\00(\00\00\00\n\00\00\00")
 (data (i32.const 5424) "\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 5480) "\01\00\00\00P\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 5568) "\01\00\00\00\02\00\00\001\00")
 (data (i32.const 5584) "\02\00\00\00\0c\00\00\00\c0\0c\00\00\c8\15\00\00\00\00\00\00")
 (data (i32.const 5608) "\02\00\00\00\0c\00\00\00\c0\0c\00\00\c8\15\00\00\00\00\00\00")
 (data (i32.const 5632) "\01\00\00\00\1e\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 5672) "\01\00\00\00@\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 5744) "\01\00\00\00\06\00\00\001\00,\002\00")
 (data (i32.const 5760) "\01\00\00\00\0e\00\00\000\00,\001\00,\002\00,\003\00")
 (data (i32.const 5784) "\02\00\00\00\03\00\00\00\01\ff\00")
 (data (i32.const 5800) "\02\00\00\00\03\00\00\00\01\ff\00")
 (data (i32.const 5816) "\01\00\00\00\0c\00\00\001\00,\00-\001\00,\000\00")
 (data (i32.const 5840) "\02\00\00\00\06\00\00\00\01\00\ff\ff\00\00")
 (data (i32.const 5856) "\02\00\00\00\06\00\00\00\01\00\ff\ff\00\00")
 (data (i32.const 5872) "\01\00\00\00\12\00\00\001\00,\006\005\005\003\005\00,\000\00")
 (data (i32.const 5904) "\02\00\00\00\18\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 5936) "\02\00\00\00\18\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 5968) "\01\00\00\000\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000\00")
 (data (i32.const 6024) "\02\00\00\00 \00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 6064) "\02\00\00\00 \00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 6104) "\01\00\00\00T\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 6200) "\01\00\00\00\1a\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,\00")
 (data (i32.const 6240) "\01\00\00\00\02\00\00\002\00")
 (data (i32.const 6256) "\01\00\00\00\02\00\00\004\00")
 (data (i32.const 6272) "\02\00\00\00\10\00\00\00\c8\15\00\00h\18\00\00\00\00\00\00x\18\00\00")
 (data (i32.const 6296) "\02\00\00\00\10\00\00\00\c8\15\00\00h\18\00\00\00\00\00\00x\18\00\00")
 (data (i32.const 6320) "\01\00\00\00\0c\00\00\001\00,\002\00,\00,\004\00")
 (data (i32.const 6344) "\02\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 6360) "\02\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 6376) "\02\00\00\00\08\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 6392) "\01\00\00\00\0e\00\00\001\00,\002\00,\003\00,\004\00")
 (data (i32.const 6416) "\02\00\00\00\02\00\00\00\01\02")
 (data (i32.const 6432) "\02\00\00\00\02\00\00\00\01\02")
 (data (i32.const 6448) "\02\00\00\00\02\00\00\00\03\04")
 (data (i32.const 6464) "\02\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 6480) "\02\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 6496) "\02\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 6512) "\02\00\00\00\04\00\00\00\01\00\00\00")
 (table $0 56 funcref)
 (elem (i32.const 0) $null $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|4 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|18 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|30 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|34 $start:std/array~anonymous|35 $start:std/array~anonymous|36 $start:std/array~anonymous|37 $start:std/array~anonymous|38 $start:std/array~anonymous|39 $start:std/array~anonymous|40 $start:std/array~anonymous|41 $start:std/array~anonymous|42 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|1 $start:std/array~anonymous|43 $start:std/array~anonymous|44 $start:std/array~anonymous|45 $start:std/array~anonymous|46 $start:std/array~anonymous|47 $start:std/array~anonymous|48 $~lib/util/sort/COMPARATOR<String>~anonymous|0)
 (global $~lib/runtime/GC_IMPLEMENTED i32 (i32.const 0))
 (global $~lib/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/runtime/MAX_BYTELENGTH i32 (i32.const 1073741816))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/num (mut i32) (i32.const 1))
 (global $std/array/Null (mut i32) (i32.const 0))
 (global $std/array/str (mut i32) (i32.const 104))
 (global $std/array/arr8 (mut i32) (i32.const 168))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/array/arr32 (mut i32) (i32.const 344))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $std/array/other (mut i32) (i32.const 0))
 (global $std/array/out (mut i32) (i32.const 0))
 (global $std/array/source (mut i32) (i32.const 544))
 (global $std/array/cwArr (mut i32) (i32.const 0))
 (global $std/array/includes (mut i32) (i32.const 0))
 (global $std/array/sarr (mut i32) (i32.const 1368))
 (global $~lib/argc (mut i32) (i32.const 0))
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
 (global $std/array/charset i32 (i32.const 2328))
 (global $std/array/f32ArrayTyped (mut i32) (i32.const 2552))
 (global $std/array/f64ArrayTyped (mut i32) (i32.const 2688))
 (global $std/array/i32ArrayTyped (mut i32) (i32.const 2816))
 (global $std/array/u32ArrayTyped (mut i32) (i32.const 2904))
 (global $std/array/reversed0 (mut i32) (i32.const 2968))
 (global $std/array/reversed1 (mut i32) (i32.const 3008))
 (global $std/array/reversed2 (mut i32) (i32.const 3048))
 (global $std/array/reversed4 (mut i32) (i32.const 3096))
 (global $std/array/expected4 (mut i32) (i32.const 3144))
 (global $std/array/reversed64 (mut i32) (i32.const 0))
 (global $std/array/reversed128 (mut i32) (i32.const 0))
 (global $std/array/reversed1024 (mut i32) (i32.const 0))
 (global $std/array/reversed10000 (mut i32) (i32.const 0))
 (global $std/array/randomized512 (mut i32) (i32.const 0))
 (global $std/array/randomized64 (mut i32) (i32.const 0))
 (global $std/array/randomized257 (mut i32) (i32.const 0))
 (global $std/array/reversedNested512 (mut i32) (i32.const 0))
 (global $std/array/reversedElements512 (mut i32) (i32.const 0))
 (global $std/array/randomStringsActual (mut i32) (i32.const 3312))
 (global $std/array/randomStringsExpected (mut i32) (i32.const 3376))
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
 (global $~lib/memory/HEAP_BASE i32 (i32.const 6524))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/runtime/ADJUSTOBLOCK (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/allocator/arena/__memory_allocate|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   i32.const 1073741824
   i32.gt_u
   if
    unreachable
   end
   global.get $~lib/allocator/arena/offset
   local.set $2
   local.get $2
   local.get $1
   local.tee $3
   i32.const 1
   local.tee $4
   local.get $3
   local.get $4
   i32.gt_u
   select
   i32.add
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   local.set $3
   current_memory
   local.set $4
   local.get $3
   local.get $4
   i32.const 16
   i32.shl
   i32.gt_u
   if
    local.get $3
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
    local.set $5
    local.get $4
    local.tee $6
    local.get $5
    local.tee $7
    local.get $6
    local.get $7
    i32.gt_s
    select
    local.set $6
    local.get $6
    grow_memory
    i32.const 0
    i32.lt_s
    if
     local.get $5
     grow_memory
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
   end
   local.get $3
   global.set $~lib/allocator/arena/offset
   local.get $2
  end
  return
 )
 (func $~lib/runtime/doAllocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/memory/memory.fill (; 5 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
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
   local.set $3
   local.get $0
   local.get $3
   i32.add
   local.set $0
   local.get $2
   local.get $3
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
   local.set $3
   local.get $0
   local.get $3
   i32.add
   local.set $0
   local.get $2
   local.get $3
   i32.sub
   local.set $2
   local.get $4
   i64.extend_i32_u
   local.get $4
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $5
   block $break|0
    loop $continue|0
     local.get $2
     i32.const 32
     i32.ge_u
     if
      block
       local.get $0
       local.get $5
       i64.store
       local.get $0
       i32.const 8
       i32.add
       local.get $5
       i64.store
       local.get $0
       i32.const 16
       i32.add
       local.get $5
       i64.store
       local.get $0
       i32.const 24
       i32.add
       local.get $5
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
 (func $~lib/runtime/assertUnregistered (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 199
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load
  global.get $~lib/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 200
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/runtime/doRegister (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/runtime/assertUnregistered
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  global.get $~lib/runtime/MAX_BYTELENGTH
  i32.gt_u
  if
   i32.const 0
   i32.const 56
   i32.const 24
   i32.const 43
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/ALLOCATE|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/runtime/doAllocate
  end
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  block $~lib/runtime/REGISTER<ArrayBuffer>|inlined.0 (result i32)
   local.get $3
   local.set $2
   local.get $2
   i32.const 2
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/runtime/ArrayBufferView#constructor (; 9 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  global.get $~lib/runtime/MAX_BYTELENGTH
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 16
   i32.const 234
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
    block $~lib/runtime/REGISTER<ArrayBufferView>|inlined.0 (result i32)
     block $~lib/runtime/ALLOCATE|inlined.1 (result i32)
      i32.const 12
      local.set $4
      local.get $4
      call $~lib/runtime/doAllocate
     end
     local.set $4
     local.get $4
     i32.const 3
     call $~lib/runtime/doRegister
    end
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
  local.get $3
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.2 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 4
   call $~lib/runtime/doRegister
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
 (func $~lib/array/Array.isArray<Array<i32> | null> (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 1
  end
 )
 (func $~lib/array/Array.isArray<Array<i32>> (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 1
  end
 )
 (func $std/array/P#constructor (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<P>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.3 (result i32)
     i32.const 0
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 5
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array.isArray<P> (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.4 (result i32)
    i32.const 12
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 6
   call $~lib/runtime/doRegister
  end
  local.get $1
  i32.const 0
  call $~lib/runtime/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/array/Array.isArray<Uint8Array> (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array.isArray<i32> (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array.isArray<String> (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array<u8>#fill (; 19 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 20 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
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
 (func $~lib/memory/memory.copy (; 22 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
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
   local.tee $3
   if (result i32)
    local.get $3
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
          local.tee $3
          i32.const 1
          i32.add
          local.set $0
          local.get $3
         end
         block (result i32)
          local.get $1
          local.tee $3
          i32.const 1
          i32.add
          local.set $1
          local.get $3
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
         local.tee $3
         i32.const 1
         i32.add
         local.set $0
         local.get $3
        end
        block (result i32)
         local.get $1
         local.tee $3
         i32.const 1
         i32.add
         local.set $1
         local.get $3
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
 (func $~lib/runtime/doWrapArray (; 23 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  call $~lib/runtime/doAllocate
  local.get $1
  call $~lib/runtime/doRegister
  local.set $3
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $4
  local.get $4
  call $~lib/runtime/doAllocate
  local.get $1
  call $~lib/runtime/doRegister
  local.set $5
  local.get $3
  local.get $5
  i32.store
  local.get $3
  local.get $5
  i32.store offset=4
  local.get $3
  local.get $4
  i32.store offset=8
  local.get $3
  local.get $4
  local.get $2
  i32.shr_u
  i32.store offset=12
  local.get $5
  local.get $0
  local.get $4
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/array/Array<u8>#get:length (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#__get (; 25 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 208
   i32.const 68
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $std/array/isArraysEqual<u8> (; 26 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<u32>#fill (; 27 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<u32>#get:length (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__get (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 208
   i32.const 68
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $std/array/isArraysEqual<u32> (; 30 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#get:length (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $std/array/internalCapacity<i32> (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.set $1
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 2
  i32.shr_s
 )
 (func $~lib/memory/memory.free (; 33 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  local.set $1
 )
 (func $~lib/runtime/doReallocate (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      i32.const 16
      i32.const 107
      i32.const 8
      call $~lib/env/abort
      unreachable
     end
     local.get $2
     call $~lib/memory/memory.free
    else     
     nop
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
 (func $~lib/array/ensureCapacity (; 35 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
    i32.const 208
    i32.const 10
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
    local.set $5
    local.get $4
    local.set $6
    local.get $5
    local.get $6
    call $~lib/runtime/doReallocate
   end
   local.set $6
   local.get $6
   local.get $3
   i32.ne
   if
    local.get $0
    local.get $6
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
   end
   local.get $0
   local.get $4
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i32>#push (; 36 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  local.get $2
  i32.store offset=12
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 1
  i32.sub
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $2
 )
 (func $~lib/array/Array<i32>#__get (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 208
   i32.const 68
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#pop (; 38 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 208
   i32.const 199
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
 (func $~lib/array/Array<i32>#concat (; 39 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  i32.const 0
  local.get $2
  local.get $3
  i32.add
  call $~lib/array/Array<i32>#constructor
  local.set $4
  local.get $4
  i32.load offset=4
  local.set $5
  local.get $2
  i32.const 2
  i32.shl
  local.set $6
  local.get $5
  local.get $0
  i32.load offset=4
  local.get $6
  call $~lib/memory/memory.copy
  local.get $5
  local.get $6
  i32.add
  local.get $1
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $4
 )
 (func $~lib/array/Array<i32>#copyWithin (; 40 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $std/array/isArraysEqual<i32> (; 41 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#unshift (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<i32>#shift (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 208
   i32.const 260
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
 (func $~lib/array/Array<i32>#reverse (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/array/Array<i32>#indexOf (; 45 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#includes (; 46 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#splice (; 47 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
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
  block $break|0
   i32.const 0
   local.set $4
   loop $repeat|0
    local.get $4
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $9
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $5
     local.get $7
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.get $5
     i32.store
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
 (func $~lib/array/Array<i32>#__set (; 48 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $start:std/array~anonymous|0 (; 49 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.eq
 )
 (func $~lib/array/Array<i32>#findIndex (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:std/array~anonymous|1 (; 51 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.eq
 )
 (func $start:std/array~anonymous|2 (; 52 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|3 (; 53 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|4 (; 54 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|5 (; 55 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|6 (; 56 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#every (; 57 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:std/array~anonymous|7 (; 58 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.le_s
 )
 (func $start:std/array~anonymous|8 (; 59 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|9 (; 60 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|10 (; 61 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.lt_s
 )
 (func $start:std/array~anonymous|11 (; 62 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 3
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#some (; 63 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:std/array~anonymous|12 (; 64 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const -1
  i32.le_s
 )
 (func $start:std/array~anonymous|13 (; 65 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|14 (; 66 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|15 (; 67 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.gt_s
 )
 (func $start:std/array~anonymous|16 (; 68 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $~lib/array/Array<i32>#forEach (; 69 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $start:std/array~anonymous|17 (; 70 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|18 (; 71 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|19 (; 72 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|20 (; 73 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 120
    i32.const 559
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
 )
 (func $start:std/array~anonymous|21 (; 74 ;) (type $FUNCSIG$fiii) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  f32.convert_i32_s
 )
 (func $~lib/array/Array<f32>#constructor (; 75 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.5 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 9
   call $~lib/runtime/doRegister
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
 (func $~lib/array/Array<i32>#map<f32> (; 76 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 0
  local.get $2
  call $~lib/array/Array<f32>#constructor
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
    block
     local.get $0
     i32.load offset=4
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $6
     block (result f32)
      i32.const 3
      global.set $~lib/argc
      local.get $6
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
    end
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
 (func $~lib/array/Array<f32>#get:length (; 77 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f32>#__get (; 78 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 208
   i32.const 68
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $start:std/array~anonymous|22 (; 79 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#map<i32> (; 80 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/array/Array<i32>#constructor
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
    block
     local.get $0
     i32.load offset=4
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $6
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      local.get $6
      local.get $5
      local.get $0
      local.get $1
      call_indirect (type $FUNCSIG$iiii)
     end
     local.set $7
     local.get $4
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     local.get $7
     i32.store
    end
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
 (func $start:std/array~anonymous|23 (; 81 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|24 (; 82 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|25 (; 83 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#filter (; 84 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
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
    block
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
     i32.const 0
     i32.ne
     if
      local.get $2
      local.get $5
      call $~lib/array/Array<i32>#push
      drop
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
  local.get $2
 )
 (func $start:std/array~anonymous|26 (; 85 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|27 (; 86 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|28 (; 87 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|29 (; 88 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 89 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|30 (; 90 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|31 (; 91 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<i32>#reduce<bool> (; 92 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|32 (; 93 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start:std/array~anonymous|33 (; 94 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|34 (; 95 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|35 (; 96 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|36 (; 97 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 98 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|37 (; 99 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|38 (; 100 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<i32>#reduceRight<bool> (; 101 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|39 (; 102 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start:std/array~anonymous|40 (; 103 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|41 (; 104 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|42 (; 105 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/math/murmurHash3 (; 106 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
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
 (func $~lib/math/splitMix32 (; 107 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/math/NativeMath.seedRandom (; 108 ;) (type $FUNCSIG$vj) (param $0 i64)
  local.get $0
  i64.eqz
  if
   i32.const 0
   i32.const 2296
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
 (func $~lib/util/sort/insertionSort<f32> (; 109 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/util/sort/weakHeapSort<f32> (; 110 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<f32>#sort (; 111 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 208
   i32.const 373
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
   local.set $6
   local.get $2
   local.set $7
   local.get $1
   local.set $8
   local.get $7
   i32.const 256
   i32.lt_s
   if
    local.get $6
    local.get $7
    local.get $8
    call $~lib/util/sort/insertionSort<f32>
   else    
    local.get $6
    local.get $7
    local.get $8
    call $~lib/util/sort/weakHeapSort<f32>
   end
  end
  local.get $0
 )
 (func $~lib/util/sort/COMPARATOR<f32>~anonymous|0 (; 112 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
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
 (func $~lib/array/Array<f32>#sort|trampoline (; 113 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/builtins/isNaN<f32> (; 114 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $std/array/isArraysEqual<f32> (; 115 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/util/sort/insertionSort<f64> (; 116 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/util/sort/weakHeapSort<f64> (; 117 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<f64>#sort (; 118 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 208
   i32.const 373
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
   local.set $6
   local.get $2
   local.set $7
   local.get $1
   local.set $8
   local.get $7
   i32.const 256
   i32.lt_s
   if
    local.get $6
    local.get $7
    local.get $8
    call $~lib/util/sort/insertionSort<f64>
   else    
    local.get $6
    local.get $7
    local.get $8
    call $~lib/util/sort/weakHeapSort<f64>
   end
  end
  local.get $0
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 119 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/array/Array<f64>#sort|trampoline (; 120 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<f64>#get:length (; 121 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f64>#__get (; 122 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 208
   i32.const 68
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/builtins/isNaN<f64> (; 123 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $std/array/isArraysEqual<f64> (; 124 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/util/sort/insertionSort<i32> (; 125 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/util/sort/weakHeapSort<i32> (; 126 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<i32>#sort (; 127 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 373
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
   local.set $5
   local.get $2
   local.set $4
   local.get $1
   local.set $6
   local.get $4
   i32.const 256
   i32.lt_s
   if
    local.get $5
    local.get $4
    local.get $6
    call $~lib/util/sort/insertionSort<i32>
   else    
    local.get $5
    local.get $4
    local.get $6
    call $~lib/util/sort/weakHeapSort<i32>
   end
  end
  local.get $0
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|0 (; 128 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/array/Array<i32>#sort|trampoline (; 129 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/util/sort/insertionSort<u32> (; 130 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/util/sort/weakHeapSort<u32> (; 131 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<u32>#sort (; 132 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 373
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
   local.set $5
   local.get $2
   local.set $4
   local.get $1
   local.set $6
   local.get $4
   i32.const 256
   i32.lt_s
   if
    local.get $5
    local.get $4
    local.get $6
    call $~lib/util/sort/insertionSort<u32>
   else    
    local.get $5
    local.get $4
    local.get $6
    call $~lib/util/sort/weakHeapSort<u32>
   end
  end
  local.get $0
 )
 (func $~lib/util/sort/COMPARATOR<u32>~anonymous|0 (; 133 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $~lib/array/Array<u32>#sort|trampoline (; 134 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/createReverseOrderedArray (; 135 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/array/Array<i32>#constructor
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    local.get $1
    call $~lib/array/Array<i32>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    local.get $1
    call $~lib/array/Array<i32>#get:length
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
 (func $~lib/math/NativeMath.random (; 136 ;) (type $FUNCSIG$d) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   i32.const 0
   i32.const 2296
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
 (func $std/array/createRandomOrderedArray (; 137 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/array/Array<i32>#constructor
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    local.get $1
    call $~lib/array/Array<i32>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    call $~lib/math/NativeMath.random
    local.get $1
    call $~lib/array/Array<i32>#get:length
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
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|1 (; 138 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $std/array/isSorted<i32> (; 139 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/assertSorted<i32> (; 140 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
  local.get $1
  call $std/array/isSorted<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 810
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/array/assertSortedDefault<i32> (; 141 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  block $~lib/util/sort/COMPARATOR<i32>|inlined.1 (result i32)
   i32.const 48
   br $~lib/util/sort/COMPARATOR<i32>|inlined.1
  end
  call $std/array/assertSorted<i32>
 )
 (func $start:std/array~anonymous|43 (; 142 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $start:std/array~anonymous|44 (; 143 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $start:std/array~anonymous|45 (; 144 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $start:std/array~anonymous|46 (; 145 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $~lib/array/Array<Array<i32>>#constructor (; 146 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.6 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 11
   call $~lib/runtime/doRegister
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
 (func $~lib/array/Array<Array<i32>>#get:length (; 147 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<Array<i32>>#__set (; 148 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $~lib/array/Array<Array<i32>>#__get (; 149 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 208
   i32.const 68
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $std/array/createReverseOrderedNestedArray (; 150 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/array/Array<Array<i32>>#constructor
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    local.get $1
    call $~lib/array/Array<Array<i32>>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $1
     local.get $2
     i32.const 0
     i32.const 1
     call $~lib/array/Array<i32>#constructor
     call $~lib/array/Array<Array<i32>>#__set
     local.get $1
     local.get $2
     call $~lib/array/Array<Array<i32>>#__get
     i32.const 0
     local.get $1
     call $~lib/array/Array<Array<i32>>#get:length
     i32.const 1
     i32.sub
     local.get $2
     i32.sub
     call $~lib/array/Array<i32>#__set
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
 (func $start:std/array~anonymous|47 (; 151 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.sub
 )
 (func $~lib/util/sort/insertionSort<Array<i32>> (; 152 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<Array<i32>>#sort (; 153 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 373
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
  block $~lib/util/sort/SORT<Array<i32>>|inlined.0
   local.get $3
   local.set $5
   local.get $2
   local.set $4
   local.get $1
   local.set $6
   local.get $5
   local.get $4
   local.get $6
   call $~lib/util/sort/insertionSort<Array<i32>>
  end
  local.get $0
 )
 (func $std/array/isSorted<Array<i32>> (; 154 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   block
    i32.const 1
    local.set $2
    local.get $0
    call $~lib/array/Array<Array<i32>>#get:length
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
     call $~lib/array/Array<Array<i32>>#__get
     local.get $0
     local.get $2
     call $~lib/array/Array<Array<i32>>#__get
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
 (func $std/array/assertSorted<Array<i32>> (; 155 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<Array<i32>>#sort
  local.get $1
  call $std/array/isSorted<Array<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 810
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/array/Array<Proxy<i32>>#constructor (; 156 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.7 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 12
   call $~lib/runtime/doRegister
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
 (func $~lib/array/Array<Proxy<i32>>#get:length (; 157 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $std/array/Proxy<i32>#constructor (; 158 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<Proxy<i32>>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.8 (result i32)
     i32.const 4
     local.set $2
     local.get $2
     call $~lib/runtime/doAllocate
    end
    local.set $2
    local.get $2
    i32.const 13
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/array/Array<Proxy<i32>>#__set (; 159 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $std/array/createReverseOrderedElementsArray (; 160 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/array/Array<Proxy<i32>>#constructor
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    local.get $1
    call $~lib/array/Array<Proxy<i32>>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $2
    i32.const 0
    local.get $1
    call $~lib/array/Array<Proxy<i32>>#get:length
    i32.const 1
    i32.sub
    local.get $2
    i32.sub
    call $std/array/Proxy<i32>#constructor
    call $~lib/array/Array<Proxy<i32>>#__set
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
 (func $start:std/array~anonymous|48 (; 161 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
 )
 (func $~lib/util/sort/insertionSort<Proxy<i32>> (; 162 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<Proxy<i32>>#sort (; 163 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 373
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
  block $~lib/util/sort/SORT<Proxy<i32>>|inlined.0
   local.get $3
   local.set $5
   local.get $2
   local.set $4
   local.get $1
   local.set $6
   local.get $5
   local.get $4
   local.get $6
   call $~lib/util/sort/insertionSort<Proxy<i32>>
  end
  local.get $0
 )
 (func $~lib/array/Array<Proxy<i32>>#__get (; 164 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 208
   i32.const 68
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $std/array/isSorted<Proxy<i32>> (; 165 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   block
    i32.const 1
    local.set $2
    local.get $0
    call $~lib/array/Array<Proxy<i32>>#get:length
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
     call $~lib/array/Array<Proxy<i32>>#__get
     local.get $0
     local.get $2
     call $~lib/array/Array<Proxy<i32>>#__get
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
 (func $std/array/assertSorted<Proxy<i32>> (; 166 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<Proxy<i32>>#sort
  local.get $1
  call $std/array/isSorted<Proxy<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 810
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/util/sort/insertionSort<String> (; 167 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<String>#sort (; 168 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 373
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
  block $~lib/util/sort/SORT<String>|inlined.0
   local.get $3
   local.set $5
   local.get $2
   local.set $4
   local.get $1
   local.set $6
   local.get $5
   local.get $4
   local.get $6
   call $~lib/util/sort/insertionSort<String>
  end
  local.get $0
 )
 (func $~lib/array/Array<String>#get:length (; 169 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<String>#__get (; 170 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 208
   i32.const 68
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $std/array/isSorted<String> (; 171 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   block
    i32.const 1
    local.set $2
    local.get $0
    call $~lib/array/Array<String>#get:length
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
     call $~lib/array/Array<String>#__get
     local.get $0
     local.get $2
     call $~lib/array/Array<String>#__get
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
 (func $std/array/assertSorted<String> (; 172 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<String>#sort
  local.get $1
  call $std/array/isSorted<String>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 810
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/string/String#get:length (; 173 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 174 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
 (func $~lib/util/sort/COMPARATOR<String>~anonymous|0 (; 175 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/assertSorted<String>|trampoline (; 176 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   block $~lib/util/sort/COMPARATOR<String>|inlined.0 (result i32)
    i32.const 55
    br $~lib/util/sort/COMPARATOR<String>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $std/array/assertSorted<String>
 )
 (func $~lib/string/String.__eq (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.__ne (; 178 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
 )
 (func $std/array/isArraysEqual<String> (; 179 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<String>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<String>#get:length
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
    call $~lib/array/Array<String>#__get
    local.get $1
    local.get $3
    call $~lib/array/Array<String>#__get
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
 (func $~lib/array/Array<String>#constructor (; 180 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.9 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 14
   call $~lib/runtime/doRegister
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
 (func $~lib/string/String#charAt (; 181 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 3400
   i32.const 36
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 3264
   return
  end
  block $~lib/runtime/ALLOCATE|inlined.10 (result i32)
   i32.const 2
   local.set $2
   local.get $2
   call $~lib/runtime/doAllocate
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
  block $~lib/runtime/REGISTER<String>|inlined.0 (result i32)
   local.get $3
   local.set $2
   local.get $2
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/string/String#concat (; 182 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 3440
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
   i32.const 3264
   return
  end
  block $~lib/runtime/ALLOCATE|inlined.11 (result i32)
   local.get $4
   local.set $5
   local.get $5
   call $~lib/runtime/doAllocate
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
  block $~lib/runtime/REGISTER<String>|inlined.1 (result i32)
   local.get $6
   local.set $5
   local.get $5
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/string/String.__concat (; 183 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 3440
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
 )
 (func $std/array/createRandomString (; 184 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  i32.const 3264
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
 (func $~lib/array/Array<String>#__set (; 185 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $std/array/createRandomStringArray (; 186 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/array/Array<String>#constructor
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    local.get $1
    call $~lib/array/Array<String>#get:length
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
    call $~lib/array/Array<String>#__set
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
 (func $~lib/string/String#substring (; 187 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 3400
   i32.const 186
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
   i32.const 3264
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
  block $~lib/runtime/ALLOCATE|inlined.13 (result i32)
   local.get $3
   local.set $4
   local.get $4
   call $~lib/runtime/doAllocate
  end
  local.set $10
  local.get $10
  local.get $0
  local.get $8
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  block $~lib/runtime/REGISTER<String>|inlined.2 (result i32)
   local.get $10
   local.set $4
   local.get $4
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/runtime/doDiscard (; 188 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/runtime/assertUnregistered
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  call $~lib/memory/memory.free
 )
 (func $~lib/array/Array<bool>#join_bool (; 189 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   i32.const 3472
   i32.const 3488
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
  block $~lib/runtime/ALLOCATE|inlined.12 (result i32)
   local.get $6
   i32.const 1
   i32.shl
   local.set $7
   local.get $7
   call $~lib/runtime/doAllocate
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
     i32.const 3472
     i32.const 3488
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
  i32.const 3472
  i32.const 3488
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
    call $~lib/runtime/doDiscard
   end
   local.get $7
   return
  end
  block $~lib/runtime/REGISTER<String>|inlined.3 (result i32)
   local.get $8
   local.set $7
   local.get $7
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/array/Array<bool>#join (; 190 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<bool>#join_bool
  return
 )
 (func $~lib/util/number/decimalCount32 (; 191 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 192 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 4024
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
 (func $~lib/util/number/itoa32 (; 193 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 3600
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
  block $~lib/runtime/ALLOCATE|inlined.14 (result i32)
   local.get $2
   i32.const 1
   i32.shl
   local.set $3
   local.get $3
   call $~lib/runtime/doAllocate
  end
  local.set $4
  block $~lib/util/number/utoa32_core|inlined.0
   local.get $4
   local.set $3
   local.get $0
   local.set $5
   local.get $2
   local.set $6
   local.get $3
   local.get $5
   local.get $6
   call $~lib/util/number/utoa32_lut
  end
  local.get $1
  if
   local.get $4
   i32.const 45
   i32.store16
  end
  block $~lib/runtime/REGISTER<String>|inlined.4 (result i32)
   local.get $4
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/util/number/itoa<i32> (; 194 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/util/number/itoa_stream<i32> (; 195 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   local.set $5
   local.get $2
   local.set $6
   local.get $3
   local.set $7
   local.get $5
   local.get $6
   local.get $7
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
 (func $~lib/array/Array<i32>#join_int (; 196 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
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
  block $~lib/runtime/ALLOCATE|inlined.15 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/doAllocate
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
    call $~lib/runtime/doDiscard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<String>|inlined.5 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/array/Array<i32>#join (; 197 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#join_int
  return
 )
 (func $~lib/util/number/utoa32 (; 198 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 3600
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.set $1
  block $~lib/runtime/ALLOCATE|inlined.16 (result i32)
   local.get $1
   i32.const 1
   i32.shl
   local.set $2
   local.get $2
   call $~lib/runtime/doAllocate
  end
  local.set $3
  block $~lib/util/number/utoa32_core|inlined.2
   local.get $3
   local.set $2
   local.get $0
   local.set $4
   local.get $1
   local.set $5
   local.get $2
   local.get $4
   local.get $5
   call $~lib/util/number/utoa32_lut
  end
  block $~lib/runtime/REGISTER<String>|inlined.6 (result i32)
   local.get $3
   local.set $5
   local.get $5
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/util/number/itoa<u32> (; 199 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u32> (; 200 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/util/number/utoa32_lut
  end
  local.get $3
 )
 (func $~lib/array/Array<u32>#join_int (; 201 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
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
  block $~lib/runtime/ALLOCATE|inlined.17 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/doAllocate
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
    call $~lib/runtime/doDiscard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<String>|inlined.7 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/array/Array<u32>#join (; 202 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#join_int
  return
 )
 (func $~lib/builtins/isFinite<f64> (; 203 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/util/number/genDigits (; 204 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  i32.const 5408
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
        local.set $18
        local.get $15
        local.set $20
        local.get $5
        local.set $21
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
        local.set $23
        local.get $10
        local.set $24
        local.get $18
        local.get $20
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
          local.get $24
          i64.lt_u
          local.tee $27
          if (result i32)
           local.get $21
           local.get $22
           i64.sub
           local.get $23
           i64.ge_u
          else           
           local.get $27
          end
          local.tee $27
          if (result i32)
           local.get $22
           local.get $23
           i64.add
           local.get $24
           i64.lt_u
           local.tee $27
           if (result i32)
            local.get $27
           else            
            local.get $24
            local.get $22
            i64.sub
            local.get $22
            local.get $23
            i64.add
            local.get $24
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
            local.get $22
            local.get $23
            i64.add
            local.set $22
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
        local.set $17
        local.get $15
        local.set $26
        local.get $5
        local.set $24
        local.get $13
        local.set $23
        local.get $8
        local.set $22
        local.get $10
        local.set $21
        local.get $17
        local.get $26
        i32.const 1
        i32.sub
        i32.const 1
        i32.shl
        i32.add
        local.set $25
        local.get $25
        i32.load16_u
        local.set $20
        block $break|4
         loop $continue|4
          local.get $23
          local.get $21
          i64.lt_u
          local.tee $18
          if (result i32)
           local.get $24
           local.get $23
           i64.sub
           local.get $22
           i64.ge_u
          else           
           local.get $18
          end
          local.tee $18
          if (result i32)
           local.get $23
           local.get $22
           i64.add
           local.get $21
           i64.lt_u
           local.tee $18
           if (result i32)
            local.get $18
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
           local.get $18
          end
          if
           block
            local.get $20
            i32.const 1
            i32.sub
            local.set $20
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
        local.get $20
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
 (func $~lib/util/number/prettify (; 205 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
       block $~lib/util/number/utoa32_core|inlined.4
        local.get $4
        local.set $8
        local.get $5
        local.set $9
        local.get $7
        local.set $10
        local.get $8
        local.get $9
        local.get $10
        call $~lib/util/number/utoa32_lut
       end
       local.get $4
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
       local.set $6
       local.get $3
       i32.const 1
       i32.sub
       local.set $5
       local.get $5
       i32.const 0
       i32.lt_s
       local.set $4
       local.get $4
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
       local.set $10
       block $~lib/util/number/utoa32_core|inlined.5
        local.get $6
        local.set $9
        local.get $5
        local.set $8
        local.get $10
        local.set $11
        local.get $9
        local.get $8
        local.get $11
        call $~lib/util/number/utoa32_lut
       end
       local.get $6
       i32.const 45
       i32.const 43
       local.get $4
       select
       i32.store16
       local.get $10
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
 (func $~lib/util/number/dtoa_core (; 206 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
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
   local.set $4
   local.get $2
   local.set $5
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
    i32.const 5128
    i32.load offset=4
    local.get $13
    i32.const 3
    i32.shl
    i32.add
    i64.load
    global.set $~lib/util/number/_frc_pow
    i32.const 5336
    i32.load offset=4
    local.get $13
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
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
    local.set $15
    local.get $14
    local.set $11
    local.get $15
    local.get $11
    i32.add
    i32.const 64
    i32.add
   end
   local.set $11
   block $~lib/util/number/umul64f|inlined.1 (result i64)
    global.get $~lib/util/number/_frc_plus
    local.set $23
    local.get $12
    local.set $22
    local.get $23
    i64.const 4294967295
    i64.and
    local.set $21
    local.get $22
    i64.const 4294967295
    i64.and
    local.set $20
    local.get $23
    i64.const 32
    i64.shr_u
    local.set $19
    local.get $22
    i64.const 32
    i64.shr_u
    local.set $18
    local.get $21
    local.get $20
    i64.mul
    local.set $17
    local.get $19
    local.get $20
    i64.mul
    local.get $17
    i64.const 32
    i64.shr_u
    i64.add
    local.set $10
    local.get $21
    local.get $18
    i64.mul
    local.get $10
    i64.const 4294967295
    i64.and
    i64.add
    local.set $25
    local.get $25
    i64.const 2147483647
    i64.add
    local.set $25
    local.get $10
    i64.const 32
    i64.shr_u
    local.set $10
    local.get $25
    i64.const 32
    i64.shr_u
    local.set $25
    local.get $19
    local.get $18
    i64.mul
    local.get $10
    i64.add
    local.get $25
    i64.add
   end
   i64.const 1
   i64.sub
   local.set $25
   block $~lib/util/number/umul64e|inlined.1 (result i32)
    global.get $~lib/util/number/_exp
    local.set $15
    local.get $14
    local.set $26
    local.get $15
    local.get $26
    i32.add
    i32.const 64
    i32.add
   end
   local.set $26
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
   end
   i64.const 1
   i64.add
   local.set $27
   local.get $25
   local.get $27
   i64.sub
   local.set $23
   local.get $4
   local.get $24
   local.get $11
   local.get $25
   local.get $26
   local.get $23
   local.get $5
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
 (func $~lib/util/number/dtoa (; 207 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 4336
   return
  end
  local.get $0
  call $~lib/builtins/isFinite<f64>
  i32.eqz
  if
   local.get $0
   call $~lib/builtins/isNaN<f64>
   if
    i32.const 4352
    return
   end
   i32.const 4368
   i32.const 4400
   local.get $0
   f64.const 0
   f64.lt
   select
   return
  end
  block $~lib/runtime/ALLOCATE|inlined.18 (result i32)
   i32.const 28
   i32.const 1
   i32.shl
   local.set $1
   local.get $1
   call $~lib/runtime/doAllocate
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
   call $~lib/runtime/doDiscard
  end
  local.get $4
 )
 (func $~lib/util/number/dtoa_stream (; 208 ;) (type $FUNCSIG$iiid) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
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
    i32.const 4368
    i32.const 4400
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
 (func $~lib/array/Array<f64>#join_flt (; 209 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
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
  block $~lib/runtime/ALLOCATE|inlined.19 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/doAllocate
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
    call $~lib/runtime/doDiscard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<String>|inlined.8 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/array/Array<f64>#join (; 210 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#join_flt
  return
 )
 (func $~lib/array/Array<String>#join_str (; 211 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
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
  block $~lib/runtime/ALLOCATE|inlined.20 (result i32)
   local.get $5
   local.get $4
   local.get $2
   i32.mul
   i32.add
   i32.const 1
   i32.shl
   local.set $8
   local.get $8
   call $~lib/runtime/doAllocate
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
  block $~lib/runtime/REGISTER<String>|inlined.9 (result i32)
   local.get $10
   local.set $8
   local.get $8
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/array/Array<String>#join (; 212 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<String>#join_str
  return
 )
 (func $std/array/Ref#constructor (; 213 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   block $~lib/runtime/REGISTER<Ref>|inlined.0 (result i32)
    block $~lib/runtime/ALLOCATE|inlined.21 (result i32)
     i32.const 0
     local.set $1
     local.get $1
     call $~lib/runtime/doAllocate
    end
    local.set $1
    local.get $1
    i32.const 18
    call $~lib/runtime/doRegister
   end
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array<Ref | null>#constructor (; 214 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.22 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 19
   call $~lib/runtime/doRegister
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
 (func $~lib/array/Array<Ref | null>#join_ref (; 215 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   i32.const 5640
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
  block $~lib/runtime/ALLOCATE|inlined.23 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/doAllocate
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
      i32.const 5640
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
   i32.const 5640
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
    call $~lib/runtime/doDiscard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<String>|inlined.10 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/array/Array<Ref | null>#join (; 216 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<Ref | null>#join_ref
  return
 )
 (func $~lib/array/Array<i32>#toString (; 217 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 3512
  call $~lib/array/Array<i32>#join
 )
 (func $~lib/util/number/itoa<i8> (; 218 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/util/number/itoa_stream<i8> (; 219 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   local.set $5
   local.get $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   local.set $6
   local.get $3
   local.set $7
   local.get $5
   local.get $6
   local.get $7
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
 (func $~lib/array/Array<i8>#join_int (; 220 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
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
  block $~lib/runtime/ALLOCATE|inlined.24 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/doAllocate
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
    call $~lib/runtime/doDiscard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<String>|inlined.11 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/array/Array<i8>#join (; 221 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#join_int
  return
 )
 (func $~lib/array/Array<i8>#toString (; 222 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 3512
  call $~lib/array/Array<i8>#join
 )
 (func $~lib/util/number/itoa<u16> (; 223 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u16> (; 224 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   local.set $4
   local.get $2
   i32.const 65535
   i32.and
   local.set $5
   local.get $3
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/util/number/utoa32_lut
  end
  local.get $3
 )
 (func $~lib/array/Array<u16>#join_int (; 225 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
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
  block $~lib/runtime/ALLOCATE|inlined.25 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/doAllocate
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
    call $~lib/runtime/doDiscard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<String>|inlined.12 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/array/Array<u16>#join (; 226 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#join_int
  return
 )
 (func $~lib/array/Array<u16>#toString (; 227 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 3512
  call $~lib/array/Array<u16>#join
 )
 (func $~lib/util/number/decimalCount64 (; 228 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 229 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
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
  i32.const 4024
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
 (func $~lib/util/number/utoa64 (; 230 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 3600
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
   block $~lib/runtime/ALLOCATE|inlined.26 (result i32)
    local.get $3
    i32.const 1
    i32.shl
    local.set $4
    local.get $4
    call $~lib/runtime/doAllocate
   end
   local.set $1
   block $~lib/util/number/utoa32_core|inlined.8
    local.get $1
    local.set $4
    local.get $2
    local.set $5
    local.get $3
    local.set $6
    local.get $4
    local.get $5
    local.get $6
    call $~lib/util/number/utoa32_lut
   end
  else   
   local.get $0
   call $~lib/util/number/decimalCount64
   local.set $3
   block $~lib/runtime/ALLOCATE|inlined.27 (result i32)
    local.get $3
    i32.const 1
    i32.shl
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $1
   block $~lib/util/number/utoa64_core|inlined.0
    local.get $1
    local.set $2
    local.get $0
    local.set $7
    local.get $3
    local.set $6
    local.get $2
    local.get $7
    local.get $6
    call $~lib/util/number/utoa64_lut
   end
  end
  block $~lib/runtime/REGISTER<String>|inlined.13 (result i32)
   local.get $1
   local.set $3
   local.get $3
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/util/number/itoa<u64> (; 231 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/utoa64
  return
 )
 (func $~lib/util/number/itoa_stream<u64> (; 232 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
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
    local.set $5
    local.get $4
    local.set $6
    local.get $3
    local.set $7
    local.get $5
    local.get $6
    local.get $7
    call $~lib/util/number/utoa32_lut
   end
  else   
   local.get $2
   call $~lib/util/number/decimalCount64
   local.set $3
   block $~lib/util/number/utoa64_core|inlined.1
    local.get $0
    local.set $4
    local.get $2
    local.set $8
    local.get $3
    local.set $7
    local.get $4
    local.get $8
    local.get $7
    call $~lib/util/number/utoa64_lut
   end
  end
  local.get $3
 )
 (func $~lib/array/Array<u64>#join_int (; 233 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
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
  block $~lib/runtime/ALLOCATE|inlined.28 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/doAllocate
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
    call $~lib/runtime/doDiscard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<String>|inlined.14 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/array/Array<u64>#join (; 234 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#join_int
  return
 )
 (func $~lib/array/Array<u64>#toString (; 235 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 3512
  call $~lib/array/Array<u64>#join
 )
 (func $~lib/util/number/itoa64 (; 236 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 3600
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
   block $~lib/runtime/ALLOCATE|inlined.29 (result i32)
    local.get $4
    i32.const 1
    i32.shl
    local.set $5
    local.get $5
    call $~lib/runtime/doAllocate
   end
   local.set $2
   block $~lib/util/number/utoa32_core|inlined.10
    local.get $2
    local.set $5
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.get $6
    local.get $7
    call $~lib/util/number/utoa32_lut
   end
  else   
   local.get $0
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.set $4
   block $~lib/runtime/ALLOCATE|inlined.30 (result i32)
    local.get $4
    i32.const 1
    i32.shl
    local.set $3
    local.get $3
    call $~lib/runtime/doAllocate
   end
   local.set $2
   block $~lib/util/number/utoa64_core|inlined.2
    local.get $2
    local.set $3
    local.get $0
    local.set $8
    local.get $4
    local.set $7
    local.get $3
    local.get $8
    local.get $7
    call $~lib/util/number/utoa64_lut
   end
  end
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  block $~lib/runtime/REGISTER<String>|inlined.15 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/util/number/itoa<i64> (; 237 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  call $~lib/util/number/itoa64
  return
 )
 (func $~lib/util/number/itoa_stream<i64> (; 238 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
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
    local.set $6
    local.get $5
    local.set $7
    local.get $3
    local.set $8
    local.get $6
    local.get $7
    local.get $8
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
    local.set $5
    local.get $2
    local.set $9
    local.get $3
    local.set $8
    local.get $5
    local.get $9
    local.get $8
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
 (func $~lib/array/Array<i64>#join_int (; 239 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
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
  block $~lib/runtime/ALLOCATE|inlined.31 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/doAllocate
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
    call $~lib/runtime/doDiscard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<String>|inlined.16 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/array/Array<i64>#join (; 240 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#join_int
  return
 )
 (func $~lib/array/Array<i64>#toString (; 241 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 3512
  call $~lib/array/Array<i64>#join
 )
 (func $~lib/array/Array<String>#toString (; 242 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 3512
  call $~lib/array/Array<String>#join
 )
 (func $~lib/array/Array<Array<i32>>#join_arr (; 243 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
   return
  end
  i32.const 3264
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
    i32.const 3264
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
 (func $~lib/array/Array<Array<i32>>#join (; 244 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<Array<i32>>#join_arr
  return
 )
 (func $~lib/array/Array<Array<i32>>#toString (; 245 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 3512
  call $~lib/array/Array<Array<i32>>#join
 )
 (func $~lib/array/Array<Array<u8>>#constructor (; 246 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.32 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 23
   call $~lib/runtime/doRegister
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
 (func $~lib/util/number/itoa<u8> (; 247 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/util/number/itoa_stream<u8> (; 248 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   local.set $4
   local.get $2
   i32.const 255
   i32.and
   local.set $5
   local.get $3
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/util/number/utoa32_lut
  end
  local.get $3
 )
 (func $~lib/array/Array<u8>#join_int (; 249 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
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
  block $~lib/runtime/ALLOCATE|inlined.33 (result i32)
   local.get $5
   i32.const 1
   i32.shl
   local.set $6
   local.get $6
   call $~lib/runtime/doAllocate
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
    call $~lib/runtime/doDiscard
   end
   local.get $6
   return
  end
  block $~lib/runtime/REGISTER<String>|inlined.17 (result i32)
   local.get $7
   local.set $6
   local.get $6
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/array/Array<u8>#join (; 250 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#join_int
  return
 )
 (func $~lib/array/Array<Array<u8>>#join_arr (; 251 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
   return
  end
  i32.const 3264
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
    i32.const 3264
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
 (func $~lib/array/Array<Array<u8>>#join (; 252 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<Array<u8>>#join_arr
  return
 )
 (func $~lib/array/Array<Array<u8>>#toString (; 253 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 3512
  call $~lib/array/Array<Array<u8>>#join
 )
 (func $~lib/array/Array<Array<u32>>#constructor (; 254 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.34 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 24
   call $~lib/runtime/doRegister
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
 (func $~lib/array/Array<Array<Array<u32>>>#constructor (; 255 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   block $~lib/runtime/ALLOCATE|inlined.35 (result i32)
    i32.const 16
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $2
   local.get $2
   i32.const 25
   call $~lib/runtime/doRegister
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
 (func $~lib/array/Array<Array<u32>>#join_arr (; 256 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
   return
  end
  i32.const 3264
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
    i32.const 3264
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
 (func $~lib/array/Array<Array<u32>>#join (; 257 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<Array<u32>>#join_arr
  return
 )
 (func $~lib/array/Array<Array<Array<u32>>>#join_arr (; 258 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 3264
   return
  end
  i32.const 3264
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
    call $~lib/array/Array<Array<u32>>#join
   else    
    i32.const 3264
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
      call $~lib/array/Array<Array<u32>>#join
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
   call $~lib/array/Array<Array<u32>>#join
   call $~lib/string/String.__concat
   local.set $3
  end
  local.get $3
 )
 (func $~lib/array/Array<Array<Array<u32>>>#join (; 259 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<Array<Array<u32>>>#join_arr
  return
 )
 (func $~lib/array/Array<Array<Array<u32>>>#toString (; 260 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 3512
  call $~lib/array/Array<Array<Array<u32>>>#join
 )
 (func $start:std/array (; 261 ;) (type $FUNCSIG$v)
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
  call $~lib/array/Array.isArray<Array<i32> | null>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 37
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array.isArray<Array<i32>>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $std/array/P#constructor
  call $~lib/array/Array.isArray<P>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 39
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#constructor
  call $~lib/array/Array.isArray<Uint8Array>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 40
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
   i32.const 120
   i32.const 41
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/str
  call $~lib/array/Array.isArray<String>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 42
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
  block $~lib/runtime/WRAPARRAY<u8>|inlined.0 (result i32)
   i32.const 192
   local.set $0
   local.get $0
   i32.const 7
   i32.const 0
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 49
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
  block $~lib/runtime/WRAPARRAY<u8>|inlined.1 (result i32)
   i32.const 248
   local.set $0
   local.get $0
   i32.const 7
   i32.const 0
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 52
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
  block $~lib/runtime/WRAPARRAY<u8>|inlined.2 (result i32)
   i32.const 264
   local.set $0
   local.get $0
   i32.const 7
   i32.const 0
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 55
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
  block $~lib/runtime/WRAPARRAY<u8>|inlined.3 (result i32)
   i32.const 280
   local.set $0
   local.get $0
   i32.const 7
   i32.const 0
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 58
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
  block $~lib/runtime/WRAPARRAY<u8>|inlined.4 (result i32)
   i32.const 296
   local.set $0
   local.get $0
   i32.const 7
   i32.const 0
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 61
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
  block $~lib/runtime/WRAPARRAY<u32>|inlined.0 (result i32)
   i32.const 368
   local.set $0
   local.get $0
   i32.const 8
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 66
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
  block $~lib/runtime/WRAPARRAY<u32>|inlined.1 (result i32)
   i32.const 400
   local.set $0
   local.get $0
   i32.const 8
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 69
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
  block $~lib/runtime/WRAPARRAY<u32>|inlined.2 (result i32)
   i32.const 432
   local.set $0
   local.get $0
   i32.const 8
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 72
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
  block $~lib/runtime/WRAPARRAY<u32>|inlined.3 (result i32)
   i32.const 464
   local.set $0
   local.get $0
   i32.const 8
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 75
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
  block $~lib/runtime/WRAPARRAY<u32>|inlined.4 (result i32)
   i32.const 496
   local.set $0
   local.get $0
   i32.const 8
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 78
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
   i32.const 120
   i32.const 82
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
   i32.const 120
   i32.const 83
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
   i32.const 120
   i32.const 87
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
   i32.const 120
   i32.const 88
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
   i32.const 120
   i32.const 89
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
   i32.const 120
   i32.const 93
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
   i32.const 120
   i32.const 94
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
   i32.const 120
   i32.const 95
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
   i32.const 120
   i32.const 99
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
   i32.const 120
   i32.const 100
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
   i32.const 120
   i32.const 101
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
   i32.const 120
   i32.const 105
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
   i32.const 120
   i32.const 106
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
   i32.const 120
   i32.const 107
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
   i32.const 120
   i32.const 108
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
   i32.const 120
   i32.const 112
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
   i32.const 120
   i32.const 113
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
   i32.const 120
   i32.const 114
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
   i32.const 120
   i32.const 115
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
   i32.const 120
   i32.const 116
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
   i32.const 120
   i32.const 123
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
   i32.const 120
   i32.const 124
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
   i32.const 120
   i32.const 125
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  block $~lib/runtime/WRAPARRAY<i32>|inlined.0 (result i32)
   i32.const 528
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  call $~lib/array/Array<i32>#concat
  drop
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 128
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
   i32.const 120
   i32.const 130
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
   i32.const 120
   i32.const 131
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
   i32.const 120
   i32.const 132
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
   i32.const 120
   i32.const 139
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
   i32.const 120
   i32.const 140
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
   i32.const 120
   i32.const 141
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
   i32.const 120
   i32.const 142
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
   i32.const 120
   i32.const 143
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
   i32.const 120
   i32.const 144
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
   i32.const 120
   i32.const 145
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
   i32.const 120
   i32.const 146
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
   i32.const 120
   i32.const 149
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
   i32.const 120
   i32.const 152
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
   i32.const 120
   i32.const 153
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
   i32.const 120
   i32.const 156
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
   i32.const 120
   i32.const 158
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
   i32.const 120
   i32.const 159
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.1 (result i32)
   i32.const 568
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const 3
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.2 (result i32)
   i32.const 600
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 165
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.3 (result i32)
   i32.const 632
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 3
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.4 (result i32)
   i32.const 664
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 167
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.5 (result i32)
   i32.const 696
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.6 (result i32)
   i32.const 728
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 169
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.7 (result i32)
   i32.const 760
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 2
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.8 (result i32)
   i32.const 792
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 171
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.9 (result i32)
   i32.const 824
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.10 (result i32)
   i32.const 856
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 173
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.11 (result i32)
   i32.const 888
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.12 (result i32)
   i32.const 920
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 175
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.13 (result i32)
   i32.const 952
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 2
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.14 (result i32)
   i32.const 984
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 177
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.15 (result i32)
   i32.const 1016
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.16 (result i32)
   i32.const 1048
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 179
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.17 (result i32)
   i32.const 1080
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.18 (result i32)
   i32.const 1112
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 181
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.19 (result i32)
   i32.const 1144
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  i32.const -2
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.20 (result i32)
   i32.const 1176
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 183
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.21 (result i32)
   i32.const 1208
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.22 (result i32)
   i32.const 1240
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 185
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.23 (result i32)
   i32.const 1272
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#copyWithin
  block $~lib/runtime/WRAPARRAY<i32>|inlined.24 (result i32)
   i32.const 1304
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 187
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
   i32.const 120
   i32.const 193
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
   i32.const 120
   i32.const 194
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
   i32.const 120
   i32.const 195
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
   i32.const 120
   i32.const 196
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
   i32.const 120
   i32.const 197
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
   i32.const 120
   i32.const 198
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
   i32.const 120
   i32.const 202
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
   i32.const 120
   i32.const 203
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
   i32.const 120
   i32.const 204
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
   i32.const 120
   i32.const 205
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
   i32.const 120
   i32.const 206
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
   i32.const 120
   i32.const 207
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
   i32.const 120
   i32.const 208
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
   i32.const 120
   i32.const 214
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
   i32.const 120
   i32.const 215
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
   i32.const 120
   i32.const 216
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
   i32.const 120
   i32.const 217
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
   i32.const 120
   i32.const 218
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
   i32.const 120
   i32.const 219
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
   i32.const 120
   i32.const 220
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
   i32.const 120
   i32.const 224
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
   i32.const 120
   i32.const 225
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
   i32.const 120
   i32.const 226
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
   i32.const 120
   i32.const 227
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
   i32.const 120
   i32.const 228
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
   i32.const 120
   i32.const 229
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
   i32.const 120
   i32.const 235
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
   i32.const 120
   i32.const 236
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
   i32.const 120
   i32.const 237
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
   i32.const 120
   i32.const 238
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
   i32.const 120
   i32.const 239
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
   i32.const 120
   i32.const 248
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
   i32.const 120
   i32.const 252
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
   i32.const 120
   i32.const 256
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
   i32.const 120
   i32.const 260
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
   i32.const 120
   i32.const 264
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
   i32.const 120
   i32.const 268
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
   i32.const 120
   i32.const 272
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
   i32.const 120
   i32.const 276
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
   i32.const 120
   i32.const 280
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
   i32.const 120
   i32.const 284
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
   i32.const 120
   i32.const 290
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
   i32.const 120
   i32.const 294
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
   i32.const 120
   i32.const 298
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
   i32.const 120
   i32.const 302
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
   i32.const 120
   i32.const 306
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
   i32.const 120
   i32.const 310
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
   i32.const 120
   i32.const 314
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
   i32.const 120
   i32.const 318
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
   i32.const 120
   i32.const 322
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
   i32.const 120
   i32.const 326
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
   i32.const 120
   i32.const 330
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
   i32.const 120
   i32.const 331
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
   i32.const 120
   i32.const 332
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
   i32.const 120
   i32.const 333
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.25 (result i32)
   i32.const 1392
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 338
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.26 (result i32)
   i32.const 1424
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 339
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.27 (result i32)
   i32.const 1432
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.28 (result i32)
   i32.const 1464
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 342
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.29 (result i32)
   i32.const 1488
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 343
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.30 (result i32)
   i32.const 1504
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.31 (result i32)
   i32.const 1536
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 346
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.32 (result i32)
   i32.const 1552
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 347
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.33 (result i32)
   i32.const 1576
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.34 (result i32)
   i32.const 1608
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 350
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.35 (result i32)
   i32.const 1624
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 351
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.36 (result i32)
   i32.const 1648
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -1
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.37 (result i32)
   i32.const 1680
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 354
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.38 (result i32)
   i32.const 1696
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 355
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.39 (result i32)
   i32.const 1720
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.40 (result i32)
   i32.const 1752
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 358
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.41 (result i32)
   i32.const 1768
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 359
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.42 (result i32)
   i32.const 1792
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -2
  i32.const 1
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.43 (result i32)
   i32.const 1824
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 362
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.44 (result i32)
   i32.const 1840
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 363
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.45 (result i32)
   i32.const 1864
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -7
  i32.const 1
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.46 (result i32)
   i32.const 1896
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 366
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.47 (result i32)
   i32.const 1912
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 367
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.48 (result i32)
   i32.const 1936
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.49 (result i32)
   i32.const 1968
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 370
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.50 (result i32)
   i32.const 1976
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 371
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.51 (result i32)
   i32.const 2008
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 1
  i32.const -2
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.52 (result i32)
   i32.const 2040
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 374
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.53 (result i32)
   i32.const 2048
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 375
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.54 (result i32)
   i32.const 2080
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 4
  i32.const 0
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.55 (result i32)
   i32.const 2112
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 378
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.56 (result i32)
   i32.const 2120
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 379
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.57 (result i32)
   i32.const 2152
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 7
  i32.const 0
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.58 (result i32)
   i32.const 2184
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 382
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.59 (result i32)
   i32.const 2192
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 383
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.60 (result i32)
   i32.const 2224
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 7
  i32.const 5
  call $~lib/array/Array<i32>#splice
  block $~lib/runtime/WRAPARRAY<i32>|inlined.61 (result i32)
   i32.const 2256
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 386
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/sarr
  block $~lib/runtime/WRAPARRAY<i32>|inlined.62 (result i32)
   i32.const 2264
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 387
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
  i32.const 1
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 397
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 400
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 403
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 411
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
   i32.const 120
   i32.const 412
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 414
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
  i32.const 6
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 427
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
   i32.const 120
   i32.const 428
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
  i32.const 7
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 436
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 8
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 439
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 9
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 447
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
   i32.const 120
   i32.const 448
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 10
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 450
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
  i32.const 11
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 463
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
   i32.const 120
   i32.const 464
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
  i32.const 12
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 472
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 13
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 475
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 14
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 483
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
   i32.const 120
   i32.const 484
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 15
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 486
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
  i32.const 16
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 499
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
   i32.const 120
   i32.const 500
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
  i32.const 17
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 509
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 518
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
   i32.const 120
   i32.const 519
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 522
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
  i32.const 20
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 536
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
   i32.const 120
   i32.const 537
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
  i32.const 21
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/arr
  call $~lib/array/Array<i32>#get:length
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 562
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
  i32.const 22
  call $~lib/array/Array<i32>#map<f32>
  global.set $std/array/newArr
  global.get $std/array/newArr
  call $~lib/array/Array<f32>#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 573
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
   i32.const 120
   i32.const 574
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 23
  call $~lib/array/Array<i32>#map<i32>
  drop
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 583
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
   i32.const 120
   i32.const 584
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 24
  call $~lib/array/Array<i32>#map<i32>
  drop
  global.get $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 591
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
  i32.const 25
  call $~lib/array/Array<i32>#map<i32>
  drop
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 606
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
   i32.const 120
   i32.const 607
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
  i32.const 26
  call $~lib/array/Array<i32>#filter
  global.set $std/array/filteredArr
  global.get $std/array/filteredArr
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 615
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 27
  call $~lib/array/Array<i32>#filter
  drop
  global.get $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 624
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
   i32.const 120
   i32.const 625
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 28
  call $~lib/array/Array<i32>#filter
  drop
  global.get $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 632
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
  i32.const 29
  call $~lib/array/Array<i32>#filter
  drop
  global.get $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 647
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
   i32.const 120
   i32.const 648
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
   i32.const 120
   i32.const 656
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 660
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 32
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
   i32.const 120
   i32.const 663
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 33
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
   i32.const 120
   i32.const 666
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 674
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
   i32.const 120
   i32.const 675
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 677
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
   i32.const 120
   i32.const 690
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
   i32.const 120
   i32.const 691
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
   i32.const 120
   i32.const 699
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 703
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 39
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
   i32.const 120
   i32.const 706
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 40
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
   i32.const 120
   i32.const 709
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 717
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
   i32.const 120
   i32.const 718
   i32.const 0
   call $~lib/env/abort
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
   i32.const 120
   i32.const 720
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
   i32.const 120
   i32.const 733
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
   i32.const 120
   i32.const 734
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
  block $~lib/runtime/WRAPARRAY<f32>|inlined.0 (result i32)
   i32.const 2576
   local.set $0
   local.get $0
   i32.const 9
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 821
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
  block $~lib/runtime/WRAPARRAY<f64>|inlined.0 (result i32)
   i32.const 2712
   local.set $0
   local.get $0
   i32.const 10
   i32.const 3
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 825
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
  block $~lib/runtime/WRAPARRAY<i32>|inlined.63 (result i32)
   i32.const 2840
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 829
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
  block $~lib/runtime/WRAPARRAY<u32>|inlined.5 (result i32)
   i32.const 2928
   local.set $0
   local.get $0
   i32.const 8
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 833
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
  block $~lib/runtime/WRAPARRAY<i32>|inlined.64 (result i32)
   i32.const 3168
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 853
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed2
  call $std/array/assertSortedDefault<i32>
  global.get $std/array/reversed2
  block $~lib/runtime/WRAPARRAY<i32>|inlined.65 (result i32)
   i32.const 3184
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 856
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
   i32.const 120
   i32.const 859
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
   i32.const 120
   i32.const 862
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
   i32.const 120
   i32.const 865
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
   i32.const 120
   i32.const 868
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
   i32.const 120
   i32.const 871
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
  i32.const 49
  call $std/array/assertSorted<i32>
  global.get $std/array/randomized64
  i32.const 50
  call $std/array/assertSorted<i32>
  global.get $std/array/randomized257
  i32.const 51
  call $std/array/assertSorted<i32>
  global.get $std/array/randomized257
  i32.const 52
  call $std/array/assertSorted<i32>
  i32.const 512
  call $std/array/createReverseOrderedNestedArray
  global.set $std/array/reversedNested512
  global.get $std/array/reversedNested512
  i32.const 53
  call $std/array/assertSorted<Array<i32>>
  i32.const 512
  call $std/array/createReverseOrderedElementsArray
  global.set $std/array/reversedElements512
  global.get $std/array/reversedElements512
  i32.const 54
  call $std/array/assertSorted<Proxy<i32>>
  block
   i32.const 1
   global.set $~lib/argc
   global.get $std/array/randomStringsActual
   i32.const 0
   call $std/array/assertSorted<String>|trampoline
  end
  global.get $std/array/randomStringsActual
  global.get $std/array/randomStringsExpected
  i32.const 0
  call $std/array/isArraysEqual<String>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 901
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
   call $std/array/assertSorted<String>|trampoline
  end
  block $~lib/runtime/WRAPARRAY<bool>|inlined.1 (result i32)
   i32.const 3528
   local.set $0
   local.get $0
   i32.const 15
   i32.const 0
   call $~lib/runtime/doWrapArray
  end
  i32.const 3512
  call $~lib/array/Array<bool>#join
  i32.const 3544
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 910
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.67 (result i32)
   i32.const 4048
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 3264
  call $~lib/array/Array<i32>#join
  i32.const 4072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 911
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<u32>|inlined.7 (result i32)
   i32.const 4136
   local.set $0
   local.get $0
   i32.const 8
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 4120
  call $~lib/array/Array<u32>#join
  i32.const 4072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 912
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i32>|inlined.69 (result i32)
   i32.const 4192
   local.set $0
   local.get $0
   i32.const 4
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 4176
  call $~lib/array/Array<i32>#join
  i32.const 4208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 913
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<f64>|inlined.2 (result i32)
   i32.const 5432
   local.set $0
   local.get $0
   i32.const 10
   i32.const 3
   call $~lib/runtime/doWrapArray
  end
  i32.const 4320
  call $~lib/array/Array<f64>#join
  i32.const 5488
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 914
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<String>|inlined.1 (result i32)
   i32.const 5616
   local.set $0
   local.get $0
   i32.const 14
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  i32.const 3264
  call $~lib/array/Array<String>#join
  i32.const 5576
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 915
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   i32.const 3
   call $~lib/array/Array<Ref | null>#constructor
   local.set $0
   local.get $0
   i32.load offset=4
   local.set $1
   local.get $1
   i32.const 0
   call $std/array/Ref#constructor
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   call $std/array/Ref#constructor
   i32.store offset=8
   local.get $0
  end
  global.set $std/array/refArr
  global.get $std/array/refArr
  i32.const 3512
  call $~lib/array/Array<Ref | null>#join
  i32.const 5680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 917
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed0
  call $~lib/array/Array<i32>#toString
  i32.const 3264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 921
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed1
  call $~lib/array/Array<i32>#toString
  i32.const 5576
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 922
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed2
  call $~lib/array/Array<i32>#toString
  i32.const 5752
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 923
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/reversed4
  call $~lib/array/Array<i32>#toString
  i32.const 5768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 924
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i8>|inlined.1 (result i32)
   i32.const 5808
   local.set $1
   local.get $1
   i32.const 20
   i32.const 0
   call $~lib/runtime/doWrapArray
  end
  call $~lib/array/Array<i8>#toString
  i32.const 5824
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 926
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<u16>|inlined.1 (result i32)
   i32.const 5864
   local.set $1
   local.get $1
   i32.const 21
   i32.const 1
   call $~lib/runtime/doWrapArray
  end
  call $~lib/array/Array<u16>#toString
  i32.const 5880
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 927
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<u64>|inlined.1 (result i32)
   i32.const 5944
   local.set $1
   local.get $1
   i32.const 16
   i32.const 3
   call $~lib/runtime/doWrapArray
  end
  call $~lib/array/Array<u64>#toString
  i32.const 5976
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 928
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<i64>|inlined.1 (result i32)
   i32.const 6072
   local.set $1
   local.get $1
   i32.const 22
   i32.const 3
   call $~lib/runtime/doWrapArray
  end
  call $~lib/array/Array<i64>#toString
  i32.const 6112
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 929
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/randomStringsExpected
  call $~lib/array/Array<String>#toString
  i32.const 6208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 930
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/WRAPARRAY<String>|inlined.3 (result i32)
   i32.const 6304
   local.set $1
   local.get $1
   i32.const 14
   i32.const 2
   call $~lib/runtime/doWrapArray
  end
  call $~lib/array/Array<String>#toString
  i32.const 6328
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 931
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   i32.const 2
   call $~lib/array/Array<Array<i32>>#constructor
   local.set $1
   local.get $1
   i32.load offset=4
   local.set $0
   local.get $0
   block $~lib/runtime/WRAPARRAY<i32>|inlined.71 (result i32)
    i32.const 6368
    local.set $2
    local.get $2
    i32.const 4
    i32.const 2
    call $~lib/runtime/doWrapArray
   end
   i32.store
   local.get $0
   block $~lib/runtime/WRAPARRAY<i32>|inlined.72 (result i32)
    i32.const 6384
    local.set $2
    local.get $2
    i32.const 4
    i32.const 2
    call $~lib/runtime/doWrapArray
   end
   i32.store offset=4
   local.get $1
  end
  global.set $std/array/subarr32
  global.get $std/array/subarr32
  call $~lib/array/Array<Array<i32>>#toString
  i32.const 6400
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 934
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   i32.const 2
   call $~lib/array/Array<Array<u8>>#constructor
   local.set $0
   local.get $0
   i32.load offset=4
   local.set $1
   local.get $1
   block $~lib/runtime/WRAPARRAY<u8>|inlined.6 (result i32)
    i32.const 6440
    local.set $2
    local.get $2
    i32.const 7
    i32.const 0
    call $~lib/runtime/doWrapArray
   end
   i32.store
   local.get $1
   block $~lib/runtime/WRAPARRAY<u8>|inlined.7 (result i32)
    i32.const 6456
    local.set $2
    local.get $2
    i32.const 7
    i32.const 0
    call $~lib/runtime/doWrapArray
   end
   i32.store offset=4
   local.get $0
  end
  global.set $std/array/subarr8
  global.get $std/array/subarr8
  call $~lib/array/Array<Array<u8>>#toString
  i32.const 6400
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 937
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   i32.const 1
   call $~lib/array/Array<Array<Array<u32>>>#constructor
   local.set $0
   local.get $0
   i32.load offset=4
   local.set $1
   local.get $1
   block (result i32)
    i32.const 0
    i32.const 1
    call $~lib/array/Array<Array<u32>>#constructor
    local.set $2
    local.get $2
    i32.load offset=4
    local.set $3
    local.get $3
    block $~lib/runtime/WRAPARRAY<u32>|inlined.11 (result i32)
     i32.const 6520
     local.set $4
     local.get $4
     i32.const 8
     i32.const 2
     call $~lib/runtime/doWrapArray
    end
    i32.store
    local.get $2
   end
   i32.store
   local.get $0
  end
  global.set $std/array/subarrU32
  global.get $std/array/subarrU32
  call $~lib/array/Array<Array<Array<u32>>>#toString
  i32.const 5576
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 940
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 262 ;) (type $FUNCSIG$v)
  call $start:std/array
 )
 (func $null (; 263 ;) (type $FUNCSIG$v)
 )
)
