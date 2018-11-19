(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiif (func (param i32 i32 i32) (result f32)))
 (type $iif (func (param i32 i32) (result f32)))
 (type $F (func (result f64)))
 (type $Iv (func (param i64)))
 (type $II (func (param i64) (result i64)))
 (type $ffi (func (param f32 f32) (result i32)))
 (type $iv (func (param i32)))
 (type $fi (func (param f32) (result i32)))
 (type $FFi (func (param f64 f64) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $Fi (func (param f64) (result i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $iiIi (func (param i32 i32 i64) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 104) "\0c\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 136) "\05\00\00\00\00\00\00\00\01\02\03\04\05\00\00\00")
 (data (i32.const 152) "\88\00\00\00\05\00\00\00")
 (data (i32.const 160) "\05\00\00\00\00\00\00\00\01\01\01\04\05\00\00\00")
 (data (i32.const 176) "\a0\00\00\00\05\00\00\00")
 (data (i32.const 184) "\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 200) "\b8\00\00\00\05\00\00\00")
 (data (i32.const 208) "\05\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00")
 (data (i32.const 224) "\d0\00\00\00\05\00\00\00")
 (data (i32.const 232) "\05\00\00\00\00\00\00\00\01\01\00\02\02\00\00\00")
 (data (i32.const 248) "\e8\00\00\00\05\00\00\00")
 (data (i32.const 256) "\05\00\00\00\00\00\00\00\01\01\00\02\02\00\00\00")
 (data (i32.const 272) "\00\01\00\00\05\00\00\00")
 (data (i32.const 280) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 312) "\18\01\00\00\05\00\00\00")
 (data (i32.const 320) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 352) "@\01\00\00\05\00\00\00")
 (data (i32.const 360) "\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 392) "h\01\00\00\05\00\00\00")
 (data (i32.const 400) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 432) "\90\01\00\00\05\00\00\00")
 (data (i32.const 440) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 472) "\b8\01\00\00\05\00\00\00")
 (data (i32.const 480) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 512) "\e0\01\00\00\05\00\00\00")
 (data (i32.const 520) "\00\00\00\00\00\00\00\00")
 (data (i32.const 528) "\08\02\00\00\00\00\00\00")
 (data (i32.const 536) "\00\00\00\00\00\00\00\00")
 (data (i32.const 544) "\18\02\00\00\00\00\00\00")
 (data (i32.const 552) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 584) "(\02\00\00\05\00\00\00")
 (data (i32.const 592) "\14\00\00\00\00\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 624) "P\02\00\00\05\00\00\00")
 (data (i32.const 632) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 664) "x\02\00\00\05\00\00\00")
 (data (i32.const 672) "\14\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 704) "\a0\02\00\00\05\00\00\00")
 (data (i32.const 712) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 744) "\c8\02\00\00\05\00\00\00")
 (data (i32.const 752) "\14\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 784) "\f0\02\00\00\05\00\00\00")
 (data (i32.const 792) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 824) "\18\03\00\00\05\00\00\00")
 (data (i32.const 832) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 864) "@\03\00\00\05\00\00\00")
 (data (i32.const 872) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 904) "h\03\00\00\05\00\00\00")
 (data (i32.const 912) "\14\00\00\00\00\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 944) "\90\03\00\00\05\00\00\00")
 (data (i32.const 952) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 984) "\b8\03\00\00\05\00\00\00")
 (data (i32.const 992) "\14\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1024) "\e0\03\00\00\05\00\00\00")
 (data (i32.const 1032) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1064) "\08\04\00\00\05\00\00\00")
 (data (i32.const 1072) "\14\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1104) "0\04\00\00\05\00\00\00")
 (data (i32.const 1112) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1144) "X\04\00\00\05\00\00\00")
 (data (i32.const 1152) "\14\00\00\00\00\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1184) "\80\04\00\00\05\00\00\00")
 (data (i32.const 1192) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1224) "\a8\04\00\00\05\00\00\00")
 (data (i32.const 1232) "\14\00\00\00\00\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1264) "\d0\04\00\00\05\00\00\00")
 (data (i32.const 1272) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1304) "\f8\04\00\00\05\00\00\00")
 (data (i32.const 1312) "\14\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1344) " \05\00\00\05\00\00\00")
 (data (i32.const 1352) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1384) "H\05\00\00\05\00\00\00")
 (data (i32.const 1392) "\14\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1424) "p\05\00\00\05\00\00\00")
 (data (i32.const 1432) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1464) "\98\05\00\00\05\00\00\00")
 (data (i32.const 1472) "\14\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 1504) "\c0\05\00\00\05\00\00\00")
 (data (i32.const 1512) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 1544) "V\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?\00")
 (data (i32.const 1720) " \00\00\00\00\00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1784) "\b8\06\00\00\08\00\00\00")
 (data (i32.const 1792) " \00\00\00\00\00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1856) "\00\07\00\00\08\00\00\00")
 (data (i32.const 1864) "@\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1992) "H\07\00\00\08\00\00\00")
 (data (i32.const 2000) "@\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2128) "\d0\07\00\00\08\00\00\00")
 (data (i32.const 2136) "\14\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 2168) "X\08\00\00\05\00\00\00")
 (data (i32.const 2176) "\14\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 2208) "\80\08\00\00\05\00\00\00")
 (data (i32.const 2216) "\14\00\00\00\00\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 2248) "\a8\08\00\00\05\00\00\00")
 (data (i32.const 2256) "\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00")
 (data (i32.const 2288) "\d0\08\00\00\05\00\00\00")
 (data (i32.const 2296) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2304) "\f8\08\00\00\00\00\00\00")
 (data (i32.const 2312) "\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 2328) "\08\t\00\00\01\00\00\00")
 (data (i32.const 2336) "\08\00\00\00\00\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 2352) " \t\00\00\02\00\00\00")
 (data (i32.const 2360) "\10\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2392) "8\t\00\00\04\00\00\00")
 (data (i32.const 2400) "\10\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2432) "`\t\00\00\04\00\00\00")
 (data (i32.const 2440) "\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 2456) "\88\t\00\00\01\00\00\00")
 (data (i32.const 2464) "\08\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 2480) "\a0\t\00\00\02\00\00\00")
 (data (i32.const 2488) "\01\00\00\00a\00")
 (data (i32.const 2496) "\01\00\00\00b\00")
 (data (i32.const 2504) "\02\00\00\00a\00b\00")
 (data (i32.const 2512) "\02\00\00\00b\00a\00")
 (data (i32.const 2520) "\00\00\00\00")
 (data (i32.const 2528) "\1c\00\00\00\00\00\00\00\b8\t\00\00\c0\t\00\00\b8\t\00\00\c8\t\00\00\d0\t\00\00\d8\t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2592) "\e0\t\00\00\07\00\00\00")
 (data (i32.const 2600) "\1c\00\00\00\00\00\00\00\d8\t\00\00\b8\t\00\00\b8\t\00\00\c8\t\00\00\c0\t\00\00\d0\t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2664) "(\n\00\00\07\00\00\00")
 (data (i32.const 2672) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 2704) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 2760) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 2776) "\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 2792) "\d8\n\00\00\02\00\00\00")
 (data (i32.const 2800) "\04\00\00\00t\00r\00u\00e\00")
 (data (i32.const 2816) "\05\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 2832) "\01\00\00\00,\00")
 (data (i32.const 2840) "\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 2856) "\18\0b\00\00\02\00\00\00")
 (data (i32.const 2864) "\n\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e\00")
 (data (i32.const 2888) "\0c\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2920) "H\0b\00\00\03\00\00\00")
 (data (i32.const 2928) "\01\00\00\000\00")
 (data (i32.const 2936) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3448) "x\0b\00\00d\00\00\00")
 (data (i32.const 3456) "\0c\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3488) "\80\0d\00\00\03\00\00\00")
 (data (i32.const 3496) "\05\00\00\001\00-\002\00-\003\00")
 (data (i32.const 3512) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3544) "\b8\0d\00\00\03\00\00\00")
 (data (i32.const 3552) "\01\00\00\00-\00")
 (data (i32.const 3560) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3592) "\e8\0d\00\00\03\00\00\00")
 (data (i32.const 3600) "\08\00\00\00\00\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 3616) "\10\0e\00\00\02\00\00\00")
 (data (i32.const 3624) "\02\00\00\00_\00_\00")
 (data (i32.const 3632) "\08\00\00\00\00\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 3648) "0\0e\00\00\02\00\00\00")
 (data (i32.const 3656) "\18\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 3712) "\01\00\00\001\00")
 (data (i32.const 3720) "\0c\00\00\00\00\00\00\00\d8\t\00\00\80\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3752) "\88\0e\00\00\03\00\00\00")
 (data (i32.const 3760) "\0c\00\00\00\00\00\00\00\d8\t\00\00\80\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3792) "\b0\0e\00\00\03\00\00\00")
 (data (i32.const 3800) "\0f\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 3840) " \00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 3912) "\03\00\00\001\00,\002\00")
 (data (i32.const 3928) "\07\00\00\000\00,\001\00,\002\00,\003\00")
 (data (i32.const 3952) "\03\00\00\00\00\00\00\00\01\ff\00\00\00\00\00\00")
 (data (i32.const 3968) "p\0f\00\00\03\00\00\00")
 (data (i32.const 3976) "\03\00\00\00\00\00\00\00\01\ff\00\00\00\00\00\00")
 (data (i32.const 3992) "\88\0f\00\00\03\00\00\00")
 (data (i32.const 4000) "\06\00\00\001\00,\00-\001\00,\000\00")
 (data (i32.const 4016) "\06\00\00\00\00\00\00\00\01\00\ff\ff\00\00\00\00")
 (data (i32.const 4032) "\b0\0f\00\00\03\00\00\00")
 (data (i32.const 4040) "\06\00\00\00\00\00\00\00\01\00\ff\ff\00\00\00\00")
 (data (i32.const 4056) "\c8\0f\00\00\03\00\00\00")
 (data (i32.const 4064) "\t\00\00\001\00,\006\005\005\003\005\00,\000\00")
 (data (i32.const 4088) "\18\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 4120) "\f8\0f\00\00\03\00\00\00")
 (data (i32.const 4128) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4640) " \10\00\00d\00\00\00")
 (data (i32.const 4648) "\18\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 4680) "(\12\00\00\03\00\00\00")
 (data (i32.const 4688) "\18\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000\00")
 (data (i32.const 4744) " \00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4808) "\88\12\00\00\04\00\00\00")
 (data (i32.const 4816) " \00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4880) "\d0\12\00\00\04\00\00\00")
 (data (i32.const 4888) "*\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 4976) "\0d\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,\00")
 (data (i32.const 5008) "\01\00\00\002\00")
 (data (i32.const 5016) "\01\00\00\004\00")
 (data (i32.const 5024) "\10\00\00\00\00\00\00\00\80\0e\00\00\90\13\00\00\00\00\00\00\98\13\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5056) "\a0\13\00\00\04\00\00\00")
 (data (i32.const 5064) "\10\00\00\00\00\00\00\00\80\0e\00\00\90\13\00\00\00\00\00\00\98\13\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5096) "\c8\13\00\00\04\00\00\00")
 (data (i32.const 5104) "\06\00\00\001\00,\002\00,\00,\004\00")
 (data (i32.const 5120) "\08\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 5136) "\00\14\00\00\02\00\00\00")
 (data (i32.const 5144) "\08\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 5160) "\18\14\00\00\02\00\00\00")
 (data (i32.const 5168) "\08\00\00\00\00\00\00\00\10\14\00\00(\14\00\00")
 (data (i32.const 5184) "0\14\00\00\02\00\00\00")
 (data (i32.const 5192) "\07\00\00\001\00,\002\00,\003\00,\004\00")
 (data (i32.const 5216) "\02\00\00\00\00\00\00\00\01\02\00\00\00\00\00\00")
 (data (i32.const 5232) "`\14\00\00\02\00\00\00")
 (data (i32.const 5240) "\02\00\00\00\00\00\00\00\03\04\00\00\00\00\00\00")
 (data (i32.const 5256) "x\14\00\00\02\00\00\00")
 (data (i32.const 5264) "\08\00\00\00\00\00\00\00p\14\00\00\88\14\00\00")
 (data (i32.const 5280) "\90\14\00\00\02\00\00\00")
 (data (i32.const 5288) "\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 5304) "\a8\14\00\00\01\00\00\00")
 (data (i32.const 5312) "\04\00\00\00\00\00\00\00\b8\14\00\00\00\00\00\00")
 (data (i32.const 5328) "\c0\14\00\00\01\00\00\00")
 (data (i32.const 5336) "\04\00\00\00\00\00\00\00\d0\14\00\00\00\00\00\00")
 (data (i32.const 5352) "\d8\14\00\00\01\00\00\00")
 (table $0 56 anyfunc)
 (elem (i32.const 0) $null $start~anonymous|1 $start~anonymous|2 $start~anonymous|3 $start~anonymous|4 $start~anonymous|5 $start~anonymous|6 $start~anonymous|7 $start~anonymous|8 $start~anonymous|9 $start~anonymous|10 $start~anonymous|11 $start~anonymous|12 $start~anonymous|13 $start~anonymous|14 $start~anonymous|15 $start~anonymous|16 $start~anonymous|17 $start~anonymous|18 $start~anonymous|19 $start~anonymous|20 $start~anonymous|21 $start~anonymous|22 $start~anonymous|23 $start~anonymous|24 $start~anonymous|25 $start~anonymous|26 $start~anonymous|27 $start~anonymous|28 $start~anonymous|29 $start~anonymous|30 $start~anonymous|31 $start~anonymous|32 $start~anonymous|33 $start~anonymous|34 $start~anonymous|35 $start~anonymous|36 $start~anonymous|37 $start~anonymous|38 $start~anonymous|39 $start~anonymous|40 $start~anonymous|41 $start~anonymous|42 $~lib/array/Array<f32>#sort|trampoline~anonymous|43 $~lib/array/Array<f64>#sort|trampoline~anonymous|44 $~lib/array/Array<i32>#sort|trampoline~anonymous|45 $~lib/array/Array<u32>#sort|trampoline~anonymous|46 $std/array/assertSortedDefault<i32>~anonymous|47 $start~anonymous|48 $start~anonymous|49 $start~anonymous|50 $start~anonymous|51 $start~anonymous|52 $start~anonymous|53 $start~anonymous|54 $start~anonymous|55)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $~lib/internal/number/MAX_DOUBLE_LENGTH i32 (i32.const 28))
 (global $~lib/internal/number/_K (mut i32) (i32.const 0))
 (global $~lib/internal/number/_frc (mut i64) (i64.const 0))
 (global $~lib/internal/number/_exp (mut i32) (i32.const 0))
 (global $~lib/internal/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/internal/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/internal/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/internal/number/_exp_pow (mut i32) (i32.const 0))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $Infinity f64 (f64.const inf))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/num (mut i32) (i32.const 1))
 (global $std/array/Null (mut i32) (i32.const 0))
 (global $std/array/arr8 (mut i32) (i32.const 152))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/array/arr32 (mut i32) (i32.const 312))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $std/array/other (mut i32) (i32.const 0))
 (global $std/array/out (mut i32) (i32.const 0))
 (global $std/array/source (mut i32) (i32.const 544))
 (global $std/array/cwArr (mut i32) (i32.const 0))
 (global $std/array/includes (mut i32) (i32.const 0))
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
 (global $std/array/charset i32 (i32.const 1544))
 (global $std/array/f32ArrayTyped (mut i32) (i32.const 1784))
 (global $std/array/f64ArrayTyped (mut i32) (i32.const 1992))
 (global $std/array/i32ArrayTyped (mut i32) (i32.const 2168))
 (global $std/array/u32ArrayTyped (mut i32) (i32.const 2248))
 (global $std/array/reversed0 (mut i32) (i32.const 2304))
 (global $std/array/reversed1 (mut i32) (i32.const 2328))
 (global $std/array/reversed2 (mut i32) (i32.const 2352))
 (global $std/array/reversed4 (mut i32) (i32.const 2392))
 (global $std/array/expected4 (mut i32) (i32.const 2432))
 (global $std/array/reversed64 (mut i32) (i32.const 0))
 (global $std/array/reversed128 (mut i32) (i32.const 0))
 (global $std/array/reversed1024 (mut i32) (i32.const 0))
 (global $std/array/reversed10000 (mut i32) (i32.const 0))
 (global $std/array/randomized512 (mut i32) (i32.const 0))
 (global $std/array/randomized64 (mut i32) (i32.const 0))
 (global $std/array/randomized257 (mut i32) (i32.const 0))
 (global $std/array/reversedNested512 (mut i32) (i32.const 0))
 (global $std/array/reversedElements512 (mut i32) (i32.const 0))
 (global $std/array/randomStringsActual (mut i32) (i32.const 2592))
 (global $std/array/randomStringsExpected (mut i32) (i32.const 2664))
 (global $std/array/randomStrings400 (mut i32) (i32.const 0))
 (global $ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/internal/string/CharCode.PLUS i32 (i32.const 43))
 (global $~lib/internal/string/CharCode.MINUS i32 (i32.const 45))
 (global $~lib/internal/string/CharCode.DOT i32 (i32.const 46))
 (global $~lib/internal/string/CharCode._0 i32 (i32.const 48))
 (global $~lib/internal/string/CharCode._1 i32 (i32.const 49))
 (global $~lib/internal/string/CharCode._2 i32 (i32.const 50))
 (global $~lib/internal/string/CharCode._3 i32 (i32.const 51))
 (global $~lib/internal/string/CharCode._4 i32 (i32.const 52))
 (global $~lib/internal/string/CharCode._5 i32 (i32.const 53))
 (global $~lib/internal/string/CharCode._6 i32 (i32.const 54))
 (global $~lib/internal/string/CharCode._7 i32 (i32.const 55))
 (global $~lib/internal/string/CharCode._8 i32 (i32.const 56))
 (global $~lib/internal/string/CharCode._9 i32 (i32.const 57))
 (global $~lib/internal/string/CharCode.A i32 (i32.const 65))
 (global $~lib/internal/string/CharCode.B i32 (i32.const 66))
 (global $~lib/internal/string/CharCode.E i32 (i32.const 69))
 (global $~lib/internal/string/CharCode.N i32 (i32.const 78))
 (global $~lib/internal/string/CharCode.O i32 (i32.const 79))
 (global $~lib/internal/string/CharCode.X i32 (i32.const 88))
 (global $~lib/internal/string/CharCode.Z i32 (i32.const 90))
 (global $~lib/internal/string/CharCode.a i32 (i32.const 97))
 (global $~lib/internal/string/CharCode.b i32 (i32.const 98))
 (global $~lib/internal/string/CharCode.e i32 (i32.const 101))
 (global $~lib/internal/string/CharCode.n i32 (i32.const 110))
 (global $~lib/internal/string/CharCode.o i32 (i32.const 111))
 (global $~lib/internal/string/CharCode.x i32 (i32.const 120))
 (global $~lib/internal/string/CharCode.z i32 (i32.const 122))
 (global $~lib/builtins/i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $std/array/refArr (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $std/array/subarr32 (mut i32) (i32.const 5184))
 (global $std/array/subarr8 (mut i32) (i32.const 5280))
 (global $std/array/subarrU32 (mut i32) (i32.const 5352))
 (global $HEAP_BASE i32 (i32.const 5360))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  get_local $0
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_global $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  set_local $1
  get_local $1
  get_local $0
  tee_local $2
  i32.const 1
  tee_local $3
  get_local $2
  get_local $3
  i32.gt_u
  select
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_local $4
  current_memory
  set_local $5
  get_local $4
  get_local $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $4
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   set_local $2
   get_local $5
   tee_local $3
   get_local $2
   tee_local $6
   get_local $3
   get_local $6
   i32.gt_s
   select
   set_local $3
   get_local $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $4
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   get_local $0
   call $~lib/internal/arraybuffer/computeSize
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  set_local $1
  get_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/memory/memory.allocate (; 5 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/internal/memory/memset (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  get_local $2
  i32.eqz
  if
   return
  end
  get_local $0
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 1
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  get_local $1
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 2
  i32.sub
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 3
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $2
  i32.const -4
  i32.and
  set_local $2
  i32.const -1
  i32.const 255
  i32.div_u
  get_local $1
  i32.const 255
  i32.and
  i32.mul
  set_local $4
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 8
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 12
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 8
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 16
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 20
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 24
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 28
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 24
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 20
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 16
  i32.sub
  get_local $4
  i32.store
  i32.const 24
  get_local $0
  i32.const 4
  i32.and
  i32.add
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $4
  i64.extend_u/i32
  get_local $4
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  set_local $5
  block $break|0
   loop $continue|0
    get_local $2
    i32.const 32
    i32.ge_u
    if
     block
      get_local $0
      get_local $5
      i64.store
      get_local $0
      i32.const 8
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 16
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 24
      i32.add
      get_local $5
      i64.store
      get_local $2
      i32.const 32
      i32.sub
      set_local $2
      get_local $0
      i32.const 32
      i32.add
      set_local $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<i32>#constructor (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
 )
 (func $~lib/array/Array.isArray<Array<i32> | null> (; 8 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   get_local $0
   i32.const 0
   i32.ne
  else   
   i32.const 1
  end
 )
 (func $~lib/array/Array.isArray<Array<i32>> (; 9 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   get_local $0
   i32.const 0
   i32.ne
  else   
   i32.const 1
  end
 )
 (func $~lib/array/Array.isArray<P> (; 10 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   get_local $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array.isArray<i32> (; 11 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   get_local $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array<u8>#fill (; 12 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  get_local $2
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $5
   get_local $2
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
  else   
   get_local $2
   tee_local $6
   get_local $5
   tee_local $7
   get_local $6
   get_local $7
   i32.lt_s
   select
  end
  set_local $2
  get_local $3
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $5
   get_local $3
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
  else   
   get_local $3
   tee_local $6
   get_local $5
   tee_local $7
   get_local $6
   get_local $7
   i32.lt_s
   select
  end
  set_local $3
  get_local $2
  get_local $3
  i32.lt_s
  if
   get_local $4
   get_local $2
   i32.add
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $6
   get_local $3
   get_local $2
   i32.sub
   set_local $7
   get_local $6
   get_local $1
   get_local $7
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/array/Array<u8>#__get (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 0
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 0
   i32.shl
   i32.add
   i32.load8_u offset=8
  else   
   unreachable
  end
 )
 (func $std/array/isArraysEqual<u8> (; 14 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<u8>#get:length|inlined.0 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<u8>#get:length|inlined.2 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $3
    call $~lib/array/Array<u8>#__get
    i32.const 255
    i32.and
    get_local $1
    get_local $3
    call $~lib/array/Array<u8>#__get
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 0
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/array/Array<u8>#fill|trampoline (; 15 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      get_global $~argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    set_local $2
   end
   get_global $~lib/builtins/i32.MAX_VALUE
   set_local $3
  end
  get_local $0
  get_local $1
  get_local $2
  get_local $3
  call $~lib/array/Array<u8>#fill
 )
 (func $~lib/array/Array<u32>#fill (; 16 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  get_local $2
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $5
   get_local $2
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
  else   
   get_local $2
   tee_local $6
   get_local $5
   tee_local $7
   get_local $6
   get_local $7
   i32.lt_s
   select
  end
  set_local $2
  get_local $3
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $5
   get_local $3
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
  else   
   get_local $3
   tee_local $6
   get_local $5
   tee_local $7
   get_local $6
   get_local $7
   i32.lt_s
   select
  end
  set_local $3
  block $break|0
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $4
    get_local $2
    i32.const 2
    i32.shl
    i32.add
    get_local $1
    i32.store offset=8
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
 )
 (func $~lib/array/Array<u32>#__get (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/array/isArraysEqual<u32> (; 18 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<u32>#get:length|inlined.0 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<u32>#get:length|inlined.2 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $3
    call $~lib/array/Array<u32>#__get
    get_local $1
    get_local $3
    call $~lib/array/Array<u32>#__get
    i32.ne
    if
     i32.const 0
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/array/Array<u32>#fill|trampoline (; 19 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      get_global $~argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    set_local $2
   end
   get_global $~lib/builtins/i32.MAX_VALUE
   set_local $3
  end
  get_local $0
  get_local $1
  get_local $2
  get_local $3
  call $~lib/array/Array<u32>#fill
 )
 (func $std/array/internalCapacity<i32> (; 20 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.load
  set_local $1
  get_local $1
  i32.load
  i32.const 2
  i32.shr_s
 )
 (func $~lib/internal/memory/memcpy (; 21 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    get_local $2
    if (result i32)
     get_local $1
     i32.const 3
     i32.and
    else     
     get_local $2
    end
    if
     block
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 1
      i32.sub
      set_local $2
     end
     br $continue|0
    end
   end
  end
  get_local $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     get_local $2
     i32.const 16
     i32.ge_u
     if
      block
       get_local $0
       get_local $1
       i32.load
       i32.store
       get_local $0
       i32.const 4
       i32.add
       get_local $1
       i32.const 4
       i32.add
       i32.load
       i32.store
       get_local $0
       i32.const 8
       i32.add
       get_local $1
       i32.const 8
       i32.add
       i32.load
       i32.store
       get_local $0
       i32.const 12
       i32.add
       get_local $1
       i32.const 12
       i32.add
       i32.load
       i32.store
       get_local $1
       i32.const 16
       i32.add
       set_local $1
       get_local $0
       i32.const 16
       i32.add
       set_local $0
       get_local $2
       i32.const 16
       i32.sub
       set_local $2
      end
      br $continue|1
     end
    end
   end
   get_local $2
   i32.const 8
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    get_local $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    get_local $0
    i32.const 8
    i32.add
    set_local $0
    get_local $1
    i32.const 8
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 4
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    set_local $0
    get_local $1
    i32.const 4
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 2
   i32.and
   if
    get_local $0
    get_local $1
    i32.load16_u
    i32.store16
    get_local $0
    i32.const 2
    i32.add
    set_local $0
    get_local $1
    i32.const 2
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 1
   i32.and
   if
    block (result i32)
     get_local $0
     tee_local $5
     i32.const 1
     i32.add
     set_local $0
     get_local $5
    end
    block (result i32)
     get_local $1
     tee_local $5
     i32.const 1
     i32.add
     set_local $1
     get_local $5
    end
    i32.load8_u
    i32.store8
   end
   return
  end
  get_local $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       get_local $0
       i32.const 3
       i32.and
       set_local $5
       get_local $5
       i32.const 1
       i32.eq
       br_if $case0|2
       get_local $5
       i32.const 2
       i32.eq
       br_if $case1|2
       get_local $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      block
       get_local $1
       i32.load
       set_local $3
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       get_local $2
       i32.const 3
       i32.sub
       set_local $2
       block $break|3
        loop $continue|3
         get_local $2
         i32.const 17
         i32.ge_u
         if
          block
           get_local $1
           i32.const 1
           i32.add
           i32.load
           set_local $4
           get_local $0
           get_local $3
           i32.const 24
           i32.shr_u
           get_local $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 5
           i32.add
           i32.load
           set_local $3
           get_local $0
           i32.const 4
           i32.add
           get_local $4
           i32.const 24
           i32.shr_u
           get_local $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 9
           i32.add
           i32.load
           set_local $4
           get_local $0
           i32.const 8
           i32.add
           get_local $3
           i32.const 24
           i32.shr_u
           get_local $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 13
           i32.add
           i32.load
           set_local $3
           get_local $0
           i32.const 12
           i32.add
           get_local $4
           i32.const 24
           i32.shr_u
           get_local $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 16
           i32.add
           set_local $1
           get_local $0
           i32.const 16
           i32.add
           set_local $0
           get_local $2
           i32.const 16
           i32.sub
           set_local $2
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
      get_local $1
      i32.load
      set_local $3
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 2
      i32.sub
      set_local $2
      block $break|4
       loop $continue|4
        get_local $2
        i32.const 18
        i32.ge_u
        if
         block
          get_local $1
          i32.const 2
          i32.add
          i32.load
          set_local $4
          get_local $0
          get_local $3
          i32.const 16
          i32.shr_u
          get_local $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 6
          i32.add
          i32.load
          set_local $3
          get_local $0
          i32.const 4
          i32.add
          get_local $4
          i32.const 16
          i32.shr_u
          get_local $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 10
          i32.add
          i32.load
          set_local $4
          get_local $0
          i32.const 8
          i32.add
          get_local $3
          i32.const 16
          i32.shr_u
          get_local $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 14
          i32.add
          i32.load
          set_local $3
          get_local $0
          i32.const 12
          i32.add
          get_local $4
          i32.const 16
          i32.shr_u
          get_local $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 16
          i32.add
          set_local $1
          get_local $0
          i32.const 16
          i32.add
          set_local $0
          get_local $2
          i32.const 16
          i32.sub
          set_local $2
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
     get_local $1
     i32.load
     set_local $3
     block (result i32)
      get_local $0
      tee_local $5
      i32.const 1
      i32.add
      set_local $0
      get_local $5
     end
     block (result i32)
      get_local $1
      tee_local $5
      i32.const 1
      i32.add
      set_local $1
      get_local $5
     end
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 1
     i32.sub
     set_local $2
     block $break|5
      loop $continue|5
       get_local $2
       i32.const 19
       i32.ge_u
       if
        block
         get_local $1
         i32.const 3
         i32.add
         i32.load
         set_local $4
         get_local $0
         get_local $3
         i32.const 8
         i32.shr_u
         get_local $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 7
         i32.add
         i32.load
         set_local $3
         get_local $0
         i32.const 4
         i32.add
         get_local $4
         i32.const 8
         i32.shr_u
         get_local $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 11
         i32.add
         i32.load
         set_local $4
         get_local $0
         i32.const 8
         i32.add
         get_local $3
         i32.const 8
         i32.shr_u
         get_local $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 15
         i32.add
         i32.load
         set_local $3
         get_local $0
         i32.const 12
         i32.add
         get_local $4
         i32.const 8
         i32.shr_u
         get_local $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 16
         i32.add
         set_local $1
         get_local $0
         i32.const 16
         i32.add
         set_local $0
         get_local $2
         i32.const 16
         i32.sub
         set_local $2
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
  get_local $2
  i32.const 16
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 8
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 4
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 2
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 1
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 22 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   return
  end
  get_local $1
  get_local $2
  i32.add
  get_local $0
  i32.le_u
  tee_local $3
  if (result i32)
   get_local $3
  else   
   get_local $0
   get_local $2
   i32.add
   get_local $1
   i32.le_u
  end
  if
   get_local $0
   get_local $1
   get_local $2
   call $~lib/internal/memory/memcpy
   return
  end
  get_local $0
  get_local $1
  i32.lt_u
  if
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|0
     loop $continue|0
      get_local $0
      i32.const 7
      i32.and
      if
       block
        get_local $2
        i32.eqz
        if
         return
        end
        get_local $2
        i32.const 1
        i32.sub
        set_local $2
        block (result i32)
         get_local $0
         tee_local $3
         i32.const 1
         i32.add
         set_local $0
         get_local $3
        end
        block (result i32)
         get_local $1
         tee_local $3
         i32.const 1
         i32.add
         set_local $1
         get_local $3
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
      get_local $2
      i32.const 8
      i32.ge_u
      if
       block
        get_local $0
        get_local $1
        i64.load
        i64.store
        get_local $2
        i32.const 8
        i32.sub
        set_local $2
        get_local $0
        i32.const 8
        i32.add
        set_local $0
        get_local $1
        i32.const 8
        i32.add
        set_local $1
       end
       br $continue|1
      end
     end
    end
   end
   block $break|2
    loop $continue|2
     get_local $2
     if
      block
       block (result i32)
        get_local $0
        tee_local $3
        i32.const 1
        i32.add
        set_local $0
        get_local $3
       end
       block (result i32)
        get_local $1
        tee_local $3
        i32.const 1
        i32.add
        set_local $1
        get_local $3
       end
       i32.load8_u
       i32.store8
       get_local $2
       i32.const 1
       i32.sub
       set_local $2
      end
      br $continue|2
     end
    end
   end
  else   
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|3
     loop $continue|3
      get_local $0
      get_local $2
      i32.add
      i32.const 7
      i32.and
      if
       block
        get_local $2
        i32.eqz
        if
         return
        end
        get_local $0
        get_local $2
        i32.const 1
        i32.sub
        tee_local $2
        i32.add
        get_local $1
        get_local $2
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
      get_local $2
      i32.const 8
      i32.ge_u
      if
       block
        get_local $2
        i32.const 8
        i32.sub
        set_local $2
        get_local $0
        get_local $2
        i32.add
        get_local $1
        get_local $2
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
     get_local $2
     if
      get_local $0
      get_local $2
      i32.const 1
      i32.sub
      tee_local $2
      i32.add
      get_local $1
      get_local $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.gt_s
  if
   get_local $1
   get_global $~lib/internal/arraybuffer/MAX_BLENGTH
   i32.le_s
   i32.eqz
   if
    i32.const 0
    i32.const 40
    i32.const 37
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   get_local $1
   get_local $2
   call $~lib/internal/arraybuffer/computeSize
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.sub
   i32.le_s
   if
    get_local $0
    get_local $1
    i32.store
    get_local $0
    get_global $~lib/internal/arraybuffer/HEADER_SIZE
    i32.add
    get_local $2
    i32.add
    set_local $3
    i32.const 0
    set_local $4
    get_local $1
    get_local $2
    i32.sub
    set_local $5
    get_local $3
    get_local $4
    get_local $5
    call $~lib/internal/memory/memset
   else    
    get_local $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    set_local $5
    get_local $5
    get_global $~lib/internal/arraybuffer/HEADER_SIZE
    i32.add
    set_local $4
    get_local $0
    get_global $~lib/internal/arraybuffer/HEADER_SIZE
    i32.add
    set_local $3
    get_local $4
    get_local $3
    get_local $2
    call $~lib/internal/memory/memmove
    get_local $5
    get_global $~lib/internal/arraybuffer/HEADER_SIZE
    i32.add
    get_local $2
    i32.add
    set_local $3
    i32.const 0
    set_local $4
    get_local $1
    get_local $2
    i32.sub
    set_local $6
    get_local $3
    get_local $4
    get_local $6
    call $~lib/internal/memory/memset
    get_local $5
    return
   end
  else   
   get_local $1
   get_local $2
   i32.lt_s
   if
    get_local $1
    i32.const 0
    i32.ge_s
    i32.eqz
    if
     i32.const 0
     i32.const 40
     i32.const 61
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $0
    get_local $1
    i32.store
   end
  end
  get_local $0
 )
 (func $~lib/array/Array<i32>#push (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 1
  i32.add
  set_local $5
  get_local $2
  get_local $4
  i32.ge_u
  if
   get_local $2
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 184
    i32.const 42
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
  end
  get_local $0
  get_local $5
  i32.store offset=4
  get_local $3
  get_local $2
  i32.const 2
  i32.shl
  i32.add
  get_local $1
  i32.store offset=8
  get_local $5
 )
 (func $~lib/array/Array<i32>#__get (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/array/Array<i32>#pop (; 26 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load offset=4
  set_local $1
  get_local $1
  i32.const 1
  i32.lt_s
  if
   i32.const 0
   i32.const 8
   i32.const 246
   i32.const 20
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.1 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $1
   i32.const 1
   i32.sub
   tee_local $1
   set_local $3
   get_local $2
   get_local $3
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $4
 )
 (func $~lib/array/Array<i32>#concat (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $1
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
  else   
   get_local $1
   i32.load offset=4
  end
  set_local $3
  get_local $2
  get_local $3
  i32.add
  set_local $4
  i32.const 0
  get_local $4
  call $~lib/array/Array<i32>#constructor
  set_local $5
  get_local $2
  if
   get_local $5
   i32.load
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $6
   get_local $0
   i32.load
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $7
   get_local $2
   i32.const 2
   i32.shl
   set_local $8
   get_local $6
   get_local $7
   get_local $8
   call $~lib/internal/memory/memmove
  end
  get_local $3
  if
   get_local $5
   i32.load
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   set_local $8
   get_local $1
   i32.load
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $7
   get_local $3
   i32.const 2
   i32.shl
   set_local $6
   get_local $8
   get_local $7
   get_local $6
   call $~lib/internal/memory/memmove
  end
  get_local $5
 )
 (func $~lib/array/Array<i32>#copyWithin (; 28 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  get_local $3
  tee_local $6
  get_local $5
  tee_local $7
  get_local $6
  get_local $7
  i32.lt_s
  select
  set_local $3
  get_local $1
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $5
   get_local $1
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
  else   
   get_local $1
   tee_local $6
   get_local $5
   tee_local $7
   get_local $6
   get_local $7
   i32.lt_s
   select
  end
  set_local $8
  get_local $2
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $5
   get_local $2
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
  else   
   get_local $2
   tee_local $6
   get_local $5
   tee_local $7
   get_local $6
   get_local $7
   i32.lt_s
   select
  end
  set_local $9
  get_local $3
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $5
   get_local $3
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
  else   
   get_local $3
   tee_local $6
   get_local $5
   tee_local $7
   get_local $6
   get_local $7
   i32.lt_s
   select
  end
  set_local $10
  get_local $10
  get_local $9
  i32.sub
  tee_local $6
  get_local $5
  get_local $8
  i32.sub
  tee_local $7
  get_local $6
  get_local $7
  i32.lt_s
  select
  set_local $11
  get_local $9
  get_local $8
  i32.lt_s
  tee_local $6
  if (result i32)
   get_local $8
   get_local $9
   get_local $11
   i32.add
   i32.lt_s
  else   
   get_local $6
  end
  if
   get_local $9
   get_local $11
   i32.const 1
   i32.sub
   i32.add
   set_local $9
   get_local $8
   get_local $11
   i32.const 1
   i32.sub
   i32.add
   set_local $8
   block $break|0
    loop $continue|0
     get_local $11
     if
      block
       block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.2 (result i32)
        get_local $4
        get_local $9
        i32.const 2
        i32.shl
        i32.add
        i32.load offset=8
       end
       set_local $6
       get_local $4
       get_local $8
       i32.const 2
       i32.shl
       i32.add
       get_local $6
       i32.store offset=8
       get_local $9
       i32.const 1
       i32.sub
       set_local $9
       get_local $8
       i32.const 1
       i32.sub
       set_local $8
       get_local $11
       i32.const 1
       i32.sub
       set_local $11
      end
      br $continue|0
     end
    end
   end
  else   
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   get_local $8
   i32.const 2
   i32.shl
   i32.add
   set_local $6
   get_local $4
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   get_local $9
   i32.const 2
   i32.shl
   i32.add
   set_local $7
   get_local $11
   i32.const 2
   i32.shl
   set_local $12
   get_local $6
   get_local $7
   get_local $12
   call $~lib/internal/memory/memmove
  end
  get_local $0
 )
 (func $~lib/array/Array<i32>#copyWithin|trampoline (; 29 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   get_global $~lib/builtins/i32.MAX_VALUE
   set_local $3
  end
  get_local $0
  get_local $1
  get_local $2
  get_local $3
  call $~lib/array/Array<i32>#copyWithin
 )
 (func $std/array/isArraysEqual<i32> (; 30 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<i32>#get:length|inlined.15 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<i32>#get:length|inlined.17 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $3
    call $~lib/array/Array<i32>#__get
    get_local $1
    get_local $3
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/array/Array<i32>#unshift (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $4
  i32.const 1
  i32.add
  set_local $5
  get_local $4
  get_local $3
  i32.ge_u
  if
   get_local $4
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 336
    i32.const 42
    call $~lib/env/abort
    unreachable
   end
   get_local $2
   get_local $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $2
   get_local $2
   i32.load
   i32.const 2
   i32.shr_u
   set_local $3
   get_local $0
   get_local $2
   i32.store
  end
  get_local $2
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  i32.const 4
  i32.add
  set_local $6
  get_local $2
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $7
  get_local $3
  i32.const 1
  i32.sub
  i32.const 2
  i32.shl
  set_local $8
  get_local $6
  get_local $7
  get_local $8
  call $~lib/internal/memory/memmove
  i32.const 0
  set_local $8
  get_local $2
  get_local $8
  i32.const 2
  i32.shl
  i32.add
  get_local $1
  i32.store offset=8
  get_local $0
  get_local $5
  i32.store offset=4
  get_local $5
 )
 (func $~lib/array/Array<i32>#shift (; 32 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load offset=4
  set_local $1
  get_local $1
  i32.const 1
  i32.lt_s
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 20
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  set_local $2
  block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.3 (result i32)
   i32.const 0
   set_local $3
   get_local $2
   get_local $3
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $1
  i32.const 1
  i32.sub
  set_local $5
  get_local $2
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $3
  get_local $2
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  i32.const 4
  i32.add
  set_local $6
  get_local $5
  i32.const 2
  i32.shl
  set_local $7
  get_local $3
  get_local $6
  get_local $7
  call $~lib/internal/memory/memmove
  i32.const 0
  set_local $7
  get_local $2
  get_local $5
  i32.const 2
  i32.shl
  i32.add
  get_local $7
  i32.store offset=8
  get_local $0
  get_local $5
  i32.store offset=4
  get_local $4
 )
 (func $~lib/array/Array<i32>#reverse (; 33 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $1
  block $break|0
   block
    i32.const 0
    set_local $2
    get_local $0
    i32.load offset=4
    i32.const 1
    i32.sub
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.4 (result i32)
      get_local $1
      get_local $2
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.5 (result i32)
      get_local $1
      get_local $3
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $5
     get_local $1
     get_local $2
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     i32.store offset=8
     get_local $1
     get_local $3
     i32.const 2
     i32.shl
     i32.add
     get_local $4
     i32.store offset=8
    end
    block
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     get_local $3
     i32.const 1
     i32.sub
     set_local $3
    end
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
 )
 (func $~lib/array/Array<i32>#indexOf (; 34 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load offset=4
  set_local $3
  get_local $3
  i32.const 0
  i32.eq
  tee_local $4
  if (result i32)
   get_local $4
  else   
   get_local $2
   get_local $3
   i32.ge_s
  end
  if
   i32.const -1
   return
  end
  get_local $2
  i32.const 0
  i32.lt_s
  if
   get_local $3
   get_local $2
   i32.add
   tee_local $4
   i32.const 0
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $2
  end
  get_local $0
  i32.load
  set_local $6
  block $break|0
   loop $continue|0
    get_local $2
    get_local $3
    i32.lt_s
    if
     block
      block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.7 (result i32)
       get_local $6
       get_local $2
       i32.const 2
       i32.shl
       i32.add
       i32.load offset=8
      end
      get_local $1
      i32.eq
      if
       get_local $2
       return
      end
      get_local $2
      i32.const 1
      i32.add
      set_local $2
     end
     br $continue|0
    end
   end
  end
  i32.const -1
 )
 (func $~lib/array/Array<i32>#splice (; 35 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $2
  i32.const 1
  i32.lt_s
  if
   return
  end
  get_local $0
  i32.load offset=4
  set_local $3
  get_local $1
  i32.const 0
  i32.lt_s
  if
   get_local $3
   get_local $1
   i32.add
   tee_local $4
   i32.const 0
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $1
  end
  get_local $1
  get_local $3
  i32.ge_s
  if
   return
  end
  get_local $2
  tee_local $4
  get_local $3
  get_local $1
  i32.sub
  tee_local $5
  get_local $4
  get_local $5
  i32.lt_s
  select
  set_local $2
  get_local $0
  i32.load
  set_local $6
  get_local $6
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  set_local $4
  get_local $6
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  get_local $1
  get_local $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  set_local $5
  get_local $2
  i32.const 2
  i32.shl
  set_local $7
  get_local $4
  get_local $5
  get_local $7
  call $~lib/internal/memory/memmove
  get_local $0
  get_local $3
  get_local $2
  i32.sub
  i32.store offset=4
 )
 (func $~lib/array/Array<i32>#__set (; 36 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 109
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $start~anonymous|1 (; 37 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 0
  i32.eq
 )
 (func $~lib/array/Array<i32>#findIndex (; 38 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $2
  block $break|0
   block
    i32.const 0
    set_local $3
    get_local $0
    i32.load offset=4
    set_local $4
   end
   loop $repeat|0
    get_local $3
    get_local $4
    i32.lt_s
    tee_local $5
    if (result i32)
     get_local $3
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $5
    end
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 3
     set_global $~argc
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.9 (result i32)
      get_local $2
      get_local $3
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $3
     get_local $0
     get_local $1
     call_indirect (type $iiii)
    end
    i32.const 1
    i32.and
    if
     get_local $3
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $start~anonymous|2 (; 39 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 1
  i32.eq
 )
 (func $start~anonymous|3 (; 40 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 100
  i32.eq
 )
 (func $start~anonymous|4 (; 41 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_local $0
  i32.const 100
  i32.eq
 )
 (func $start~anonymous|5 (; 42 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 100
  i32.eq
 )
 (func $start~anonymous|6 (; 43 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_local $0
  i32.const 100
  i32.eq
 )
 (func $start~anonymous|7 (; 44 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#every (; 45 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $2
  block $break|0
   block
    i32.const 0
    set_local $3
    get_local $0
    i32.load offset=4
    set_local $4
   end
   loop $repeat|0
    get_local $3
    get_local $4
    i32.lt_s
    tee_local $5
    if (result i32)
     get_local $3
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $5
    end
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 3
     set_global $~argc
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.11 (result i32)
      get_local $2
      get_local $3
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $3
     get_local $0
     get_local $1
     call_indirect (type $iiii)
    end
    i32.const 1
    i32.and
    i32.eqz
    if
     i32.const 0
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $start~anonymous|8 (; 46 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 0
  i32.le_s
 )
 (func $start~anonymous|9 (; 47 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_local $0
  i32.const 10
  i32.lt_s
 )
 (func $start~anonymous|10 (; 48 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 10
  i32.lt_s
 )
 (func $start~anonymous|11 (; 49 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_local $0
  i32.const 3
  i32.lt_s
 )
 (func $start~anonymous|12 (; 50 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 3
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#some (; 51 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $2
  block $break|0
   block
    i32.const 0
    set_local $3
    get_local $0
    i32.load offset=4
    set_local $4
   end
   loop $repeat|0
    get_local $3
    get_local $4
    i32.lt_s
    tee_local $5
    if (result i32)
     get_local $3
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $5
    end
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 3
     set_global $~argc
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.13 (result i32)
      get_local $2
      get_local $3
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $3
     get_local $0
     get_local $1
     call_indirect (type $iiii)
    end
    i32.const 1
    i32.and
    if
     i32.const 1
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
 )
 (func $start~anonymous|13 (; 52 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const -1
  i32.le_s
 )
 (func $start~anonymous|14 (; 53 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_local $0
  i32.const 10
  i32.gt_s
 )
 (func $start~anonymous|15 (; 54 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 10
  i32.gt_s
 )
 (func $start~anonymous|16 (; 55 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_local $0
  i32.const 3
  i32.gt_s
 )
 (func $start~anonymous|17 (; 56 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
 )
 (func $~lib/array/Array<i32>#forEach (; 57 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $2
  block $break|0
   block
    i32.const 0
    set_local $3
    get_local $0
    i32.load offset=4
    set_local $4
   end
   loop $repeat|0
    get_local $3
    get_local $4
    i32.lt_s
    tee_local $5
    if (result i32)
     get_local $3
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $5
    end
    i32.eqz
    br_if $break|0
    block
     i32.const 3
     set_global $~argc
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.14 (result i32)
      get_local $2
      get_local $3
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $3
     get_local $0
     get_local $1
     call_indirect (type $iiiv)
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $start~anonymous|18 (; 58 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
 )
 (func $start~anonymous|19 (; 59 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
 )
 (func $start~anonymous|20 (; 60 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
 )
 (func $start~anonymous|21 (; 61 ;) (type $iiif) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  get_local $0
  f32.convert_s/i32
 )
 (func $~lib/array/Array<f32>#constructor (; 62 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
 )
 (func $~lib/array/Array<i32>#map<f32> (; 63 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  i32.const 0
  get_local $3
  call $~lib/array/Array<f32>#constructor
  set_local $4
  get_local $4
  i32.load
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    tee_local $7
    if (result i32)
     get_local $6
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $7
    end
    i32.eqz
    br_if $break|0
    block
     block (result f32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.15 (result i32)
       get_local $2
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       i32.load offset=8
      end
      get_local $6
      get_local $0
      get_local $1
      call_indirect (type $iiif)
     end
     set_local $8
     get_local $5
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $8
     f32.store offset=8
    end
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $4
 )
 (func $~lib/array/Array<f32>#__get (; 64 ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result f32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   f32.load offset=8
  else   
   unreachable
  end
 )
 (func $start~anonymous|22 (; 65 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
 )
 (func $~lib/array/Array<i32>#map<i32> (; 66 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  i32.const 0
  get_local $3
  call $~lib/array/Array<i32>#constructor
  set_local $4
  get_local $4
  i32.load
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    tee_local $7
    if (result i32)
     get_local $6
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $7
    end
    i32.eqz
    br_if $break|0
    block
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.16 (result i32)
       get_local $2
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       i32.load offset=8
      end
      get_local $6
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     set_local $7
     get_local $5
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $7
     i32.store offset=8
    end
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $4
 )
 (func $start~anonymous|23 (; 67 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
 )
 (func $start~anonymous|24 (; 68 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
 )
 (func $start~anonymous|25 (; 69 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#filter (; 70 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  set_local $4
  block $break|0
   i32.const 0
   set_local $5
   loop $repeat|0
    get_local $5
    get_local $3
    i32.lt_s
    tee_local $6
    if (result i32)
     get_local $5
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $6
    end
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.17 (result i32)
      get_local $2
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $6
     block (result i32)
      i32.const 3
      set_global $~argc
      get_local $6
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 1
     i32.and
     if
      get_local $4
      get_local $6
      call $~lib/array/Array<i32>#push
      drop
     end
    end
    get_local $5
    i32.const 1
    i32.add
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $4
 )
 (func $start~anonymous|26 (; 71 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
  i32.const 2
  i32.ge_s
 )
 (func $start~anonymous|27 (; 72 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
  i32.const 2
  i32.ge_s
 )
 (func $start~anonymous|28 (; 73 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
  i32.const 2
  i32.ge_s
 )
 (func $start~anonymous|29 (; 74 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 75 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $2
  set_local $3
  get_local $0
  i32.load
  set_local $4
  block $break|0
   block
    i32.const 0
    set_local $5
    get_local $0
    i32.load offset=4
    set_local $6
   end
   loop $repeat|0
    get_local $5
    get_local $6
    i32.lt_s
    tee_local $7
    if (result i32)
     get_local $5
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $7
    end
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $3
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.18 (result i32)
      get_local $4
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $3
    get_local $5
    i32.const 1
    i32.add
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $3
 )
 (func $start~anonymous|30 (; 76 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|31 (; 77 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  i32.const 1
  i32.and
  if (result i32)
   get_local $0
  else   
   get_local $1
   i32.const 2
   i32.gt_s
  end
 )
 (func $~lib/array/Array<i32>#reduce<bool> (; 78 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $2
  set_local $3
  get_local $0
  i32.load
  set_local $4
  block $break|0
   block
    i32.const 0
    set_local $5
    get_local $0
    i32.load offset=4
    set_local $6
   end
   loop $repeat|0
    get_local $5
    get_local $6
    i32.lt_s
    tee_local $7
    if (result i32)
     get_local $5
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $7
    end
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $3
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.19 (result i32)
      get_local $4
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $3
    get_local $5
    i32.const 1
    i32.add
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $3
 )
 (func $start~anonymous|32 (; 79 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  i32.const 1
  i32.and
  if (result i32)
   get_local $0
  else   
   get_local $1
   i32.const 100
   i32.gt_s
  end
 )
 (func $start~anonymous|33 (; 80 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|34 (; 81 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|35 (; 82 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $3
  call $~lib/array/Array<i32>#pop
  drop
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|36 (; 83 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 84 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $2
  set_local $3
  get_local $0
  i32.load
  set_local $4
  block $break|0
   get_local $0
   i32.load offset=4
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $3
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.20 (result i32)
      get_local $4
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $3
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $3
 )
 (func $start~anonymous|37 (; 85 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|38 (; 86 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  i32.const 1
  i32.and
  if (result i32)
   get_local $0
  else   
   get_local $1
   i32.const 2
   i32.gt_s
  end
 )
 (func $~lib/array/Array<i32>#reduceRight<bool> (; 87 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $2
  set_local $3
  get_local $0
  i32.load
  set_local $4
  block $break|0
   get_local $0
   i32.load offset=4
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $3
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.21 (result i32)
      get_local $4
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $3
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $3
 )
 (func $start~anonymous|39 (; 88 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  i32.const 1
  i32.and
  if (result i32)
   get_local $0
  else   
   get_local $1
   i32.const 100
   i32.gt_s
  end
 )
 (func $start~anonymous|40 (; 89 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|41 (; 90 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|42 (; 91 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $3
  call $~lib/array/Array<i32>#pop
  drop
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/math/murmurHash3 (; 92 ;) (type $II) (param $0 i64) (result i64)
  get_local $0
  get_local $0
  i64.const 33
  i64.shr_u
  i64.xor
  set_local $0
  get_local $0
  i64.const -49064778989728563
  i64.mul
  set_local $0
  get_local $0
  get_local $0
  i64.const 33
  i64.shr_u
  i64.xor
  set_local $0
  get_local $0
  i64.const -4265267296055464877
  i64.mul
  set_local $0
  get_local $0
  get_local $0
  i64.const 33
  i64.shr_u
  i64.xor
  set_local $0
  get_local $0
 )
 (func $~lib/math/splitMix32 (; 93 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 1831565813
  i32.add
  set_local $0
  get_local $0
  get_local $0
  i32.const 15
  i32.shr_u
  i32.xor
  get_local $0
  i32.const 1
  i32.or
  i32.mul
  set_local $0
  get_local $0
  get_local $0
  get_local $0
  get_local $0
  i32.const 7
  i32.shr_u
  i32.xor
  get_local $0
  i32.const 61
  i32.or
  i32.mul
  i32.add
  i32.xor
  set_local $0
  get_local $0
  get_local $0
  i32.const 14
  i32.shr_u
  i32.xor
 )
 (func $~lib/math/NativeMath.seedRandom (; 94 ;) (type $Iv) (param $0 i64)
  get_local $0
  i64.eqz
  if
   i32.const 0
   i32.const 1512
   i32.const 959
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  set_global $~lib/math/random_seeded
  get_local $0
  call $~lib/math/murmurHash3
  set_global $~lib/math/random_state0_64
  get_global $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  call $~lib/math/murmurHash3
  set_global $~lib/math/random_state1_64
  get_local $0
  i32.wrap/i64
  call $~lib/math/splitMix32
  set_global $~lib/math/random_state0_32
  get_global $~lib/math/random_state0_32
  call $~lib/math/splitMix32
  set_global $~lib/math/random_state1_32
 )
 (func $~lib/internal/array/insertionSort<f32> (; 95 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.0 (result f32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      f32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.1 (result f32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          f32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $ffi)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          f32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     get_local $6
     i32.const 1
     i32.add
     set_local $8
     get_local $0
     get_local $1
     i32.add
     get_local $8
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     f32.store offset=8
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/allocator/arena/__memory_free (; 96 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $~lib/internal/array/weakHeapSort<f32> (; 97 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f32)
  (local $11 i32)
  (local $12 f32)
  get_local $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  set_local $4
  block $~lib/memory/memory.allocate|inlined.1 (result i32)
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.1
  end
  set_local $5
  i32.const 0
  set_local $6
  get_local $5
  get_local $6
  get_local $4
  call $~lib/internal/memory/memset
  block $break|0
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|0
    get_local $6
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block
     get_local $6
     set_local $7
     block $break|1
      loop $continue|1
       get_local $7
       i32.const 1
       i32.and
       get_local $5
       get_local $7
       i32.const 6
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $7
       i32.const 1
       i32.shr_s
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.eq
       if
        get_local $7
        i32.const 1
        i32.shr_s
        set_local $7
        br $continue|1
       end
      end
     end
     get_local $7
     i32.const 1
     i32.shr_s
     set_local $8
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.2 (result f32)
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      f32.load offset=8
     end
     set_local $9
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.3 (result f32)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      f32.load offset=8
     end
     set_local $10
     block (result i32)
      i32.const 2
      set_global $~argc
      get_local $9
      get_local $10
      get_local $3
      call_indirect (type $ffi)
     end
     i32.const 0
     i32.lt_s
     if
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 1
      get_local $6
      i32.const 31
      i32.and
      i32.shl
      i32.xor
      i32.store
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      get_local $9
      f32.store offset=8
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      get_local $10
      f32.store offset=8
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|2
    get_local $6
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.4 (result f32)
      i32.const 0
      set_local $8
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      f32.load offset=8
     end
     set_local $10
     i32.const 0
     set_local $8
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.5 (result f32)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      f32.load offset=8
     end
     set_local $9
     get_local $0
     get_local $1
     i32.add
     get_local $8
     i32.const 2
     i32.shl
     i32.add
     get_local $9
     f32.store offset=8
     get_local $0
     get_local $1
     i32.add
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $10
     f32.store offset=8
     i32.const 1
     set_local $8
     block $break|3
      loop $continue|3
       get_local $8
       i32.const 1
       i32.shl
       get_local $5
       get_local $8
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $8
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       tee_local $7
       get_local $6
       i32.lt_s
       if
        get_local $7
        set_local $8
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       get_local $8
       i32.const 0
       i32.gt_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.6 (result f32)
          i32.const 0
          set_local $11
          get_local $0
          get_local $1
          i32.add
          get_local $11
          i32.const 2
          i32.shl
          i32.add
          f32.load offset=8
         end
         set_local $10
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.7 (result f32)
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          f32.load offset=8
         end
         set_local $9
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $10
          get_local $9
          get_local $3
          call_indirect (type $ffi)
         end
         i32.const 0
         i32.lt_s
         if
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          get_local $8
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $10
          f32.store offset=8
          i32.const 0
          set_local $11
          get_local $0
          get_local $1
          i32.add
          get_local $11
          i32.const 2
          i32.shl
          i32.add
          get_local $9
          f32.store offset=8
         end
         get_local $8
         i32.const 1
         i32.shr_s
         set_local $8
        end
        br $continue|4
       end
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|2
    unreachable
   end
   unreachable
  end
  block $~lib/memory/memory.free|inlined.0
   block
    get_local $5
    call $~lib/allocator/arena/__memory_free
    br $~lib/memory/memory.free|inlined.0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.8 (result f32)
   i32.const 1
   set_local $6
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 2
   i32.shl
   i32.add
   f32.load offset=8
  end
  set_local $12
  i32.const 1
  set_local $6
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.9 (result f32)
   i32.const 0
   set_local $7
   get_local $0
   get_local $1
   i32.add
   get_local $7
   i32.const 2
   i32.shl
   i32.add
   f32.load offset=8
  end
  set_local $10
  get_local $0
  get_local $1
  i32.add
  get_local $6
  i32.const 2
  i32.shl
  i32.add
  get_local $10
  f32.store offset=8
  i32.const 0
  set_local $6
  get_local $0
  get_local $1
  i32.add
  get_local $6
  i32.const 2
  i32.shl
  i32.add
  get_local $12
  f32.store offset=8
 )
 (func $~lib/array/Array<f32>#sort (; 98 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 399
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<f32,f32>|inlined.1 (result f32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    f32.load offset=8
   end
   set_local $5
   block $~lib/internal/arraybuffer/loadUnsafe<f32,f32>|inlined.2 (result f32)
    i32.const 0
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    f32.load offset=8
   end
   set_local $6
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $5
    get_local $6
    get_local $1
    call_indirect (type $ffi)
   end
   i32.const 0
   i32.lt_s
   if
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    get_local $6
    f32.store offset=8
    i32.const 0
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    get_local $5
    f32.store offset=8
   end
   get_local $0
   return
  end
  get_local $2
  i32.const 256
  i32.lt_s
  if
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/insertionSort<f32>
  else   
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/weakHeapSort<f32>
  end
  get_local $0
  return
 )
 (func $~lib/array/Array<f32>#sort|trampoline~anonymous|43 (; 99 ;) (type $ffi) (param $0 f32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.reinterpret/f32
  set_local $2
  get_local $1
  i32.reinterpret/f32
  set_local $3
  get_local $2
  get_local $2
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  i32.xor
  set_local $2
  get_local $3
  get_local $3
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  i32.xor
  set_local $3
  get_local $2
  get_local $3
  i32.gt_s
  get_local $2
  get_local $3
  i32.lt_s
  i32.sub
 )
 (func $~lib/array/Array<f32>#sort|trampoline (; 100 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/internal/array/defaultComparator<f32>|inlined.0 (result i32)
    i32.const 43
    br $~lib/internal/array/defaultComparator<f32>|inlined.0
   end
   set_local $1
  end
  get_local $0
  get_local $1
  call $~lib/array/Array<f32>#sort
 )
 (func $~lib/builtins/isNaN<f32> (; 101 ;) (type $fi) (param $0 f32) (result i32)
  get_local $0
  get_local $0
  f32.ne
 )
 (func $std/array/isArraysEqual<f32> (; 102 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<f32>#get:length|inlined.1 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<f32>#get:length|inlined.3 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    block $continue|0
     get_local $3
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block
      get_local $0
      get_local $3
      call $~lib/array/Array<f32>#__get
      call $~lib/builtins/isNaN<f32>
      get_local $1
      get_local $3
      call $~lib/array/Array<f32>#__get
      call $~lib/builtins/isNaN<f32>
      i32.eq
      if
       br $continue|0
      end
      get_local $0
      get_local $3
      call $~lib/array/Array<f32>#__get
      get_local $1
      get_local $3
      call $~lib/array/Array<f32>#__get
      f32.ne
      if
       i32.const 0
       return
      end
     end
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/internal/array/insertionSort<f64> (; 103 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.0 (result f64)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 3
      i32.shl
      i32.add
      f64.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.1 (result f64)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 3
          i32.shl
          i32.add
          f64.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $FFi)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 3
          i32.shl
          i32.add
          get_local $7
          f64.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     get_local $6
     i32.const 1
     i32.add
     set_local $8
     get_local $0
     get_local $1
     i32.add
     get_local $8
     i32.const 3
     i32.shl
     i32.add
     get_local $5
     f64.store offset=8
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/internal/array/weakHeapSort<f64> (; 104 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 i32)
  (local $12 f64)
  get_local $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  set_local $4
  block $~lib/memory/memory.allocate|inlined.2 (result i32)
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.2
  end
  set_local $5
  i32.const 0
  set_local $6
  get_local $5
  get_local $6
  get_local $4
  call $~lib/internal/memory/memset
  block $break|0
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|0
    get_local $6
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block
     get_local $6
     set_local $7
     block $break|1
      loop $continue|1
       get_local $7
       i32.const 1
       i32.and
       get_local $5
       get_local $7
       i32.const 6
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $7
       i32.const 1
       i32.shr_s
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.eq
       if
        get_local $7
        i32.const 1
        i32.shr_s
        set_local $7
        br $continue|1
       end
      end
     end
     get_local $7
     i32.const 1
     i32.shr_s
     set_local $8
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.2 (result f64)
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 3
      i32.shl
      i32.add
      f64.load offset=8
     end
     set_local $9
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.3 (result f64)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 3
      i32.shl
      i32.add
      f64.load offset=8
     end
     set_local $10
     block (result i32)
      i32.const 2
      set_global $~argc
      get_local $9
      get_local $10
      get_local $3
      call_indirect (type $FFi)
     end
     i32.const 0
     i32.lt_s
     if
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 1
      get_local $6
      i32.const 31
      i32.and
      i32.shl
      i32.xor
      i32.store
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 3
      i32.shl
      i32.add
      get_local $9
      f64.store offset=8
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 3
      i32.shl
      i32.add
      get_local $10
      f64.store offset=8
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|2
    get_local $6
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.4 (result f64)
      i32.const 0
      set_local $8
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 3
      i32.shl
      i32.add
      f64.load offset=8
     end
     set_local $10
     i32.const 0
     set_local $8
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.5 (result f64)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 3
      i32.shl
      i32.add
      f64.load offset=8
     end
     set_local $9
     get_local $0
     get_local $1
     i32.add
     get_local $8
     i32.const 3
     i32.shl
     i32.add
     get_local $9
     f64.store offset=8
     get_local $0
     get_local $1
     i32.add
     get_local $6
     i32.const 3
     i32.shl
     i32.add
     get_local $10
     f64.store offset=8
     i32.const 1
     set_local $8
     block $break|3
      loop $continue|3
       get_local $8
       i32.const 1
       i32.shl
       get_local $5
       get_local $8
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $8
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       tee_local $7
       get_local $6
       i32.lt_s
       if
        get_local $7
        set_local $8
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       get_local $8
       i32.const 0
       i32.gt_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.6 (result f64)
          i32.const 0
          set_local $11
          get_local $0
          get_local $1
          i32.add
          get_local $11
          i32.const 3
          i32.shl
          i32.add
          f64.load offset=8
         end
         set_local $10
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.7 (result f64)
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 3
          i32.shl
          i32.add
          f64.load offset=8
         end
         set_local $9
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $10
          get_local $9
          get_local $3
          call_indirect (type $FFi)
         end
         i32.const 0
         i32.lt_s
         if
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          get_local $8
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 3
          i32.shl
          i32.add
          get_local $10
          f64.store offset=8
          i32.const 0
          set_local $11
          get_local $0
          get_local $1
          i32.add
          get_local $11
          i32.const 3
          i32.shl
          i32.add
          get_local $9
          f64.store offset=8
         end
         get_local $8
         i32.const 1
         i32.shr_s
         set_local $8
        end
        br $continue|4
       end
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|2
    unreachable
   end
   unreachable
  end
  block $~lib/memory/memory.free|inlined.1
   block
    get_local $5
    call $~lib/allocator/arena/__memory_free
    br $~lib/memory/memory.free|inlined.1
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.8 (result f64)
   i32.const 1
   set_local $6
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 3
   i32.shl
   i32.add
   f64.load offset=8
  end
  set_local $12
  i32.const 1
  set_local $6
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.9 (result f64)
   i32.const 0
   set_local $7
   get_local $0
   get_local $1
   i32.add
   get_local $7
   i32.const 3
   i32.shl
   i32.add
   f64.load offset=8
  end
  set_local $10
  get_local $0
  get_local $1
  i32.add
  get_local $6
  i32.const 3
  i32.shl
  i32.add
  get_local $10
  f64.store offset=8
  i32.const 0
  set_local $6
  get_local $0
  get_local $1
  i32.add
  get_local $6
  i32.const 3
  i32.shl
  i32.add
  get_local $12
  f64.store offset=8
 )
 (func $~lib/array/Array<f64>#sort (; 105 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 399
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.0 (result f64)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 3
    i32.shl
    i32.add
    f64.load offset=8
   end
   set_local $5
   block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.1 (result f64)
    i32.const 0
    set_local $4
    get_local $3
    get_local $4
    i32.const 3
    i32.shl
    i32.add
    f64.load offset=8
   end
   set_local $6
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $5
    get_local $6
    get_local $1
    call_indirect (type $FFi)
   end
   i32.const 0
   i32.lt_s
   if
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 3
    i32.shl
    i32.add
    get_local $6
    f64.store offset=8
    i32.const 0
    set_local $4
    get_local $3
    get_local $4
    i32.const 3
    i32.shl
    i32.add
    get_local $5
    f64.store offset=8
   end
   get_local $0
   return
  end
  get_local $2
  i32.const 256
  i32.lt_s
  if
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/insertionSort<f64>
  else   
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/weakHeapSort<f64>
  end
  get_local $0
  return
 )
 (func $~lib/array/Array<f64>#sort|trampoline~anonymous|44 (; 106 ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.reinterpret/f64
  set_local $2
  get_local $1
  i64.reinterpret/f64
  set_local $3
  get_local $2
  get_local $2
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  set_local $2
  get_local $3
  get_local $3
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  set_local $3
  get_local $2
  get_local $3
  i64.gt_s
  get_local $2
  get_local $3
  i64.lt_s
  i32.sub
 )
 (func $~lib/array/Array<f64>#sort|trampoline (; 107 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/internal/array/defaultComparator<f64>|inlined.0 (result i32)
    i32.const 44
    br $~lib/internal/array/defaultComparator<f64>|inlined.0
   end
   set_local $1
  end
  get_local $0
  get_local $1
  call $~lib/array/Array<f64>#sort
 )
 (func $~lib/array/Array<f64>#__get (; 108 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 3
  i32.shr_u
  i32.lt_u
  if (result f64)
   get_local $2
   get_local $1
   i32.const 3
   i32.shl
   i32.add
   f64.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/builtins/isNaN<f64> (; 109 ;) (type $Fi) (param $0 f64) (result i32)
  get_local $0
  get_local $0
  f64.ne
 )
 (func $std/array/isArraysEqual<f64> (; 110 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<f64>#get:length|inlined.0 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<f64>#get:length|inlined.2 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    block $continue|0
     get_local $3
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block
      get_local $0
      get_local $3
      call $~lib/array/Array<f64>#__get
      call $~lib/builtins/isNaN<f64>
      get_local $1
      get_local $3
      call $~lib/array/Array<f64>#__get
      call $~lib/builtins/isNaN<f64>
      i32.eq
      if
       br $continue|0
      end
      get_local $0
      get_local $3
      call $~lib/array/Array<f64>#__get
      get_local $1
      get_local $3
      call $~lib/array/Array<f64>#__get
      f64.ne
      if
       i32.const 0
       return
      end
     end
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/internal/array/insertionSort<i32> (; 111 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.0 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.1 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     get_local $6
     i32.const 1
     i32.add
     set_local $7
     get_local $0
     get_local $1
     i32.add
     get_local $7
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     i32.store offset=8
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/internal/array/weakHeapSort<i32> (; 112 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  get_local $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  set_local $4
  block $~lib/memory/memory.allocate|inlined.3 (result i32)
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.3
  end
  set_local $5
  i32.const 0
  set_local $6
  get_local $5
  get_local $6
  get_local $4
  call $~lib/internal/memory/memset
  block $break|0
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|0
    get_local $6
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block
     get_local $6
     set_local $7
     block $break|1
      loop $continue|1
       get_local $7
       i32.const 1
       i32.and
       get_local $5
       get_local $7
       i32.const 6
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $7
       i32.const 1
       i32.shr_s
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.eq
       if
        get_local $7
        i32.const 1
        i32.shr_s
        set_local $7
        br $continue|1
       end
      end
     end
     get_local $7
     i32.const 1
     i32.shr_s
     set_local $8
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.2 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $9
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.3 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $10
     block (result i32)
      i32.const 2
      set_global $~argc
      get_local $9
      get_local $10
      get_local $3
      call_indirect (type $iii)
     end
     i32.const 0
     i32.lt_s
     if
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 1
      get_local $6
      i32.const 31
      i32.and
      i32.shl
      i32.xor
      i32.store
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      get_local $9
      i32.store offset=8
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      get_local $10
      i32.store offset=8
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|2
    get_local $6
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.4 (result i32)
      i32.const 0
      set_local $10
      get_local $0
      get_local $1
      i32.add
      get_local $10
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $10
     i32.const 0
     set_local $9
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.5 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $8
     get_local $0
     get_local $1
     i32.add
     get_local $9
     i32.const 2
     i32.shl
     i32.add
     get_local $8
     i32.store offset=8
     get_local $0
     get_local $1
     i32.add
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $10
     i32.store offset=8
     i32.const 1
     set_local $8
     block $break|3
      loop $continue|3
       get_local $8
       i32.const 1
       i32.shl
       get_local $5
       get_local $8
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $8
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       tee_local $9
       get_local $6
       i32.lt_s
       if
        get_local $9
        set_local $8
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       get_local $8
       i32.const 0
       i32.gt_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.6 (result i32)
          i32.const 0
          set_local $7
          get_local $0
          get_local $1
          i32.add
          get_local $7
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $10
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.7 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $10
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          get_local $8
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $10
          i32.store offset=8
          i32.const 0
          set_local $11
          get_local $0
          get_local $1
          i32.add
          get_local $11
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         end
         get_local $8
         i32.const 1
         i32.shr_s
         set_local $8
        end
        br $continue|4
       end
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|2
    unreachable
   end
   unreachable
  end
  block $~lib/memory/memory.free|inlined.2
   block
    get_local $5
    call $~lib/allocator/arena/__memory_free
    br $~lib/memory/memory.free|inlined.2
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.8 (result i32)
   i32.const 1
   set_local $6
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $12
  i32.const 1
  set_local $6
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.9 (result i32)
   i32.const 0
   set_local $9
   get_local $0
   get_local $1
   i32.add
   get_local $9
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $9
  get_local $0
  get_local $1
  i32.add
  get_local $6
  i32.const 2
  i32.shl
  i32.add
  get_local $9
  i32.store offset=8
  i32.const 0
  set_local $9
  get_local $0
  get_local $1
  i32.add
  get_local $9
  i32.const 2
  i32.shl
  i32.add
  get_local $12
  i32.store offset=8
 )
 (func $~lib/array/Array<i32>#sort (; 113 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 399
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.22 (result i32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.23 (result i32)
    i32.const 0
    set_local $5
    get_local $3
    get_local $5
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $4
    get_local $5
    get_local $1
    call_indirect (type $iii)
   end
   i32.const 0
   i32.lt_s
   if
    i32.const 1
    set_local $6
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    get_local $5
    i32.store offset=8
    i32.const 0
    set_local $6
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    get_local $4
    i32.store offset=8
   end
   get_local $0
   return
  end
  get_local $2
  i32.const 256
  i32.lt_s
  if
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/insertionSort<i32>
  else   
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/weakHeapSort<i32>
  end
  get_local $0
  return
 )
 (func $~lib/array/Array<i32>#sort|trampoline~anonymous|45 (; 114 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.sub
 )
 (func $~lib/array/Array<i32>#sort|trampoline (; 115 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/internal/array/defaultComparator<i32>|inlined.0 (result i32)
    i32.const 45
    br $~lib/internal/array/defaultComparator<i32>|inlined.0
   end
   set_local $1
  end
  get_local $0
  get_local $1
  call $~lib/array/Array<i32>#sort
 )
 (func $~lib/internal/array/insertionSort<u32> (; 116 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.0 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.1 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     get_local $6
     i32.const 1
     i32.add
     set_local $7
     get_local $0
     get_local $1
     i32.add
     get_local $7
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     i32.store offset=8
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/internal/array/weakHeapSort<u32> (; 117 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  get_local $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  set_local $4
  block $~lib/memory/memory.allocate|inlined.4 (result i32)
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.4
  end
  set_local $5
  i32.const 0
  set_local $6
  get_local $5
  get_local $6
  get_local $4
  call $~lib/internal/memory/memset
  block $break|0
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|0
    get_local $6
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block
     get_local $6
     set_local $7
     block $break|1
      loop $continue|1
       get_local $7
       i32.const 1
       i32.and
       get_local $5
       get_local $7
       i32.const 6
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $7
       i32.const 1
       i32.shr_s
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.eq
       if
        get_local $7
        i32.const 1
        i32.shr_s
        set_local $7
        br $continue|1
       end
      end
     end
     get_local $7
     i32.const 1
     i32.shr_s
     set_local $8
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.2 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $9
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.3 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $10
     block (result i32)
      i32.const 2
      set_global $~argc
      get_local $9
      get_local $10
      get_local $3
      call_indirect (type $iii)
     end
     i32.const 0
     i32.lt_s
     if
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 1
      get_local $6
      i32.const 31
      i32.and
      i32.shl
      i32.xor
      i32.store
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      get_local $9
      i32.store offset=8
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      get_local $10
      i32.store offset=8
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|2
    get_local $6
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.4 (result i32)
      i32.const 0
      set_local $10
      get_local $0
      get_local $1
      i32.add
      get_local $10
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $10
     i32.const 0
     set_local $9
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.5 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $8
     get_local $0
     get_local $1
     i32.add
     get_local $9
     i32.const 2
     i32.shl
     i32.add
     get_local $8
     i32.store offset=8
     get_local $0
     get_local $1
     i32.add
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $10
     i32.store offset=8
     i32.const 1
     set_local $8
     block $break|3
      loop $continue|3
       get_local $8
       i32.const 1
       i32.shl
       get_local $5
       get_local $8
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $8
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       tee_local $9
       get_local $6
       i32.lt_s
       if
        get_local $9
        set_local $8
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       get_local $8
       i32.const 0
       i32.gt_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.6 (result i32)
          i32.const 0
          set_local $7
          get_local $0
          get_local $1
          i32.add
          get_local $7
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $10
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.7 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $10
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          get_local $8
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $10
          i32.store offset=8
          i32.const 0
          set_local $11
          get_local $0
          get_local $1
          i32.add
          get_local $11
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         end
         get_local $8
         i32.const 1
         i32.shr_s
         set_local $8
        end
        br $continue|4
       end
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|2
    unreachable
   end
   unreachable
  end
  block $~lib/memory/memory.free|inlined.3
   block
    get_local $5
    call $~lib/allocator/arena/__memory_free
    br $~lib/memory/memory.free|inlined.3
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.8 (result i32)
   i32.const 1
   set_local $6
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $12
  i32.const 1
  set_local $6
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.9 (result i32)
   i32.const 0
   set_local $9
   get_local $0
   get_local $1
   i32.add
   get_local $9
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $9
  get_local $0
  get_local $1
  i32.add
  get_local $6
  i32.const 2
  i32.shl
  i32.add
  get_local $9
  i32.store offset=8
  i32.const 0
  set_local $9
  get_local $0
  get_local $1
  i32.add
  get_local $9
  i32.const 2
  i32.shl
  i32.add
  get_local $12
  i32.store offset=8
 )
 (func $~lib/array/Array<u32>#sort (; 118 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 399
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.1 (result i32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.2 (result i32)
    i32.const 0
    set_local $5
    get_local $3
    get_local $5
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $4
    get_local $5
    get_local $1
    call_indirect (type $iii)
   end
   i32.const 0
   i32.lt_s
   if
    i32.const 1
    set_local $6
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    get_local $5
    i32.store offset=8
    i32.const 0
    set_local $6
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    get_local $4
    i32.store offset=8
   end
   get_local $0
   return
  end
  get_local $2
  i32.const 256
  i32.lt_s
  if
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/insertionSort<u32>
  else   
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/weakHeapSort<u32>
  end
  get_local $0
  return
 )
 (func $~lib/array/Array<u32>#sort|trampoline~anonymous|46 (; 119 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.gt_u
  get_local $0
  get_local $1
  i32.lt_u
  i32.sub
 )
 (func $~lib/array/Array<u32>#sort|trampoline (; 120 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/internal/array/defaultComparator<u32>|inlined.0 (result i32)
    i32.const 46
    br $~lib/internal/array/defaultComparator<u32>|inlined.0
   end
   set_local $1
  end
  get_local $0
  get_local $1
  call $~lib/array/Array<u32>#sort
 )
 (func $std/array/createReverseOrderedArray (; 121 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  get_local $0
  call $~lib/array/Array<i32>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<i32>#get:length|inlined.42 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $2
    block $~lib/array/Array<i32>#get:length|inlined.43 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.const 1
    i32.sub
    get_local $2
    i32.sub
    call $~lib/array/Array<i32>#__set
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $~lib/math/NativeMath.random (; 122 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  get_global $~lib/math/random_seeded
  i32.eqz
  if
   i32.const 0
   i32.const 1512
   i32.const 968
   i32.const 24
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/math/random_state0_64
  set_local $0
  get_global $~lib/math/random_state1_64
  set_local $1
  get_local $1
  set_global $~lib/math/random_state0_64
  get_local $0
  get_local $0
  i64.const 23
  i64.shl
  i64.xor
  set_local $0
  get_local $0
  get_local $0
  i64.const 17
  i64.shr_u
  i64.xor
  set_local $0
  get_local $0
  get_local $1
  i64.xor
  set_local $0
  get_local $0
  get_local $1
  i64.const 26
  i64.shr_u
  i64.xor
  set_local $0
  get_local $0
  set_global $~lib/math/random_state1_64
  get_local $1
  get_local $0
  i64.add
  i64.const 4503599627370495
  i64.and
  i64.const 4607182418800017408
  i64.or
  set_local $2
  get_local $2
  f64.reinterpret/i64
  f64.const 1
  f64.sub
 )
 (func $std/array/createRandomOrderedArray (; 123 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  get_local $0
  call $~lib/array/Array<i32>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<i32>#get:length|inlined.45 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $2
    call $~lib/math/NativeMath.random
    block $~lib/array/Array<i32>#get:length|inlined.46 (result i32)
     get_local $1
     i32.load offset=4
    end
    f64.convert_s/i32
    f64.mul
    i32.trunc_s/f64
    call $~lib/array/Array<i32>#__set
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $std/array/assertSortedDefault<i32>~anonymous|47 (; 124 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.sub
 )
 (func $std/array/isSorted<i32> (; 125 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   block
    i32.const 1
    set_local $2
    block $~lib/array/Array<i32>#get:length|inlined.47 (result i32)
     get_local $0
     i32.load offset=4
    end
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 2
     set_global $~argc
     get_local $0
     get_local $2
     i32.const 1
     i32.sub
     call $~lib/array/Array<i32>#__get
     get_local $0
     get_local $2
     call $~lib/array/Array<i32>#__get
     get_local $1
     call_indirect (type $iii)
    end
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $std/array/assertSorted<i32> (; 126 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  call $~lib/array/Array<i32>#sort
  get_local $1
  call $std/array/isSorted<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 727
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/array/assertSortedDefault<i32> (; 127 ;) (type $iv) (param $0 i32)
  get_local $0
  block $~lib/internal/array/defaultComparator<i32>|inlined.1 (result i32)
   i32.const 47
   br $~lib/internal/array/defaultComparator<i32>|inlined.1
  end
  call $std/array/assertSorted<i32>
 )
 (func $start~anonymous|48 (; 128 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.sub
 )
 (func $start~anonymous|49 (; 129 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.sub
 )
 (func $start~anonymous|50 (; 130 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.sub
 )
 (func $start~anonymous|51 (; 131 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.sub
 )
 (func $~lib/array/Array<Array<i32>>#constructor (; 132 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
 )
 (func $~lib/array/Array<Array<i32>>#__set (; 133 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 109
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $~lib/array/Array<Array<i32>>#__get (; 134 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/array/createReverseOrderedNestedArray (; 135 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  get_local $0
  call $~lib/array/Array<Array<i32>>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<Array<i32>>#get:length|inlined.1 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $1
     get_local $2
     i32.const 0
     i32.const 1
     call $~lib/array/Array<i32>#constructor
     call $~lib/array/Array<Array<i32>>#__set
     get_local $1
     get_local $2
     call $~lib/array/Array<Array<i32>>#__get
     i32.const 0
     block $~lib/array/Array<Array<i32>>#get:length|inlined.2 (result i32)
      get_local $1
      i32.load offset=4
     end
     i32.const 1
     i32.sub
     get_local $2
     i32.sub
     call $~lib/array/Array<i32>#__set
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $start~anonymous|52 (; 136 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.const 0
  call $~lib/array/Array<i32>#__get
  get_local $1
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.sub
 )
 (func $~lib/internal/array/insertionSort<Array<i32>> (; 137 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.0 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.1 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     get_local $6
     i32.const 1
     i32.add
     set_local $7
     get_local $0
     get_local $1
     i32.add
     get_local $7
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     i32.store offset=8
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<Array<i32>>#sort (; 138 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 399
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.1 (result i32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.2 (result i32)
    i32.const 0
    set_local $5
    get_local $3
    get_local $5
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $4
    get_local $5
    get_local $1
    call_indirect (type $iii)
   end
   i32.const 0
   i32.lt_s
   if
    i32.const 1
    set_local $6
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    get_local $5
    i32.store offset=8
    i32.const 0
    set_local $6
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    get_local $4
    i32.store offset=8
   end
   get_local $0
   return
  end
  get_local $3
  i32.const 0
  get_local $2
  get_local $1
  call $~lib/internal/array/insertionSort<Array<i32>>
  get_local $0
  return
 )
 (func $std/array/isSorted<Array<i32>> (; 139 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   block
    i32.const 1
    set_local $2
    block $~lib/array/Array<Array<i32>>#get:length|inlined.3 (result i32)
     get_local $0
     i32.load offset=4
    end
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 2
     set_global $~argc
     get_local $0
     get_local $2
     i32.const 1
     i32.sub
     call $~lib/array/Array<Array<i32>>#__get
     get_local $0
     get_local $2
     call $~lib/array/Array<Array<i32>>#__get
     get_local $1
     call_indirect (type $iii)
    end
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $std/array/assertSorted<Array<i32>> (; 140 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  call $~lib/array/Array<Array<i32>>#sort
  get_local $1
  call $std/array/isSorted<Array<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 727
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/array/Array<Proxy<i32>>#constructor (; 141 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
 )
 (func $std/array/Proxy<i32>#constructor (; 142 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 4
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    get_local $1
    i32.store
    get_local $2
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $~lib/array/Array<Proxy<i32>>#__set (; 143 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 109
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $std/array/createReverseOrderedElementsArray (; 144 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  get_local $0
  call $~lib/array/Array<Proxy<i32>>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<Proxy<i32>>#get:length|inlined.1 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $2
    i32.const 0
    block $~lib/array/Array<Proxy<i32>>#get:length|inlined.2 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.const 1
    i32.sub
    get_local $2
    i32.sub
    call $std/array/Proxy<i32>#constructor
    call $~lib/array/Array<Proxy<i32>>#__set
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $start~anonymous|53 (; 145 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.sub
 )
 (func $~lib/internal/array/insertionSort<Proxy<i32>> (; 146 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.0 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.1 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     get_local $6
     i32.const 1
     i32.add
     set_local $7
     get_local $0
     get_local $1
     i32.add
     get_local $7
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     i32.store offset=8
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<Proxy<i32>>#sort (; 147 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 399
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>,Proxy<i32>>|inlined.0 (result i32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>,Proxy<i32>>|inlined.1 (result i32)
    i32.const 0
    set_local $5
    get_local $3
    get_local $5
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $4
    get_local $5
    get_local $1
    call_indirect (type $iii)
   end
   i32.const 0
   i32.lt_s
   if
    i32.const 1
    set_local $6
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    get_local $5
    i32.store offset=8
    i32.const 0
    set_local $6
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    get_local $4
    i32.store offset=8
   end
   get_local $0
   return
  end
  get_local $3
  i32.const 0
  get_local $2
  get_local $1
  call $~lib/internal/array/insertionSort<Proxy<i32>>
  get_local $0
  return
 )
 (func $~lib/array/Array<Proxy<i32>>#__get (; 148 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/array/isSorted<Proxy<i32>> (; 149 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   block
    i32.const 1
    set_local $2
    block $~lib/array/Array<Proxy<i32>>#get:length|inlined.3 (result i32)
     get_local $0
     i32.load offset=4
    end
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 2
     set_global $~argc
     get_local $0
     get_local $2
     i32.const 1
     i32.sub
     call $~lib/array/Array<Proxy<i32>>#__get
     get_local $0
     get_local $2
     call $~lib/array/Array<Proxy<i32>>#__get
     get_local $1
     call_indirect (type $iii)
    end
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $std/array/assertSorted<Proxy<i32>> (; 150 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  call $~lib/array/Array<Proxy<i32>>#sort
  get_local $1
  call $std/array/isSorted<Proxy<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 727
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/string/compareUnsafe (; 151 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  set_local $5
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $6
  get_local $2
  get_local $3
  i32.const 1
  i32.shl
  i32.add
  set_local $7
  block $break|0
   loop $continue|0
    get_local $4
    if (result i32)
     get_local $6
     i32.load16_u offset=4
     get_local $7
     i32.load16_u offset=4
     i32.sub
     tee_local $5
     i32.eqz
    else     
     get_local $4
    end
    if
     block
      get_local $4
      i32.const 1
      i32.sub
      set_local $4
      get_local $6
      i32.const 2
      i32.add
      set_local $6
      get_local $7
      i32.const 2
      i32.add
      set_local $7
     end
     br $continue|0
    end
   end
  end
  get_local $5
 )
 (func $~lib/string/String.__gt (; 152 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_local $1
  i32.eq
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $0
   i32.const 0
   i32.eq
  end
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $1
  i32.load
  set_local $4
  get_local $3
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $4
  i32.eqz
  if
   i32.const 1
   return
  end
  get_local $3
  tee_local $2
  get_local $4
  tee_local $5
  get_local $2
  get_local $5
  i32.lt_s
  select
  set_local $6
  get_local $0
  i32.const 0
  get_local $1
  i32.const 0
  get_local $6
  call $~lib/internal/string/compareUnsafe
  i32.const 0
  i32.gt_s
 )
 (func $~lib/string/String.__lt (; 153 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_local $1
  i32.eq
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $0
   i32.const 0
   i32.eq
  end
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $1
  i32.load
  set_local $4
  get_local $4
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $3
  i32.eqz
  if
   i32.const 1
   return
  end
  get_local $3
  tee_local $2
  get_local $4
  tee_local $5
  get_local $2
  get_local $5
  i32.lt_s
  select
  set_local $6
  get_local $0
  i32.const 0
  get_local $1
  i32.const 0
  get_local $6
  call $~lib/internal/string/compareUnsafe
  i32.const 0
  i32.lt_s
 )
 (func $start~anonymous|54 (; 154 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  call $~lib/string/String.__gt
  get_local $0
  get_local $1
  call $~lib/string/String.__lt
  i32.sub
 )
 (func $~lib/internal/array/insertionSort<String> (; 155 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<String,String>|inlined.0 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<String,String>|inlined.1 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     get_local $6
     i32.const 1
     i32.add
     set_local $7
     get_local $0
     get_local $1
     i32.add
     get_local $7
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     i32.store offset=8
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<String>#sort (; 156 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 399
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.0 (result i32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.1 (result i32)
    i32.const 0
    set_local $5
    get_local $3
    get_local $5
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $4
    get_local $5
    get_local $1
    call_indirect (type $iii)
   end
   i32.const 0
   i32.lt_s
   if
    i32.const 1
    set_local $6
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    get_local $5
    i32.store offset=8
    i32.const 0
    set_local $6
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    get_local $4
    i32.store offset=8
   end
   get_local $0
   return
  end
  get_local $3
  i32.const 0
  get_local $2
  get_local $1
  call $~lib/internal/array/insertionSort<String>
  get_local $0
  return
 )
 (func $~lib/array/Array<String>#__get (; 157 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/array/isSorted<String> (; 158 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   block
    i32.const 1
    set_local $2
    block $~lib/array/Array<String>#get:length|inlined.0 (result i32)
     get_local $0
     i32.load offset=4
    end
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 2
     set_global $~argc
     get_local $0
     get_local $2
     i32.const 1
     i32.sub
     call $~lib/array/Array<String>#__get
     get_local $0
     get_local $2
     call $~lib/array/Array<String>#__get
     get_local $1
     call_indirect (type $iii)
    end
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $std/array/assertSorted<String> (; 159 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  call $~lib/array/Array<String>#sort
  get_local $1
  call $std/array/isSorted<String>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 727
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/string/String.__eq (; 160 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   i32.const 1
   return
  end
  get_local $0
  i32.const 0
  i32.eq
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $3
  get_local $1
  i32.load
  i32.ne
  if
   i32.const 0
   return
  end
  get_local $0
  i32.const 0
  get_local $1
  i32.const 0
  get_local $3
  call $~lib/internal/string/compareUnsafe
  i32.eqz
 )
 (func $~lib/string/String.__ne (; 161 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  call $~lib/string/String.__eq
  i32.eqz
 )
 (func $std/array/isArraysEqual<String> (; 162 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<String>#get:length|inlined.1 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<String>#get:length|inlined.3 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $3
    call $~lib/array/Array<String>#__get
    get_local $1
    get_local $3
    call $~lib/array/Array<String>#__get
    call $~lib/string/String.__ne
    if
     i32.const 0
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/array/Array<String>#constructor (; 163 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
 )
 (func $~lib/internal/string/allocateUnsafe (; 164 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.const 0
  i32.gt_s
  tee_local $1
  if (result i32)
   get_local $0
   get_global $~lib/internal/string/MAX_LENGTH
   i32.le_s
  else   
   get_local $1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2704
   i32.const 14
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.5 (result i32)
   get_global $~lib/internal/string/HEADER_SIZE
   get_local $0
   i32.const 1
   i32.shl
   i32.add
   set_local $1
   get_local $1
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.5
  end
  set_local $2
  get_local $2
  get_local $0
  i32.store
  get_local $2
 )
 (func $~lib/string/String#charAt (; 165 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 2672
   i32.const 58
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  get_local $0
  i32.load
  i32.ge_u
  if
   i32.const 2520
   return
  end
  i32.const 1
  call $~lib/internal/string/allocateUnsafe
  set_local $2
  get_local $2
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u offset=4
  i32.store16 offset=4
  get_local $2
 )
 (func $~lib/internal/string/copyUnsafe (; 166 ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  get_global $~lib/internal/string/HEADER_SIZE
  i32.add
  set_local $5
  get_local $2
  get_local $3
  i32.const 1
  i32.shl
  i32.add
  get_global $~lib/internal/string/HEADER_SIZE
  i32.add
  set_local $6
  get_local $4
  i32.const 1
  i32.shl
  set_local $7
  get_local $5
  get_local $6
  get_local $7
  call $~lib/internal/memory/memmove
 )
 (func $~lib/string/String#concat (; 167 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 2672
   i32.const 110
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 0
  i32.eq
  if
   i32.const 2760
   set_local $1
  end
  get_local $0
  i32.load
  set_local $2
  get_local $1
  i32.load
  set_local $3
  get_local $2
  get_local $3
  i32.add
  set_local $4
  get_local $4
  i32.const 0
  i32.eq
  if
   i32.const 2520
   return
  end
  get_local $4
  call $~lib/internal/string/allocateUnsafe
  set_local $5
  get_local $5
  i32.const 0
  get_local $0
  i32.const 0
  get_local $2
  call $~lib/internal/string/copyUnsafe
  get_local $5
  get_local $2
  get_local $1
  i32.const 0
  get_local $3
  call $~lib/internal/string/copyUnsafe
  get_local $5
 )
 (func $~lib/string/String.__concat (; 168 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.eqz
  if
   i32.const 2760
   set_local $0
  end
  get_local $0
  get_local $1
  call $~lib/string/String#concat
 )
 (func $std/array/createRandomString (; 169 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  i32.const 2520
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    get_local $0
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $1
    get_global $std/array/charset
    block $~lib/math/NativeMath.floor|inlined.0 (result f64)
     call $~lib/math/NativeMath.random
     get_global $std/array/charset
     i32.load
     f64.convert_s/i32
     f64.mul
     set_local $3
     get_local $3
     f64.floor
    end
    i32.trunc_s/f64
    call $~lib/string/String#charAt
    call $~lib/string/String.__concat
    set_local $1
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $~lib/array/Array<String>#__set (; 170 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 109
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $std/array/createRandomStringArray (; 171 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  get_local $0
  call $~lib/array/Array<String>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<String>#get:length|inlined.5 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $2
    call $~lib/math/NativeMath.random
    f64.const 32
    f64.mul
    i32.trunc_s/f64
    call $std/array/createRandomString
    call $~lib/array/Array<String>#__set
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $start~anonymous|55 (; 172 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  call $~lib/string/String.__gt
  get_local $0
  get_local $1
  call $~lib/string/String.__lt
  i32.sub
 )
 (func $~lib/string/String#substring (; 173 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 2672
   i32.const 269
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  set_local $3
  get_local $1
  tee_local $4
  i32.const 0
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_s
  select
  tee_local $4
  get_local $3
  tee_local $5
  get_local $4
  get_local $5
  i32.lt_s
  select
  set_local $6
  get_local $2
  tee_local $4
  i32.const 0
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_s
  select
  tee_local $4
  get_local $3
  tee_local $5
  get_local $4
  get_local $5
  i32.lt_s
  select
  set_local $7
  get_local $6
  tee_local $4
  get_local $7
  tee_local $5
  get_local $4
  get_local $5
  i32.lt_s
  select
  set_local $8
  get_local $6
  tee_local $4
  get_local $7
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_s
  select
  set_local $9
  get_local $9
  get_local $8
  i32.sub
  set_local $3
  get_local $3
  i32.eqz
  if
   i32.const 2520
   return
  end
  get_local $8
  i32.eqz
  tee_local $4
  if (result i32)
   get_local $9
   get_local $0
   i32.load
   i32.eq
  else   
   get_local $4
  end
  if
   get_local $0
   return
  end
  get_local $3
  call $~lib/internal/string/allocateUnsafe
  set_local $10
  get_local $10
  i32.const 0
  get_local $0
  get_local $8
  get_local $3
  call $~lib/internal/string/copyUnsafe
  get_local $10
 )
 (func $~lib/array/Array<bool>#join (; 174 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   i32.const 2800
   i32.const 2816
   block $~lib/internal/arraybuffer/loadUnsafe<bool,bool>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u offset=8
   end
   i32.const 1
   i32.and
   select
   return
  end
  i32.const 5
  set_local $8
  get_local $8
  get_local $6
  i32.add
  get_local $2
  i32.mul
  get_local $8
  i32.add
  set_local $9
  get_local $9
  call $~lib/internal/string/allocateUnsafe
  set_local $10
  i32.const 0
  set_local $11
  block $break|0
   i32.const 0
   set_local $12
   loop $repeat|0
    get_local $12
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<bool,bool>|inlined.1 (result i32)
      get_local $5
      get_local $12
      i32.const 0
      i32.shl
      i32.add
      i32.load8_u offset=8
     end
     set_local $4
     i32.const 4
     get_local $4
     i32.const 1
     i32.and
     i32.eqz
     i32.add
     set_local $8
     get_local $10
     get_local $11
     i32.const 2800
     i32.const 2816
     get_local $4
     i32.const 1
     i32.and
     select
     i32.const 0
     get_local $8
     call $~lib/internal/string/copyUnsafe
     get_local $11
     get_local $8
     i32.add
     set_local $11
     get_local $7
     if
      get_local $10
      get_local $11
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $11
      get_local $6
      i32.add
      set_local $11
     end
    end
    get_local $12
    i32.const 1
    i32.add
    set_local $12
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<bool,bool>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 0
   i32.shl
   i32.add
   i32.load8_u offset=8
  end
  set_local $4
  i32.const 4
  get_local $4
  i32.const 1
  i32.and
  i32.eqz
  i32.add
  set_local $8
  get_local $10
  get_local $11
  i32.const 2800
  i32.const 2816
  get_local $4
  i32.const 1
  i32.and
  select
  i32.const 0
  get_local $8
  call $~lib/internal/string/copyUnsafe
  get_local $11
  get_local $8
  i32.add
  set_local $11
  get_local $10
  set_local $12
  get_local $9
  get_local $11
  i32.gt_s
  if
   get_local $10
   i32.const 0
   get_local $11
   call $~lib/string/String#substring
   set_local $12
   get_local $10
   i32.eqz
   if
    i32.const 0
    i32.const 2704
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   block $~lib/memory/memory.free|inlined.4
    block
     get_local $10
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.4
     unreachable
    end
    unreachable
   end
  end
  get_local $12
  return
 )
 (func $~lib/internal/number/decimalCount32 (; 175 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 100000
  i32.lt_u
  if
   get_local $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    get_local $0
    i32.const 10
    i32.lt_u
    select
    return
   else    
    i32.const 4
    i32.const 5
    get_local $0
    i32.const 10000
    i32.lt_u
    select
    set_local $1
    i32.const 3
    get_local $1
    get_local $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
   unreachable
  else   
   get_local $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    get_local $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else    
    i32.const 9
    i32.const 10
    get_local $0
    i32.const 1000000000
    i32.lt_u
    select
    set_local $1
    i32.const 8
    get_local $1
    get_local $0
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
 (func $~lib/internal/number/utoa32_lut (; 176 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  block $~lib/internal/number/DIGITS|inlined.0 (result i32)
   i32.const 3448
  end
  i32.load
  set_local $3
  block $break|0
   loop $continue|0
    get_local $1
    i32.const 10000
    i32.ge_u
    if
     block
      get_local $1
      i32.const 10000
      i32.div_u
      set_local $4
      get_local $1
      i32.const 10000
      i32.rem_u
      set_local $5
      get_local $4
      set_local $1
      get_local $5
      i32.const 100
      i32.div_u
      set_local $6
      get_local $5
      i32.const 100
      i32.rem_u
      set_local $7
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.0 (result i64)
       get_local $3
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $8
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.1 (result i64)
       get_local $3
       get_local $7
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $9
      get_local $2
      i32.const 4
      i32.sub
      set_local $2
      get_local $0
      get_local $2
      i32.const 1
      i32.shl
      i32.add
      get_local $8
      get_local $9
      i64.const 32
      i64.shl
      i64.or
      i64.store offset=4
     end
     br $continue|0
    end
   end
  end
  get_local $1
  i32.const 100
  i32.ge_u
  if
   get_local $1
   i32.const 100
   i32.div_u
   set_local $7
   get_local $1
   i32.const 100
   i32.rem_u
   set_local $6
   get_local $7
   set_local $1
   get_local $2
   i32.const 2
   i32.sub
   set_local $2
   block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.3 (result i32)
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   get_local $0
   get_local $2
   i32.const 1
   i32.shl
   i32.add
   get_local $5
   i32.store offset=4
  end
  get_local $1
  i32.const 10
  i32.ge_u
  if
   get_local $2
   i32.const 2
   i32.sub
   set_local $2
   block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.4 (result i32)
    get_local $3
    get_local $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   get_local $0
   get_local $2
   i32.const 1
   i32.shl
   i32.add
   get_local $5
   i32.store offset=4
  else   
   get_local $2
   i32.const 1
   i32.sub
   set_local $2
   get_global $~lib/internal/string/CharCode._0
   get_local $1
   i32.add
   set_local $5
   get_local $0
   get_local $2
   i32.const 1
   i32.shl
   i32.add
   get_local $5
   i32.store16 offset=4
  end
 )
 (func $~lib/internal/number/itoa32 (; 177 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.eqz
  if
   i32.const 2928
   return
  end
  get_local $0
  i32.const 0
  i32.lt_s
  set_local $1
  get_local $1
  if
   i32.const 0
   get_local $0
   i32.sub
   set_local $0
  end
  get_local $0
  call $~lib/internal/number/decimalCount32
  get_local $1
  i32.add
  set_local $2
  get_local $2
  call $~lib/internal/string/allocateUnsafe
  set_local $3
  get_local $3
  get_local $0
  get_local $2
  call $~lib/internal/number/utoa32_lut
  get_local $1
  if
   get_local $3
   get_global $~lib/internal/string/CharCode.MINUS
   i32.store16 offset=4
  end
  get_local $3
 )
 (func $~lib/internal/number/itoa<i32> (; 178 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/internal/number/itoa32
  return
 )
 (func $~lib/internal/number/itoa_stream<i32> (; 179 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i32.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  i32.const 0
  i32.lt_s
  set_local $4
  get_local $4
  if
   i32.const 0
   get_local $2
   i32.sub
   set_local $2
  end
  get_local $2
  call $~lib/internal/number/decimalCount32
  get_local $4
  i32.add
  set_local $3
  get_local $0
  get_local $2
  get_local $3
  call $~lib/internal/number/utoa32_lut
  get_local $4
  if
   get_local $0
   get_global $~lib/internal/string/CharCode.MINUS
   i32.store16 offset=4
  end
  get_local $3
 )
 (func $~lib/array/Array<i32>#join (; 180 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.24 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   call $~lib/internal/number/itoa<i32>
   return
  end
  i32.const 11
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 11
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.25 (result i32)
      get_local $5
      get_local $11
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<i32>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.26 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<i32>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   get_local $9
   i32.eqz
   if
    i32.const 0
    i32.const 2704
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   block $~lib/memory/memory.free|inlined.5
    block
     get_local $9
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.5
     unreachable
    end
    unreachable
   end
  end
  get_local $11
  return
 )
 (func $~lib/internal/number/utoa32 (; 181 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.eqz
  if
   i32.const 2928
   return
  end
  get_local $0
  call $~lib/internal/number/decimalCount32
  set_local $1
  get_local $1
  call $~lib/internal/string/allocateUnsafe
  set_local $2
  get_local $2
  get_local $0
  get_local $1
  call $~lib/internal/number/utoa32_lut
  get_local $2
 )
 (func $~lib/internal/number/itoa<u32> (; 182 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/internal/number/utoa32
  return
 )
 (func $~lib/internal/number/itoa_stream<u32> (; 183 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i32.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  call $~lib/internal/number/decimalCount32
  set_local $3
  get_local $0
  get_local $2
  get_local $3
  call $~lib/internal/number/utoa32_lut
  get_local $3
 )
 (func $~lib/array/Array<u32>#join (; 184 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.5 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   call $~lib/internal/number/itoa<u32>
   return
  end
  i32.const 10
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 10
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.6 (result i32)
      get_local $5
      get_local $11
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<u32>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.7 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<u32>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   get_local $9
   i32.eqz
   if
    i32.const 0
    i32.const 2704
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   block $~lib/memory/memory.free|inlined.6
    block
     get_local $9
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.6
     unreachable
    end
    unreachable
   end
  end
  get_local $11
  return
 )
 (func $~lib/array/Array<String>#join (; 185 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.3 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   return
  end
  i32.const 0
  set_local $8
  block $break|0
   block
    i32.const 0
    set_local $9
    get_local $2
    i32.const 1
    i32.add
    set_local $10
   end
   loop $repeat|0
    get_local $9
    get_local $10
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $8
    block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.4 (result i32)
     get_local $5
     get_local $9
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=8
    end
    i32.load
    i32.add
    set_local $8
    get_local $9
    i32.const 1
    i32.add
    set_local $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
  set_local $10
  get_local $8
  get_local $6
  get_local $2
  i32.mul
  i32.add
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  block $break|1
   i32.const 0
   set_local $11
   loop $repeat|1
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.5 (result i32)
      get_local $5
      get_local $11
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $4
      i32.load
      set_local $12
      get_local $9
      get_local $10
      get_local $4
      i32.const 0
      get_local $12
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $12
      i32.add
      set_local $10
     end
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|1
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.6 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $4
  if
   get_local $4
   i32.load
   set_local $11
   get_local $9
   get_local $10
   get_local $4
   i32.const 0
   get_local $11
   call $~lib/internal/string/copyUnsafe
  end
  get_local $9
  return
 )
 (func $std/array/Ref#constructor (; 186 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 0
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $~lib/array/Array<Ref>#constructor (; 187 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
 )
 (func $~lib/array/Array<Ref>#__unchecked_set (; 188 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $~lib/array/Array<Ref>#join (; 189 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   i32.const 3800
   return
  end
  i32.const 15
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 15
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<Ref,Ref>|inlined.0 (result i32)
      get_local $5
      get_local $11
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $9
      get_local $10
      i32.const 3800
      i32.const 0
      i32.const 15
      call $~lib/internal/string/copyUnsafe
      get_local $10
      i32.const 15
      i32.add
      set_local $10
     end
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<Ref,Ref>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  if
   get_local $9
   get_local $10
   i32.const 3800
   i32.const 0
   i32.const 15
   call $~lib/internal/string/copyUnsafe
   get_local $10
   i32.const 15
   i32.add
   set_local $10
  end
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   get_local $9
   i32.eqz
   if
    i32.const 0
    i32.const 2704
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   block $~lib/memory/memory.free|inlined.7
    block
     get_local $9
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.7
     unreachable
    end
    unreachable
   end
  end
  get_local $11
  return
 )
 (func $~lib/internal/number/itoa<i8> (; 190 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/number/itoa32
  return
 )
 (func $~lib/internal/number/itoa_stream<i8> (; 191 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.lt_s
  set_local $4
  get_local $4
  if
   i32.const 0
   get_local $2
   i32.sub
   set_local $2
  end
  get_local $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/number/decimalCount32
  get_local $4
  i32.add
  set_local $3
  get_local $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  set_local $5
  get_local $0
  get_local $5
  get_local $3
  call $~lib/internal/number/utoa32_lut
  get_local $4
  if
   get_local $0
   get_global $~lib/internal/string/CharCode.MINUS
   i32.store16 offset=4
  end
  get_local $3
 )
 (func $~lib/array/Array<i8>#join (; 192 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<i8,i8>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 0
    i32.shl
    i32.add
    i32.load8_s offset=8
   end
   call $~lib/internal/number/itoa<i8>
   return
  end
  i32.const 11
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 11
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<i8,i8>|inlined.1 (result i32)
      get_local $5
      get_local $11
      i32.const 0
      i32.shl
      i32.add
      i32.load8_s offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<i8>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<i8,i8>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 0
   i32.shl
   i32.add
   i32.load8_s offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<i8>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   get_local $9
   i32.eqz
   if
    i32.const 0
    i32.const 2704
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   block $~lib/memory/memory.free|inlined.8
    block
     get_local $9
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.8
     unreachable
    end
    unreachable
   end
  end
  get_local $11
  return
 )
 (func $~lib/internal/number/itoa<u16> (; 193 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  call $~lib/internal/number/utoa32
  return
 )
 (func $~lib/internal/number/itoa_stream<u16> (; 194 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i32.const 65535
  i32.and
  i32.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  i32.const 65535
  i32.and
  call $~lib/internal/number/decimalCount32
  set_local $3
  get_local $2
  i32.const 65535
  i32.and
  set_local $4
  get_local $0
  get_local $4
  get_local $3
  call $~lib/internal/number/utoa32_lut
  get_local $3
 )
 (func $~lib/array/Array<u16>#join (; 195 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<u16,u16>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u offset=8
   end
   call $~lib/internal/number/itoa<u16>
   return
  end
  i32.const 10
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 10
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<u16,u16>|inlined.1 (result i32)
      get_local $5
      get_local $11
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<u16>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<u16,u16>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 1
   i32.shl
   i32.add
   i32.load16_u offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<u16>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   get_local $9
   i32.eqz
   if
    i32.const 0
    i32.const 2704
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   block $~lib/memory/memory.free|inlined.9
    block
     get_local $9
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.9
     unreachable
    end
    unreachable
   end
  end
  get_local $11
  return
 )
 (func $~lib/internal/number/decimalCount64 (; 196 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  get_local $0
  i64.const 1000000000000000
  i64.lt_u
  if
   get_local $0
   i64.const 1000000000000
   i64.lt_u
   if
    i32.const 11
    i32.const 12
    get_local $0
    i64.const 100000000000
    i64.lt_u
    select
    return
   else    
    i32.const 14
    i32.const 15
    get_local $0
    i64.const 100000000000000
    i64.lt_u
    select
    set_local $1
    i32.const 13
    get_local $1
    get_local $0
    i64.const 10000000000000
    i64.lt_u
    select
    return
   end
   unreachable
   unreachable
  else   
   get_local $0
   i64.const 100000000000000000
   i64.lt_u
   if
    i32.const 16
    i32.const 17
    get_local $0
    i64.const 10000000000000000
    i64.lt_u
    select
    return
   else    
    i32.const 19
    i32.const 20
    get_local $0
    i64.const -8446744073709551616
    i64.lt_u
    select
    set_local $1
    i32.const 18
    get_local $1
    get_local $0
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
 (func $~lib/internal/number/utoa64_lut (; 197 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
  block $~lib/internal/number/DIGITS|inlined.1 (result i32)
   i32.const 4640
  end
  i32.load
  set_local $3
  block $break|0
   loop $continue|0
    get_local $1
    i64.const 100000000
    i64.ge_u
    if
     block
      get_local $1
      i64.const 100000000
      i64.div_u
      set_local $4
      get_local $1
      get_local $4
      i64.const 100000000
      i64.mul
      i64.sub
      i32.wrap/i64
      set_local $5
      get_local $4
      set_local $1
      get_local $5
      i32.const 10000
      i32.div_u
      set_local $6
      get_local $5
      i32.const 10000
      i32.rem_u
      set_local $7
      get_local $6
      i32.const 100
      i32.div_u
      set_local $8
      get_local $6
      i32.const 100
      i32.rem_u
      set_local $9
      get_local $7
      i32.const 100
      i32.div_u
      set_local $10
      get_local $7
      i32.const 100
      i32.rem_u
      set_local $11
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.2 (result i64)
       get_local $3
       get_local $10
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $12
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.3 (result i64)
       get_local $3
       get_local $11
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $13
      get_local $2
      i32.const 4
      i32.sub
      set_local $2
      get_local $0
      get_local $2
      i32.const 1
      i32.shl
      i32.add
      get_local $12
      get_local $13
      i64.const 32
      i64.shl
      i64.or
      i64.store offset=4
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.4 (result i64)
       get_local $3
       get_local $8
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $12
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.5 (result i64)
       get_local $3
       get_local $9
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $13
      get_local $2
      i32.const 4
      i32.sub
      set_local $2
      get_local $0
      get_local $2
      i32.const 1
      i32.shl
      i32.add
      get_local $12
      get_local $13
      i64.const 32
      i64.shl
      i64.or
      i64.store offset=4
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $1
  i32.wrap/i64
  get_local $2
  call $~lib/internal/number/utoa32_lut
 )
 (func $~lib/internal/number/utoa64 (; 198 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i64.eqz
  if
   i32.const 2928
   return
  end
  get_local $0
  get_global $~lib/builtins/u32.MAX_VALUE
  i64.extend_u/i32
  i64.le_u
  if
   get_local $0
   i32.wrap/i64
   set_local $2
   get_local $2
   call $~lib/internal/number/decimalCount32
   set_local $3
   get_local $3
   call $~lib/internal/string/allocateUnsafe
   set_local $1
   get_local $1
   get_local $2
   get_local $3
   call $~lib/internal/number/utoa32_lut
  else   
   get_local $0
   call $~lib/internal/number/decimalCount64
   set_local $3
   get_local $3
   call $~lib/internal/string/allocateUnsafe
   set_local $1
   get_local $1
   get_local $0
   get_local $3
   call $~lib/internal/number/utoa64_lut
  end
  get_local $1
 )
 (func $~lib/internal/number/itoa<u64> (; 199 ;) (type $Ii) (param $0 i64) (result i32)
  get_local $0
  call $~lib/internal/number/utoa64
  return
 )
 (func $~lib/internal/number/itoa_stream<u64> (; 200 ;) (type $iiIi) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i64.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  get_global $~lib/builtins/u32.MAX_VALUE
  i64.extend_u/i32
  i64.le_u
  if
   get_local $2
   i32.wrap/i64
   set_local $4
   get_local $4
   call $~lib/internal/number/decimalCount32
   set_local $3
   get_local $0
   get_local $4
   get_local $3
   call $~lib/internal/number/utoa32_lut
  else   
   get_local $2
   call $~lib/internal/number/decimalCount64
   set_local $3
   get_local $0
   get_local $2
   get_local $3
   call $~lib/internal/number/utoa64_lut
  end
  get_local $3
 )
 (func $~lib/array/Array<u64>#join (; 201 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<u64,u64>|inlined.0 (result i64)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 3
    i32.shl
    i32.add
    i64.load offset=8
   end
   call $~lib/internal/number/itoa<u64>
   return
  end
  i32.const 20
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 20
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<u64,u64>|inlined.1 (result i64)
      get_local $5
      get_local $11
      i32.const 3
      i32.shl
      i32.add
      i64.load offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<u64>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<u64,u64>|inlined.2 (result i64)
   get_local $5
   get_local $2
   i32.const 3
   i32.shl
   i32.add
   i64.load offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<u64>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   get_local $9
   i32.eqz
   if
    i32.const 0
    i32.const 2704
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   block $~lib/memory/memory.free|inlined.10
    block
     get_local $9
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.10
     unreachable
    end
    unreachable
   end
  end
  get_local $11
  return
 )
 (func $~lib/internal/number/itoa64 (; 202 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i64.eqz
  if
   i32.const 2928
   return
  end
  get_local $0
  i64.const 0
  i64.lt_s
  set_local $1
  get_local $1
  if
   i64.const 0
   get_local $0
   i64.sub
   set_local $0
  end
  get_local $0
  get_global $~lib/builtins/u32.MAX_VALUE
  i64.extend_u/i32
  i64.le_u
  if
   get_local $0
   i32.wrap/i64
   set_local $3
   get_local $3
   call $~lib/internal/number/decimalCount32
   get_local $1
   i32.add
   set_local $4
   get_local $4
   call $~lib/internal/string/allocateUnsafe
   set_local $2
   get_local $2
   get_local $3
   get_local $4
   call $~lib/internal/number/utoa32_lut
  else   
   get_local $0
   call $~lib/internal/number/decimalCount64
   get_local $1
   i32.add
   set_local $4
   get_local $4
   call $~lib/internal/string/allocateUnsafe
   set_local $2
   get_local $2
   get_local $0
   get_local $4
   call $~lib/internal/number/utoa64_lut
  end
  get_local $1
  if
   get_local $2
   get_global $~lib/internal/string/CharCode.MINUS
   i32.store16 offset=4
  end
  get_local $2
 )
 (func $~lib/internal/number/itoa<i64> (; 203 ;) (type $Ii) (param $0 i64) (result i32)
  get_local $0
  call $~lib/internal/number/itoa64
  return
 )
 (func $~lib/internal/number/itoa_stream<i64> (; 204 ;) (type $iiIi) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i64.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  i64.const 0
  i64.lt_s
  set_local $4
  get_local $4
  if
   i64.const 0
   get_local $2
   i64.sub
   set_local $2
  end
  get_local $2
  get_global $~lib/builtins/u32.MAX_VALUE
  i64.extend_u/i32
  i64.le_u
  if
   get_local $2
   i32.wrap/i64
   set_local $5
   get_local $5
   call $~lib/internal/number/decimalCount32
   get_local $4
   i32.add
   set_local $3
   get_local $0
   get_local $5
   get_local $3
   call $~lib/internal/number/utoa32_lut
  else   
   get_local $2
   call $~lib/internal/number/decimalCount64
   get_local $4
   i32.add
   set_local $3
   get_local $0
   get_local $2
   get_local $3
   call $~lib/internal/number/utoa64_lut
  end
  get_local $4
  if
   get_local $0
   get_global $~lib/internal/string/CharCode.MINUS
   i32.store16 offset=4
  end
  get_local $3
 )
 (func $~lib/array/Array<i64>#join (; 205 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<i64,i64>|inlined.0 (result i64)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 3
    i32.shl
    i32.add
    i64.load offset=8
   end
   call $~lib/internal/number/itoa<i64>
   return
  end
  i32.const 21
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 21
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<i64,i64>|inlined.1 (result i64)
      get_local $5
      get_local $11
      i32.const 3
      i32.shl
      i32.add
      i64.load offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<i64>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<i64,i64>|inlined.2 (result i64)
   get_local $5
   get_local $2
   i32.const 3
   i32.shl
   i32.add
   i64.load offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<i64>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   get_local $9
   i32.eqz
   if
    i32.const 0
    i32.const 2704
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   block $~lib/memory/memory.free|inlined.11
    block
     get_local $9
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.11
     unreachable
    end
    unreachable
   end
  end
  get_local $11
  return
 )
 (func $~lib/array/Array<Array<i32>>#join (; 206 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.3 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   get_local $4
   if (result i32)
    get_local $4
    get_local $1
    call $~lib/array/Array<i32>#join
   else    
    i32.const 2520
   end
   return
  end
  block $break|0
   i32.const 0
   set_local $8
   loop $repeat|0
    get_local $8
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.4 (result i32)
      get_local $5
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $3
      get_local $4
      get_local $1
      call $~lib/array/Array<i32>#join
      call $~lib/string/String.__concat
      set_local $3
     end
     get_local $7
     if
      get_local $3
      get_local $1
      call $~lib/string/String.__concat
      set_local $3
     end
    end
    get_local $8
    i32.const 1
    i32.add
    set_local $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.5 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $4
  if
   get_local $3
   get_local $4
   get_local $1
   call $~lib/array/Array<i32>#join
   call $~lib/string/String.__concat
   set_local $3
  end
  get_local $3
  return
 )
 (func $~lib/internal/number/itoa<u8> (; 207 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  call $~lib/internal/number/utoa32
  return
 )
 (func $~lib/internal/number/itoa_stream<u8> (; 208 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i32.const 255
  i32.and
  i32.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  i32.const 255
  i32.and
  call $~lib/internal/number/decimalCount32
  set_local $3
  get_local $2
  i32.const 255
  i32.and
  set_local $4
  get_local $0
  get_local $4
  get_local $3
  call $~lib/internal/number/utoa32_lut
  get_local $3
 )
 (func $~lib/array/Array<u8>#join (; 209 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<u8,u8>|inlined.1 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u offset=8
   end
   call $~lib/internal/number/itoa<u8>
   return
  end
  i32.const 10
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 10
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<u8,u8>|inlined.2 (result i32)
      get_local $5
      get_local $11
      i32.const 0
      i32.shl
      i32.add
      i32.load8_u offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<u8>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<u8,u8>|inlined.3 (result i32)
   get_local $5
   get_local $2
   i32.const 0
   i32.shl
   i32.add
   i32.load8_u offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<u8>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   get_local $9
   i32.eqz
   if
    i32.const 0
    i32.const 2704
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   block $~lib/memory/memory.free|inlined.12
    block
     get_local $9
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.12
     unreachable
    end
    unreachable
   end
  end
  get_local $11
  return
 )
 (func $~lib/array/Array<Array<u8>>#join (; 210 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Array<u8>,Array<u8>>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   get_local $4
   if (result i32)
    get_local $4
    get_local $1
    call $~lib/array/Array<u8>#join
   else    
    i32.const 2520
   end
   return
  end
  block $break|0
   i32.const 0
   set_local $8
   loop $repeat|0
    get_local $8
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<Array<u8>,Array<u8>>|inlined.1 (result i32)
      get_local $5
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $3
      get_local $4
      get_local $1
      call $~lib/array/Array<u8>#join
      call $~lib/string/String.__concat
      set_local $3
     end
     get_local $7
     if
      get_local $3
      get_local $1
      call $~lib/string/String.__concat
      set_local $3
     end
    end
    get_local $8
    i32.const 1
    i32.add
    set_local $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<Array<u8>,Array<u8>>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $4
  if
   get_local $3
   get_local $4
   get_local $1
   call $~lib/array/Array<u8>#join
   call $~lib/string/String.__concat
   set_local $3
  end
  get_local $3
  return
 )
 (func $~lib/array/Array<Array<u32>>#join (; 211 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Array<u32>,Array<u32>>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   get_local $4
   if (result i32)
    get_local $4
    get_local $1
    call $~lib/array/Array<u32>#join
   else    
    i32.const 2520
   end
   return
  end
  block $break|0
   i32.const 0
   set_local $8
   loop $repeat|0
    get_local $8
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<Array<u32>,Array<u32>>|inlined.1 (result i32)
      get_local $5
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $3
      get_local $4
      get_local $1
      call $~lib/array/Array<u32>#join
      call $~lib/string/String.__concat
      set_local $3
     end
     get_local $7
     if
      get_local $3
      get_local $1
      call $~lib/string/String.__concat
      set_local $3
     end
    end
    get_local $8
    i32.const 1
    i32.add
    set_local $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<Array<u32>,Array<u32>>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $4
  if
   get_local $3
   get_local $4
   get_local $1
   call $~lib/array/Array<u32>#join
   call $~lib/string/String.__concat
   set_local $3
  end
  get_local $3
  return
 )
 (func $~lib/array/Array<Array<Array<u32>>>#join (; 212 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 2520
   return
  end
  i32.const 2520
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Array<Array<u32>>,Array<Array<u32>>>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   get_local $4
   if (result i32)
    get_local $4
    get_local $1
    call $~lib/array/Array<Array<u32>>#join
   else    
    i32.const 2520
   end
   return
  end
  block $break|0
   i32.const 0
   set_local $8
   loop $repeat|0
    get_local $8
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<Array<Array<u32>>,Array<Array<u32>>>|inlined.1 (result i32)
      get_local $5
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $3
      get_local $4
      get_local $1
      call $~lib/array/Array<Array<u32>>#join
      call $~lib/string/String.__concat
      set_local $3
     end
     get_local $7
     if
      get_local $3
      get_local $1
      call $~lib/string/String.__concat
      set_local $3
     end
    end
    get_local $8
    i32.const 1
    i32.add
    set_local $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<Array<Array<u32>>,Array<Array<u32>>>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $4
  if
   get_local $3
   get_local $4
   get_local $1
   call $~lib/array/Array<Array<u32>>#join
   call $~lib/string/String.__concat
   set_local $3
  end
  get_local $3
  return
 )
 (func $start (; 213 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_global $HEAP_BASE
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  set_global $std/array/arr
  get_global $std/array/Null
  call $~lib/array/Array.isArray<Array<i32> | null>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array.isArray<Array<i32>>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 37
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   call $~lib/memory/memory.allocate
   set_local $0
   get_local $0
  end
  call $~lib/array/Array.isArray<P>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 38
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/num
  call $~lib/array/Array.isArray<i32>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 40
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr8
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u8>#fill
  drop
  get_global $std/array/arr8
  i32.const 176
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 47
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   set_global $~argc
   get_global $std/array/arr8
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#fill|trampoline
  end
  drop
  get_global $std/array/arr8
  i32.const 200
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 50
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr8
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u8>#fill
  drop
  get_global $std/array/arr8
  i32.const 224
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 53
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/array/arr8
   i32.const 2
   i32.const -2
   i32.const 0
   call $~lib/array/Array<u8>#fill|trampoline
  end
  drop
  get_global $std/array/arr8
  i32.const 248
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 56
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr8
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u8>#fill
  drop
  get_global $std/array/arr8
  i32.const 272
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 59
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr32
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u32>#fill
  drop
  get_global $std/array/arr32
  i32.const 352
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 64
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   set_global $~argc
   get_global $std/array/arr32
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u32>#fill|trampoline
  end
  drop
  get_global $std/array/arr32
  i32.const 392
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 67
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr32
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u32>#fill
  drop
  get_global $std/array/arr32
  i32.const 432
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 70
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/array/arr32
   i32.const 2
   i32.const -2
   i32.const 0
   call $~lib/array/Array<u32>#fill|trampoline
  end
  drop
  get_global $std/array/arr32
  i32.const 472
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 73
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr32
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u32>#fill
  drop
  get_global $std/array/arr32
  i32.const 512
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 76
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.0 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 80
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 81
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 42
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 85
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.1 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 86
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 87
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  set_global $std/array/i
  get_global $std/array/i
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 91
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.2 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 92
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 93
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  call $~lib/array/Array<i32>#push
  drop
  block $~lib/array/Array<i32>#get:length|inlined.3 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 97
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 98
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 99
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 44
  call $~lib/array/Array<i32>#push
  drop
  block $~lib/array/Array<i32>#get:length|inlined.4 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 103
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 104
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 105
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 106
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 45
  call $~lib/array/Array<i32>#push
  drop
  block $~lib/array/Array<i32>#get:length|inlined.5 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 110
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 111
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 112
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 113
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 114
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  set_global $std/array/other
  get_global $std/array/arr
  get_global $std/array/other
  call $~lib/array/Array<i32>#concat
  set_global $std/array/out
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 121
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.6 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 122
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.7 (result i32)
   get_global $std/array/out
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 123
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 528
  call $~lib/array/Array<i32>#concat
  drop
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 126
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 128
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 129
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 130
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/other
  i32.const 46
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/other
  i32.const 47
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  get_global $std/array/other
  call $~lib/array/Array<i32>#concat
  set_global $std/array/out
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 137
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.8 (result i32)
   get_global $std/array/other
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 138
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.9 (result i32)
   get_global $std/array/out
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 139
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 140
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 141
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 142
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 46
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 143
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 4
  call $~lib/array/Array<i32>#__get
  i32.const 47
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 144
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  call $~lib/array/Array<i32>#pop
  drop
  block $~lib/array/Array<i32>#get:length|inlined.10 (result i32)
   get_global $std/array/out
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 147
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#concat
  set_global $std/array/out
  block $~lib/array/Array<i32>#get:length|inlined.11 (result i32)
   get_global $std/array/out
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 150
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 151
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.12 (result i32)
   get_global $std/array/source
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 154
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/source
  get_global $std/array/arr
  call $~lib/array/Array<i32>#concat
  set_global $std/array/out
  block $~lib/array/Array<i32>#get:length|inlined.13 (result i32)
   get_global $std/array/out
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 156
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.14 (result i32)
   get_global $std/array/source
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 157
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 584
  set_global $std/array/cwArr
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/array/cwArr
   i32.const 0
   i32.const 3
   i32.const 0
   call $~lib/array/Array<i32>#copyWithin|trampoline
  end
  i32.const 624
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 163
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 664
  set_global $std/array/cwArr
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/array/cwArr
   i32.const 1
   i32.const 3
   i32.const 0
   call $~lib/array/Array<i32>#copyWithin|trampoline
  end
  i32.const 704
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 165
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 744
  set_global $std/array/cwArr
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/array/cwArr
   i32.const 1
   i32.const 2
   i32.const 0
   call $~lib/array/Array<i32>#copyWithin|trampoline
  end
  i32.const 784
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 167
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 824
  set_global $std/array/cwArr
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/array/cwArr
   i32.const 2
   i32.const 2
   i32.const 0
   call $~lib/array/Array<i32>#copyWithin|trampoline
  end
  i32.const 864
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 169
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 904
  set_global $std/array/cwArr
  get_global $std/array/cwArr
  i32.const 0
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 944
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 171
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 984
  set_global $std/array/cwArr
  get_global $std/array/cwArr
  i32.const 1
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 1024
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 173
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1064
  set_global $std/array/cwArr
  get_global $std/array/cwArr
  i32.const 1
  i32.const 2
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 1104
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 175
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1144
  set_global $std/array/cwArr
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/array/cwArr
   i32.const 0
   i32.const -2
   i32.const 0
   call $~lib/array/Array<i32>#copyWithin|trampoline
  end
  i32.const 1184
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 177
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1224
  set_global $std/array/cwArr
  get_global $std/array/cwArr
  i32.const 0
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  i32.const 1264
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 179
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1304
  set_global $std/array/cwArr
  get_global $std/array/cwArr
  i32.const -4
  i32.const -3
  i32.const -2
  call $~lib/array/Array<i32>#copyWithin
  i32.const 1344
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 181
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1384
  set_global $std/array/cwArr
  get_global $std/array/cwArr
  i32.const -4
  i32.const -3
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  i32.const 1424
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 183
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1464
  set_global $std/array/cwArr
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/array/cwArr
   i32.const -4
   i32.const -3
   i32.const 0
   call $~lib/array/Array<i32>#copyWithin|trampoline
  end
  i32.const 1504
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 185
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 42
  call $~lib/array/Array<i32>#unshift
  drop
  block $~lib/array/Array<i32>#get:length|inlined.18 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 191
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 192
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 193
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 194
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 195
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 196
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 41
  call $~lib/array/Array<i32>#unshift
  drop
  block $~lib/array/Array<i32>#get:length|inlined.19 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 200
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 201
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 41
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 202
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 203
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 204
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 205
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 4
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 206
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#shift
  set_global $std/array/i
  get_global $std/array/i
  i32.const 41
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 212
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.20 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 213
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 214
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 215
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 216
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 217
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 218
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  set_global $std/array/i
  get_global $std/array/i
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 222
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.21 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 223
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 224
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 225
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 226
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 227
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#reverse
  drop
  block $~lib/array/Array<i32>#get:length|inlined.22 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 233
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 234
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 235
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 236
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 237
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 44
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 44
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 246
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 42
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 250
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 45
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 254
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const 100
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 258
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const -100
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 262
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const -2
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 266
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const -4
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 270
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 274
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const 1
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 278
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const 2
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 282
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.0 (result i32)
   get_global $std/array/arr
   set_local $0
   i32.const 44
   set_local $1
   i32.const 0
   set_local $2
   get_local $0
   get_local $1
   get_local $2
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 288
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.1 (result i32)
   get_global $std/array/arr
   set_local $2
   i32.const 42
   set_local $1
   i32.const 0
   set_local $0
   get_local $2
   get_local $1
   get_local $0
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 292
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.2 (result i32)
   get_global $std/array/arr
   set_local $0
   i32.const 45
   set_local $1
   i32.const 0
   set_local $2
   get_local $0
   get_local $1
   get_local $2
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 296
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.3 (result i32)
   get_global $std/array/arr
   set_local $2
   i32.const 43
   set_local $1
   i32.const 100
   set_local $0
   get_local $2
   get_local $1
   get_local $0
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 300
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.4 (result i32)
   get_global $std/array/arr
   set_local $0
   i32.const 43
   set_local $1
   i32.const -100
   set_local $2
   get_local $0
   get_local $1
   get_local $2
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 304
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.5 (result i32)
   get_global $std/array/arr
   set_local $2
   i32.const 43
   set_local $1
   i32.const -2
   set_local $0
   get_local $2
   get_local $1
   get_local $0
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 308
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.6 (result i32)
   get_global $std/array/arr
   set_local $0
   i32.const 43
   set_local $1
   i32.const -4
   set_local $2
   get_local $0
   get_local $1
   get_local $2
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 312
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.7 (result i32)
   get_global $std/array/arr
   set_local $2
   i32.const 43
   set_local $1
   i32.const 0
   set_local $0
   get_local $2
   get_local $1
   get_local $0
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 316
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.8 (result i32)
   get_global $std/array/arr
   set_local $0
   i32.const 43
   set_local $1
   i32.const 1
   set_local $2
   get_local $0
   get_local $1
   get_local $2
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 320
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.9 (result i32)
   get_global $std/array/arr
   set_local $2
   i32.const 43
   set_local $1
   i32.const 2
   set_local $0
   get_local $2
   get_local $1
   get_local $0
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 324
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  i32.const 1
  call $~lib/array/Array<i32>#splice
  block $~lib/array/Array<i32>#get:length|inlined.23 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 328
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 329
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 330
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 331
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#__set
  get_global $std/array/arr
  i32.const 1
  i32.const 1
  call $~lib/array/Array<i32>#__set
  get_global $std/array/arr
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#__set
  get_global $std/array/arr
  i32.const 3
  i32.const 3
  call $~lib/array/Array<i32>#__set
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 341
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 344
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 347
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 4
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 355
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.24 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 356
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 5
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 358
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  i32.const 6
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 371
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.25 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 372
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 7
  call $~lib/array/Array<i32>#every
  set_global $std/array/every
  get_global $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 380
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 8
  call $~lib/array/Array<i32>#every
  set_global $std/array/every
  get_global $std/array/every
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 383
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 9
  call $~lib/array/Array<i32>#every
  set_global $std/array/every
  get_global $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 391
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.26 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 392
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 10
  call $~lib/array/Array<i32>#every
  set_global $std/array/every
  get_global $std/array/every
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 394
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  i32.const 11
  call $~lib/array/Array<i32>#every
  set_global $std/array/every
  get_global $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 407
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.27 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 408
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 12
  call $~lib/array/Array<i32>#some
  set_global $std/array/some
  get_global $std/array/some
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 416
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 13
  call $~lib/array/Array<i32>#some
  set_global $std/array/some
  get_global $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 419
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 14
  call $~lib/array/Array<i32>#some
  set_global $std/array/some
  get_global $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 427
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.28 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 428
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 15
  call $~lib/array/Array<i32>#some
  set_global $std/array/some
  get_global $std/array/some
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 430
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  i32.const 16
  call $~lib/array/Array<i32>#some
  set_global $std/array/some
  get_global $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 443
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.29 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 444
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 17
  call $~lib/array/Array<i32>#forEach
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 453
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 18
  call $~lib/array/Array<i32>#forEach
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 462
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.30 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 463
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 19
  call $~lib/array/Array<i32>#forEach
  get_global $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 466
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 20
  call $~lib/array/Array<i32>#forEach
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 480
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.31 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 481
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 21
  call $~lib/array/Array<i32>#map<f32>
  set_global $std/array/newArr
  block $~lib/array/Array<f32>#get:length|inlined.0 (result i32)
   get_global $std/array/newArr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 490
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/newArr
  i32.const 0
  call $~lib/array/Array<f32>#__get
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  f32.convert_s/i32
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 491
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 22
  call $~lib/array/Array<i32>#map<i32>
  drop
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 500
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.32 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 501
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 23
  call $~lib/array/Array<i32>#map<i32>
  drop
  get_global $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 508
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 24
  call $~lib/array/Array<i32>#map<i32>
  drop
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 523
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.33 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 524
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 25
  call $~lib/array/Array<i32>#filter
  set_global $std/array/filteredArr
  block $~lib/array/Array<i32>#get:length|inlined.34 (result i32)
   get_global $std/array/filteredArr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 532
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 26
  call $~lib/array/Array<i32>#filter
  drop
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 541
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.35 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 542
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 27
  call $~lib/array/Array<i32>#filter
  drop
  get_global $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 549
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 28
  call $~lib/array/Array<i32>#filter
  drop
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 564
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.36 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 565
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 29
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 573
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 30
  i32.const 4
  call $~lib/array/Array<i32>#reduce<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 577
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 31
  i32.const 0
  call $~lib/array/Array<i32>#reduce<bool>
  i32.const 1
  i32.and
  set_global $std/array/boolVal
  get_global $std/array/boolVal
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 580
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 32
  i32.const 0
  call $~lib/array/Array<i32>#reduce<bool>
  i32.const 1
  i32.and
  set_global $std/array/boolVal
  get_global $std/array/boolVal
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 583
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 33
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 591
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.37 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 592
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 34
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 594
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  i32.const 35
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 607
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.38 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 608
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 36
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 616
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 37
  i32.const 4
  call $~lib/array/Array<i32>#reduceRight<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 620
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 38
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<bool>
  i32.const 1
  i32.and
  set_global $std/array/boolVal
  get_global $std/array/boolVal
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 623
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 39
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<bool>
  i32.const 1
  i32.and
  set_global $std/array/boolVal
  get_global $std/array/boolVal
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 626
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 40
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 634
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.39 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 635
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 41
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 637
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  i32.const 42
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 650
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.40 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 651
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  call $~lib/bindings/Math/random
  i64.reinterpret/f64
  call $~lib/math/NativeMath.seedRandom
  block (result i32)
   i32.const 0
   set_global $~argc
   get_global $std/array/f32ArrayTyped
   i32.const 0
   call $~lib/array/Array<f32>#sort|trampoline
  end
  drop
  get_global $std/array/f32ArrayTyped
  i32.const 1856
  i32.const 0
  call $std/array/isArraysEqual<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 738
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   set_global $~argc
   get_global $std/array/f64ArrayTyped
   i32.const 0
   call $~lib/array/Array<f64>#sort|trampoline
  end
  drop
  get_global $std/array/f64ArrayTyped
  i32.const 2128
  i32.const 0
  call $std/array/isArraysEqual<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 742
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   set_global $~argc
   get_global $std/array/i32ArrayTyped
   i32.const 0
   call $~lib/array/Array<i32>#sort|trampoline
  end
  drop
  get_global $std/array/i32ArrayTyped
  i32.const 2208
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 746
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   set_global $~argc
   get_global $std/array/u32ArrayTyped
   i32.const 0
   call $~lib/array/Array<u32>#sort|trampoline
  end
  drop
  get_global $std/array/u32ArrayTyped
  i32.const 2288
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 750
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 64
  call $std/array/createReverseOrderedArray
  set_global $std/array/reversed64
  i32.const 128
  call $std/array/createReverseOrderedArray
  set_global $std/array/reversed128
  i32.const 1024
  call $std/array/createReverseOrderedArray
  set_global $std/array/reversed1024
  i32.const 10000
  call $std/array/createReverseOrderedArray
  set_global $std/array/reversed10000
  i32.const 512
  call $std/array/createRandomOrderedArray
  set_global $std/array/randomized512
  get_global $std/array/reversed0
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed1
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed1
  i32.const 2456
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 770
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed2
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed2
  i32.const 2480
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 773
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed4
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed4
  get_global $std/array/expected4
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 776
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed64
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed64
  get_global $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 779
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed128
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed128
  get_global $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 782
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed1024
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed1024
  get_global $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 785
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed10000
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed10000
  get_global $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 788
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/randomized512
  call $std/array/assertSortedDefault<i32>
  i32.const 64
  call $std/array/createRandomOrderedArray
  set_global $std/array/randomized64
  i32.const 257
  call $std/array/createRandomOrderedArray
  set_global $std/array/randomized257
  get_global $std/array/randomized64
  i32.const 48
  call $std/array/assertSorted<i32>
  get_global $std/array/randomized64
  i32.const 49
  call $std/array/assertSorted<i32>
  get_global $std/array/randomized257
  i32.const 50
  call $std/array/assertSorted<i32>
  get_global $std/array/randomized257
  i32.const 51
  call $std/array/assertSorted<i32>
  i32.const 512
  call $std/array/createReverseOrderedNestedArray
  set_global $std/array/reversedNested512
  get_global $std/array/reversedNested512
  i32.const 52
  call $std/array/assertSorted<Array<i32>>
  i32.const 512
  call $std/array/createReverseOrderedElementsArray
  set_global $std/array/reversedElements512
  get_global $std/array/reversedElements512
  i32.const 53
  call $std/array/assertSorted<Proxy<i32>>
  get_global $std/array/randomStringsActual
  i32.const 54
  call $std/array/assertSorted<String>
  get_global $std/array/randomStringsActual
  get_global $std/array/randomStringsExpected
  i32.const 0
  call $std/array/isArraysEqual<String>
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 817
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 400
  call $std/array/createRandomStringArray
  set_global $std/array/randomStrings400
  get_global $std/array/randomStrings400
  i32.const 55
  call $std/array/assertSorted<String>
  i32.const 2856
  i32.const 2832
  call $~lib/array/Array<bool>#join
  i32.const 2864
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 826
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3488
  i32.const 2520
  call $~lib/array/Array<i32>#join
  i32.const 3496
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 827
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3592
  i32.const 3552
  call $~lib/array/Array<u32>#join
  i32.const 3496
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 828
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3648
  i32.const 3624
  call $~lib/array/Array<i32>#join
  i32.const 3656
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 829
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3792
  i32.const 2520
  call $~lib/array/Array<String>#join
  i32.const 3712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 831
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   i32.const 3
   call $~lib/array/Array<Ref>#constructor
   set_local $3
   get_local $3
   i32.const 0
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<Ref>#__unchecked_set
   get_local $3
   i32.const 1
   i32.const 0
   call $~lib/array/Array<Ref>#__unchecked_set
   get_local $3
   i32.const 2
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<Ref>#__unchecked_set
   get_local $3
  end
  set_global $std/array/refArr
  get_global $std/array/refArr
  i32.const 2832
  call $~lib/array/Array<Ref>#join
  i32.const 3840
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 833
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#toString|inlined.1 (result i32)
   get_global $std/array/reversed0
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<i32>#join
  end
  i32.const 2520
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 837
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#toString|inlined.3 (result i32)
   get_global $std/array/reversed1
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<i32>#join
  end
  i32.const 3712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 838
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#toString|inlined.5 (result i32)
   get_global $std/array/reversed2
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<i32>#join
  end
  i32.const 3912
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 839
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#toString|inlined.7 (result i32)
   get_global $std/array/reversed4
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<i32>#join
  end
  i32.const 3928
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 840
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i8>#toString|inlined.1 (result i32)
   i32.const 3992
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<i8>#join
  end
  i32.const 4000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 842
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<u16>#toString|inlined.1 (result i32)
   i32.const 4056
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<u16>#join
  end
  i32.const 4064
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 843
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<u64>#toString|inlined.1 (result i32)
   i32.const 4680
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<u64>#join
  end
  i32.const 4688
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 844
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i64>#toString|inlined.1 (result i32)
   i32.const 4880
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<i64>#join
  end
  i32.const 4888
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 845
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<String>#toString|inlined.1 (result i32)
   get_global $std/array/randomStringsExpected
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<String>#join
  end
  i32.const 4976
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 846
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<String>#toString|inlined.3 (result i32)
   i32.const 5096
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<String>#join
  end
  i32.const 5104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 847
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<Array<i32>>#toString|inlined.1 (result i32)
   get_global $std/array/subarr32
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<Array<i32>>#join
  end
  i32.const 5192
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 850
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<Array<u8>>#toString|inlined.1 (result i32)
   get_global $std/array/subarr8
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<Array<u8>>#join
  end
  i32.const 5192
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 853
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<Array<Array<u32>>>#toString|inlined.1 (result i32)
   get_global $std/array/subarrU32
   set_local $3
   get_local $3
   i32.const 2832
   call $~lib/array/Array<Array<Array<u32>>>#join
  end
  i32.const 3712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 856
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 214 ;) (type $v)
 )
)
