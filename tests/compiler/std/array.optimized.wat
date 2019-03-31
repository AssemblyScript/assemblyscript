(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$fiii (func (param i32 i32 i32) (result f32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$iff (func (param f32 f32) (result i32)))
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$viiiii (func (param i32 i32 i32 i32 i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iijijiji (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $FUNCSIG$iiid (func (param i32 i32 f64) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$iiij (func (param i32 i32 i64) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 104) "\03\00\00\00a\00b\00c")
 (data (i32.const 120) "\0c\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 152) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 216) "\05\00\00\00\00\00\00\00\01\02\03\04\05")
 (data (i32.const 232) "\d8\00\00\00\05")
 (data (i32.const 240) "\05\00\00\00\00\00\00\00\01\01\01\04\05")
 (data (i32.const 256) "\f0\00\00\00\05")
 (data (i32.const 264) "\05")
 (data (i32.const 280) "\08\01\00\00\05")
 (data (i32.const 288) "\05\00\00\00\00\00\00\00\01\01")
 (data (i32.const 304) " \01\00\00\05")
 (data (i32.const 312) "\05\00\00\00\00\00\00\00\01\01\00\02\02")
 (data (i32.const 328) "8\01\00\00\05")
 (data (i32.const 336) "\05\00\00\00\00\00\00\00\01\01\00\02\02")
 (data (i32.const 352) "P\01\00\00\05")
 (data (i32.const 360) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 392) "h\01\00\00\05")
 (data (i32.const 400) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 432) "\90\01\00\00\05")
 (data (i32.const 440) "\14")
 (data (i32.const 472) "\b8\01\00\00\05")
 (data (i32.const 480) "\14\00\00\00\00\00\00\00\01\00\00\00\01")
 (data (i32.const 512) "\e0\01\00\00\05")
 (data (i32.const 520) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 552) "\08\02\00\00\05")
 (data (i32.const 560) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 592) "0\02\00\00\05")
 (data (i32.const 608) "X\02")
 (data (i32.const 624) "h\02")
 (data (i32.const 632) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 664) "x\02\00\00\05")
 (data (i32.const 672) "\14\00\00\00\00\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 704) "\a0\02\00\00\05")
 (data (i32.const 712) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 744) "\c8\02\00\00\05")
 (data (i32.const 752) "\14\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05")
 (data (i32.const 784) "\f0\02\00\00\05")
 (data (i32.const 792) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 824) "\18\03\00\00\05")
 (data (i32.const 832) "\14\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 864) "@\03\00\00\05")
 (data (i32.const 872) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 904) "h\03\00\00\05")
 (data (i32.const 912) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 944) "\90\03\00\00\05")
 (data (i32.const 952) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 984) "\b8\03\00\00\05")
 (data (i32.const 992) "\14\00\00\00\00\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1024) "\e0\03\00\00\05")
 (data (i32.const 1032) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1064) "\08\04\00\00\05")
 (data (i32.const 1072) "\14\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1104) "0\04\00\00\05")
 (data (i32.const 1112) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1144) "X\04\00\00\05")
 (data (i32.const 1152) "\14\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 1184) "\80\04\00\00\05")
 (data (i32.const 1192) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1224) "\a8\04\00\00\05")
 (data (i32.const 1232) "\14\00\00\00\00\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1264) "\d0\04\00\00\05")
 (data (i32.const 1272) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1304) "\f8\04\00\00\05")
 (data (i32.const 1312) "\14\00\00\00\00\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1344) " \05\00\00\05")
 (data (i32.const 1352) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1384) "H\05\00\00\05")
 (data (i32.const 1392) "\14\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1424) "p\05\00\00\05")
 (data (i32.const 1432) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1464) "\98\05\00\00\05")
 (data (i32.const 1472) "\14\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 1504) "\c0\05\00\00\05")
 (data (i32.const 1512) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1544) "\e8\05\00\00\05")
 (data (i32.const 1552) "\14\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 1584) "\10\06\00\00\05")
 (data (i32.const 1592) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1624) "8\06\00\00\05")
 (data (i32.const 1632) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1664) "`\06\00\00\05")
 (data (i32.const 1680) "\88\06")
 (data (i32.const 1688) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1720) "\98\06\00\00\05")
 (data (i32.const 1728) "\0c\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1760) "\c0\06\00\00\03")
 (data (i32.const 1768) "\08\00\00\00\00\00\00\00\01\00\00\00\02")
 (data (i32.const 1784) "\e8\06\00\00\02")
 (data (i32.const 1792) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1825) "\07\00\00\05")
 (data (i32.const 1832) "\08\00\00\00\00\00\00\00\03\00\00\00\04")
 (data (i32.const 1848) "(\07\00\00\02")
 (data (i32.const 1856) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\05")
 (data (i32.const 1888) "@\07\00\00\03")
 (data (i32.const 1896) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1928) "h\07\00\00\05")
 (data (i32.const 1936) "\04\00\00\00\00\00\00\00\01")
 (data (i32.const 1952) "\90\07\00\00\01")
 (data (i32.const 1960) "\10\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1992) "\a8\07\00\00\04")
 (data (i32.const 2000) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2032) "\d0\07\00\00\05")
 (data (i32.const 2040) "\04\00\00\00\00\00\00\00\05")
 (data (i32.const 2056) "\f8\07\00\00\01")
 (data (i32.const 2064) "\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04")
 (data (i32.const 2096) "\10\08\00\00\04")
 (data (i32.const 2104) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2136) "8\08\00\00\05")
 (data (i32.const 2144) "\08\00\00\00\00\00\00\00\04\00\00\00\05")
 (data (i32.const 2160) "`\08\00\00\02")
 (data (i32.const 2168) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 2200) "x\08\00\00\03")
 (data (i32.const 2208) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2240) "\a0\08\00\00\05")
 (data (i32.const 2248) "\04\00\00\00\00\00\00\00\04")
 (data (i32.const 2264) "\c8\08\00\00\01")
 (data (i32.const 2272) "\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05")
 (data (i32.const 2304) "\e0\08\00\00\04")
 (data (i32.const 2312) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2344) "\08\t\00\00\05")
 (data (i32.const 2352) "\04\00\00\00\00\00\00\00\01")
 (data (i32.const 2368) "0\t\00\00\01")
 (data (i32.const 2376) "\10\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2408) "H\t\00\00\04")
 (data (i32.const 2416) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2448) "p\t\00\00\05")
 (data (i32.const 2464) "\98\t")
 (data (i32.const 2472) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2504) "\a8\t\00\00\05")
 (data (i32.const 2512) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2544) "\d0\t\00\00\05")
 (data (i32.const 2560) "\f8\t")
 (data (i32.const 2568) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2600) "\08\n\00\00\05")
 (data (i32.const 2608) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2640) "0\n\00\00\05")
 (data (i32.const 2656) "X\n")
 (data (i32.const 2664) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2696) "h\n\00\00\05")
 (data (i32.const 2704) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2736) "\90\n\00\00\05")
 (data (i32.const 2752) "\b8\n")
 (data (i32.const 2760) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2792) "\c8\n\00\00\05")
 (data (i32.const 2800) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2832) "\f0\n\00\00\05")
 (data (i32.const 2848) "\18\0b")
 (data (i32.const 2856) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2888) "(\0b\00\00\05")
 (data (i32.const 2896) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 2928) "V\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?")
 (data (i32.const 3104) " ")
 (data (i32.const 3114) "\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 3168) " \0c\00\00\08")
 (data (i32.const 3176) " ")
 (data (i32.const 3186) "\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 3240) "h\0c\00\00\08")
 (data (i32.const 3248) "@")
 (data (i32.const 3262) "\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?")
 (data (i32.const 3302) "\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 3376) "\b0\0c\00\00\08")
 (data (i32.const 3384) "@")
 (data (i32.const 3398) "\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf")
 (data (i32.const 3430) "\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 3512) "8\0d\00\00\08")
 (data (i32.const 3520) "\14\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 3552) "\c0\0d\00\00\05")
 (data (i32.const 3560) "\14\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02")
 (data (i32.const 3592) "\e8\0d\00\00\05")
 (data (i32.const 3600) "\14\00\00\00\00\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 3632) "\10\0e\00\00\05")
 (data (i32.const 3640) "\14")
 (data (i32.const 3652) "\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 3672) "8\0e\00\00\05")
 (data (i32.const 3688) "`\0e")
 (data (i32.const 3696) "\04\00\00\00\00\00\00\00\01")
 (data (i32.const 3712) "p\0e\00\00\01")
 (data (i32.const 3720) "\08\00\00\00\00\00\00\00\02\00\00\00\01")
 (data (i32.const 3736) "\88\0e\00\00\02")
 (data (i32.const 3744) "\10\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00\01")
 (data (i32.const 3776) "\a0\0e\00\00\04")
 (data (i32.const 3784) "\10")
 (data (i32.const 3796) "\01\00\00\00\02\00\00\00\03")
 (data (i32.const 3816) "\c8\0e\00\00\04")
 (data (i32.const 3824) "\04\00\00\00\00\00\00\00\01")
 (data (i32.const 3840) "\f0\0e\00\00\01")
 (data (i32.const 3848) "\08\00\00\00\00\00\00\00\01\00\00\00\02")
 (data (i32.const 3864) "\08\0f\00\00\02")
 (data (i32.const 3872) "\01\00\00\00a")
 (data (i32.const 3880) "\01\00\00\00b")
 (data (i32.const 3888) "\02\00\00\00a\00b")
 (data (i32.const 3896) "\02\00\00\00b\00a")
 (data (i32.const 3912) "\1c\00\00\00\00\00\00\00 \0f\00\00(\0f\00\00 \0f\00\000\0f\00\008\0f\00\00@\0f")
 (data (i32.const 3976) "H\0f\00\00\07")
 (data (i32.const 3984) "\1c\00\00\00\00\00\00\00@\0f\00\00 \0f\00\00 \0f\00\000\0f\00\00(\0f\00\008\0f")
 (data (i32.const 4048) "\90\0f\00\00\07")
 (data (i32.const 4056) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 4088) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 4144) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 4160) "\02\00\00\00\00\00\00\00\01")
 (data (i32.const 4176) "@\10\00\00\02")
 (data (i32.const 4184) "\04\00\00\00t\00r\00u\00e")
 (data (i32.const 4200) "\05\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 4216) "\01\00\00\00,")
 (data (i32.const 4224) "\02\00\00\00\00\00\00\00\01")
 (data (i32.const 4240) "\80\10\00\00\02")
 (data (i32.const 4248) "\n\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e")
 (data (i32.const 4272) "\0c\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 4304) "\b0\10\00\00\03")
 (data (i32.const 4312) "\01\00\00\000")
 (data (i32.const 4320) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 4832) "\e0\10\00\00d")
 (data (i32.const 4840) "\0c\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 4872) "\e8\12\00\00\03")
 (data (i32.const 4880) "\05\00\00\001\00-\002\00-\003")
 (data (i32.const 4896) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4928) " \13\00\00\03")
 (data (i32.const 4936) "\01\00\00\00-")
 (data (i32.const 4944) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4976) "P\13\00\00\03")
 (data (i32.const 4984) "\08")
 (data (i32.const 4995) "\80\00\00\00\80")
 (data (i32.const 5000) "x\13\00\00\02")
 (data (i32.const 5008) "\02\00\00\00_\00_")
 (data (i32.const 5016) "\08")
 (data (i32.const 5027) "\80\00\00\00\80")
 (data (i32.const 5032) "\98\13\00\00\02")
 (data (i32.const 5040) "\18\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 5096) "0")
 (data (i32.const 5118) "\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 5160) "\e8\13\00\00\06")
 (data (i32.const 5168) "\02\00\00\00,\00 ")
 (data (i32.const 5176) "\03\00\00\000\00.\000")
 (data (i32.const 5192) "\03\00\00\00N\00a\00N")
 (data (i32.const 5208) "\t\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 5232) "\08\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 5256) "\b8\02\00\00\00\00\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 6280) "\88\14\00\00W")
 (data (i32.const 6288) "\ae\00\00\00\00\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 6544) "\90\18\00\00W")
 (data (i32.const 6552) "(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 6616) "\98\19\00\00\n")
 (data (i32.const 6624) "0")
 (data (i32.const 6646) "\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 6688) "\e0\19\00\00\06")
 (data (i32.const 6696) "(\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 6784) "\01\00\00\001")
 (data (i32.const 6792) "\0c\00\00\00\00\00\00\00@\0f\00\00\80\1a")
 (data (i32.const 6824) "\88\1a\00\00\03")
 (data (i32.const 6832) "\0c\00\00\00\00\00\00\00@\0f\00\00\80\1a")
 (data (i32.const 6864) "\b0\1a\00\00\03")
 (data (i32.const 6872) "\0f\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 6912) " \00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 6984) "\03\00\00\001\00,\002")
 (data (i32.const 7000) "\07\00\00\000\00,\001\00,\002\00,\003")
 (data (i32.const 7024) "\03\00\00\00\00\00\00\00\01\ff")
 (data (i32.const 7040) "p\1b\00\00\03")
 (data (i32.const 7048) "\03\00\00\00\00\00\00\00\01\ff")
 (data (i32.const 7064) "\88\1b\00\00\03")
 (data (i32.const 7072) "\06\00\00\001\00,\00-\001\00,\000")
 (data (i32.const 7088) "\06\00\00\00\00\00\00\00\01\00\ff\ff")
 (data (i32.const 7104) "\b0\1b\00\00\03")
 (data (i32.const 7112) "\06\00\00\00\00\00\00\00\01\00\ff\ff")
 (data (i32.const 7128) "\c8\1b\00\00\03")
 (data (i32.const 7136) "\t\00\00\001\00,\006\005\005\003\005\00,\000")
 (data (i32.const 7160) "\18\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 7192) "\f8\1b\00\00\03")
 (data (i32.const 7200) "\18\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 7232) " \1c\00\00\03")
 (data (i32.const 7240) "\18\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000")
 (data (i32.const 7296) " \00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff")
 (data (i32.const 7328) "\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7360) "\80\1c\00\00\04")
 (data (i32.const 7368) " \00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff")
 (data (i32.const 7400) "\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7432) "\c8\1c\00\00\04")
 (data (i32.const 7440) "*\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007")
 (data (i32.const 7528) "\0d\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,")
 (data (i32.const 7560) "\01\00\00\002")
 (data (i32.const 7568) "\01\00\00\004")
 (data (i32.const 7576) "\10\00\00\00\00\00\00\00\80\1a\00\00\88\1d\00\00\00\00\00\00\90\1d")
 (data (i32.const 7608) "\98\1d\00\00\04")
 (data (i32.const 7616) "\10\00\00\00\00\00\00\00\80\1a\00\00\88\1d\00\00\00\00\00\00\90\1d")
 (data (i32.const 7648) "\c0\1d\00\00\04")
 (data (i32.const 7656) "\06\00\00\001\00,\002\00,\00,\004")
 (data (i32.const 7672) "\08\00\00\00\00\00\00\00\01\00\00\00\02")
 (data (i32.const 7688) "\f8\1d\00\00\02")
 (data (i32.const 7696) "\08\00\00\00\00\00\00\00\03\00\00\00\04")
 (data (i32.const 7712) "\10\1e\00\00\02")
 (data (i32.const 7720) "\08\00\00\00\00\00\00\00\08\1e\00\00 \1e")
 (data (i32.const 7736) "(\1e\00\00\02")
 (data (i32.const 7744) "\07\00\00\001\00,\002\00,\003\00,\004")
 (data (i32.const 7768) "\02\00\00\00\00\00\00\00\01\02")
 (data (i32.const 7784) "X\1e\00\00\02")
 (data (i32.const 7792) "\02\00\00\00\00\00\00\00\03\04")
 (data (i32.const 7808) "p\1e\00\00\02")
 (data (i32.const 7816) "\08\00\00\00\00\00\00\00h\1e\00\00\80\1e")
 (data (i32.const 7832) "\88\1e\00\00\02")
 (data (i32.const 7840) "\04\00\00\00\00\00\00\00\01")
 (data (i32.const 7856) "\a0\1e\00\00\01")
 (data (i32.const 7864) "\04\00\00\00\00\00\00\00\b0\1e")
 (data (i32.const 7880) "\b8\1e\00\00\01")
 (data (i32.const 7888) "\04\00\00\00\00\00\00\00\c8\1e")
 (data (i32.const 7904) "\d0\1e\00\00\01")
 (table $0 56 funcref)
 (elem (i32.const 0) $null $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|2 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|16 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $~lib/internal/sort/COMPARATOR<f32>~anonymous|0 $~lib/internal/sort/COMPARATOR<f64>~anonymous|0 $~lib/internal/sort/COMPARATOR<i32>~anonymous|0 $~lib/internal/sort/COMPARATOR<u32>~anonymous|0 $~lib/internal/sort/COMPARATOR<i32>~anonymous|0 $~lib/internal/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $~lib/internal/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $start:std/array~anonymous|47 $start:std/array~anonymous|48 $~lib/internal/sort/COMPARATOR<~lib/string/String>~anonymous|0)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/Null (mut i32) (i32.const 0))
 (global $std/array/arr8 (mut i32) (i32.const 232))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $std/array/arr32 (mut i32) (i32.const 392))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $std/array/other (mut i32) (i32.const 0))
 (global $std/array/out (mut i32) (i32.const 0))
 (global $std/array/source (mut i32) (i32.const 624))
 (global $std/array/cwArr (mut i32) (i32.const 0))
 (global $std/array/includes (mut i32) (i32.const 0))
 (global $std/array/sarr (mut i32) (i32.const 1624))
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
 (global $std/array/f32ArrayTyped (mut i32) (i32.const 3168))
 (global $std/array/f64ArrayTyped (mut i32) (i32.const 3376))
 (global $std/array/i32ArrayTyped (mut i32) (i32.const 3552))
 (global $std/array/u32ArrayTyped (mut i32) (i32.const 3632))
 (global $std/array/reversed0 (mut i32) (i32.const 3688))
 (global $std/array/reversed1 (mut i32) (i32.const 3712))
 (global $std/array/reversed2 (mut i32) (i32.const 3736))
 (global $std/array/reversed4 (mut i32) (i32.const 3776))
 (global $std/array/expected4 (mut i32) (i32.const 3816))
 (global $std/array/reversed64 (mut i32) (i32.const 0))
 (global $std/array/reversed128 (mut i32) (i32.const 0))
 (global $std/array/reversed1024 (mut i32) (i32.const 0))
 (global $std/array/reversed10000 (mut i32) (i32.const 0))
 (global $std/array/randomized512 (mut i32) (i32.const 0))
 (global $std/array/randomized64 (mut i32) (i32.const 0))
 (global $std/array/randomized257 (mut i32) (i32.const 0))
 (global $std/array/reversedNested512 (mut i32) (i32.const 0))
 (global $std/array/reversedElements512 (mut i32) (i32.const 0))
 (global $std/array/randomStringsActual (mut i32) (i32.const 3976))
 (global $std/array/randomStringsExpected (mut i32) (i32.const 4048))
 (global $std/array/randomStrings400 (mut i32) (i32.const 0))
 (global $~lib/internal/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/internal/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/internal/number/_exp (mut i32) (i32.const 0))
 (global $~lib/internal/number/_K (mut i32) (i32.const 0))
 (global $~lib/internal/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/internal/number/_exp_pow (mut i32) (i32.const 0))
 (global $std/array/refArr (mut i32) (i32.const 0))
 (global $std/array/subarr32 (mut i32) (i32.const 7736))
 (global $std/array/subarr8 (mut i32) (i32.const 7832))
 (global $std/array/subarrU32 (mut i32) (i32.const 7904))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.tee $1
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
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
  end
  local.get $0
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 40
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 4 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  local.get $2
  i32.eqz
  if
   return
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
   return
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
  local.tee $3
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $3
  i32.const 3
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 6
  i32.le_u
  if
   return
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
   return
  end
  local.get $2
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.tee $2
  i32.sub
  local.set $3
  local.get $0
  local.get $2
  i32.add
  local.tee $0
  local.get $1
  i32.const 255
  i32.and
  i32.const 16843009
  i32.mul
  local.tee $1
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  local.get $0
  i32.add
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 4
  i32.add
  local.get $1
  i32.store
  local.get $0
  i32.const 8
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.add
  local.tee $3
  i32.const 12
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 8
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 12
  i32.add
  local.get $1
  i32.store
  local.get $0
  i32.const 16
  i32.add
  local.get $1
  i32.store
  local.get $0
  i32.const 20
  i32.add
  local.get $1
  i32.store
  local.get $0
  i32.const 24
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.add
  local.tee $3
  i32.const 28
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 24
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 20
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 16
  i32.sub
  local.get $1
  i32.store
  local.get $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  local.tee $3
  local.get $0
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $1
  i64.extend_i32_u
  local.tee $4
  local.get $4
  i64.const 32
  i64.shl
  i64.or
  local.set $4
  loop $continue|0
   local.get $2
   i32.const 32
   i32.ge_u
   if
    local.get $0
    local.get $4
    i64.store
    local.get $0
    i32.const 8
    i32.add
    local.get $4
    i64.store
    local.get $0
    i32.const 16
    i32.add
    local.get $4
    i64.store
    local.get $0
    i32.const 24
    i32.add
    local.get $4
    i64.store
    local.get $2
    i32.const 32
    i32.sub
    local.set $2
    local.get $0
    i32.const 32
    i32.add
    local.set $0
    br $continue|0
   end
  end
 )
 (func $~lib/array/Array<i32>#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
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
  local.get $0
  i32.const 2
  i32.shl
  local.tee $3
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $2
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $2
  i32.const 8
  i32.add
  i32.const 0
  local.get $3
  call $~lib/internal/memory/memset
  local.get $1
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.tee $1
  i32.const 8
  i32.add
  i32.const 0
  i32.const 1
  call $~lib/internal/memory/memset
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
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
  local.get $1
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<u8>#fill (; 7 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $4
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $2
   local.get $4
   local.get $2
   local.get $4
   i32.lt_s
   select
  end
  local.tee $0
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $4
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $3
   local.get $4
   local.get $3
   local.get $4
   i32.lt_s
   select
  end
  local.tee $2
  i32.lt_s
  if
   local.get $0
   local.get $5
   i32.add
   i32.const 8
   i32.add
   local.get $1
   local.get $2
   local.get $0
   i32.sub
   call $~lib/internal/memory/memset
  end
 )
 (func $std/array/isArraysEqual<u8> (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.tee $4
  local.get $1
  i32.load offset=4
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
  loop $repeat|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.load
    local.tee $3
    i32.load
    i32.lt_u
    if (result i32)
     local.get $2
     local.get $3
     i32.add
     i32.load8_u offset=8
    else     
     unreachable
    end
    i32.const 255
    i32.and
    local.get $2
    local.get $1
    i32.load
    local.tee $3
    i32.load
    i32.lt_u
    if (result i32)
     local.get $2
     local.get $3
     i32.add
     i32.load8_u offset=8
    else     
     unreachable
    end
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 0
     return
    else     
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
    unreachable
   end
  end
  i32.const 1
 )
 (func $~lib/array/Array<u8>#fill|trampoline (; 9 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $2
   end
   i32.const 2147483647
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/array/Array<u8>#fill
 )
 (func $~lib/array/Array<u32>#fill (; 10 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $2
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $2
   local.get $0
   local.get $2
   local.get $0
   i32.lt_s
   select
  end
  local.set $2
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $3
   local.get $0
   local.get $3
   local.get $0
   i32.lt_s
   select
  end
  local.set $0
  loop $repeat|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $1
    i32.store offset=8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
 )
 (func $std/array/isArraysEqual<u32> (; 11 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.eqz
  if
   local.get $0
   i32.load offset=4
   local.tee $2
   local.get $1
   i32.load offset=4
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
  loop $repeat|0
   local.get $3
   local.get $2
   i32.lt_s
   if
    local.get $3
    local.get $0
    i32.load
    local.tee $4
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    local.get $3
    local.get $1
    i32.load
    local.tee $4
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.ne
    if
     i32.const 0
     return
    else     
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $repeat|0
    end
    unreachable
   end
  end
  i32.const 1
 )
 (func $~lib/array/Array<u32>#fill|trampoline (; 12 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $2
   end
   i32.const 2147483647
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/array/Array<u32>#fill
 )
 (func $~lib/internal/memory/memcpy (; 13 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $continue|0
   local.get $1
   i32.const 3
   i32.and
   local.get $2
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
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
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
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
      local.get $0
      i32.const 3
      i32.and
      local.tee $3
      i32.const 1
      i32.ne
      if
       local.get $3
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $3
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        i32.const 4
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $0
        i32.const 12
        i32.add
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
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
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     i32.const 1
     i32.add
     local.tee $3
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.const 1
     i32.add
     local.tee $4
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
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
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      i32.const 4
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $0
      i32.const 12
      i32.add
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
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
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.get $0
  i32.le_u
  local.tee $3
  i32.eqz
  if
   local.get $0
   local.get $2
   i32.add
   local.get $1
   i32.le_u
   local.set $3
  end
  local.get $3
  if
   local.get $0
   local.get $1
   local.get $2
   call $~lib/internal/memory/memcpy
   return
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
    loop $continue|0
     local.get $0
     i32.const 7
     i32.and
     if
      local.get $2
      i32.eqz
      if
       return
      end
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      local.get $0
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      br $continue|0
     end
    end
    loop $continue|1
     local.get $2
     i32.const 8
     i32.ge_u
     if
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
      br $continue|1
     end
    end
   end
   loop $continue|2
    local.get $2
    if
     local.get $0
     local.tee $3
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     local.tee $4
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|2
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
    loop $continue|3
     local.get $0
     local.get $2
     i32.add
     i32.const 7
     i32.and
     if
      local.get $2
      i32.eqz
      if
       return
      end
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      local.get $0
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|3
     end
    end
    loop $continue|4
     local.get $2
     i32.const 8
     i32.ge_u
     if
      local.get $2
      i32.const 8
      i32.sub
      local.tee $2
      local.get $0
      i32.add
      local.get $1
      local.get $2
      i32.add
      i64.load
      i64.store
      br $continue|4
     end
    end
   end
   loop $continue|5
    local.get $2
    if
     local.get $2
     i32.const 1
     i32.sub
     local.tee $2
     local.get $0
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
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.gt_s
  if
   local.get $1
   i32.const 1073741816
   i32.gt_s
   if
    i32.const 0
    i32.const 40
    i32.const 40
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   local.get $1
   i32.const 1
   i32.const 32
   local.get $2
   i32.const 7
   i32.add
   i32.clz
   i32.sub
   i32.shl
   i32.const 8
   i32.sub
   i32.le_s
   if
    local.get $0
    local.get $1
    i32.store
   else    
    local.get $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    local.tee $3
    i32.const 8
    i32.add
    local.get $0
    i32.const 8
    i32.add
    local.get $2
    call $~lib/internal/memory/memmove
    local.get $3
    local.set $0
   end
   local.get $0
   i32.const 8
   i32.add
   local.get $2
   i32.add
   i32.const 0
   local.get $1
   local.get $2
   i32.sub
   call $~lib/internal/memory/memset
  else   
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $1
    i32.const 0
    i32.lt_s
    if
     i32.const 0
     i32.const 40
     i32.const 62
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.store
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<i32>#push (; 16 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.add
  local.set $4
  local.get $2
  local.get $0
  i32.load
  local.tee $3
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   local.get $2
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 182
    i32.const 42
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.tee $3
   i32.store
  end
  local.get $0
  local.get $4
  i32.store offset=4
  local.get $2
  i32.const 2
  i32.shl
  local.get $3
  i32.add
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<i32>#pop (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 0
   i32.const 8
   i32.const 244
   i32.const 20
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  local.set $2
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $2
 )
 (func $~lib/array/Array<i32>#concat (; 18 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  local.get $1
  i32.load offset=4
  i32.const 0
  local.get $1
  select
  local.tee $4
  i32.add
  call $~lib/array/Array<i32>#constructor
  local.set $3
  local.get $2
  if
   local.get $3
   i32.load
   i32.const 8
   i32.add
   local.get $0
   i32.load
   i32.const 8
   i32.add
   local.get $2
   i32.const 2
   i32.shl
   call $~lib/internal/memory/memmove
  end
  local.get $4
  if
   local.get $3
   i32.load
   i32.const 8
   i32.add
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   local.get $1
   i32.load
   i32.const 8
   i32.add
   local.get $4
   i32.const 2
   i32.shl
   call $~lib/internal/memory/memmove
  end
  local.get $3
 )
 (func $~lib/array/Array<i32>#copyWithin (; 19 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $5
  local.get $3
  local.get $0
  i32.load offset=4
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $4
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $1
   local.get $4
   local.get $1
   local.get $4
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $4
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $2
   local.get $4
   local.get $2
   local.get $4
   i32.lt_s
   select
  end
  local.set $2
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $4
   i32.add
   local.tee $3
   i32.const 0
   local.get $3
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $3
   local.get $4
   local.get $3
   local.get $4
   i32.lt_s
   select
  end
  local.get $2
  i32.sub
  local.tee $3
  local.get $4
  local.get $1
  i32.sub
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $4
  local.get $2
  local.get $1
  i32.lt_s
  local.tee $3
  if
   local.get $1
   local.get $2
   local.get $4
   i32.add
   i32.lt_s
   local.set $3
  end
  local.get $3
  if
   local.get $4
   i32.const 1
   i32.sub
   local.tee $3
   local.get $2
   i32.add
   local.set $2
   local.get $1
   local.get $3
   i32.add
   local.set $1
   loop $continue|0
    local.get $4
    if
     local.get $5
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.get $5
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=8
     i32.store offset=8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $continue|0
    end
   end
  else   
   local.get $5
   i32.const 8
   i32.add
   local.tee $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.get $2
   i32.const 2
   i32.shl
   local.get $3
   i32.add
   local.get $4
   i32.const 2
   i32.shl
   call $~lib/internal/memory/memmove
  end
  local.get $0
 )
 (func $~lib/array/Array<i32>#copyWithin|trampoline (; 20 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 2147483647
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/array/Array<i32>#copyWithin
 )
 (func $~lib/array/Array<i32>#unshift (; 21 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.const 1
  i32.add
  local.set $4
  local.get $3
  local.get $0
  i32.load
  local.tee $2
  i32.load
  i32.const 2
  i32.shr_u
  local.tee $5
  i32.ge_u
  if
   local.get $3
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 327
    i32.const 42
    call $~lib/env/abort
    unreachable
   end
   local.get $2
   local.get $4
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.tee $2
   i32.load
   i32.const 2
   i32.shr_u
   local.set $5
   local.get $0
   local.get $2
   i32.store
  end
  local.get $2
  i32.const 8
  i32.add
  local.tee $3
  i32.const 4
  i32.add
  local.get $3
  local.get $5
  i32.const 1
  i32.sub
  i32.const 2
  i32.shl
  call $~lib/internal/memory/memmove
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=4
 )
 (func $~lib/array/Array<i32>#shift (; 22 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 0
   i32.const 8
   i32.const 299
   i32.const 20
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load
  local.tee $2
  i32.load offset=8
  local.set $3
  local.get $2
  i32.const 8
  i32.add
  local.tee $4
  i32.const 4
  i32.add
  local.set $5
  local.get $4
  local.get $5
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  call $~lib/internal/memory/memmove
  local.get $2
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.const 0
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $3
 )
 (func $~lib/array/Array<i32>#reverse (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.set $0
  loop $repeat|0
   local.get $1
   local.get $0
   i32.lt_s
   if
    local.get $1
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.tee $2
    i32.load offset=8
    local.set $4
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.tee $2
    i32.load offset=8
    i32.store offset=8
    local.get $2
    local.get $4
    i32.store offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $repeat|0
   end
  end
 )
 (func $~lib/array/Array<i32>#indexOf (; 24 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.eqz
  local.tee $4
  i32.eqz
  if
   local.get $2
   local.get $3
   i32.ge_s
   local.set $4
  end
  local.get $4
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
   local.set $2
  end
  local.get $0
  i32.load
  local.set $0
  loop $continue|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
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
  i32.const -1
 )
 (func $~lib/array/Array<i32>#splice (; 25 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $5
  local.get $2
  local.get $0
  i32.load offset=4
  local.tee $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.tee $1
  i32.sub
  local.tee $4
  local.get $2
  local.get $4
  i32.lt_s
  select
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  call $~lib/array/Array<i32>#constructor
  local.tee $4
  i32.load
  i32.const 8
  i32.add
  local.get $5
  i32.const 8
  i32.add
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.tee $6
  local.get $2
  i32.const 2
  i32.shl
  call $~lib/internal/memory/memmove
  local.get $1
  local.get $2
  i32.add
  local.tee $1
  local.get $3
  i32.ne
  if
   local.get $6
   local.get $5
   i32.const 8
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   local.get $1
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/internal/memory/memmove
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  i32.store offset=4
  local.get $4
 )
 (func $~lib/array/Array<i32>#splice|trampoline (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
   i32.const 2147483647
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#splice
 )
 (func $~lib/array/Array<i32>#__set (; 27 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load
  local.tee $3
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   local.get $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 107
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.tee $3
   i32.store
   local.get $0
   local.get $4
   i32.store offset=4
  end
  local.get $3
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store offset=8
 )
 (func $start:std/array~anonymous|0 (; 28 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
 )
 (func $~lib/array/Array<i32>#findIndex (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $3
    local.get $0
    i32.load offset=4
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_s
    select
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $2
     return
    else     
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
    unreachable
   end
  end
  i32.const -1
 )
 (func $start:std/array~anonymous|1 (; 30 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.eq
 )
 (func $start:std/array~anonymous|2 (; 31 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|3 (; 32 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|5 (; 33 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|6 (; 34 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#every (; 35 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $3
    local.get $0
    i32.load offset=4
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_s
    select
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    else     
     i32.const 0
     return
    end
    unreachable
   end
  end
  i32.const 1
 )
 (func $start:std/array~anonymous|7 (; 36 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.le_s
 )
 (func $start:std/array~anonymous|8 (; 37 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|9 (; 38 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|10 (; 39 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.lt_s
 )
 (func $start:std/array~anonymous|11 (; 40 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 3
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#some (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $3
    local.get $0
    i32.load offset=4
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_s
    select
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    if
     i32.const 1
     return
    else     
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $start:std/array~anonymous|12 (; 42 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const -1
  i32.le_s
 )
 (func $start:std/array~anonymous|13 (; 43 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|14 (; 44 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|15 (; 45 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.gt_s
 )
 (func $start:std/array~anonymous|16 (; 46 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $~lib/array/Array<i32>#forEach (; 47 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $break|0
   local.get $0
   i32.load offset=4
   local.set $3
   loop $repeat|0
    local.get $2
    local.get $3
    local.get $0
    i32.load offset=4
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_s
    select
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
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
 (func $start:std/array~anonymous|17 (; 48 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|19 (; 49 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|20 (; 50 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   loop $repeat|0
    block $break|0
     local.get $3
     i32.const 4
     i32.ge_s
     br_if $break|0
     local.get $2
     call $~lib/array/Array<i32>#pop
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $repeat|0
    end
   end
   i32.const 0
   local.set $3
   loop $repeat|1
    block $break|1
     local.get $3
     i32.const 100
     i32.ge_s
     br_if $break|1
     local.get $2
     local.get $3
     i32.const 100
     i32.add
     call $~lib/array/Array<i32>#push
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $repeat|1
    end
   end
   i32.const 0
   local.set $3
   loop $repeat|2
    block $break|2
     local.get $3
     i32.const 100
     i32.ge_s
     br_if $break|2
     local.get $2
     call $~lib/array/Array<i32>#pop
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $repeat|2
    end
   end
   i32.const 0
   local.set $3
   loop $repeat|3
    block $break|3
     local.get $3
     i32.const 100
     i32.ge_s
     br_if $break|3
     local.get $2
     local.get $3
     i32.const 200
     i32.add
     call $~lib/array/Array<i32>#push
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $repeat|3
    end
   end
  end
  local.get $1
  i32.const 2
  i32.eq
  if
   local.get $0
   i32.const 202
   i32.ne
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
 (func $start:std/array~anonymous|21 (; 51 ;) (type $FUNCSIG$fiii) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  f32.convert_i32_s
 )
 (func $~lib/array/Array<i32>#map<f32> (; 52 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.tee $3
  call $~lib/array/Array<i32>#constructor
  local.tee $4
  i32.load
  local.set $5
  loop $repeat|0
   local.get $1
   local.get $3
   local.get $0
   i32.load offset=4
   local.tee $2
   local.get $3
   local.get $2
   i32.lt_s
   select
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 2
    i32.shl
    local.tee $2
    local.get $5
    i32.add
    local.get $0
    i32.load
    local.get $2
    i32.add
    i32.load offset=8
    local.get $1
    local.get $0
    i32.const 22
    call_indirect (type $FUNCSIG$fiii)
    f32.store offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $4
 )
 (func $start:std/array~anonymous|22 (; 53 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $~lib/array/Array<i32>#map<i32> (; 54 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.tee $4
  call $~lib/array/Array<i32>#constructor
  i32.load
  local.set $5
  loop $repeat|0
   local.get $2
   local.get $4
   local.get $0
   i32.load offset=4
   local.tee $3
   local.get $4
   local.get $3
   i32.lt_s
   select
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 2
    i32.shl
    local.tee $3
    local.get $5
    i32.add
    local.get $0
    i32.load
    local.get $3
    i32.add
    i32.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    i32.store offset=8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
 )
 (func $start:std/array~anonymous|23 (; 55 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|24 (; 56 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|25 (; 57 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#filter (; 58 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $5
    local.get $0
    i32.load offset=4
    local.tee $3
    local.get $5
    local.get $3
    i32.lt_s
    select
    i32.ge_s
    br_if $break|0
    local.get $0
    i32.load
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    local.set $3
    i32.const 3
    global.set $~lib/argc
    local.get $3
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $4
     local.get $3
     call $~lib/array/Array<i32>#push
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $4
 )
 (func $start:std/array~anonymous|26 (; 59 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|27 (; 60 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|28 (; 61 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|29 (; 62 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 63 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  loop $repeat|0
   block $break|0
    local.get $3
    local.get $4
    local.get $0
    i32.load offset=4
    local.tee $5
    local.get $4
    local.get $5
    i32.lt_s
    select
    i32.ge_s
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $0
    i32.load
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    local.get $3
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $2
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $start:std/array~anonymous|31 (; 64 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  i32.eqz
  if
   local.get $1
   i32.const 2
   i32.gt_s
   local.set $0
  end
  local.get $0
 )
 (func $start:std/array~anonymous|32 (; 65 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  i32.eqz
  if
   local.get $1
   i32.const 100
   i32.gt_s
   local.set $0
  end
  local.get $0
 )
 (func $start:std/array~anonymous|33 (; 66 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|35 (; 67 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 68 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $3
    i32.const 0
    i32.lt_s
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $0
    i32.load
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    local.get $3
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $2
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $~lib/math/splitMix32 (; 69 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1831565813
  i32.add
  local.tee $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  local.get $0
  i32.const 1
  i32.or
  i32.mul
  local.tee $0
  local.get $0
  i32.const 61
  i32.or
  local.get $0
  i32.const 7
  i32.shr_u
  local.get $0
  i32.xor
  i32.mul
  local.get $0
  i32.add
  i32.xor
  local.tee $0
  local.get $0
  i32.const 14
  i32.shr_u
  i32.xor
 )
 (func $~lib/math/NativeMath.seedRandom (; 70 ;) (type $FUNCSIG$vj) (param $0 i64)
  (local $1 i64)
  local.get $0
  i64.eqz
  if
   i32.const 0
   i32.const 2896
   i32.const 978
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/math/random_seeded
  local.get $0
  i64.const 33
  i64.shr_u
  local.get $0
  i64.xor
  i64.const -49064778989728563
  i64.mul
  local.tee $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -4265267296055464877
  i64.mul
  local.tee $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  local.tee $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -49064778989728563
  i64.mul
  local.tee $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -4265267296055464877
  i64.mul
  local.tee $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $0
  i32.wrap_i64
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state0_32
  global.get $~lib/math/random_state0_32
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state1_32
 )
 (func $~lib/internal/sort/insertionSort<f32> (; 71 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 i32)
  loop $repeat|0
   local.get $4
   local.get $1
   i32.ge_s
   i32.eqz
   if
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    f32.load offset=8
    local.set $5
    local.get $4
    i32.const 1
    i32.sub
    local.set $3
    loop $continue|1
     local.get $3
     i32.const 0
     i32.ge_s
     if
      block $break|1
       local.get $3
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       f32.load offset=8
       local.set $6
       i32.const 2
       global.set $~lib/argc
       local.get $5
       local.get $6
       local.get $2
       call_indirect (type $FUNCSIG$iff)
       i32.const 0
       i32.ge_s
       br_if $break|1
       local.get $3
       local.tee $7
       i32.const 1
       i32.sub
       local.set $3
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       local.get $6
       f32.store offset=8
       br $continue|1
      end
     end
    end
    local.get $3
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $5
    f32.store offset=8
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $repeat|0
   end
  end
 )
 (func $~lib/internal/sort/weakHeapSort<f32> (; 72 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.tee $3
  call $~lib/allocator/arena/__memory_allocate
  local.tee $7
  i32.const 0
  local.get $3
  call $~lib/internal/memory/memset
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $repeat|0
   local.get $4
   i32.const 0
   i32.gt_s
   if
    local.get $4
    local.set $3
    loop $continue|1
     local.get $3
     i32.const 1
     i32.and
     local.get $3
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     local.get $3
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.eq
     if
      local.get $3
      i32.const 1
      i32.shr_s
      local.set $3
      br $continue|1
     end
    end
    local.get $3
    i32.const 1
    i32.shr_s
    local.tee $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    f32.load offset=8
    local.set $5
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    f32.load offset=8
    local.set $6
    i32.const 2
    global.set $~lib/argc
    local.get $5
    local.get $6
    local.get $2
    call_indirect (type $FUNCSIG$iff)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     local.tee $8
     local.get $8
     i32.load
     i32.const 1
     local.get $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $5
     f32.store offset=8
     local.get $3
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $6
     f32.store offset=8
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $repeat|0
   end
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $repeat|2
   local.get $4
   i32.const 2
   i32.ge_s
   if
    local.get $0
    f32.load offset=8
    local.set $5
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    f32.load offset=8
    f32.store offset=8
    local.get $1
    local.get $5
    f32.store offset=8
    i32.const 1
    local.set $1
    loop $continue|3
     local.get $1
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     local.get $1
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.tee $3
     local.get $4
     i32.lt_s
     if
      local.get $3
      local.set $1
      br $continue|3
     end
    end
    loop $continue|4
     local.get $1
     i32.const 0
     i32.gt_s
     if
      local.get $0
      f32.load offset=8
      local.set $5
      local.get $1
      i32.const 2
      i32.shl
      local.get $0
      i32.add
      f32.load offset=8
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $5
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iff)
      i32.const 0
      i32.lt_s
      if
       local.get $1
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       local.get $7
       i32.add
       local.tee $3
       local.get $3
       i32.load
       i32.const 1
       local.get $1
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $1
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       local.get $5
       f32.store offset=8
       local.get $0
       local.get $6
       f32.store offset=8
      end
      local.get $1
      i32.const 1
      i32.shr_s
      local.set $1
      br $continue|4
     end
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $repeat|2
   end
  end
  local.get $0
  i32.const 4
  i32.add
  local.tee $1
  f32.load offset=8
  local.set $5
  local.get $1
  local.get $0
  f32.load offset=8
  f32.store offset=8
  local.get $0
  local.get $5
  f32.store offset=8
 )
 (func $~lib/array/Array<f32>#sort (; 73 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.le_s
  if
   return
  end
  local.get $0
  i32.load
  local.set $0
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $0
   i32.const 4
   i32.add
   f32.load offset=8
   local.set $3
   local.get $0
   f32.load offset=8
   local.set $4
   i32.const 2
   global.set $~lib/argc
   local.get $3
   local.get $4
   local.get $1
   call_indirect (type $FUNCSIG$iff)
   i32.const 0
   i32.lt_s
   if
    local.get $0
    i32.const 4
    i32.add
    local.get $4
    f32.store offset=8
    local.get $0
    local.get $3
    f32.store offset=8
   end
   return
  end
  local.get $2
  i32.const 256
  i32.lt_s
  if
   local.get $0
   local.get $2
   local.get $1
   call $~lib/internal/sort/insertionSort<f32>
  else   
   local.get $0
   local.get $2
   local.get $1
   call $~lib/internal/sort/weakHeapSort<f32>
  end
 )
 (func $~lib/internal/sort/COMPARATOR<f32>~anonymous|0 (; 74 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.reinterpret_f32
  local.tee $2
  local.get $2
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  i32.xor
  local.tee $2
  local.get $1
  i32.reinterpret_f32
  local.tee $3
  local.get $3
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  i32.xor
  local.tee $3
  i32.gt_s
  local.get $2
  local.get $3
  i32.lt_s
  i32.sub
 )
 (func $std/array/isArraysEqual<f32> (; 75 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.tee $5
  i32.const 3244
  i32.load
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 3240
  i32.eq
  if
   i32.const 1
   return
  end
  loop $repeat|0
   local.get $1
   local.get $5
   i32.lt_s
   if
    local.get $1
    local.tee $2
    local.get $0
    i32.load
    local.tee $3
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result f32)
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     f32.load offset=8
    else     
     unreachable
    end
    local.tee $4
    local.get $4
    f32.ne
    local.get $1
    i32.const 3240
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result f32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     f32.load offset=8
    else     
     unreachable
    end
    local.tee $4
    local.get $4
    f32.ne
    i32.ne
    if
     local.get $1
     local.tee $2
     local.get $0
     i32.load
     local.tee $3
     i32.load
     i32.const 2
     i32.shr_u
     i32.lt_u
     if (result f32)
      local.get $2
      i32.const 2
      i32.shl
      local.get $3
      i32.add
      f32.load offset=8
     else      
      unreachable
     end
     local.get $1
     i32.const 3240
     i32.load
     local.tee $2
     i32.load
     i32.const 2
     i32.shr_u
     i32.lt_u
     if (result f32)
      local.get $1
      i32.const 2
      i32.shl
      local.get $2
      i32.add
      f32.load offset=8
     else      
      unreachable
     end
     f32.ne
     if
      i32.const 0
      return
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  i32.const 1
 )
 (func $~lib/internal/sort/insertionSort<f64> (; 76 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  loop $repeat|0
   local.get $4
   local.get $1
   i32.ge_s
   i32.eqz
   if
    local.get $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load offset=8
    local.set $5
    local.get $4
    i32.const 1
    i32.sub
    local.set $3
    loop $continue|1
     local.get $3
     i32.const 0
     i32.ge_s
     if
      block $break|1
       local.get $3
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       f64.load offset=8
       local.set $6
       i32.const 2
       global.set $~lib/argc
       local.get $5
       local.get $6
       local.get $2
       call_indirect (type $FUNCSIG$idd)
       i32.const 0
       i32.ge_s
       br_if $break|1
       local.get $3
       local.tee $7
       i32.const 1
       i32.sub
       local.set $3
       local.get $7
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       local.get $6
       f64.store offset=8
       br $continue|1
      end
     end
    end
    local.get $3
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $5
    f64.store offset=8
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $repeat|0
   end
  end
 )
 (func $~lib/internal/sort/weakHeapSort<f64> (; 77 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.tee $3
  call $~lib/allocator/arena/__memory_allocate
  local.tee $7
  i32.const 0
  local.get $3
  call $~lib/internal/memory/memset
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $repeat|0
   local.get $4
   i32.const 0
   i32.gt_s
   if
    local.get $4
    local.set $3
    loop $continue|1
     local.get $3
     i32.const 1
     i32.and
     local.get $3
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     local.get $3
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.eq
     if
      local.get $3
      i32.const 1
      i32.shr_s
      local.set $3
      br $continue|1
     end
    end
    local.get $3
    i32.const 1
    i32.shr_s
    local.tee $3
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load offset=8
    local.set $5
    local.get $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load offset=8
    local.set $6
    i32.const 2
    global.set $~lib/argc
    local.get $5
    local.get $6
    local.get $2
    call_indirect (type $FUNCSIG$idd)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     local.tee $8
     local.get $8
     i32.load
     i32.const 1
     local.get $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $4
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $5
     f64.store offset=8
     local.get $3
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $6
     f64.store offset=8
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $repeat|0
   end
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $repeat|2
   local.get $4
   i32.const 2
   i32.ge_s
   if
    local.get $0
    f64.load offset=8
    local.set $5
    local.get $0
    local.get $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    f64.load offset=8
    f64.store offset=8
    local.get $1
    local.get $5
    f64.store offset=8
    i32.const 1
    local.set $1
    loop $continue|3
     local.get $1
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     local.get $1
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.tee $3
     local.get $4
     i32.lt_s
     if
      local.get $3
      local.set $1
      br $continue|3
     end
    end
    loop $continue|4
     local.get $1
     i32.const 0
     i32.gt_s
     if
      local.get $0
      f64.load offset=8
      local.set $5
      local.get $1
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      f64.load offset=8
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $5
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      i32.const 0
      i32.lt_s
      if
       local.get $1
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       local.get $7
       i32.add
       local.tee $3
       local.get $3
       i32.load
       i32.const 1
       local.get $1
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $1
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       local.get $5
       f64.store offset=8
       local.get $0
       local.get $6
       f64.store offset=8
      end
      local.get $1
      i32.const 1
      i32.shr_s
      local.set $1
      br $continue|4
     end
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $repeat|2
   end
  end
  local.get $0
  i32.const 8
  i32.add
  local.tee $1
  f64.load offset=8
  local.set $5
  local.get $1
  local.get $0
  f64.load offset=8
  f64.store offset=8
  local.get $0
  local.get $5
  f64.store offset=8
 )
 (func $~lib/array/Array<f64>#sort (; 78 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.le_s
  if
   return
  end
  local.get $0
  i32.load
  local.set $0
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $0
   i32.const 8
   i32.add
   f64.load offset=8
   local.set $3
   local.get $0
   f64.load offset=8
   local.set $4
   i32.const 2
   global.set $~lib/argc
   local.get $3
   local.get $4
   local.get $1
   call_indirect (type $FUNCSIG$idd)
   i32.const 0
   i32.lt_s
   if
    local.get $0
    i32.const 8
    i32.add
    local.get $4
    f64.store offset=8
    local.get $0
    local.get $3
    f64.store offset=8
   end
   return
  end
  local.get $2
  i32.const 256
  i32.lt_s
  if
   local.get $0
   local.get $2
   local.get $1
   call $~lib/internal/sort/insertionSort<f64>
  else   
   local.get $0
   local.get $2
   local.get $1
   call $~lib/internal/sort/weakHeapSort<f64>
  end
 )
 (func $~lib/internal/sort/COMPARATOR<f64>~anonymous|0 (; 79 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  local.get $2
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.tee $2
  local.get $1
  i64.reinterpret_f64
  local.tee $3
  local.get $3
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.tee $3
  i64.gt_s
  local.get $2
  local.get $3
  i64.lt_s
  i32.sub
 )
 (func $std/array/isArraysEqual<f64> (; 80 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.tee $5
  i32.const 3516
  i32.load
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 3512
  i32.eq
  if
   i32.const 1
   return
  end
  loop $repeat|0
   local.get $1
   local.get $5
   i32.lt_s
   if
    local.get $1
    local.tee $2
    local.get $0
    i32.load
    local.tee $3
    i32.load
    i32.const 3
    i32.shr_u
    i32.lt_u
    if (result f64)
     local.get $2
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     f64.load offset=8
    else     
     unreachable
    end
    local.tee $4
    local.get $4
    f64.ne
    local.get $1
    i32.const 3512
    i32.load
    local.tee $2
    i32.load
    i32.const 3
    i32.shr_u
    i32.lt_u
    if (result f64)
     local.get $1
     i32.const 3
     i32.shl
     local.get $2
     i32.add
     f64.load offset=8
    else     
     unreachable
    end
    local.tee $4
    local.get $4
    f64.ne
    i32.ne
    if
     local.get $1
     local.tee $2
     local.get $0
     i32.load
     local.tee $3
     i32.load
     i32.const 3
     i32.shr_u
     i32.lt_u
     if (result f64)
      local.get $2
      i32.const 3
      i32.shl
      local.get $3
      i32.add
      f64.load offset=8
     else      
      unreachable
     end
     local.get $1
     i32.const 3512
     i32.load
     local.tee $2
     i32.load
     i32.const 3
     i32.shr_u
     i32.lt_u
     if (result f64)
      local.get $1
      i32.const 3
      i32.shl
      local.get $2
      i32.add
      f64.load offset=8
     else      
      unreachable
     end
     f64.ne
     if
      i32.const 0
      return
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  i32.const 1
 )
 (func $~lib/internal/sort/insertionSort<i32> (; 81 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  loop $repeat|0
   local.get $4
   local.get $1
   i32.ge_s
   i32.eqz
   if
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=8
    local.set $5
    local.get $4
    i32.const 1
    i32.sub
    local.set $3
    loop $continue|1
     local.get $3
     i32.const 0
     i32.ge_s
     if
      block $break|1
       local.get $3
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       i32.load offset=8
       local.set $6
       i32.const 2
       global.set $~lib/argc
       local.get $5
       local.get $6
       local.get $2
       call_indirect (type $FUNCSIG$iii)
       i32.const 0
       i32.ge_s
       br_if $break|1
       local.get $3
       local.tee $7
       i32.const 1
       i32.sub
       local.set $3
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       local.get $6
       i32.store offset=8
       br $continue|1
      end
     end
    end
    local.get $3
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $5
    i32.store offset=8
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $repeat|0
   end
  end
 )
 (func $~lib/internal/sort/weakHeapSort<i32> (; 82 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.tee $3
  call $~lib/allocator/arena/__memory_allocate
  local.tee $6
  i32.const 0
  local.get $3
  call $~lib/internal/memory/memset
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $repeat|0
   local.get $4
   i32.const 0
   i32.gt_s
   if
    local.get $4
    local.set $3
    loop $continue|1
     local.get $3
     i32.const 1
     i32.and
     local.get $3
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $6
     i32.add
     i32.load
     local.get $3
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.eq
     if
      local.get $3
      i32.const 1
      i32.shr_s
      local.set $3
      br $continue|1
     end
    end
    local.get $3
    i32.const 1
    i32.shr_s
    local.tee $7
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=8
    local.set $3
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=8
    local.set $5
    i32.const 2
    global.set $~lib/argc
    local.get $3
    local.get $5
    local.get $2
    call_indirect (type $FUNCSIG$iii)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $6
     i32.add
     local.tee $8
     local.get $8
     i32.load
     i32.const 1
     local.get $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $3
     i32.store offset=8
     local.get $7
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $5
     i32.store offset=8
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $repeat|0
   end
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $repeat|2
   local.get $4
   i32.const 2
   i32.ge_s
   if
    local.get $0
    i32.load offset=8
    local.set $1
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $3
    i32.load offset=8
    i32.store offset=8
    local.get $3
    local.get $1
    i32.store offset=8
    i32.const 1
    local.set $3
    loop $continue|3
     local.get $3
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $6
     i32.add
     i32.load
     local.get $3
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.tee $1
     local.get $4
     i32.lt_s
     if
      local.get $1
      local.set $3
      br $continue|3
     end
    end
    loop $continue|4
     local.get $3
     i32.const 0
     i32.gt_s
     if
      local.get $0
      i32.load offset=8
      local.set $1
      local.get $3
      i32.const 2
      i32.shl
      local.get $0
      i32.add
      i32.load offset=8
      local.set $5
      i32.const 2
      global.set $~lib/argc
      local.get $1
      local.get $5
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      i32.const 0
      i32.lt_s
      if
       local.get $3
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       local.get $6
       i32.add
       local.tee $7
       local.get $7
       i32.load
       i32.const 1
       local.get $3
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $3
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       local.get $1
       i32.store offset=8
       local.get $0
       local.get $5
       i32.store offset=8
      end
      local.get $3
      i32.const 1
      i32.shr_s
      local.set $3
      br $continue|4
     end
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $repeat|2
   end
  end
  local.get $0
  i32.const 4
  i32.add
  local.tee $1
  i32.load offset=8
  local.set $2
  local.get $1
  local.get $0
  i32.load offset=8
  i32.store offset=8
  local.get $0
  local.get $2
  i32.store offset=8
 )
 (func $~lib/array/Array<i32>#sort (; 83 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   return
  end
  local.get $0
  i32.load
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.const 4
   i32.add
   i32.load offset=8
   local.set $2
   local.get $3
   i32.load offset=8
   local.set $4
   i32.const 2
   global.set $~lib/argc
   local.get $2
   local.get $4
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   i32.const 0
   i32.lt_s
   if
    local.get $3
    i32.const 4
    i32.add
    local.get $4
    i32.store offset=8
    local.get $3
    local.get $2
    i32.store offset=8
   end
   local.get $0
   return
  end
  local.get $2
  i32.const 256
  i32.lt_s
  if
   local.get $3
   local.get $2
   local.get $1
   call $~lib/internal/sort/insertionSort<i32>
  else   
   local.get $3
   local.get $2
   local.get $1
   call $~lib/internal/sort/weakHeapSort<i32>
  end
  local.get $0
 )
 (func $~lib/internal/sort/COMPARATOR<i32>~anonymous|0 (; 84 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/internal/sort/COMPARATOR<u32>~anonymous|0 (; 85 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $std/array/createReverseOrderedArray (; 86 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/array/Array<i32>#constructor
  local.set $1
  i32.const 0
  local.set $0
  loop $repeat|0
   block $break|0
    local.get $0
    local.get $1
    i32.load offset=4
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $0
    local.get $1
    i32.load offset=4
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $1
 )
 (func $~lib/math/NativeMath.random (; 87 ;) (type $FUNCSIG$d) (result f64)
  (local $0 i64)
  (local $1 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   i32.const 0
   i32.const 2896
   i32.const 987
   i32.const 24
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/math/random_state0_64
  local.set $0
  global.get $~lib/math/random_state1_64
  local.tee $1
  global.set $~lib/math/random_state0_64
  local.get $0
  i64.const 23
  i64.shl
  local.get $0
  i64.xor
  local.tee $0
  local.get $0
  i64.const 17
  i64.shr_u
  i64.xor
  local.get $1
  i64.xor
  local.get $1
  i64.const 26
  i64.shr_u
  i64.xor
  local.tee $0
  global.set $~lib/math/random_state1_64
  local.get $0
  local.get $1
  i64.add
  i64.const 4503599627370495
  i64.and
  i64.const 4607182418800017408
  i64.or
  f64.reinterpret_i64
  f64.const 1
  f64.sub
 )
 (func $std/array/createRandomOrderedArray (; 88 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/array/Array<i32>#constructor
  local.set $0
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $0
    i32.load offset=4
    i32.ge_s
    br_if $break|0
    local.get $0
    local.get $1
    call $~lib/math/NativeMath.random
    local.get $0
    i32.load offset=4
    f64.convert_i32_s
    f64.mul
    i32.trunc_f64_s
    call $~lib/array/Array<i32>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $std/array/isSorted<i32> (; 89 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $4
  loop $repeat|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 2
    global.set $~lib/argc
    local.get $2
    i32.const 1
    i32.sub
    local.tee $3
    local.get $0
    i32.load
    local.tee $5
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    local.get $2
    local.get $0
    i32.load
    local.tee $3
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    local.get $1
    call_indirect (type $FUNCSIG$iii)
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     return
    else     
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
    unreachable
   end
  end
  i32.const 1
 )
 (func $std/array/assertSorted<i32> (; 90 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $std/array/assertSortedDefault<i32> (; 91 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 48
  call $std/array/assertSorted<i32>
 )
 (func $start:std/array~anonymous|44 (; 92 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $std/array/createReverseOrderedNestedArray (; 93 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 512
  call $~lib/array/Array<i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   local.get $1
   i32.load offset=4
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 1
    call $~lib/array/Array<i32>#constructor
    call $~lib/array/Array<i32>#__set
    local.get $0
    local.get $1
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 0
    local.get $1
    i32.load offset=4
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $1
 )
 (func $start:std/array~anonymous|47 (; 94 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 0
  local.get $1
  i32.load
  local.tee $1
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $1
   i32.load offset=8
  else   
   unreachable
  end
  i32.sub
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#sort (; 95 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   return
  end
  local.get $0
  i32.load
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.const 4
   i32.add
   i32.load offset=8
   local.set $2
   local.get $3
   i32.load offset=8
   local.set $4
   i32.const 2
   global.set $~lib/argc
   local.get $2
   local.get $4
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   i32.const 0
   i32.lt_s
   if
    local.get $3
    i32.const 4
    i32.add
    local.get $4
    i32.store offset=8
    local.get $3
    local.get $2
    i32.store offset=8
   end
   local.get $0
   return
  end
  local.get $3
  local.get $2
  local.get $1
  call $~lib/internal/sort/insertionSort<i32>
  local.get $0
 )
 (func $std/array/assertSorted<~lib/array/Array<i32>> (; 96 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#sort
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
 (func $std/array/createReverseOrderedElementsArray (; 97 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 512
  call $~lib/array/Array<i32>#constructor
  local.set $0
  loop $repeat|0
   local.get $1
   local.get $0
   i32.load offset=4
   i32.lt_s
   if
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.sub
    local.get $1
    i32.sub
    local.set $2
    i32.const 4
    call $~lib/allocator/arena/__memory_allocate
    local.tee $3
    local.get $2
    i32.store
    local.get $0
    local.get $1
    local.get $3
    call $~lib/array/Array<i32>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $start:std/array~anonymous|48 (; 98 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
 )
 (func $~lib/internal/string/compareUnsafe (; 99 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  loop $continue|0
   local.get $2
   if (result i32)
    local.get $0
    i32.load16_u offset=4
    local.get $1
    i32.load16_u offset=4
    i32.sub
    local.tee $3
    i32.eqz
   else    
    local.get $2
   end
   if
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $continue|0
   end
  end
  local.get $3
 )
 (func $~lib/internal/sort/COMPARATOR<~lib/string/String>~anonymous|0 (; 100 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.eq
  local.tee $2
  i32.eqz
  if
   local.get $0
   i32.eqz
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   local.get $1
   i32.eqz
   local.set $2
  end
  local.get $2
  if
   i32.const 0
   return
  end
  local.get $1
  i32.load
  local.set $3
  local.get $0
  i32.load
  local.tee $4
  i32.eqz
  local.tee $2
  if
   local.get $3
   i32.eqz
   local.set $2
  end
  local.get $2
  if
   i32.const 0
   return
  end
  local.get $4
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $3
  i32.eqz
  if
   i32.const 1
   return
  end
  local.get $0
  local.get $1
  local.get $4
  local.get $3
  local.get $4
  local.get $3
  i32.lt_s
  select
  call $~lib/internal/string/compareUnsafe
 )
 (func $std/array/assertSorted<~lib/string/String>|trampoline (; 101 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
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
   i32.const 55
   local.set $1
  end
  local.get $0
  local.get $1
  call $std/array/assertSorted<~lib/array/Array<i32>>
 )
 (func $~lib/string/String.__eq (; 102 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.eqz
  local.tee $2
  i32.eqz
  if
   local.get $1
   i32.eqz
   local.set $2
  end
  local.get $2
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.tee $2
  local.get $1
  i32.load
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/internal/string/compareUnsafe
  i32.eqz
 )
 (func $std/array/isArraysEqual<~lib/string/String> (; 103 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.tee $4
  local.get $1
  i32.load offset=4
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
  loop $repeat|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.load
    local.tee $3
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    local.get $2
    local.get $1
    i32.load
    local.tee $3
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    call $~lib/string/String.__eq
    if
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    else     
     i32.const 0
     return
    end
    unreachable
   end
  end
  i32.const 1
 )
 (func $~lib/internal/string/allocateUnsafe (; 104 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  i32.gt_s
  local.tee $1
  if
   local.get $0
   i32.const 536870910
   i32.le_s
   local.set $1
  end
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 4088
   i32.const 14
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.shl
  i32.const 4
  i32.add
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/string/String#charAt (; 105 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 2928
  i32.load
  i32.ge_u
  if
   i32.const 3904
   return
  end
  i32.const 1
  call $~lib/internal/string/allocateUnsafe
  local.tee $1
  local.get $0
  i32.const 1
  i32.shl
  i32.const 2928
  i32.add
  i32.load16_u offset=4
  i32.store16 offset=4
  local.get $1
 )
 (func $~lib/internal/string/copyUnsafe (; 106 ;) (type $FUNCSIG$viiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  i32.const 4
  i32.add
  local.get $3
  i32.const 1
  i32.shl
  local.get $2
  i32.add
  i32.const 4
  i32.add
  local.get $4
  i32.const 1
  i32.shl
  call $~lib/internal/memory/memmove
 )
 (func $~lib/string/String#concat (; 107 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4056
   i32.const 110
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load
  local.tee $3
  local.get $1
  i32.const 4144
  local.get $1
  select
  local.tee $1
  i32.load
  local.tee $4
  i32.add
  local.tee $2
  i32.eqz
  if
   i32.const 3904
   return
  end
  local.get $2
  call $~lib/internal/string/allocateUnsafe
  local.tee $2
  i32.const 0
  local.get $0
  i32.const 0
  local.get $3
  call $~lib/internal/string/copyUnsafe
  local.get $2
  local.get $3
  local.get $1
  i32.const 0
  local.get $4
  call $~lib/internal/string/copyUnsafe
  local.get $2
 )
 (func $~lib/string/String.__concat (; 108 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 4144
  local.get $0
  select
  local.get $1
  call $~lib/string/String#concat
 )
 (func $std/array/createRandomString (; 109 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 3904
  local.set $1
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $0
    i32.ge_s
    br_if $break|0
    local.get $1
    call $~lib/math/NativeMath.random
    i32.const 2928
    i32.load
    f64.convert_i32_s
    f64.mul
    f64.floor
    i32.trunc_f64_s
    call $~lib/string/String#charAt
    call $~lib/string/String.__concat
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $1
 )
 (func $std/array/createRandomStringArray (; 110 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 400
  call $~lib/array/Array<i32>#constructor
  local.set $1
  loop $repeat|0
   local.get $0
   local.get $1
   i32.load offset=4
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/math/NativeMath.random
    f64.const 32
    f64.mul
    i32.trunc_f64_s
    call $std/array/createRandomString
    call $~lib/array/Array<i32>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $1
 )
 (func $~lib/string/String#substring (; 111 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4056
   i32.const 254
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load
  local.tee $3
  i32.const 0
  local.get $3
  i32.lt_s
  select
  local.tee $2
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  local.get $3
  local.get $1
  local.get $3
  i32.lt_s
  select
  local.tee $1
  local.get $2
  local.get $1
  i32.gt_s
  select
  local.tee $4
  local.get $2
  local.get $1
  local.get $2
  local.get $1
  i32.lt_s
  select
  local.tee $1
  i32.sub
  local.tee $3
  i32.eqz
  if
   i32.const 3904
   return
  end
  local.get $1
  i32.eqz
  local.tee $2
  if (result i32)
   local.get $0
   i32.load
   local.get $4
   i32.eq
  else   
   local.get $2
  end
  if
   local.get $0
   return
  end
  local.get $3
  call $~lib/internal/string/allocateUnsafe
  local.tee $2
  i32.const 0
  local.get $0
  local.get $1
  local.get $3
  call $~lib/internal/string/copyUnsafe
  local.get $2
 )
 (func $~lib/array/Array<bool>#join (; 112 ;) (type $FUNCSIG$i) (result i32)
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
  i32.const 4244
  i32.load
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  i32.const 4240
  i32.load
  local.set $2
  i32.const 4216
  i32.load
  local.tee $4
  i32.const 0
  i32.ne
  local.set $7
  local.get $1
  i32.eqz
  if
   i32.const 4184
   i32.const 4200
   local.get $2
   i32.load8_u offset=8
   select
   return
  end
  local.get $4
  i32.const 5
  i32.add
  local.get $1
  i32.mul
  i32.const 5
  i32.add
  local.tee $8
  call $~lib/internal/string/allocateUnsafe
  local.set $3
  loop $repeat|0
   local.get $5
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $5
    i32.add
    i32.load8_u offset=8
    i32.const 0
    i32.ne
    local.tee $9
    i32.eqz
    i32.const 4
    i32.add
    local.set $6
    local.get $3
    local.get $0
    i32.const 4184
    i32.const 4200
    local.get $9
    select
    i32.const 0
    local.get $6
    call $~lib/internal/string/copyUnsafe
    local.get $0
    local.get $6
    i32.add
    local.set $0
    local.get $7
    if
     local.get $3
     local.get $0
     i32.const 4216
     i32.const 0
     local.get $4
     call $~lib/internal/string/copyUnsafe
     local.get $0
     local.get $4
     i32.add
     local.set $0
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $repeat|0
   end
  end
  local.get $1
  local.get $2
  i32.add
  i32.load8_u offset=8
  i32.const 0
  i32.ne
  local.tee $1
  i32.eqz
  i32.const 4
  i32.add
  local.set $2
  local.get $3
  local.get $0
  i32.const 4184
  i32.const 4200
  local.get $1
  select
  i32.const 0
  local.get $2
  call $~lib/internal/string/copyUnsafe
  local.get $3
  local.set $1
  local.get $8
  local.get $0
  local.get $2
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $3
   local.get $0
   call $~lib/string/String#substring
   local.set $1
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 4088
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $1
 )
 (func $~lib/internal/number/decimalCount32 (; 113 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 100
   i32.lt_u
   if (result i32)
    i32.const 1
    i32.const 2
    local.get $0
    i32.const 10
    i32.lt_u
    select
   else    
    i32.const 3
    i32.const 4
    i32.const 5
    local.get $0
    i32.const 10000
    i32.lt_u
    select
    local.get $0
    i32.const 1000
    i32.lt_u
    select
   end
  else   
   local.get $0
   i32.const 10000000
   i32.lt_u
   if (result i32)
    i32.const 6
    i32.const 7
    local.get $0
    i32.const 1000000
    i32.lt_u
    select
   else    
    i32.const 8
    i32.const 9
    i32.const 10
    local.get $0
    i32.const 1000000000
    i32.lt_u
    select
    local.get $0
    i32.const 100000000
    i32.lt_u
    select
   end
  end
 )
 (func $~lib/internal/number/utoa32_lut (; 114 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 4832
  i32.load
  local.set $3
  loop $continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $3
    local.get $4
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u offset=8
    local.get $3
    local.get $4
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u offset=8
    i64.const 32
    i64.shl
    i64.or
    i64.store offset=4
    br $continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $4
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
   i32.store offset=4
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
   i32.store offset=4
  else   
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16 offset=4
  end
 )
 (func $~lib/internal/number/itoa32 (; 115 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4312
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.tee $1
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $0
  call $~lib/internal/number/decimalCount32
  local.get $1
  i32.add
  local.tee $3
  call $~lib/internal/string/allocateUnsafe
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/internal/number/utoa32_lut
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16 offset=4
  end
  local.get $2
 )
 (func $~lib/internal/number/itoa_stream<i32> (; 116 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $0
  local.get $2
  i32.eqz
  if
   local.get $0
   i32.const 48
   i32.store16 offset=4
   i32.const 1
   return
  end
  local.get $0
  block (result i32)
   local.get $2
   i32.const 0
   i32.lt_s
   local.tee $1
   if
    i32.const 0
    local.get $2
    i32.sub
    local.set $2
   end
   local.get $2
  end
  local.get $2
  call $~lib/internal/number/decimalCount32
  local.get $1
  i32.add
  local.tee $2
  call $~lib/internal/number/utoa32_lut
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16 offset=4
  end
  local.get $2
 )
 (func $~lib/array/Array<i32>#join (; 117 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  local.get $0
  i32.load
  local.set $4
  local.get $1
  i32.load
  local.tee $5
  i32.const 0
  i32.ne
  local.set $7
  local.get $3
  i32.eqz
  if
   local.get $4
   i32.load offset=8
   call $~lib/internal/number/itoa32
   return
  end
  local.get $5
  i32.const 11
  i32.add
  local.get $3
  i32.mul
  i32.const 11
  i32.add
  local.tee $8
  call $~lib/internal/string/allocateUnsafe
  local.set $0
  loop $repeat|0
   local.get $6
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    local.get $6
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load offset=8
    call $~lib/internal/number/itoa_stream<i32>
    local.get $2
    i32.add
    local.set $2
    local.get $7
    if
     local.get $0
     local.get $2
     local.get $1
     i32.const 0
     local.get $5
     call $~lib/internal/string/copyUnsafe
     local.get $2
     local.get $5
     i32.add
     local.set $2
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
   end
  end
  local.get $0
  local.set $1
  local.get $8
  local.get $0
  local.get $2
  local.get $3
  i32.const 2
  i32.shl
  local.get $4
  i32.add
  i32.load offset=8
  call $~lib/internal/number/itoa_stream<i32>
  local.get $2
  i32.add
  local.tee $2
  i32.gt_s
  if
   local.get $0
   local.get $2
   call $~lib/string/String#substring
   local.set $1
   local.get $0
   i32.eqz
   if
    i32.const 0
    i32.const 4088
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $1
 )
 (func $~lib/internal/number/utoa32 (; 118 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4312
   return
  end
  local.get $0
  call $~lib/internal/number/decimalCount32
  local.tee $1
  call $~lib/internal/string/allocateUnsafe
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/internal/number/utoa32_lut
  local.get $2
 )
 (func $~lib/internal/number/itoa_stream<u32> (; 119 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $0
  local.get $2
  i32.eqz
  if
   local.get $0
   i32.const 48
   i32.store16 offset=4
   i32.const 1
   return
  end
  local.get $0
  local.get $2
  local.get $2
  call $~lib/internal/number/decimalCount32
  local.tee $0
  call $~lib/internal/number/utoa32_lut
  local.get $0
 )
 (func $~lib/array/Array<u32>#join (; 120 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  local.get $0
  i32.load
  local.set $4
  local.get $1
  i32.load
  local.tee $5
  i32.const 0
  i32.ne
  local.set $7
  local.get $3
  i32.eqz
  if
   local.get $4
   i32.load offset=8
   call $~lib/internal/number/utoa32
   return
  end
  local.get $5
  i32.const 10
  i32.add
  local.get $3
  i32.mul
  i32.const 10
  i32.add
  local.tee $8
  call $~lib/internal/string/allocateUnsafe
  local.set $0
  loop $repeat|0
   local.get $6
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    local.get $6
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load offset=8
    call $~lib/internal/number/itoa_stream<u32>
    local.get $2
    i32.add
    local.set $2
    local.get $7
    if
     local.get $0
     local.get $2
     local.get $1
     i32.const 0
     local.get $5
     call $~lib/internal/string/copyUnsafe
     local.get $2
     local.get $5
     i32.add
     local.set $2
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
   end
  end
  local.get $0
  local.set $1
  local.get $8
  local.get $0
  local.get $2
  local.get $3
  i32.const 2
  i32.shl
  local.get $4
  i32.add
  i32.load offset=8
  call $~lib/internal/number/itoa_stream<u32>
  local.get $2
  i32.add
  local.tee $2
  i32.gt_s
  if
   local.get $0
   local.get $2
   call $~lib/string/String#substring
   local.set $1
   local.get $0
   i32.eqz
   if
    i32.const 0
    i32.const 4088
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $1
 )
 (func $~lib/internal/number/genDigits (; 121 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
  local.get $3
  local.get $1
  i64.sub
  local.set $10
  i64.const 1
  i32.const 0
  local.get $4
  i32.sub
  local.tee $12
  i64.extend_i32_s
  local.tee $1
  i64.shl
  local.tee $11
  i64.const 1
  i64.sub
  local.tee $14
  local.get $3
  i64.and
  local.set $9
  local.get $3
  local.get $1
  i64.shr_u
  i32.wrap_i64
  local.tee $7
  call $~lib/internal/number/decimalCount32
  local.set $4
  i32.const 6616
  i32.load
  local.set $13
  loop $continue|0
   local.get $4
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
               local.get $4
               i32.const 10
               i32.ne
               if
                local.get $4
                i32.const 9
                i32.eq
                br_if $case1|1
                block $tablify|0
                 local.get $4
                 i32.const 1
                 i32.sub
                 br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $tablify|0
                end
                br $case10|1
               end
               local.get $7
               i32.const 1000000000
               i32.div_u
               local.set $8
               local.get $7
               i32.const 1000000000
               i32.rem_u
               local.set $7
               br $break|1
              end
              local.get $7
              i32.const 100000000
              i32.div_u
              local.set $8
              local.get $7
              i32.const 100000000
              i32.rem_u
              local.set $7
              br $break|1
             end
             local.get $7
             i32.const 10000000
             i32.div_u
             local.set $8
             local.get $7
             i32.const 10000000
             i32.rem_u
             local.set $7
             br $break|1
            end
            local.get $7
            i32.const 1000000
            i32.div_u
            local.set $8
            local.get $7
            i32.const 1000000
            i32.rem_u
            local.set $7
            br $break|1
           end
           local.get $7
           i32.const 100000
           i32.div_u
           local.set $8
           local.get $7
           i32.const 100000
           i32.rem_u
           local.set $7
           br $break|1
          end
          local.get $7
          i32.const 10000
          i32.div_u
          local.set $8
          local.get $7
          i32.const 10000
          i32.rem_u
          local.set $7
          br $break|1
         end
         local.get $7
         i32.const 1000
         i32.div_u
         local.set $8
         local.get $7
         i32.const 1000
         i32.rem_u
         local.set $7
         br $break|1
        end
        local.get $7
        i32.const 100
        i32.div_u
        local.set $8
        local.get $7
        i32.const 100
        i32.rem_u
        local.set $7
        br $break|1
       end
       local.get $7
       i32.const 10
       i32.div_u
       local.set $8
       local.get $7
       i32.const 10
       i32.rem_u
       local.set $7
       br $break|1
      end
      local.get $7
      local.set $8
      i32.const 0
      local.set $7
      br $break|1
     end
     i32.const 0
     local.set $8
    end
    local.get $6
    local.get $8
    i32.or
    if
     local.get $6
     local.tee $2
     i32.const 1
     i32.add
     local.set $6
     local.get $2
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $8
     i32.const 65535
     i32.and
     i32.const 48
     i32.add
     i32.store16 offset=4
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    local.get $7
    i64.extend_i32_u
    local.get $12
    i64.extend_i32_s
    i64.shl
    local.get $9
    i64.add
    local.tee $1
    local.get $5
    i64.le_u
    if
     global.get $~lib/internal/number/_K
     local.get $4
     i32.add
     global.set $~lib/internal/number/_K
     local.get $13
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i64.load32_u offset=8
     local.get $12
     i64.extend_i32_s
     i64.shl
     local.set $3
     local.get $6
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.tee $2
     i32.load16_u offset=4
     local.set $4
     loop $continue|2
      local.get $1
      local.get $10
      i64.lt_u
      local.tee $0
      if
       local.get $5
       local.get $1
       i64.sub
       local.get $3
       i64.ge_u
       local.set $0
      end
      local.get $0
      if
       local.get $1
       local.get $3
       i64.add
       local.get $10
       i64.lt_u
       local.tee $0
       i32.eqz
       if
        local.get $10
        local.get $1
        i64.sub
        local.get $1
        local.get $3
        i64.add
        local.get $10
        i64.sub
        i64.gt_u
        local.set $0
       end
      end
      local.get $0
      if
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $1
       local.get $3
       i64.add
       local.set $1
       br $continue|2
      end
     end
     local.get $2
     local.get $4
     i32.store16 offset=4
     local.get $6
     return
    end
    br $continue|0
   end
  end
  loop $continue|3 (result i32)
   local.get $5
   i64.const 10
   i64.mul
   local.set $5
   local.get $9
   i64.const 10
   i64.mul
   local.tee $3
   local.get $12
   i64.extend_i32_s
   i64.shr_u
   local.tee $1
   local.get $6
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $6
    local.tee $2
    i32.const 1
    i32.add
    local.set $6
    local.get $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $1
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.const 48
    i32.add
    i32.store16 offset=4
   end
   local.get $4
   i32.const 1
   i32.sub
   local.set $4
   local.get $3
   local.get $14
   i64.and
   local.tee $9
   local.get $5
   i64.ge_u
   br_if $continue|3
   global.get $~lib/internal/number/_K
   local.get $4
   i32.add
   global.set $~lib/internal/number/_K
   local.get $13
   i32.const 0
   local.get $4
   i32.sub
   i32.const 2
   i32.shl
   i32.add
   i64.load32_u offset=8
   local.get $10
   i64.mul
   local.set $1
   local.get $6
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.tee $2
   i32.load16_u offset=4
   local.set $4
   loop $continue|4
    local.get $9
    local.get $1
    i64.lt_u
    local.tee $0
    if
     local.get $5
     local.get $9
     i64.sub
     local.get $11
     i64.ge_u
     local.set $0
    end
    local.get $0
    if
     local.get $9
     local.get $11
     i64.add
     local.get $1
     i64.lt_u
     local.tee $0
     i32.eqz
     if
      local.get $1
      local.get $9
      i64.sub
      local.get $9
      local.get $11
      i64.add
      local.get $1
      i64.sub
      i64.gt_u
      local.set $0
     end
    end
    local.get $0
    if
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     local.get $9
     local.get $11
     i64.add
     local.set $9
     br $continue|4
    end
   end
   local.get $2
   local.get $4
   i32.store16 offset=4
   local.get $6
  end
 )
 (func $~lib/internal/number/prettify (; 122 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.eqz
  if
   local.get $1
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   i32.const 3145774
   i32.store offset=4
   local.get $1
   i32.const 2
   i32.add
   return
  end
  local.get $1
  local.get $1
  local.get $2
  i32.add
  local.tee $3
  i32.le_s
  local.tee $4
  if
   local.get $3
   i32.const 21
   i32.le_s
   local.set $4
  end
  local.get $4
  if (result i32)
   loop $repeat|0
    block $break|0
     local.get $1
     local.get $3
     i32.ge_s
     br_if $break|0
     local.get $1
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     i32.const 48
     i32.store16 offset=4
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $repeat|0
    end
   end
   local.get $3
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   i32.const 3145774
   i32.store offset=4
   local.get $3
   i32.const 2
   i32.add
  else   
   local.get $3
   i32.const 0
   i32.gt_s
   local.tee $4
   if
    local.get $3
    i32.const 21
    i32.le_s
    local.set $4
   end
   local.get $4
   if (result i32)
    local.get $3
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    i32.const 4
    i32.add
    local.tee $4
    i32.const 2
    i32.add
    local.get $4
    i32.const 0
    local.get $2
    i32.sub
    i32.const 1
    i32.shl
    call $~lib/internal/memory/memmove
    local.get $3
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    i32.const 46
    i32.store16 offset=4
    local.get $1
    i32.const 1
    i32.add
   else    
    i32.const -6
    local.get $3
    i32.lt_s
    local.tee $2
    if
     local.get $3
     i32.const 0
     i32.le_s
     local.set $2
    end
    local.get $2
    if (result i32)
     local.get $0
     i32.const 4
     i32.add
     local.tee $2
     i32.const 2
     local.get $3
     i32.sub
     local.tee $4
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     call $~lib/internal/memory/memmove
     local.get $0
     i32.const 3014704
     i32.store offset=4
     i32.const 2
     local.set $2
     loop $repeat|1
      block $break|1
       local.get $2
       local.get $4
       i32.ge_s
       br_if $break|1
       local.get $2
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       i32.const 48
       i32.store16 offset=4
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $repeat|1
      end
     end
     local.get $1
     local.get $4
     i32.add
    else     
     local.get $1
     i32.const 1
     i32.eq
     if (result i32)
      local.get $0
      i32.const 101
      i32.store16 offset=6
      local.get $0
      i32.const 4
      i32.add
      local.tee $0
      block (result i32)
       local.get $3
       i32.const 1
       i32.sub
       local.tee $2
       i32.const 0
       i32.lt_s
       local.tee $1
       if
        i32.const 0
        local.get $2
        i32.sub
        local.set $2
       end
       local.get $2
      end
      local.get $2
      call $~lib/internal/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $2
      call $~lib/internal/number/utoa32_lut
      local.get $0
      i32.const 45
      i32.const 43
      local.get $1
      select
      i32.store16 offset=4
      local.get $2
      i32.const 2
      i32.add
     else      
      local.get $0
      i32.const 4
      i32.add
      local.tee $2
      i32.const 4
      i32.add
      local.get $2
      i32.const 2
      i32.add
      local.get $1
      i32.const 1
      i32.shl
      local.tee $2
      i32.const 2
      i32.sub
      call $~lib/internal/memory/memmove
      local.get $0
      i32.const 46
      i32.store16 offset=6
      local.get $0
      local.get $2
      i32.add
      local.tee $0
      i32.const 101
      i32.store16 offset=6
      local.get $0
      i32.const 4
      i32.add
      local.tee $0
      block (result i32)
       local.get $3
       i32.const 1
       i32.sub
       local.tee $2
       i32.const 0
       i32.lt_s
       local.tee $4
       if
        i32.const 0
        local.get $2
        i32.sub
        local.set $2
       end
       local.get $2
      end
      local.get $2
      call $~lib/internal/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $2
      call $~lib/internal/number/utoa32_lut
      local.get $0
      i32.const 45
      i32.const 43
      local.get $4
      select
      i32.store16 offset=4
      local.get $1
      local.get $2
      i32.add
      i32.const 2
      i32.add
     end
    end
   end
  end
 )
 (func $~lib/internal/number/dtoa_core (; 123 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  local.get $1
  f64.const 0
  f64.lt
  local.tee $10
  if (result f64)
   local.get $0
   i32.const 45
   i32.store16 offset=4
   local.get $1
   f64.neg
  else   
   local.get $1
  end
  i64.reinterpret_f64
  local.tee $2
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.set $5
  local.get $2
  i64.const 4503599627370495
  i64.and
  local.get $5
  i32.const 0
  i32.ne
  local.tee $6
  i64.extend_i32_u
  i64.const 52
  i64.shl
  i64.add
  local.tee $2
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.tee $7
  i64.clz
  i32.wrap_i64
  local.set $3
  local.get $7
  local.get $3
  i64.extend_i32_s
  i64.shl
  global.set $~lib/internal/number/_frc_plus
  local.get $5
  i32.const 1
  local.get $6
  select
  i32.const 1075
  i32.sub
  local.tee $5
  i32.const 1
  i32.sub
  local.get $3
  i32.sub
  local.set $3
  local.get $2
  local.get $2
  i64.const 4503599627370496
  i64.eq
  i32.const 1
  i32.add
  local.tee $6
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $5
  local.get $6
  i32.sub
  local.get $3
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/internal/number/_frc_minus
  local.get $3
  global.set $~lib/internal/number/_exp
  i32.const 348
  i32.const -61
  global.get $~lib/internal/number/_exp
  i32.sub
  f64.convert_i32_s
  f64.const 0.30102999566398114
  f64.mul
  f64.const 347
  f64.add
  local.tee $1
  i32.trunc_f64_s
  local.tee $3
  local.get $3
  f64.convert_i32_s
  local.get $1
  f64.ne
  i32.add
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.tee $3
  i32.const 3
  i32.shl
  local.tee $6
  i32.sub
  global.set $~lib/internal/number/_K
  i32.const 6544
  i32.load
  local.set $13
  i32.const 6280
  i32.load
  local.get $6
  i32.add
  i64.load offset=8
  global.set $~lib/internal/number/_frc_pow
  local.get $13
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s offset=8
  global.set $~lib/internal/number/_exp_pow
  local.get $2
  local.get $2
  i64.clz
  i32.wrap_i64
  local.tee $3
  i64.extend_i32_s
  i64.shl
  local.tee $7
  i64.const 4294967295
  i64.and
  local.tee $11
  global.get $~lib/internal/number/_frc_pow
  local.tee $2
  i64.const 4294967295
  i64.and
  local.tee $14
  i64.mul
  local.set $15
  global.get $~lib/internal/number/_frc_plus
  local.tee $8
  i64.const 4294967295
  i64.and
  local.tee $4
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $9
  i64.mul
  local.set $12
  global.get $~lib/internal/number/_frc_minus
  local.tee $16
  i64.const 4294967295
  i64.and
  local.tee $17
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $18
  i64.mul
  local.set $19
  local.get $4
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $4
  i64.mul
  local.get $8
  i64.const 32
  i64.shr_u
  local.tee $8
  local.get $9
  i64.mul
  local.get $12
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $9
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  local.get $4
  local.get $8
  i64.mul
  local.get $9
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  i64.const 1
  i64.sub
  local.tee $8
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $4
  local.get $17
  i64.mul
  local.get $16
  i64.const 32
  i64.shr_u
  local.tee $9
  local.get $18
  i64.mul
  local.get $19
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $12
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  local.get $4
  local.get $9
  i64.mul
  local.get $12
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  i64.const 1
  i64.add
  i64.sub
  local.set $4
  local.get $10
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.get $0
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $2
  local.get $11
  i64.mul
  local.get $7
  i64.const 32
  i64.shr_u
  local.tee $7
  local.get $14
  i64.mul
  local.get $15
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $11
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  local.get $2
  local.get $7
  i64.mul
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  global.get $~lib/internal/number/_exp_pow
  local.tee $0
  local.get $5
  local.get $3
  i32.sub
  i32.add
  i32.const -64
  i32.sub
  local.get $8
  global.get $~lib/internal/number/_exp
  local.get $0
  i32.add
  i32.const -64
  i32.sub
  local.get $4
  local.get $10
  call $~lib/internal/number/genDigits
  local.get $10
  i32.sub
  global.get $~lib/internal/number/_K
  call $~lib/internal/number/prettify
  local.get $10
  i32.add
 )
 (func $~lib/internal/number/dtoa (; 124 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 5176
   return
  end
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.ne
  if
   local.get $0
   local.get $0
   f64.ne
   if
    i32.const 5192
    return
   end
   i32.const 5208
   i32.const 5232
   local.get $0
   f64.const 0
   f64.lt
   select
   return
  end
  i32.const 28
  call $~lib/internal/string/allocateUnsafe
  local.tee $2
  local.get $0
  call $~lib/internal/number/dtoa_core
  local.set $1
  local.get $2
  local.get $1
  call $~lib/string/String#substring
  local.set $1
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 4088
   i32.const 28
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/internal/number/dtoa_stream (; 125 ;) (type $FUNCSIG$iiid) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $0
  local.get $2
  f64.const 0
  f64.eq
  if
   local.get $0
   i32.const 48
   i32.store16 offset=4
   local.get $0
   i32.const 46
   i32.store16 offset=6
   local.get $0
   i32.const 48
   i32.store16 offset=8
   i32.const 3
   return
  end
  local.get $2
  local.get $2
  f64.sub
  f64.const 0
  f64.ne
  if
   local.get $2
   local.get $2
   f64.ne
   if
    local.get $0
    i32.const 78
    i32.store16 offset=4
    local.get $0
    i32.const 97
    i32.store16 offset=6
    local.get $0
    i32.const 78
    i32.store16 offset=8
    i32.const 3
    return
   else    
    local.get $2
    f64.const 0
    f64.lt
    local.tee $3
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    i32.const 5208
    i32.const 5232
    local.get $3
    select
    i32.const 4
    i32.add
    local.get $1
    i32.const 1
    i32.shl
    call $~lib/internal/memory/memmove
    local.get $1
    return
   end
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/internal/number/dtoa_core
 )
 (func $~lib/array/Array<f64>#join (; 126 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 6692
  i32.load
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  i32.const 6688
  i32.load
  local.set $4
  i32.const 5168
  i32.load
  local.tee $1
  i32.const 0
  i32.ne
  local.set $6
  local.get $3
  i32.eqz
  if
   local.get $4
   f64.load offset=8
   call $~lib/internal/number/dtoa
   return
  end
  local.get $1
  i32.const 28
  i32.add
  local.get $3
  i32.mul
  i32.const 28
  i32.add
  local.tee $7
  call $~lib/internal/string/allocateUnsafe
  local.set $2
  loop $repeat|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    f64.load offset=8
    call $~lib/internal/number/dtoa_stream
    local.get $0
    i32.add
    local.set $0
    local.get $6
    if
     local.get $2
     local.get $0
     i32.const 5168
     i32.const 0
     local.get $1
     call $~lib/internal/string/copyUnsafe
     local.get $0
     local.get $1
     i32.add
     local.set $0
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $repeat|0
   end
  end
  local.get $2
  local.set $1
  local.get $7
  local.get $2
  local.get $0
  local.get $3
  i32.const 3
  i32.shl
  local.get $4
  i32.add
  f64.load offset=8
  call $~lib/internal/number/dtoa_stream
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.set $1
   local.get $2
   i32.eqz
   if
    i32.const 0
    i32.const 4088
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 127 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  local.get $0
  i32.load
  local.set $5
  local.get $1
  i32.load
  local.tee $7
  i32.const 0
  i32.ne
  local.set $8
  local.get $4
  i32.eqz
  if
   local.get $5
   i32.load offset=8
   return
  end
  i32.const 0
  local.set $0
  local.get $4
  i32.const 1
  i32.add
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    local.get $3
    i32.ge_s
    br_if $break|0
    local.get $5
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    i32.load
    local.get $2
    i32.add
    local.set $2
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  i32.const 0
  local.set $0
  local.get $4
  local.get $7
  i32.mul
  local.get $2
  i32.add
  call $~lib/internal/string/allocateUnsafe
  local.set $2
  i32.const 0
  local.set $3
  loop $repeat|1
   block $break|1
    local.get $3
    local.get $4
    i32.ge_s
    br_if $break|1
    local.get $5
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    local.tee $6
    if
     local.get $2
     local.get $0
     local.get $6
     i32.const 0
     local.get $6
     i32.load
     local.tee $6
     call $~lib/internal/string/copyUnsafe
     local.get $0
     local.get $6
     i32.add
     local.set $0
    end
    local.get $8
    if
     local.get $2
     local.get $0
     local.get $1
     i32.const 0
     local.get $7
     call $~lib/internal/string/copyUnsafe
     local.get $0
     local.get $7
     i32.add
     local.set $0
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|1
   end
  end
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
  local.tee $1
  if
   local.get $2
   local.get $0
   local.get $1
   i32.const 0
   local.get $1
   i32.load
   call $~lib/internal/string/copyUnsafe
  end
  local.get $2
 )
 (func $~lib/array/Array<std/array/Ref>#join (; 128 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  local.get $0
  i32.load
  local.set $5
  i32.const 4216
  i32.load
  local.tee $4
  i32.const 0
  i32.ne
  local.set $6
  local.get $3
  i32.eqz
  if
   i32.const 6872
   return
  end
  local.get $4
  i32.const 15
  i32.add
  local.get $3
  i32.mul
  i32.const 15
  i32.add
  local.tee $7
  call $~lib/internal/string/allocateUnsafe
  local.set $0
  loop $repeat|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $5
    i32.add
    i32.load offset=8
    if
     local.get $0
     local.get $1
     i32.const 6872
     i32.const 0
     i32.const 15
     call $~lib/internal/string/copyUnsafe
     local.get $1
     i32.const 15
     i32.add
     local.set $1
    end
    local.get $6
    if
     local.get $0
     local.get $1
     i32.const 4216
     i32.const 0
     local.get $4
     call $~lib/internal/string/copyUnsafe
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $0
  local.set $2
  block (result i32)
   local.get $3
   i32.const 2
   i32.shl
   local.get $5
   i32.add
   i32.load offset=8
   if
    local.get $0
    local.get $1
    i32.const 6872
    i32.const 0
    i32.const 15
    call $~lib/internal/string/copyUnsafe
    local.get $1
    i32.const 15
    i32.add
    local.set $1
   end
   local.get $7
   local.get $1
   i32.gt_s
  end
  if
   local.get $0
   local.get $1
   call $~lib/string/String#substring
   local.set $2
   local.get $0
   i32.eqz
   if
    i32.const 0
    i32.const 4088
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $2
 )
 (func $~lib/internal/number/itoa_stream<i8> (; 129 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $0
  local.get $2
  i32.const 255
  i32.and
  i32.eqz
  if
   local.get $0
   i32.const 48
   i32.store16 offset=4
   i32.const 1
   return
  end
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.lt_s
  local.tee $1
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
  local.tee $3
  call $~lib/internal/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  local.get $0
  local.get $3
  local.get $2
  call $~lib/internal/number/utoa32_lut
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16 offset=4
  end
  local.get $2
 )
 (func $~lib/array/Array<i8>#join (; 130 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 7068
  i32.load
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  i32.const 7064
  i32.load
  local.set $4
  i32.const 4216
  i32.load
  local.tee $1
  i32.const 0
  i32.ne
  local.set $6
  local.get $3
  i32.eqz
  if
   local.get $4
   i32.load8_s offset=8
   call $~lib/internal/number/itoa32
   return
  end
  local.get $1
  i32.const 11
  i32.add
  local.get $3
  i32.mul
  i32.const 11
  i32.add
  local.tee $7
  call $~lib/internal/string/allocateUnsafe
  local.set $2
  loop $repeat|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $0
    local.get $4
    local.get $5
    i32.add
    i32.load8_s offset=8
    call $~lib/internal/number/itoa_stream<i8>
    local.get $0
    i32.add
    local.set $0
    local.get $6
    if
     local.get $2
     local.get $0
     i32.const 4216
     i32.const 0
     local.get $1
     call $~lib/internal/string/copyUnsafe
     local.get $0
     local.get $1
     i32.add
     local.set $0
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $repeat|0
   end
  end
  local.get $2
  local.set $1
  local.get $7
  local.get $2
  local.get $0
  local.get $3
  local.get $4
  i32.add
  i32.load8_s offset=8
  call $~lib/internal/number/itoa_stream<i8>
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.set $1
   local.get $2
   i32.eqz
   if
    i32.const 0
    i32.const 4088
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $1
 )
 (func $~lib/internal/number/itoa_stream<u16> (; 131 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $0
  local.get $2
  i32.const 65535
  i32.and
  i32.eqz
  if
   local.get $0
   i32.const 48
   i32.store16 offset=4
   i32.const 1
   return
  end
  local.get $2
  i32.const 65535
  i32.and
  local.tee $2
  call $~lib/internal/number/decimalCount32
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/internal/number/utoa32_lut
  local.get $1
 )
 (func $~lib/array/Array<u16>#join (; 132 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 7132
  i32.load
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  i32.const 7128
  i32.load
  local.set $4
  i32.const 4216
  i32.load
  local.tee $1
  i32.const 0
  i32.ne
  local.set $6
  local.get $3
  i32.eqz
  if
   local.get $4
   i32.load16_u offset=8
   call $~lib/internal/number/utoa32
   return
  end
  local.get $1
  i32.const 10
  i32.add
  local.get $3
  i32.mul
  i32.const 10
  i32.add
  local.tee $7
  call $~lib/internal/string/allocateUnsafe
  local.set $2
  loop $repeat|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $0
    local.get $5
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    i32.load16_u offset=8
    call $~lib/internal/number/itoa_stream<u16>
    local.get $0
    i32.add
    local.set $0
    local.get $6
    if
     local.get $2
     local.get $0
     i32.const 4216
     i32.const 0
     local.get $1
     call $~lib/internal/string/copyUnsafe
     local.get $0
     local.get $1
     i32.add
     local.set $0
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $repeat|0
   end
  end
  local.get $2
  local.set $1
  local.get $7
  local.get $2
  local.get $0
  local.get $3
  i32.const 1
  i32.shl
  local.get $4
  i32.add
  i32.load16_u offset=8
  call $~lib/internal/number/itoa_stream<u16>
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.set $1
   local.get $2
   i32.eqz
   if
    i32.const 0
    i32.const 4088
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $1
 )
 (func $~lib/internal/number/decimalCount64 (; 133 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  local.get $0
  i64.const 1000000000000000
  i64.lt_u
  if (result i32)
   local.get $0
   i64.const 1000000000000
   i64.lt_u
   if (result i32)
    i32.const 11
    i32.const 12
    local.get $0
    i64.const 100000000000
    i64.lt_u
    select
   else    
    i32.const 13
    i32.const 14
    i32.const 15
    local.get $0
    i64.const 100000000000000
    i64.lt_u
    select
    local.get $0
    i64.const 10000000000000
    i64.lt_u
    select
   end
  else   
   local.get $0
   i64.const 100000000000000000
   i64.lt_u
   if (result i32)
    i32.const 16
    i32.const 17
    local.get $0
    i64.const 10000000000000000
    i64.lt_u
    select
   else    
    i32.const 18
    i32.const 19
    i32.const 20
    local.get $0
    i64.const -8446744073709551616
    i64.lt_u
    select
    local.get $0
    i64.const 1000000000000000000
    i64.lt_u
    select
   end
  end
 )
 (func $~lib/internal/number/utoa64_lut (; 134 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4832
  i32.load
  local.set $3
  loop $continue|0
   local.get $1
   i64.const 100000000
   i64.ge_u
   if
    local.get $1
    local.get $1
    i64.const 100000000
    i64.div_u
    local.tee $1
    i64.const 100000000
    i64.mul
    i64.sub
    i32.wrap_i64
    local.tee $4
    i32.const 10000
    i32.div_u
    local.tee $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $5
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $3
    local.get $4
    i32.const 10000
    i32.rem_u
    local.tee $4
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u offset=8
    local.get $3
    local.get $4
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u offset=8
    i64.const 32
    i64.shl
    i64.or
    i64.store offset=4
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $3
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u offset=8
    local.get $3
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u offset=8
    i64.const 32
    i64.shl
    i64.or
    i64.store offset=4
    br $continue|0
   end
  end
  local.get $0
  local.get $1
  i32.wrap_i64
  local.get $2
  call $~lib/internal/number/utoa32_lut
 )
 (func $~lib/internal/number/utoa64 (; 135 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i64.eqz
  if
   i32.const 4312
   return
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.tee $1
   call $~lib/internal/number/decimalCount32
   local.tee $3
   call $~lib/internal/string/allocateUnsafe
   local.tee $2
   local.get $1
   local.get $3
   call $~lib/internal/number/utoa32_lut
  else   
   local.get $0
   call $~lib/internal/number/decimalCount64
   local.tee $1
   call $~lib/internal/string/allocateUnsafe
   local.tee $2
   local.get $0
   local.get $1
   call $~lib/internal/number/utoa64_lut
  end
  local.get $2
 )
 (func $~lib/internal/number/itoa_stream<u64> (; 136 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $0
  local.get $2
  i64.eqz
  if
   local.get $0
   i32.const 48
   i32.store16 offset=4
   i32.const 1
   return
  end
  local.get $2
  i64.const 4294967295
  i64.le_u
  if
   local.get $2
   i32.wrap_i64
   local.tee $3
   call $~lib/internal/number/decimalCount32
   local.set $1
   local.get $0
   local.get $3
   local.get $1
   call $~lib/internal/number/utoa32_lut
  else   
   local.get $0
   local.get $2
   local.get $2
   call $~lib/internal/number/decimalCount64
   local.tee $1
   call $~lib/internal/number/utoa64_lut
  end
  local.get $1
 )
 (func $~lib/array/Array<u64>#join (; 137 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 7236
  i32.load
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  i32.const 7232
  i32.load
  local.set $4
  i32.const 4216
  i32.load
  local.tee $1
  i32.const 0
  i32.ne
  local.set $6
  local.get $3
  i32.eqz
  if
   local.get $4
   i64.load offset=8
   call $~lib/internal/number/utoa64
   return
  end
  local.get $1
  i32.const 20
  i32.add
  local.get $3
  i32.mul
  i32.const 20
  i32.add
  local.tee $7
  call $~lib/internal/string/allocateUnsafe
  local.set $2
  loop $repeat|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    i64.load offset=8
    call $~lib/internal/number/itoa_stream<u64>
    local.get $0
    i32.add
    local.set $0
    local.get $6
    if
     local.get $2
     local.get $0
     i32.const 4216
     i32.const 0
     local.get $1
     call $~lib/internal/string/copyUnsafe
     local.get $0
     local.get $1
     i32.add
     local.set $0
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $repeat|0
   end
  end
  local.get $2
  local.set $1
  local.get $7
  local.get $2
  local.get $0
  local.get $3
  i32.const 3
  i32.shl
  local.get $4
  i32.add
  i64.load offset=8
  call $~lib/internal/number/itoa_stream<u64>
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.set $1
   local.get $2
   i32.eqz
   if
    i32.const 0
    i32.const 4088
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $1
 )
 (func $~lib/internal/number/itoa64 (; 138 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i64.eqz
  if
   i32.const 4312
   return
  end
  block (result i32)
   local.get $0
   i64.const 0
   i64.lt_s
   local.tee $1
   if
    i64.const 0
    local.get $0
    i64.sub
    local.set $0
   end
   local.get $0
   i64.const 4294967295
   i64.le_u
  end
  if
   local.get $0
   i32.wrap_i64
   local.tee $2
   call $~lib/internal/number/decimalCount32
   local.get $1
   i32.add
   local.tee $4
   call $~lib/internal/string/allocateUnsafe
   local.tee $3
   local.get $2
   local.get $4
   call $~lib/internal/number/utoa32_lut
  else   
   local.get $0
   call $~lib/internal/number/decimalCount64
   local.get $1
   i32.add
   local.tee $2
   call $~lib/internal/string/allocateUnsafe
   local.tee $3
   local.get $0
   local.get $2
   call $~lib/internal/number/utoa64_lut
  end
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16 offset=4
  end
  local.get $3
 )
 (func $~lib/internal/number/itoa_stream<i64> (; 139 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $0
  local.get $2
  i64.eqz
  if
   local.get $0
   i32.const 48
   i32.store16 offset=4
   i32.const 1
   return
  end
  block (result i32)
   local.get $2
   i64.const 0
   i64.lt_s
   local.tee $1
   if
    i64.const 0
    local.get $2
    i64.sub
    local.set $2
   end
   local.get $2
   i64.const 4294967295
   i64.le_u
  end
  if
   local.get $2
   i32.wrap_i64
   local.tee $4
   call $~lib/internal/number/decimalCount32
   local.get $1
   i32.add
   local.set $3
   local.get $0
   local.get $4
   local.get $3
   call $~lib/internal/number/utoa32_lut
  else   
   local.get $0
   local.get $2
   local.get $2
   call $~lib/internal/number/decimalCount64
   local.get $1
   i32.add
   local.tee $3
   call $~lib/internal/number/utoa64_lut
  end
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16 offset=4
  end
  local.get $3
 )
 (func $~lib/array/Array<i64>#join (; 140 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 7436
  i32.load
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  i32.const 7432
  i32.load
  local.set $4
  i32.const 4216
  i32.load
  local.tee $1
  i32.const 0
  i32.ne
  local.set $6
  local.get $3
  i32.eqz
  if
   local.get $4
   i64.load offset=8
   call $~lib/internal/number/itoa64
   return
  end
  local.get $1
  i32.const 21
  i32.add
  local.get $3
  i32.mul
  i32.const 21
  i32.add
  local.tee $7
  call $~lib/internal/string/allocateUnsafe
  local.set $2
  loop $repeat|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    i64.load offset=8
    call $~lib/internal/number/itoa_stream<i64>
    local.get $0
    i32.add
    local.set $0
    local.get $6
    if
     local.get $2
     local.get $0
     i32.const 4216
     i32.const 0
     local.get $1
     call $~lib/internal/string/copyUnsafe
     local.get $0
     local.get $1
     i32.add
     local.set $0
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $repeat|0
   end
  end
  local.get $2
  local.set $1
  local.get $7
  local.get $2
  local.get $0
  local.get $3
  i32.const 3
  i32.shl
  local.get $4
  i32.add
  i64.load offset=8
  call $~lib/internal/number/itoa_stream<i64>
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.set $1
   local.get $2
   i32.eqz
   if
    i32.const 0
    i32.const 4088
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#join (; 141 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  i32.const 3904
  local.set $1
  local.get $0
  i32.load
  local.set $3
  i32.const 4216
  i32.load
  i32.const 0
  i32.ne
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load offset=8
   local.tee $0
   if (result i32)
    local.get $0
    i32.const 4216
    call $~lib/array/Array<i32>#join
   else    
    i32.const 3904
   end
   return
  end
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $0
   local.get $2
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i32.load offset=8
    local.tee $5
    if
     local.get $1
     local.get $5
     i32.const 4216
     call $~lib/array/Array<i32>#join
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $4
    if
     local.get $1
     i32.const 4216
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $3
  i32.add
  i32.load offset=8
  local.tee $0
  if
   local.get $1
   local.get $0
   i32.const 4216
   call $~lib/array/Array<i32>#join
   call $~lib/string/String.__concat
   local.set $1
  end
  local.get $1
 )
 (func $~lib/internal/number/itoa_stream<u8> (; 142 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $0
  local.get $2
  i32.const 255
  i32.and
  i32.eqz
  if
   local.get $0
   i32.const 48
   i32.store16 offset=4
   i32.const 1
   return
  end
  local.get $2
  i32.const 255
  i32.and
  local.tee $2
  call $~lib/internal/number/decimalCount32
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/internal/number/utoa32_lut
  local.get $1
 )
 (func $~lib/array/Array<u8>#join (; 143 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  local.get $0
  i32.load
  local.set $4
  i32.const 4216
  i32.load
  local.tee $2
  i32.const 0
  i32.ne
  local.set $6
  local.get $3
  i32.eqz
  if
   local.get $4
   i32.load8_u offset=8
   call $~lib/internal/number/utoa32
   return
  end
  local.get $2
  i32.const 10
  i32.add
  local.get $3
  i32.mul
  i32.const 10
  i32.add
  local.tee $7
  call $~lib/internal/string/allocateUnsafe
  local.set $0
  loop $repeat|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $1
    local.get $4
    local.get $5
    i32.add
    i32.load8_u offset=8
    call $~lib/internal/number/itoa_stream<u8>
    local.get $1
    i32.add
    local.set $1
    local.get $6
    if
     local.get $0
     local.get $1
     i32.const 4216
     i32.const 0
     local.get $2
     call $~lib/internal/string/copyUnsafe
     local.get $1
     local.get $2
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $repeat|0
   end
  end
  local.get $0
  local.set $2
  local.get $7
  local.get $0
  local.get $1
  local.get $3
  local.get $4
  i32.add
  i32.load8_u offset=8
  call $~lib/internal/number/itoa_stream<u8>
  local.get $1
  i32.add
  local.tee $1
  i32.gt_s
  if
   local.get $0
   local.get $1
   call $~lib/string/String#substring
   local.set $2
   local.get $0
   i32.eqz
   if
    i32.const 0
    i32.const 4088
    i32.const 28
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
  local.get $2
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#join (; 144 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  i32.const 3904
  local.set $1
  local.get $0
  i32.load
  local.set $3
  i32.const 4216
  i32.load
  i32.const 0
  i32.ne
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load offset=8
   local.tee $0
   if (result i32)
    local.get $0
    call $~lib/array/Array<u8>#join
   else    
    i32.const 3904
   end
   return
  end
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $0
   local.get $2
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i32.load offset=8
    local.tee $5
    if
     local.get $1
     local.get $5
     call $~lib/array/Array<u8>#join
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $4
    if
     local.get $1
     i32.const 4216
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $3
  i32.add
  i32.load offset=8
  local.tee $0
  if
   local.get $1
   local.get $0
   call $~lib/array/Array<u8>#join
   call $~lib/string/String.__concat
   local.set $1
  end
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#join (; 145 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  i32.const 3904
  local.set $1
  local.get $0
  i32.load
  local.set $3
  i32.const 4216
  i32.load
  i32.const 0
  i32.ne
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load offset=8
   local.tee $0
   if (result i32)
    local.get $0
    i32.const 4216
    call $~lib/array/Array<u32>#join
   else    
    i32.const 3904
   end
   return
  end
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $0
   local.get $2
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i32.load offset=8
    local.tee $5
    if
     local.get $1
     local.get $5
     i32.const 4216
     call $~lib/array/Array<u32>#join
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $4
    if
     local.get $1
     i32.const 4216
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $3
  i32.add
  i32.load offset=8
  local.tee $0
  if
   local.get $1
   local.get $0
   i32.const 4216
   call $~lib/array/Array<u32>#join
   call $~lib/string/String.__concat
   local.set $1
  end
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join (; 146 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 3904
   return
  end
  i32.const 3904
  local.set $1
  local.get $0
  i32.load
  local.set $3
  i32.const 4216
  i32.load
  i32.const 0
  i32.ne
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load offset=8
   local.tee $0
   if (result i32)
    local.get $0
    call $~lib/array/Array<~lib/array/Array<u32>>#join
   else    
    i32.const 3904
   end
   return
  end
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $0
   local.get $2
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i32.load offset=8
    local.tee $5
    if
     local.get $1
     local.get $5
     call $~lib/array/Array<~lib/array/Array<u32>>#join
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $4
    if
     local.get $1
     i32.const 4216
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $3
  i32.add
  i32.load offset=8
  local.tee $0
  if
   local.get $1
   local.get $0
   call $~lib/array/Array<~lib/array/Array<u32>>#join
   call $~lib/string/String.__concat
   local.set $1
  end
  local.get $1
 )
 (func $start:std/array (; 147 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 7912
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  global.set $std/array/arr
  global.get $std/array/Null
  if
   i32.const 0
   i32.const 120
   i32.const 37
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  i32.ne
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 38
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  drop
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  drop
  global.get $std/array/arr8
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u8>#fill
  global.get $std/array/arr8
  i32.const 256
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
  i32.const 1
  global.set $~lib/argc
  global.get $std/array/arr8
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u8>#fill|trampoline
  global.get $std/array/arr8
  i32.const 280
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
  global.get $std/array/arr8
  i32.const 304
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
  i32.const 2
  global.set $~lib/argc
  global.get $std/array/arr8
  i32.const 2
  i32.const -2
  call $~lib/array/Array<u8>#fill|trampoline
  global.get $std/array/arr8
  i32.const 328
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
  global.get $std/array/arr8
  i32.const 352
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
  global.get $std/array/arr32
  i32.const 432
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
  i32.const 1
  global.set $~lib/argc
  global.get $std/array/arr32
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u32>#fill|trampoline
  global.get $std/array/arr32
  i32.const 472
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
  global.get $std/array/arr32
  i32.const 512
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
  i32.const 2
  global.set $~lib/argc
  global.get $std/array/arr32
  i32.const 2
  i32.const -2
  call $~lib/array/Array<u32>#fill|trampoline
  global.get $std/array/arr32
  i32.const 552
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
  global.get $std/array/arr32
  i32.const 592
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
  i32.load offset=4
  if
   i32.const 0
   i32.const 120
   i32.const 82
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
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
  i32.const 0
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 87
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 88
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 1
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 93
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  if
   i32.const 0
   i32.const 120
   i32.const 94
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 1
  i32.ne
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
  global.get $std/array/arr
  i32.load offset=4
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 99
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 100
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 43
  i32.ne
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
  global.get $std/array/arr
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 105
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 106
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 107
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 44
  i32.ne
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
  global.get $std/array/arr
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 112
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 113
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 114
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 115
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 116
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  global.set $std/array/other
  global.get $std/array/arr
  global.get $std/array/other
  call $~lib/array/Array<i32>#concat
  global.set $std/array/out
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 123
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 124
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 125
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 608
  call $~lib/array/Array<i32>#concat
  drop
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 128
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/out
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 130
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array/out
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 131
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.get $std/array/out
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 45
  i32.ne
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
  global.get $std/array/other
  i32.const 47
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  global.get $std/array/other
  call $~lib/array/Array<i32>#concat
  global.set $std/array/out
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 139
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/other
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 140
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.load offset=4
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 141
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/out
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 142
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array/out
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 143
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.get $std/array/out
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 144
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  global.get $std/array/out
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 12
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 46
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 145
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  global.get $std/array/out
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 16
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 47
  i32.ne
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
  i32.load offset=4
  i32.const 4
  i32.ne
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
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 152
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.get $std/array/out
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 153
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/source
  i32.load offset=4
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
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 158
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/source
  i32.load offset=4
  if
   i32.const 0
   i32.const 120
   i32.const 159
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 664
  global.set $std/array/cwArr
  i32.const 2
  global.set $~lib/argc
  global.get $std/array/cwArr
  i32.const 0
  i32.const 3
  call $~lib/array/Array<i32>#copyWithin|trampoline
  i32.const 704
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 165
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 744
  global.set $std/array/cwArr
  i32.const 2
  global.set $~lib/argc
  global.get $std/array/cwArr
  i32.const 1
  i32.const 3
  call $~lib/array/Array<i32>#copyWithin|trampoline
  i32.const 784
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 167
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 824
  global.set $std/array/cwArr
  i32.const 2
  global.set $~lib/argc
  global.get $std/array/cwArr
  i32.const 1
  i32.const 2
  call $~lib/array/Array<i32>#copyWithin|trampoline
  i32.const 864
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 169
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 904
  global.set $std/array/cwArr
  i32.const 2
  global.set $~lib/argc
  global.get $std/array/cwArr
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#copyWithin|trampoline
  i32.const 944
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 171
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 984
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 1024
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 173
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1064
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 1104
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 175
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1144
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 2
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 1184
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 177
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1224
  global.set $std/array/cwArr
  i32.const 2
  global.set $~lib/argc
  global.get $std/array/cwArr
  i32.const 0
  i32.const -2
  call $~lib/array/Array<i32>#copyWithin|trampoline
  i32.const 1264
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 179
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1304
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  i32.const 1344
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 181
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1384
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  i32.const -2
  call $~lib/array/Array<i32>#copyWithin
  i32.const 1424
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 183
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1464
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  i32.const 1504
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 185
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1544
  global.set $std/array/cwArr
  i32.const 2
  global.set $~lib/argc
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  call $~lib/array/Array<i32>#copyWithin|trampoline
  i32.const 1584
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  global.get $std/array/arr
  i32.load offset=4
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 193
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 194
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 195
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 196
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 197
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 12
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 45
  i32.ne
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
  global.get $std/array/arr
  i32.load offset=4
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 202
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 203
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 41
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 204
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 205
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 206
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 12
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 207
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 16
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 45
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 214
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 215
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 216
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 217
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 218
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 219
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 12
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 45
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 224
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 225
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 226
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 227
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 228
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 44
  i32.ne
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
  global.get $std/array/arr
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 235
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 236
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 237
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 238
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 42
  i32.ne
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
  global.get $std/array/arr
  i32.const 44
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 44
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  global.set $std/array/i
  global.get $std/array/i
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  i32.const 0
  i32.ne
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
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
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  i32.const 0
  i32.ne
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
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
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  i32.const 0
  i32.ne
  global.set $std/array/includes
  global.get $std/array/includes
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
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  i32.const 0
  i32.ne
  global.set $std/array/includes
  global.get $std/array/includes
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
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  i32.const 0
  i32.ne
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
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
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  i32.const 0
  i32.ne
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
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
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  i32.const 0
  i32.ne
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
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
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  i32.const 0
  i32.ne
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
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
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  i32.const 0
  i32.ne
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
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
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  i32.const 0
  i32.ne
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
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
  i32.load offset=4
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 330
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.load
  i32.const 2
  i32.shr_s
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 331
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 332
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.get $std/array/arr
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 333
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  global.get $std/array/sarr
  i32.const 0
  call $~lib/array/Array<i32>#splice|trampoline
  i32.const 1664
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 1680
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 339
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1720
  global.set $std/array/sarr
  i32.const 1
  global.set $~lib/argc
  global.get $std/array/sarr
  i32.const 2
  call $~lib/array/Array<i32>#splice|trampoline
  i32.const 1760
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 1784
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 343
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1824
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#splice
  i32.const 1848
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 1888
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 347
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1928
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#splice
  i32.const 1952
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 1992
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 351
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2032
  global.set $std/array/sarr
  i32.const 1
  global.set $~lib/argc
  global.get $std/array/sarr
  i32.const -1
  call $~lib/array/Array<i32>#splice|trampoline
  i32.const 2056
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2096
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 355
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2136
  global.set $std/array/sarr
  i32.const 1
  global.set $~lib/argc
  global.get $std/array/sarr
  i32.const -2
  call $~lib/array/Array<i32>#splice|trampoline
  i32.const 2160
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2200
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 359
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2240
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -2
  i32.const 1
  call $~lib/array/Array<i32>#splice
  i32.const 2264
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2304
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 363
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2344
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -7
  i32.const 1
  call $~lib/array/Array<i32>#splice
  i32.const 2368
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2408
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 367
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2448
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#splice
  i32.const 2464
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2504
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 371
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2544
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 1
  i32.const -2
  call $~lib/array/Array<i32>#splice
  i32.const 2560
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2600
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 375
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2640
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 4
  i32.const 0
  call $~lib/array/Array<i32>#splice
  i32.const 2656
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2696
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 379
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2736
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 7
  i32.const 0
  call $~lib/array/Array<i32>#splice
  i32.const 2752
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2792
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 383
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2832
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 7
  i32.const 5
  call $~lib/array/Array<i32>#splice
  i32.const 2848
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2888
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.ne
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
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 411
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 8
  i32.ne
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
  i32.eq
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 427
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 2
  i32.ne
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
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 7
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 1
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 447
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 8
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 463
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 2
  i32.ne
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
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 12
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  i32.const 1
  i32.ne
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
  if
   i32.const 0
   i32.const 120
   i32.const 483
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 8
  i32.ne
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
  i32.ne
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
  if
   i32.const 0
   i32.const 120
   i32.const 499
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 2
  i32.ne
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
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 17
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 6
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 518
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 8
  i32.ne
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
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 536
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 2
  i32.ne
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
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 21
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/arr
  i32.load offset=4
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 562
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  loop $repeat|0
   local.get $1
   i32.const 100
   i32.lt_s
   if
    global.get $std/array/arr
    call $~lib/array/Array<i32>#pop
    drop
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  call $~lib/array/Array<i32>#map<f32>
  global.set $std/array/newArr
  global.get $std/array/newArr
  i32.load offset=4
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 573
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.get $std/array/newArr
  i32.load
  local.tee $1
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result f32)
   local.get $1
   f32.load offset=8
  else   
   unreachable
  end
  i32.const 0
  global.get $std/array/arr
  i32.load
  local.tee $1
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $1
   i32.load offset=8
  else   
   unreachable
  end
  f32.convert_i32_s
  f32.ne
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
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 583
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 8
  i32.ne
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
  global.get $std/array/i
  i32.const 406
  i32.ne
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
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 606
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 2
  i32.ne
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
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 26
  call $~lib/array/Array<i32>#filter
  global.set $std/array/filteredArr
  global.get $std/array/filteredArr
  i32.load offset=4
  i32.const 2
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 624
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 8
  i32.ne
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
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 647
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 2
  i32.ne
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
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 30
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.ne
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
  i32.ne
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
  call $~lib/array/Array<i32>#reduce<i32>
  i32.const 0
  i32.ne
  global.set $std/array/boolVal
  global.get $std/array/boolVal
  i32.const 1
  i32.ne
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
  call $~lib/array/Array<i32>#reduce<i32>
  i32.const 0
  i32.ne
  global.set $std/array/boolVal
  global.get $std/array/boolVal
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 674
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 8
  i32.ne
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
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 690
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 2
  i32.ne
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
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 37
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.ne
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
  i32.ne
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
  call $~lib/array/Array<i32>#reduceRight<i32>
  i32.const 0
  i32.ne
  global.set $std/array/boolVal
  global.get $std/array/boolVal
  i32.const 1
  i32.ne
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
  call $~lib/array/Array<i32>#reduceRight<i32>
  i32.const 0
  i32.ne
  global.set $std/array/boolVal
  global.get $std/array/boolVal
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 717
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
  i32.const 8
  i32.ne
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
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 733
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=4
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
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  call $~lib/bindings/Math/random
  i64.reinterpret_f64
  call $~lib/math/NativeMath.seedRandom
  i32.const 0
  global.set $~lib/argc
  global.get $std/array/f32ArrayTyped
  local.set $0
  i32.const 0
  local.set $1
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 44
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#sort
  global.get $std/array/f32ArrayTyped
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
  i32.const 0
  global.set $~lib/argc
  global.get $std/array/f64ArrayTyped
  local.set $0
  i32.const 0
  local.set $1
  block $1of155
   block $0of156
    block $outOfRange57
     global.get $~lib/argc
     br_table $0of156 $1of155 $outOfRange57
    end
    unreachable
   end
   i32.const 45
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#sort
  global.get $std/array/f64ArrayTyped
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
  i32.const 0
  global.set $~lib/argc
  global.get $std/array/i32ArrayTyped
  local.set $0
  i32.const 0
  local.set $1
  block $1of158
   block $0of159
    block $outOfRange60
     global.get $~lib/argc
     br_table $0of159 $1of158 $outOfRange60
    end
    unreachable
   end
   i32.const 46
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
  drop
  global.get $std/array/i32ArrayTyped
  i32.const 3592
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 829
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $~lib/argc
  global.get $std/array/u32ArrayTyped
  local.set $0
  i32.const 0
  local.set $1
  block $1of161
   block $0of162
    block $outOfRange63
     global.get $~lib/argc
     br_table $0of162 $1of161 $outOfRange63
    end
    unreachable
   end
   i32.const 47
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
  drop
  global.get $std/array/u32ArrayTyped
  i32.const 3672
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
  i32.const 3840
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 3864
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/createReverseOrderedNestedArray
  global.set $std/array/reversedNested512
  global.get $std/array/reversedNested512
  i32.const 53
  call $std/array/assertSorted<~lib/array/Array<i32>>
  call $std/array/createReverseOrderedElementsArray
  global.set $std/array/reversedElements512
  global.get $std/array/reversedElements512
  i32.const 54
  call $std/array/assertSorted<~lib/array/Array<i32>>
  i32.const 1
  global.set $~lib/argc
  global.get $std/array/randomStringsActual
  call $std/array/assertSorted<~lib/string/String>|trampoline
  global.get $std/array/randomStringsActual
  global.get $std/array/randomStringsExpected
  call $std/array/isArraysEqual<~lib/string/String>
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 901
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $std/array/createRandomStringArray
  global.set $std/array/randomStrings400
  i32.const 1
  global.set $~lib/argc
  global.get $std/array/randomStrings400
  call $std/array/assertSorted<~lib/string/String>|trampoline
  call $~lib/array/Array<bool>#join
  i32.const 4248
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
  i32.const 4872
  i32.const 3904
  call $~lib/array/Array<i32>#join
  i32.const 4880
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
  i32.const 4976
  i32.const 4936
  call $~lib/array/Array<u32>#join
  i32.const 4880
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
  i32.const 5032
  i32.const 5008
  call $~lib/array/Array<i32>#join
  i32.const 5040
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
  call $~lib/array/Array<f64>#join
  i32.const 6696
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
  i32.const 6864
  i32.const 3904
  call $~lib/array/Array<~lib/string/String>#join
  i32.const 6784
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
  i32.const 3
  call $~lib/array/Array<i32>#constructor
  local.set $1
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  local.set $0
  local.get $1
  i32.load
  local.get $0
  i32.store offset=8
  local.get $1
  i32.load
  i32.const 4
  i32.add
  i32.const 0
  i32.store offset=8
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  local.set $0
  local.get $1
  i32.load
  i32.const 8
  i32.add
  local.get $0
  i32.store offset=8
  local.get $1
  global.set $std/array/refArr
  global.get $std/array/refArr
  call $~lib/array/Array<std/array/Ref>#join
  i32.const 6912
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
  i32.const 4216
  call $~lib/array/Array<i32>#join
  i32.const 3904
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
  i32.const 4216
  call $~lib/array/Array<i32>#join
  i32.const 6784
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
  i32.const 4216
  call $~lib/array/Array<i32>#join
  i32.const 6984
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
  i32.const 4216
  call $~lib/array/Array<i32>#join
  i32.const 7000
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
  call $~lib/array/Array<i8>#join
  i32.const 7072
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
  call $~lib/array/Array<u16>#join
  i32.const 7136
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
  call $~lib/array/Array<u64>#join
  i32.const 7240
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
  call $~lib/array/Array<i64>#join
  i32.const 7440
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
  i32.const 4216
  call $~lib/array/Array<~lib/string/String>#join
  i32.const 7528
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
  i32.const 7648
  i32.const 4216
  call $~lib/array/Array<~lib/string/String>#join
  i32.const 7656
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
  global.get $std/array/subarr32
  call $~lib/array/Array<~lib/array/Array<i32>>#join
  i32.const 7744
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
  global.get $std/array/subarr8
  call $~lib/array/Array<~lib/array/Array<u8>>#join
  i32.const 7744
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
  global.get $std/array/subarrU32
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join
  i32.const 6784
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
 (func $start (; 148 ;) (type $FUNCSIG$v)
  call $start:std/array
 )
 (func $null (; 149 ;) (type $FUNCSIG$v)
  nop
 )
)
