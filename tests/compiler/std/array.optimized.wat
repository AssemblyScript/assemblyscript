(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$fiii (func (param i32 i32 i32) (result f32)))
 (type $FUNCSIG$fii (func (param i32 i32) (result f32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$iff (func (param f32 f32) (result i32)))
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iijijiji (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $FUNCSIG$iiid (func (param i32 i32 f64) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$iiij (func (param i32 i32 i64) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00&")
 (data (i32.const 24) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 64) "\10\00\00\00(")
 (data (i32.const 80) "~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 120) "\10\00\00\00\06")
 (data (i32.const 136) "a\00b\00c")
 (data (i32.const 144) "\10\00\00\00\18")
 (data (i32.const 160) "s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 184) "\0f\00\00\00\05")
 (data (i32.const 200) "\01\02\03\04\05")
 (data (i32.const 208) "\14\00\00\00\10")
 (data (i32.const 224) "\c8\00\00\00\c8\00\00\00\05\00\00\00\05")
 (data (i32.const 240) "\0f\00\00\00\05")
 (data (i32.const 256) "\01\01\01\04\05")
 (data (i32.const 264) "\10\00\00\00\1a")
 (data (i32.const 280) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 312) "\0f\00\00\00\05")
 (data (i32.const 336) "\0f\00\00\00\05")
 (data (i32.const 352) "\01\01")
 (data (i32.const 360) "\0f\00\00\00\05")
 (data (i32.const 376) "\01\01\00\02\02")
 (data (i32.const 384) "\0f\00\00\00\05")
 (data (i32.const 400) "\01\01\00\02\02")
 (data (i32.const 408) "\0f\00\00\00\14")
 (data (i32.const 424) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 448) "\15\00\00\00\10")
 (data (i32.const 464) "\a8\01\00\00\a8\01\00\00\14\00\00\00\05")
 (data (i32.const 480) "\0f\00\00\00\14")
 (data (i32.const 496) "\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 520) "\0f\00\00\00\14")
 (data (i32.const 560) "\0f\00\00\00\14")
 (data (i32.const 576) "\01\00\00\00\01")
 (data (i32.const 600) "\0f\00\00\00\14")
 (data (i32.const 616) "\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 640) "\0f\00\00\00\14")
 (data (i32.const 656) "\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 680) "\0f")
 (data (i32.const 696) "\0f")
 (data (i32.const 712) "\11\00\00\00\10")
 (data (i32.const 728) "\c8\02\00\00\c8\02")
 (data (i32.const 744) "\0f\00\00\00\14")
 (data (i32.const 760) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 784) "\0f\00\00\00\14")
 (data (i32.const 800) "\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 824) "\0f\00\00\00\14")
 (data (i32.const 840) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 864) "\0f\00\00\00\14")
 (data (i32.const 880) "\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05")
 (data (i32.const 904) "\0f\00\00\00\14")
 (data (i32.const 920) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 944) "\0f\00\00\00\14")
 (data (i32.const 960) "\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 984) "\0f\00\00\00\14")
 (data (i32.const 1000) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1024) "\0f\00\00\00\14")
 (data (i32.const 1040) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1064) "\0f\00\00\00\14")
 (data (i32.const 1080) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1104) "\0f\00\00\00\14")
 (data (i32.const 1120) "\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1144) "\0f\00\00\00\14")
 (data (i32.const 1160) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1184) "\0f\00\00\00\14")
 (data (i32.const 1200) "\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1224) "\0f\00\00\00\14")
 (data (i32.const 1240) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1264) "\0f\00\00\00\14")
 (data (i32.const 1280) "\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 1304) "\0f\00\00\00\14")
 (data (i32.const 1320) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1344) "\0f\00\00\00\14")
 (data (i32.const 1360) "\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1384) "\0f\00\00\00\14")
 (data (i32.const 1400) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1424) "\0f\00\00\00\14")
 (data (i32.const 1440) "\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1464) "\0f\00\00\00\14")
 (data (i32.const 1480) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1504) "\0f\00\00\00\14")
 (data (i32.const 1520) "\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1544) "\0f\00\00\00\14")
 (data (i32.const 1560) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1584) "\0f\00\00\00\14")
 (data (i32.const 1600) "\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 1624) "\0f\00\00\00\14")
 (data (i32.const 1640) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1664) "\0f\00\00\00\14")
 (data (i32.const 1680) "\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 1704) "\0f\00\00\00\14")
 (data (i32.const 1720) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1744) "\11\00\00\00\10")
 (data (i32.const 1760) "\b8\06\00\00\b8\06\00\00\14\00\00\00\05")
 (data (i32.const 1776) "\0f\00\00\00\14")
 (data (i32.const 1792) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1816) "\0f")
 (data (i32.const 1832) "\0f\00\00\00\14")
 (data (i32.const 1848) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1872) "\0f\00\00\00\0c")
 (data (i32.const 1888) "\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1904) "\0f\00\00\00\08")
 (data (i32.const 1920) "\01\00\00\00\02")
 (data (i32.const 1928) "\0f\00\00\00\14")
 (data (i32.const 1944) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1968) "\0f\00\00\00\08")
 (data (i32.const 1984) "\03\00\00\00\04")
 (data (i32.const 1992) "\0f\00\00\00\0c")
 (data (i32.const 2008) "\01\00\00\00\02\00\00\00\05")
 (data (i32.const 2024) "\0f\00\00\00\14")
 (data (i32.const 2040) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2064) "\0f\00\00\00\04")
 (data (i32.const 2080) "\01")
 (data (i32.const 2088) "\0f\00\00\00\10")
 (data (i32.const 2104) "\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2120) "\0f\00\00\00\14")
 (data (i32.const 2136) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2160) "\0f\00\00\00\04")
 (data (i32.const 2176) "\05")
 (data (i32.const 2184) "\0f\00\00\00\10")
 (data (i32.const 2200) "\01\00\00\00\02\00\00\00\03\00\00\00\04")
 (data (i32.const 2216) "\0f\00\00\00\14")
 (data (i32.const 2232) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2256) "\0f\00\00\00\08")
 (data (i32.const 2272) "\04\00\00\00\05")
 (data (i32.const 2280) "\0f\00\00\00\0c")
 (data (i32.const 2296) "\01\00\00\00\02\00\00\00\03")
 (data (i32.const 2312) "\0f\00\00\00\14")
 (data (i32.const 2328) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2352) "\0f\00\00\00\04")
 (data (i32.const 2368) "\04")
 (data (i32.const 2376) "\0f\00\00\00\10")
 (data (i32.const 2392) "\01\00\00\00\02\00\00\00\03\00\00\00\05")
 (data (i32.const 2408) "\0f\00\00\00\14")
 (data (i32.const 2424) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2448) "\0f\00\00\00\04")
 (data (i32.const 2464) "\01")
 (data (i32.const 2472) "\0f\00\00\00\10")
 (data (i32.const 2488) "\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2504) "\0f\00\00\00\14")
 (data (i32.const 2520) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2544) "\0f")
 (data (i32.const 2560) "\0f\00\00\00\14")
 (data (i32.const 2576) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2600) "\0f\00\00\00\14")
 (data (i32.const 2616) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2640) "\0f")
 (data (i32.const 2656) "\0f\00\00\00\14")
 (data (i32.const 2672) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2696) "\0f\00\00\00\14")
 (data (i32.const 2712) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2736) "\0f")
 (data (i32.const 2752) "\0f\00\00\00\14")
 (data (i32.const 2768) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2792) "\0f\00\00\00\14")
 (data (i32.const 2808) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2832) "\0f")
 (data (i32.const 2848) "\0f\00\00\00\14")
 (data (i32.const 2864) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2888) "\0f\00\00\00\14")
 (data (i32.const 2904) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2928) "\0f")
 (data (i32.const 2944) "\0f\00\00\00\14")
 (data (i32.const 2960) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2984) "\10\00\00\00\18")
 (data (i32.const 3000) "~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 3024) "\10\00\00\00\ac")
 (data (i32.const 3040) "A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?")
 (data (i32.const 3216) "\0f\00\00\00 ")
 (data (i32.const 3234) "\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 3264) "\16\00\00\00\10")
 (data (i32.const 3280) "\a0\0c\00\00\a0\0c\00\00 \00\00\00\08")
 (data (i32.const 3296) "\0f\00\00\00 ")
 (data (i32.const 3314) "\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 3344) "\0f\00\00\00@")
 (data (i32.const 3366) "\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?")
 (data (i32.const 3406) "\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 3424) "\17\00\00\00\10")
 (data (i32.const 3440) " \0d\00\00 \0d\00\00@\00\00\00\08")
 (data (i32.const 3456) "\0f\00\00\00@")
 (data (i32.const 3478) "\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf")
 (data (i32.const 3510) "\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 3536) "\0f\00\00\00\14")
 (data (i32.const 3552) "\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 3576) "\11\00\00\00\10")
 (data (i32.const 3592) "\e0\0d\00\00\e0\0d\00\00\14\00\00\00\05")
 (data (i32.const 3608) "\0f\00\00\00\14")
 (data (i32.const 3624) "\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02")
 (data (i32.const 3648) "\0f\00\00\00\14")
 (data (i32.const 3664) "\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 3688) "\15\00\00\00\10")
 (data (i32.const 3704) "P\0e\00\00P\0e\00\00\14\00\00\00\05")
 (data (i32.const 3720) "\0f\00\00\00\14")
 (data (i32.const 3740) "\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 3760) "\0f")
 (data (i32.const 3776) "\11\00\00\00\10")
 (data (i32.const 3792) "\c0\0e\00\00\c0\0e")
 (data (i32.const 3808) "\0f\00\00\00\04")
 (data (i32.const 3824) "\01")
 (data (i32.const 3832) "\11\00\00\00\10")
 (data (i32.const 3848) "\f0\0e\00\00\f0\0e\00\00\04\00\00\00\01")
 (data (i32.const 3864) "\0f\00\00\00\08")
 (data (i32.const 3880) "\02\00\00\00\01")
 (data (i32.const 3888) "\11\00\00\00\10")
 (data (i32.const 3904) "(\0f\00\00(\0f\00\00\08\00\00\00\02")
 (data (i32.const 3920) "\0f\00\00\00\10")
 (data (i32.const 3936) "\03\00\00\00\02\00\00\00\01")
 (data (i32.const 3952) "\11\00\00\00\10")
 (data (i32.const 3968) "`\0f\00\00`\0f\00\00\10\00\00\00\04")
 (data (i32.const 3984) "\0f\00\00\00\10")
 (data (i32.const 4004) "\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4016) "\11\00\00\00\10")
 (data (i32.const 4032) "\a0\0f\00\00\a0\0f\00\00\10\00\00\00\04")
 (data (i32.const 4048) "\0f\00\00\00\04")
 (data (i32.const 4064) "\01")
 (data (i32.const 4072) "\0f\00\00\00\08")
 (data (i32.const 4088) "\01\00\00\00\02")
 (data (i32.const 4096) "\10\00\00\00\02")
 (data (i32.const 4112) "a")
 (data (i32.const 4120) "\10\00\00\00\02")
 (data (i32.const 4136) "b")
 (data (i32.const 4144) "\10\00\00\00\04")
 (data (i32.const 4160) "a\00b")
 (data (i32.const 4168) "\10\00\00\00\04")
 (data (i32.const 4184) "b\00a")
 (data (i32.const 4192) "\10")
 (data (i32.const 4208) "\0f\00\00\00\1c")
 (data (i32.const 4224) "\10\10\00\00(\10\00\00\10\10\00\00@\10\00\00X\10\00\00p\10")
 (data (i32.const 4256) "\1b\00\00\00\10")
 (data (i32.const 4272) "\80\10\00\00\80\10\00\00\1c\00\00\00\07")
 (data (i32.const 4288) "\0f\00\00\00\1c")
 (data (i32.const 4304) "p\10\00\00\10\10\00\00\10\10\00\00@\10\00\00(\10\00\00X\10")
 (data (i32.const 4336) "\1b\00\00\00\10")
 (data (i32.const 4352) "\d0\10\00\00\d0\10\00\00\1c\00\00\00\07")
 (data (i32.const 4368) "\10\00\00\00\1c")
 (data (i32.const 4384) "~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 4416) "\10\00\00\00\08")
 (data (i32.const 4432) "n\00u\00l\00l")
 (data (i32.const 4440) "\0f\00\00\00\02")
 (data (i32.const 4456) "\01")
 (data (i32.const 4464) "\10\00\00\00\08")
 (data (i32.const 4480) "t\00r\00u\00e")
 (data (i32.const 4488) "\10\00\00\00\n")
 (data (i32.const 4504) "f\00a\00l\00s\00e")
 (data (i32.const 4520) "\10\00\00\00\02")
 (data (i32.const 4536) ",")
 (data (i32.const 4544) "\0f\00\00\00\02")
 (data (i32.const 4560) "\01")
 (data (i32.const 4568) "\10\00\00\00\14")
 (data (i32.const 4584) "t\00r\00u\00e\00,\00f\00a\00l\00s\00e")
 (data (i32.const 4608) "\0f\00\00\00\0c")
 (data (i32.const 4624) "\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 4640) "\10\00\00\00\02")
 (data (i32.const 4656) "0")
 (data (i32.const 4664) "\0f\00\00\00\90\01")
 (data (i32.const 4680) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 5080) "\15\00\00\00\10")
 (data (i32.const 5096) "H\12\00\00H\12\00\00\90\01\00\00d")
 (data (i32.const 5112) "\0f\00\00\00\0c")
 (data (i32.const 5128) "\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 5144) "\10\00\00\00\n")
 (data (i32.const 5160) "1\00-\002\00-\003")
 (data (i32.const 5176) "\0f\00\00\00\0c")
 (data (i32.const 5192) "\01\00\00\00\02\00\00\00\03")
 (data (i32.const 5208) "\10\00\00\00\02")
 (data (i32.const 5224) "-")
 (data (i32.const 5232) "\0f\00\00\00\0c")
 (data (i32.const 5248) "\01\00\00\00\02\00\00\00\03")
 (data (i32.const 5264) "\0f\00\00\00\08")
 (data (i32.const 5283) "\80\00\00\00\80")
 (data (i32.const 5288) "\10\00\00\00\04")
 (data (i32.const 5304) "_\00_")
 (data (i32.const 5312) "\0f\00\00\00\08")
 (data (i32.const 5331) "\80\00\00\00\80")
 (data (i32.const 5336) "\10\00\00\000")
 (data (i32.const 5352) "-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 5400) "\0f\00\00\000")
 (data (i32.const 5430) "\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 5464) "\10\00\00\00\04")
 (data (i32.const 5480) ",\00 ")
 (data (i32.const 5488) "\10\00\00\00\06")
 (data (i32.const 5504) "0\00.\000")
 (data (i32.const 5512) "\10\00\00\00\06")
 (data (i32.const 5528) "N\00a\00N")
 (data (i32.const 5536) "\10\00\00\00\12")
 (data (i32.const 5552) "-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 5576) "\10\00\00\00\10")
 (data (i32.const 5592) "I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 5608) "\0f\00\00\00\b8\02")
 (data (i32.const 5624) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 6320) "\1e\00\00\00\10")
 (data (i32.const 6336) "\f8\15\00\00\f8\15\00\00\b8\02\00\00W")
 (data (i32.const 6352) "\0f\00\00\00\ae")
 (data (i32.const 6368) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 6544) "\1f\00\00\00\10")
 (data (i32.const 6560) "\e0\18\00\00\e0\18\00\00\ae\00\00\00W")
 (data (i32.const 6576) "\0f\00\00\00(")
 (data (i32.const 6592) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 6632) "\15\00\00\00\10")
 (data (i32.const 6648) "\c0\19\00\00\c0\19\00\00(\00\00\00\n")
 (data (i32.const 6664) "\0f\00\00\000")
 (data (i32.const 6694) "\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 6728) "\10\00\00\00P")
 (data (i32.const 6744) "0\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 6824) "\10\00\00\00\02")
 (data (i32.const 6840) "1")
 (data (i32.const 6848) "\0f\00\00\00\0c")
 (data (i32.const 6864) "p\10\00\00\b8\1a")
 (data (i32.const 6880) "\0f\00\00\00\0c")
 (data (i32.const 6896) "p\10\00\00\b8\1a")
 (data (i32.const 6912) "\10\00\00\00\1e")
 (data (i32.const 6928) "[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 6960) "\10\00\00\00@")
 (data (i32.const 6976) "[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 7040) "\10\00\00\00\06")
 (data (i32.const 7056) "1\00,\002")
 (data (i32.const 7064) "\10\00\00\00\0e")
 (data (i32.const 7080) "0\00,\001\00,\002\00,\003")
 (data (i32.const 7096) "\0f\00\00\00\03")
 (data (i32.const 7112) "\01\ff")
 (data (i32.const 7120) "\0f\00\00\00\03")
 (data (i32.const 7136) "\01\ff")
 (data (i32.const 7144) "\10\00\00\00\0c")
 (data (i32.const 7160) "1\00,\00-\001\00,\000")
 (data (i32.const 7176) "\0f\00\00\00\06")
 (data (i32.const 7192) "\01\00\ff\ff")
 (data (i32.const 7200) "\0f\00\00\00\06")
 (data (i32.const 7216) "\01\00\ff\ff")
 (data (i32.const 7224) "\10\00\00\00\12")
 (data (i32.const 7240) "1\00,\006\005\005\003\005\00,\000")
 (data (i32.const 7264) "\0f\00\00\00\18")
 (data (i32.const 7280) "\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 7304) "\0f\00\00\00\18")
 (data (i32.const 7320) "\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 7344) "\10\00\00\000")
 (data (i32.const 7360) "1\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000")
 (data (i32.const 7408) "\0f\00\00\00 ")
 (data (i32.const 7424) "\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff")
 (data (i32.const 7448) "\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7456) "\0f\00\00\00 ")
 (data (i32.const 7472) "\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff")
 (data (i32.const 7496) "\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7504) "\10\00\00\00T")
 (data (i32.const 7520) "-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007")
 (data (i32.const 7608) "\10\00\00\00\1a")
 (data (i32.const 7624) ",\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,")
 (data (i32.const 7656) "\10\00\00\00\02")
 (data (i32.const 7672) "2")
 (data (i32.const 7680) "\10\00\00\00\02")
 (data (i32.const 7696) "4")
 (data (i32.const 7704) "\0f\00\00\00\10")
 (data (i32.const 7720) "\b8\1a\00\00\f8\1d\00\00\00\00\00\00\10\1e")
 (data (i32.const 7736) "\0f\00\00\00\10")
 (data (i32.const 7752) "\b8\1a\00\00\f8\1d\00\00\00\00\00\00\10\1e")
 (data (i32.const 7768) "\10\00\00\00\0c")
 (data (i32.const 7784) "1\00,\002\00,\00,\004")
 (data (i32.const 7800) "\0f\00\00\00\08")
 (data (i32.const 7816) "\01\00\00\00\02")
 (data (i32.const 7824) "\0f\00\00\00\08")
 (data (i32.const 7840) "\01\00\00\00\02")
 (data (i32.const 7848) "\0f\00\00\00\08")
 (data (i32.const 7864) "\03\00\00\00\04")
 (data (i32.const 7872) "\10\00\00\00\0e")
 (data (i32.const 7888) "1\00,\002\00,\003\00,\004")
 (data (i32.const 7904) "\0f\00\00\00\02")
 (data (i32.const 7920) "\01\02")
 (data (i32.const 7928) "\0f\00\00\00\02")
 (data (i32.const 7944) "\01\02")
 (data (i32.const 7952) "\0f\00\00\00\02")
 (data (i32.const 7968) "\03\04")
 (data (i32.const 7976) "\0f\00\00\00\04")
 (data (i32.const 7992) "\01")
 (data (i32.const 8000) "\0f\00\00\00\04")
 (data (i32.const 8016) "\01")
 (data (i32.const 8024) "\0f\00\00\00\04")
 (data (i32.const 8040) "\01")
 (data (i32.const 8048) "\0f\00\00\00\04")
 (data (i32.const 8064) "\01")
 (data (i32.const 8072) "(")
 (data (i32.const 8208) "!\00\00\00\0e")
 (data (i32.const 8228) "\0e\00\00\00\t\00\00\00\0e\00\00\00!\00\00\00\0e\00\00\00!\00\00\00\0e\00\00\00A\00\00\00\0e\00\00\00!\02\00\00\0e")
 (data (i32.const 8280) "!\02\00\00\0e\00\00\00!\03\00\00\0e\00\00\00!\02\00\00\0e\00\00\00\t\00\00\00\0e\00\00\00A\00\00\00\0e\00\00\00\11\00\00\00\0e")
 (data (i32.const 8336) "!\03\00\00\0e\00\00\00\t\00\00\00\0e\00\00\00\11\00\00\00\0e\00\00\00A\00\00\00\0e\00\00\00!\02\00\00\0e\00\00\00!\02\00\00\0e\00\00\00!\02\00\00\0e")
 (table $0 57 funcref)
 (elem (i32.const 0) $~lib/runtime/runtime.collect $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|2 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|16 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $start:std/array~anonymous|47 $start:std/array~anonymous|48 $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/Null (mut i32) (i32.const 0))
 (global $std/array/arr8 (mut i32) (i32.const 224))
 (global $std/array/arr32 (mut i32) (i32.const 464))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $std/array/other (mut i32) (i32.const 0))
 (global $std/array/out (mut i32) (i32.const 0))
 (global $std/array/source (mut i32) (i32.const 728))
 (global $std/array/cwArr (mut i32) (i32.const 0))
 (global $std/array/includes (mut i32) (i32.const 0))
 (global $std/array/sarr (mut i32) (i32.const 1760))
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
 (global $std/array/f32ArrayTyped (mut i32) (i32.const 3280))
 (global $std/array/f64ArrayTyped (mut i32) (i32.const 3440))
 (global $std/array/i32ArrayTyped (mut i32) (i32.const 3592))
 (global $std/array/u32ArrayTyped (mut i32) (i32.const 3704))
 (global $std/array/reversed0 (mut i32) (i32.const 3792))
 (global $std/array/reversed1 (mut i32) (i32.const 3848))
 (global $std/array/reversed2 (mut i32) (i32.const 3904))
 (global $std/array/reversed4 (mut i32) (i32.const 3968))
 (global $std/array/expected4 (mut i32) (i32.const 4032))
 (global $std/array/reversed64 (mut i32) (i32.const 0))
 (global $std/array/reversed128 (mut i32) (i32.const 0))
 (global $std/array/reversed1024 (mut i32) (i32.const 0))
 (global $std/array/reversed10000 (mut i32) (i32.const 0))
 (global $std/array/randomized512 (mut i32) (i32.const 0))
 (global $std/array/randomized64 (mut i32) (i32.const 0))
 (global $std/array/randomized257 (mut i32) (i32.const 0))
 (global $std/array/reversedNested512 (mut i32) (i32.const 0))
 (global $std/array/reversedElements512 (mut i32) (i32.const 0))
 (global $std/array/randomStringsActual (mut i32) (i32.const 4272))
 (global $std/array/randomStringsExpected (mut i32) (i32.const 4352))
 (global $std/array/randomStrings400 (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $std/array/refArr (mut i32) (i32.const 0))
 (global $std/array/subarr32 (mut i32) (i32.const 0))
 (global $std/array/subarr8 (mut i32) (i32.const 0))
 (global $std/array/subarrU32 (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "main" (func $std/array/main))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray))
 (export "$.retain" (func $~lib/runtime/runtime.retain))
 (export "$.release" (func $~lib/runtime/runtime.retain))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (export "$.capabilities" (global $~lib/capabilities))
 (func $~lib/allocator/arena/__mem_allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/runtime/allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 15
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__mem_allocate
  local.tee $1
  i32.const -1520547049
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
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.fill (; 4 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
  end
 )
 (func $~lib/util/runtime/register (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 8400
  i32.le_u
  if
   i32.const 0
   i32.const 80
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 0
   i32.const 24
   i32.const 54
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/util/runtime/allocate
  local.tee $1
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 15
  call $~lib/util/runtime/register
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 24
   i32.const 12
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $2
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/util/runtime/allocate
   i32.const 14
   call $~lib/util/runtime/register
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
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (; 8 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 16
  call $~lib/util/runtime/allocate
  i32.const 17
  call $~lib/util/runtime/register
  i32.const 0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u8>#fill (; 9 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $0
  i32.load offset=12
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
   local.get $1
   local.get $2
   local.get $0
   i32.sub
   call $~lib/memory/memory.fill
  end
 )
 (func $~lib/memory/memory.copy (; 10 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
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
       br_if $~lib/util/memory/memmove|inlined.0
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
       br_if $~lib/util/memory/memmove|inlined.0
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
  end
 )
 (func $~lib/util/runtime/makeArray (; 11 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  call $~lib/util/runtime/allocate
  local.get $2
  call $~lib/util/runtime/register
  local.set $2
  local.get $0
  local.get $1
  i32.shl
  local.tee $4
  call $~lib/util/runtime/allocate
  i32.const 15
  call $~lib/util/runtime/register
  local.tee $1
  local.set $5
  local.get $2
  i32.load
  drop
  local.get $2
  local.get $5
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $4
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $1
   local.get $3
   local.get $4
   call $~lib/memory/memory.copy
  end
  local.get $2
 )
 (func $~lib/array/Array<u8>#__get (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 280
   i32.const 99
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $std/array/isArraysEqual<u8> (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.tee $3
  local.get $1
  i32.load offset=12
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
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/array/Array<u8>#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<u8>#__get
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
 (func $~lib/array/Array<u32>#fill (; 14 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=12
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
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
 )
 (func $~lib/array/Array<u32>#__get (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 280
   i32.const 99
   i32.const 61
   call $~lib/builtins/abort
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
 (func $std/array/isArraysEqual<u32> (; 16 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  i32.eqz
  if
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $1
   i32.load offset=12
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
 (func $~lib/util/runtime/reallocate (; 17 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 16
  i32.sub
  local.tee $4
  i32.load offset=4
  local.tee $2
  local.get $1
  i32.lt_u
  if
   i32.const 1
   i32.const 32
   local.get $1
   i32.const 15
   i32.add
   i32.clz
   i32.sub
   i32.shl
   local.tee $3
   local.set $5
   i32.const 1
   i32.const 32
   local.get $2
   i32.const 15
   i32.add
   i32.clz
   i32.sub
   i32.shl
   i32.const 0
   local.get $0
   i32.const 8400
   i32.gt_u
   select
   local.get $3
   i32.lt_u
   if
    local.get $5
    call $~lib/allocator/arena/__mem_allocate
    local.tee $3
    local.get $4
    i32.load
    i32.store
    local.get $3
    i32.const 0
    i32.store offset=8
    local.get $3
    i32.const 0
    i32.store offset=12
    local.get $3
    i32.const 16
    i32.add
    local.tee $5
    local.get $0
    local.get $2
    call $~lib/memory/memory.copy
    local.get $2
    local.get $5
    i32.add
    i32.const 0
    local.get $1
    local.get $2
    i32.sub
    call $~lib/memory/memory.fill
    local.get $4
    i32.load
    i32.const -1520547049
    i32.eq
    if
     local.get $0
     i32.const 8400
     i32.le_u
     if
      i32.const 0
      i32.const 80
      i32.const 91
      i32.const 8
      call $~lib/builtins/abort
      unreachable
     end
    end
    local.get $3
    local.set $4
    local.get $5
    local.set $0
   else    
    local.get $0
    local.get $2
    i32.add
    i32.const 0
    local.get $1
    local.get $2
    i32.sub
    call $~lib/memory/memory.fill
   end
  end
  local.get $4
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/ensureCapacity (; 18 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435452
   i32.gt_u
   if
    i32.const 0
    i32.const 280
    i32.const 14
    i32.const 64
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $2
   local.get $1
   i32.const 2
   i32.shl
   local.tee $3
   call $~lib/util/runtime/reallocate
   local.set $1
   local.get $1
   local.get $2
   i32.ne
   if
    local.get $0
    i32.load
    drop
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i32>#push (; 19 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
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
 )
 (func $~lib/array/Array<i32>#pop (; 20 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 0
   i32.const 280
   i32.const 311
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
 (func $~lib/array/Array<i32>#concat (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.const 0
  local.get $1
  select
  local.tee $4
  i32.add
  local.tee $2
  i32.const 268435452
  i32.gt_u
  if
   i32.const 0
   i32.const 280
   i32.const 236
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.const 17
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $2
  i32.load offset=4
  local.tee $5
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  local.tee $0
  call $~lib/memory/memory.copy
  local.get $0
  local.get $5
  i32.add
  local.get $1
  i32.load offset=4
  local.get $4
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/array/Array<i32>#copyWithin (; 22 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $3
  local.get $0
  i32.load offset=12
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
     local.get $1
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     local.get $2
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     i32.load
     i32.store
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
   local.get $1
   i32.const 2
   i32.shl
   local.get $5
   i32.add
   local.get $2
   i32.const 2
   i32.shl
   local.get $5
   i32.add
   local.get $4
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
 )
 (func $~lib/array/Array<i32>#unshift (; 23 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.add
  local.tee $2
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.tee $3
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
 )
 (func $~lib/array/Array<i32>#shift (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 0
   i32.const 280
   i32.const 383
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.load
  local.set $3
  local.get $2
  local.get $2
  i32.const 4
  i32.add
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  local.tee $4
  call $~lib/memory/memory.copy
  local.get $2
  local.get $4
  i32.add
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $3
 )
 (func $~lib/array/Array<i32>#reverse (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $0
   i32.load offset=4
   local.set $1
   local.get $0
   i32.load offset=4
   local.get $2
   i32.const 1
   i32.sub
   i32.const 2
   i32.shl
   i32.add
   local.set $0
   loop $continue|0
    local.get $1
    local.get $0
    i32.lt_u
    if
     local.get $1
     i32.load
     local.set $2
     local.get $1
     local.get $0
     i32.load
     i32.store
     local.get $0
     local.get $2
     i32.store
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     local.get $0
     i32.const 4
     i32.sub
     local.set $0
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<i32>#indexOf (; 26 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
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
  i32.load offset=4
  local.set $0
  loop $continue|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
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
  i32.const -1
 )
 (func $~lib/array/Array<i32>#includes (; 27 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#splice (; 28 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  local.get $0
  i32.load offset=12
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
  i32.const 2
  i32.const 17
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $4
  i32.load offset=4
  drop
  local.get $4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.tee $5
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.tee $6
  local.get $2
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.tee $1
  local.get $3
  i32.ne
  if
   local.get $6
   local.get $1
   i32.const 2
   i32.shl
   local.get $5
   i32.add
   local.get $3
   local.get $1
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
  local.get $4
 )
 (func $~lib/array/Array<i32>#__set (; 29 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $0
  local.get $1
  i32.const 1
  i32.add
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
 (func $start:std/array~anonymous|0 (; 30 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
 )
 (func $~lib/array/Array<i32>#findIndex (; 31 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $3
    local.get $0
    i32.load offset=12
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
 (func $start:std/array~anonymous|1 (; 32 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.eq
 )
 (func $start:std/array~anonymous|2 (; 33 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|3 (; 34 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|5 (; 35 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|6 (; 36 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#every (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $3
    local.get $0
    i32.load offset=12
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
 (func $start:std/array~anonymous|7 (; 38 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.le_s
 )
 (func $start:std/array~anonymous|8 (; 39 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|9 (; 40 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|10 (; 41 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.lt_s
 )
 (func $start:std/array~anonymous|11 (; 42 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 3
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#some (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $3
    local.get $0
    i32.load offset=12
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
 (func $start:std/array~anonymous|12 (; 44 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const -1
  i32.le_s
 )
 (func $start:std/array~anonymous|13 (; 45 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|14 (; 46 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|15 (; 47 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.gt_s
 )
 (func $start:std/array~anonymous|16 (; 48 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $~lib/array/Array<i32>#forEach (; 49 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $break|0
   local.get $0
   i32.load offset=12
   local.set $3
   loop $repeat|0
    local.get $2
    local.get $3
    local.get $0
    i32.load offset=12
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
 (func $start:std/array~anonymous|17 (; 50 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|19 (; 51 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|20 (; 52 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 160
    i32.const 561
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $start:std/array~anonymous|21 (; 53 ;) (type $FUNCSIG$fiii) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  f32.convert_i32_s
 )
 (func $~lib/array/Array<i32>#map<f32> (; 54 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 2
  i32.const 22
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $4
  i32.load offset=4
  local.set $5
  loop $repeat|0
   local.get $1
   local.get $3
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $3
   local.get $2
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $1
    i32.const 2
    i32.shl
    local.tee $2
    local.get $0
    i32.load offset=4
    i32.add
    i32.load
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $2
    local.get $5
    i32.add
    local.get $6
    local.get $1
    local.get $0
    i32.const 22
    call_indirect (type $FUNCSIG$fiii)
    f32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $4
 )
 (func $~lib/array/Array<f32>#__get (; 55 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 280
   i32.const 99
   i32.const 61
   call $~lib/builtins/abort
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
 (func $start:std/array~anonymous|22 (; 56 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $~lib/array/Array<i32>#map<i32> (; 57 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.tee $4
  i32.const 2
  i32.const 17
  i32.const 0
  call $~lib/util/runtime/makeArray
  i32.load offset=4
  local.set $5
  loop $repeat|0
   local.get $2
   local.get $4
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $4
   local.get $3
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.tee $3
    local.get $0
    i32.load offset=4
    i32.add
    i32.load
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $3
    local.get $5
    i32.add
    local.get $6
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
 )
 (func $start:std/array~anonymous|23 (; 58 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|24 (; 59 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|25 (; 60 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#filter (; 61 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 2
  i32.const 17
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $5
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $5
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $5
    local.get $3
    i32.lt_s
    select
    i32.ge_s
    br_if $break|0
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
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
 (func $start:std/array~anonymous|26 (; 62 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|27 (; 63 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|28 (; 64 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|29 (; 65 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 66 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  local.set $4
  loop $repeat|0
   block $break|0
    local.get $3
    local.get $4
    local.get $0
    i32.load offset=12
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
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
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
 (func $start:std/array~anonymous|31 (; 67 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start:std/array~anonymous|32 (; 68 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start:std/array~anonymous|33 (; 69 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|35 (; 70 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 71 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
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
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
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
 (func $~lib/math/splitMix32 (; 72 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/math/NativeMath.seedRandom (; 73 ;) (type $FUNCSIG$vj) (param $0 i64)
  (local $1 i64)
  local.get $0
  i64.eqz
  if
   i32.const 0
   i32.const 3000
   i32.const 1021
   i32.const 4
   call $~lib/builtins/abort
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
 (func $~lib/util/sort/insertionSort<f32> (; 74 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 i32)
  block $break|0
   loop $repeat|0
    local.get $3
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    f32.load
    local.set $5
    local.get $3
    i32.const 1
    i32.sub
    local.set $4
    loop $continue|1
     local.get $4
     i32.const 0
     i32.ge_s
     if
      block $break|1
       local.get $4
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       f32.load
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
       local.get $4
       local.tee $7
       i32.const 1
       i32.sub
       local.set $4
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       local.get $6
       f32.store
       br $continue|1
      end
     end
    end
    local.get $4
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $5
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
 (func $~lib/util/sort/weakHeapSort<f32> (; 75 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/allocator/arena/__mem_allocate
  local.tee $7
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
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
    f32.load
    local.set $5
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    f32.load
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
     f32.store
     local.get $3
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $6
     f32.store
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
    f32.load
    local.set $5
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    f32.load
    f32.store
    local.get $1
    local.get $5
    f32.store
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
      f32.load
      local.set $5
      local.get $1
      i32.const 2
      i32.shl
      local.get $0
      i32.add
      f32.load
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
       f32.store
       local.get $0
       local.get $6
       f32.store
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
  f32.load offset=4
  local.set $5
  local.get $0
  local.get $0
  f32.load
  f32.store offset=4
  local.get $0
  local.get $5
  f32.store
 )
 (func $~lib/array/Array<f32>#sort (; 76 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 280
   i32.const 528
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.le_s
  if
   return
  end
  local.get $0
  i32.load offset=4
  local.set $0
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $0
   f32.load offset=4
   local.set $3
   local.get $0
   f32.load
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
    local.get $4
    f32.store offset=4
    local.get $0
    local.get $3
    f32.store
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
   call $~lib/util/sort/insertionSort<f32>
  else   
   local.get $0
   local.get $2
   local.get $1
   call $~lib/util/sort/weakHeapSort<f32>
  end
 )
 (func $~lib/util/sort/COMPARATOR<f32>~anonymous|0 (; 77 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
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
 (func $std/array/isArraysEqual<f32> (; 78 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.tee $4
  local.get $1
  i32.load offset=12
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
    local.get $0
    local.get $2
    call $~lib/array/Array<f32>#__get
    local.tee $3
    local.get $3
    f32.ne
    local.get $1
    local.get $2
    call $~lib/array/Array<f32>#__get
    local.tee $3
    local.get $3
    f32.ne
    i32.ne
    if
     local.get $0
     local.get $2
     call $~lib/array/Array<f32>#__get
     local.get $1
     local.get $2
     call $~lib/array/Array<f32>#__get
     f32.ne
     if
      i32.const 0
      return
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  i32.const 1
 )
 (func $~lib/util/sort/insertionSort<f64> (; 79 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  block $break|0
   loop $repeat|0
    local.get $3
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $3
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load
    local.set $5
    local.get $3
    i32.const 1
    i32.sub
    local.set $4
    loop $continue|1
     local.get $4
     i32.const 0
     i32.ge_s
     if
      block $break|1
       local.get $4
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       f64.load
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
       local.get $4
       local.tee $7
       i32.const 1
       i32.sub
       local.set $4
       local.get $7
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       local.get $6
       f64.store
       br $continue|1
      end
     end
    end
    local.get $4
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $5
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
 (func $~lib/util/sort/weakHeapSort<f64> (; 80 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/allocator/arena/__mem_allocate
  local.tee $7
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
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
    f64.load
    local.set $5
    local.get $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load
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
     f64.store
     local.get $3
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $6
     f64.store
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
    f64.load
    local.set $5
    local.get $0
    local.get $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    f64.load
    f64.store
    local.get $1
    local.get $5
    f64.store
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
      f64.load
      local.set $5
      local.get $1
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      f64.load
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
       f64.store
       local.get $0
       local.get $6
       f64.store
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
  f64.load offset=8
  local.set $5
  local.get $0
  local.get $0
  f64.load
  f64.store offset=8
  local.get $0
  local.get $5
  f64.store
 )
 (func $~lib/array/Array<f64>#sort (; 81 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 280
   i32.const 528
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.le_s
  if
   return
  end
  local.get $0
  i32.load offset=4
  local.set $0
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $0
   f64.load offset=8
   local.set $3
   local.get $0
   f64.load
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
    local.get $4
    f64.store offset=8
    local.get $0
    local.get $3
    f64.store
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
   call $~lib/util/sort/insertionSort<f64>
  else   
   local.get $0
   local.get $2
   local.get $1
   call $~lib/util/sort/weakHeapSort<f64>
  end
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 82 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/array/Array<f64>#__get (; 83 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 280
   i32.const 99
   i32.const 61
   call $~lib/builtins/abort
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
 (func $std/array/isArraysEqual<f64> (; 84 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.tee $4
  local.get $1
  i32.load offset=12
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
    local.get $0
    local.get $2
    call $~lib/array/Array<f64>#__get
    local.tee $3
    local.get $3
    f64.ne
    local.get $1
    local.get $2
    call $~lib/array/Array<f64>#__get
    local.tee $3
    local.get $3
    f64.ne
    i32.ne
    if
     local.get $0
     local.get $2
     call $~lib/array/Array<f64>#__get
     local.get $1
     local.get $2
     call $~lib/array/Array<f64>#__get
     f64.ne
     if
      i32.const 0
      return
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  i32.const 1
 )
 (func $~lib/util/sort/insertionSort<i32> (; 85 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   loop $repeat|0
    local.get $3
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    local.set $5
    local.get $3
    i32.const 1
    i32.sub
    local.set $4
    loop $continue|1
     local.get $4
     i32.const 0
     i32.ge_s
     if
      block $break|1
       local.get $4
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       i32.load
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
       local.get $4
       local.tee $7
       i32.const 1
       i32.sub
       local.set $4
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       local.get $6
       i32.store
       br $continue|1
      end
     end
    end
    local.get $4
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $5
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
 (func $~lib/util/sort/weakHeapSort<i32> (; 86 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/allocator/arena/__mem_allocate
  local.tee $6
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
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
    i32.load
    local.set $3
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
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
     i32.store
     local.get $7
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $5
     i32.store
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
    i32.load
    local.set $1
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $3
    i32.load
    i32.store
    local.get $3
    local.get $1
    i32.store
    i32.const 1
    local.set $1
    loop $continue|3
     local.get $1
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $6
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
      i32.load
      local.set $3
      local.get $1
      i32.const 2
      i32.shl
      local.get $0
      i32.add
      i32.load
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
       local.get $1
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
       local.get $3
       i32.store
       local.get $0
       local.get $5
       i32.store
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
  i32.load offset=4
  local.set $1
  local.get $0
  local.get $0
  i32.load
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/array/Array<i32>#sort (; 87 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 280
   i32.const 528
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.tee $2
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
   local.set $2
   local.get $3
   i32.load
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
    local.get $4
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store
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
   call $~lib/util/sort/insertionSort<i32>
  else   
   local.get $3
   local.get $2
   local.get $1
   call $~lib/util/sort/weakHeapSort<i32>
  end
  local.get $0
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|0 (; 88 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/util/sort/COMPARATOR<u32>~anonymous|0 (; 89 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $~lib/array/Array.create<i32> (; 90 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 0
   i32.const 280
   i32.const 44
   i32.const 62
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const 17
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.load offset=4
  i32.const 0
  local.get $0
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $0
 )
 (func $std/array/createReverseOrderedArray (; 91 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/array/Array.create<i32>
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $0
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $1
    local.get $0
    i32.const 1
    i32.sub
    local.get $1
    i32.sub
    call $~lib/array/Array<i32>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $~lib/math/NativeMath.random (; 92 ;) (type $FUNCSIG$d) (result f64)
  (local $0 i64)
  (local $1 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   i32.const 0
   i32.const 3000
   i32.const 1030
   i32.const 24
   call $~lib/builtins/abort
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
 (func $std/array/createRandomOrderedArray (; 93 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/array/Array.create<i32>
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $0
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $1
    call $~lib/math/NativeMath.random
    local.get $0
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
  local.get $2
 )
 (func $std/array/isSorted<i32> (; 94 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $3
  loop $repeat|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    i32.const 2
    global.set $~lib/argc
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<u32>#__get
    local.get $0
    local.get $2
    call $~lib/array/Array<u32>#__get
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
 (func $std/array/assertSorted<i32> (; 95 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
  local.get $1
  call $std/array/isSorted<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 813
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $std/array/assertSortedDefault<i32> (; 96 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 48
  call $std/array/assertSorted<i32>
 )
 (func $start:std/array~anonymous|44 (; 97 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $~lib/array/Array.create<~lib/array/Array<i32>> (; 98 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 512
  i32.const 2
  i32.const 24
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.load offset=4
  i32.const 0
  local.get $0
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $0
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (; 99 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.gt_u
  if
   i32.const 0
   i32.const 280
   i32.const 111
   i32.const 38
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.tee $4
  i32.load
  local.get $2
  i32.ne
  if
   local.get $4
   local.get $2
   i32.store
  end
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
 (func $std/array/createReverseOrderedNestedArray (; 100 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $~lib/array/Array.create<~lib/array/Array<i32>>
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 512
   i32.lt_s
   if
    i32.const 1
    call $~lib/array/Array.create<i32>
    local.tee $2
    i32.const 0
    i32.const 511
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__set
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $1
 )
 (func $start:std/array~anonymous|47 (; 101 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.sub
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#sort (; 102 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 280
   i32.const 528
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  local.tee $2
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
   local.set $2
   local.get $3
   i32.load
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
    local.get $4
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store
   end
   local.get $0
   return
  end
  local.get $3
  local.get $2
  local.get $1
  call $~lib/util/sort/insertionSort<i32>
  local.get $0
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__get (; 103 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 0
   i32.const 280
   i32.const 96
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
   i32.const 0
   i32.const 280
   i32.const 99
   i32.const 61
   call $~lib/builtins/abort
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
 (func $std/array/isSorted<~lib/array/Array<i32>> (; 104 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $3
  loop $repeat|0
   local.get $2
   local.get $3
   i32.lt_s
   if
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
 (func $std/array/assertSorted<~lib/array/Array<i32>> (; 105 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#sort
  local.get $1
  call $std/array/isSorted<~lib/array/Array<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 813
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/array/Array.create<std/array/Proxy<i32>> (; 106 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 512
  i32.const 2
  i32.const 26
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.load offset=4
  i32.const 0
  local.get $0
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $0
 )
 (func $std/array/createReverseOrderedElementsArray (; 107 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $~lib/array/Array.create<std/array/Proxy<i32>>
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 512
   i32.lt_s
   if
    i32.const 4
    call $~lib/util/runtime/allocate
    i32.const 25
    call $~lib/util/runtime/register
    local.tee $2
    i32.const 511
    local.get $0
    i32.sub
    i32.store
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $1
 )
 (func $start:std/array~anonymous|48 (; 108 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
 )
 (func $~lib/util/string/compareImpl (; 109 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  loop $continue|0
   local.get $2
   if (result i32)
    local.get $0
    i32.load16_u
    local.get $1
    i32.load16_u
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
 (func $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 (; 110 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block (result i32)
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
  end
  if (result i32)
   local.get $1
   i32.eqz
  else   
   local.get $2
  end
  if
   i32.const 0
   return
  end
  local.get $1
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $4
  i32.eqz
  local.tee $2
  if (result i32)
   local.get $3
   i32.eqz
  else   
   local.get $2
  end
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
  call $~lib/util/string/compareImpl
 )
 (func $std/array/assertSorted<~lib/string/String | null>|trampoline (; 111 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  call $~lib/array/Array<~lib/array/Array<i32>>#sort
  local.get $1
  call $std/array/isSorted<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 813
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/string/String.__eq (; 112 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.eqz
  end
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  local.get $1
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $std/array/isArraysEqual<~lib/string/String | null> (; 113 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.tee $3
  local.get $1
  i32.load offset=12
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
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/array/Array<u32>#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<u32>#__get
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
 (func $~lib/array/Array.create<~lib/string/String> (; 114 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 400
  i32.const 2
  i32.const 28
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.load offset=4
  i32.const 0
  local.get $0
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $0
 )
 (func $~lib/string/String#charAt (; 115 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 3028
  i32.load
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 4208
   return
  end
  i32.const 2
  call $~lib/util/runtime/allocate
  local.tee $1
  local.get $0
  i32.const 1
  i32.shl
  i32.const 3040
  i32.add
  i32.load16_u
  i32.store16
  local.get $1
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/string/String#concat (; 116 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 4432
  local.get $1
  select
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $4
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $1
  i32.add
  local.tee $2
  i32.eqz
  if
   i32.const 4208
   return
  end
  local.get $2
  call $~lib/util/runtime/allocate
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.get $3
  local.get $4
  call $~lib/memory/memory.copy
  local.get $2
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/string/String.__concat (; 117 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 4432
  local.get $0
  select
  local.get $1
  call $~lib/string/String#concat
 )
 (func $std/array/createRandomString (; 118 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4208
  local.set $1
  loop $repeat|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $1
    call $~lib/math/NativeMath.random
    i32.const 3028
    i32.load
    i32.const 1
    i32.shr_u
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
 (func $std/array/createRandomStringArray (; 119 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  call $~lib/array/Array.create<~lib/string/String>
  local.set $1
  loop $repeat|0
   local.get $0
   i32.const 400
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/math/NativeMath.random
    f64.const 32
    f64.mul
    i32.trunc_f64_s
    call $std/array/createRandomString
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $1
 )
 (func $~lib/string/String#substring (; 120 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4384
   i32.const 203
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 0
  local.get $2
  i32.lt_s
  select
  local.tee $3
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  local.get $2
  local.get $1
  local.get $2
  i32.lt_s
  select
  local.tee $1
  local.get $3
  local.get $1
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.tee $4
  local.get $3
  local.get $1
  local.get $3
  local.get $1
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $2
  i32.sub
  local.tee $3
  i32.eqz
  if
   i32.const 4208
   return
  end
  local.get $2
  i32.eqz
  local.tee $1
  if
   local.get $0
   i32.const 16
   i32.sub
   i32.load offset=4
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.get $4
   i32.eq
   local.set $1
  end
  local.get $1
  if
   local.get $0
   return
  end
  local.get $3
  call $~lib/util/runtime/allocate
  local.tee $1
  local.get $0
  local.get $2
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/util/runtime/discard (; 121 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 8400
  i32.le_u
  if
   i32.const 0
   i32.const 80
   i32.const 117
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 119
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/array/Array<bool>#join_bool (; 122 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $1
  i32.eqz
  if
   i32.const 4480
   i32.const 4504
   local.get $3
   i32.load8_u
   select
   return
  end
  i32.const 4524
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $4
  i32.const 5
  i32.add
  local.get $1
  i32.mul
  i32.const 5
  i32.add
  local.tee $7
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.set $2
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $5
   local.get $1
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.add
    i32.load8_u
    i32.const 0
    i32.ne
    local.tee $8
    i32.eqz
    i32.const 4
    i32.add
    local.set $6
    local.get $0
    i32.const 1
    i32.shl
    local.get $2
    i32.add
    i32.const 4480
    i32.const 4504
    local.get $8
    select
    local.get $6
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $0
    local.get $6
    i32.add
    local.set $0
    local.get $4
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 4536
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
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
  local.get $3
  i32.add
  i32.load8_u
  i32.const 0
  i32.ne
  local.tee $3
  i32.eqz
  i32.const 4
  i32.add
  local.set $1
  local.get $0
  i32.const 1
  i32.shl
  local.get $2
  i32.add
  i32.const 4480
  i32.const 4504
  local.get $3
  select
  local.get $1
  i32.const 1
  i32.shl
  call $~lib/memory/memory.copy
  local.get $7
  local.get $0
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.set $0
   local.get $2
   call $~lib/util/runtime/discard
   local.get $0
   return
  end
  local.get $2
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/util/number/decimalCount32 (; 123 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 124 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 5100
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
    local.get $4
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i64.load32_u
    local.get $4
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
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
   local.get $4
   i32.const 2
   i32.shl
   local.get $3
   i32.add
   i32.load
   i32.store
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
   local.get $1
   i32.const 2
   i32.shl
   local.get $3
   i32.add
   i32.load
   i32.store
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
   i32.store16
  end
 )
 (func $~lib/util/number/itoa32 (; 125 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4656
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
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.tee $3
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/util/number/utoa32_lut
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/util/number/itoa_stream<i32> (; 126 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.store16
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
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.tee $2
  call $~lib/util/number/utoa32_lut
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/array/Array<i32>#join_int (; 127 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $3
  i32.eqz
  if
   local.get $4
   i32.load
   call $~lib/util/number/itoa32
   return
  end
  local.get $1
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $5
  i32.const 11
  i32.add
  local.get $3
  i32.mul
  i32.const 11
  i32.add
  local.tee $7
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.set $2
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $6
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    call $~lib/util/number/itoa_stream<i32>
    local.get $0
    i32.add
    local.set $0
    local.get $5
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     local.get $1
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     local.get $5
     i32.add
     local.set $0
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
   end
  end
  local.get $7
  local.get $2
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  local.get $4
  i32.add
  i32.load
  call $~lib/util/number/itoa_stream<i32>
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.set $0
   local.get $2
   call $~lib/util/runtime/discard
   local.get $0
   return
  end
  local.get $2
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/array/Array<i32>#join (; 128 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#join_int
 )
 (func $~lib/util/number/utoa32 (; 129 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4656
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.tee $1
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/util/number/utoa32_lut
  local.get $2
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/util/number/itoa_stream<u32> (; 130 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.store16
   i32.const 1
   return
  end
  local.get $0
  local.get $2
  local.get $2
  call $~lib/util/number/decimalCount32
  local.tee $0
  call $~lib/util/number/utoa32_lut
  local.get $0
 )
 (func $~lib/array/Array<u32>#join_int (; 131 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $3
  i32.eqz
  if
   local.get $4
   i32.load
   call $~lib/util/number/utoa32
   return
  end
  local.get $1
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $5
  i32.const 10
  i32.add
  local.get $3
  i32.mul
  i32.const 10
  i32.add
  local.tee $7
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.set $2
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $6
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    call $~lib/util/number/itoa_stream<u32>
    local.get $0
    i32.add
    local.set $0
    local.get $5
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     local.get $1
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     local.get $5
     i32.add
     local.set $0
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
   end
  end
  local.get $7
  local.get $2
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  local.get $4
  i32.add
  i32.load
  call $~lib/util/number/itoa_stream<u32>
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.set $0
   local.get $2
   call $~lib/util/runtime/discard
   local.get $0
   return
  end
  local.get $2
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/array/Array<u32>#join (; 132 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#join_int
 )
 (func $~lib/util/number/genDigits (; 133 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  local.set $9
  i64.const 1
  i32.const 0
  local.get $4
  i32.sub
  local.tee $12
  i64.extend_i32_s
  local.tee $1
  i64.shl
  local.tee $10
  i64.const 1
  i64.sub
  local.tee $14
  local.get $3
  i64.and
  local.set $11
  local.get $3
  local.get $1
  i64.shr_u
  i32.wrap_i64
  local.tee $7
  call $~lib/util/number/decimalCount32
  local.set $4
  i32.const 6652
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
     i32.store16
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
    local.get $11
    i64.add
    local.tee $1
    local.get $5
    i64.le_u
    if
     global.get $~lib/util/number/_K
     local.get $4
     i32.add
     global.set $~lib/util/number/_K
     local.get $4
     i32.const 2
     i32.shl
     local.get $13
     i32.add
     i64.load32_u
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
     i32.load16_u
     local.set $4
     loop $continue|2
      local.get $1
      local.get $9
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
       local.get $9
       i64.lt_u
       local.tee $0
       i32.eqz
       if
        local.get $9
        local.get $1
        i64.sub
        local.get $1
        local.get $3
        i64.add
        local.get $9
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
     i32.store16
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
   local.get $11
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
    i32.store16
   end
   local.get $4
   i32.const 1
   i32.sub
   local.set $4
   local.get $3
   local.get $14
   i64.and
   local.tee $11
   local.get $5
   i64.ge_u
   br_if $continue|3
   global.get $~lib/util/number/_K
   local.get $4
   i32.add
   global.set $~lib/util/number/_K
   local.get $11
   local.set $1
   i32.const 0
   local.get $4
   i32.sub
   i32.const 2
   i32.shl
   local.get $13
   i32.add
   i64.load32_u
   local.get $9
   i64.mul
   local.set $3
   local.get $6
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.tee $2
   i32.load16_u
   local.set $4
   loop $continue|4
    local.get $1
    local.get $3
    i64.lt_u
    local.tee $0
    if
     local.get $5
     local.get $1
     i64.sub
     local.get $10
     i64.ge_u
     local.set $0
    end
    local.get $0
    if
     local.get $1
     local.get $10
     i64.add
     local.get $3
     i64.lt_u
     local.tee $0
     i32.eqz
     if
      local.get $3
      local.get $1
      i64.sub
      local.get $1
      local.get $10
      i64.add
      local.get $3
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
     local.get $10
     i64.add
     local.set $1
     br $continue|4
    end
   end
   local.get $2
   local.get $4
   i32.store16
   local.get $6
  end
 )
 (func $~lib/util/number/prettify (; 134 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.store
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
     i32.store16
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
   i32.store
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
    local.tee $0
    i32.const 2
    i32.add
    local.get $0
    i32.const 0
    local.get $2
    i32.sub
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $0
    i32.const 46
    i32.store16
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
     i32.const 2
     local.get $3
     i32.sub
     local.tee $4
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     i32.const 3014704
     i32.store
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
       i32.store16
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
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.tee $0
      block (result i32)
       local.get $3
       i32.const 1
       i32.sub
       local.tee $1
       i32.const 0
       i32.lt_s
       local.tee $2
       if
        i32.const 0
        local.get $1
        i32.sub
        local.set $1
       end
       local.get $1
      end
      local.get $1
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $1
      call $~lib/util/number/utoa32_lut
      local.get $0
      i32.const 45
      i32.const 43
      local.get $2
      select
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else      
      local.get $0
      i32.const 4
      i32.add
      local.get $0
      i32.const 2
      i32.add
      local.get $1
      i32.const 1
      i32.shl
      local.tee $2
      i32.const 2
      i32.sub
      call $~lib/memory/memory.copy
      local.get $0
      i32.const 46
      i32.store16 offset=2
      local.get $0
      local.get $2
      i32.add
      local.tee $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.tee $2
      block (result i32)
       local.get $3
       i32.const 1
       i32.sub
       local.tee $0
       i32.const 0
       i32.lt_s
       local.tee $4
       if
        i32.const 0
        local.get $0
        i32.sub
        local.set $0
       end
       local.get $0
      end
      local.get $0
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa32_lut
      local.get $2
      i32.const 45
      i32.const 43
      local.get $4
      select
      i32.store16
      local.get $0
      local.get $1
      i32.add
      i32.const 2
      i32.add
     end
    end
   end
  end
 )
 (func $~lib/util/number/dtoa_core (; 135 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  f64.const 0
  f64.lt
  local.tee $10
  if
   local.get $0
   i32.const 45
   i32.store16
   local.get $1
   f64.neg
   local.set $1
  end
  local.get $1
  i64.reinterpret_f64
  local.tee $2
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.tee $11
  i32.const 0
  i32.ne
  local.set $7
  local.get $2
  i64.const 4503599627370495
  i64.and
  local.get $7
  i64.extend_i32_u
  i64.const 52
  i64.shl
  i64.add
  local.tee $5
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.tee $2
  i64.clz
  i32.wrap_i64
  local.set $3
  local.get $2
  local.get $3
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_plus
  local.get $11
  i32.const 1
  local.get $7
  select
  i32.const 1075
  i32.sub
  local.tee $7
  i32.const 1
  i32.sub
  local.get $3
  i32.sub
  local.set $3
  local.get $5
  local.get $5
  i64.const 4503599627370496
  i64.eq
  i32.const 1
  i32.add
  local.tee $11
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $7
  local.get $11
  i32.sub
  local.get $3
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $3
  global.set $~lib/util/number/_exp
  i32.const 348
  i32.const -61
  global.get $~lib/util/number/_exp
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
  i32.sub
  global.set $~lib/util/number/_K
  i32.const 6340
  i32.load
  local.get $3
  i32.const 3
  i32.shl
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  i32.const 6564
  i32.load
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
  global.set $~lib/util/number/_exp_pow
  global.get $~lib/util/number/_frc_pow
  local.tee $6
  i64.const 4294967295
  i64.and
  local.set $2
  global.get $~lib/util/number/_frc_plus
  local.tee $8
  i64.const 4294967295
  i64.and
  local.tee $4
  local.get $6
  i64.const 32
  i64.shr_u
  local.tee $6
  i64.mul
  local.get $8
  i64.const 32
  i64.shr_u
  local.tee $8
  local.get $2
  i64.mul
  local.get $2
  local.get $4
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $4
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  local.get $6
  local.get $8
  i64.mul
  local.get $4
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  i64.const 1
  i64.sub
  local.tee $8
  local.get $6
  global.get $~lib/util/number/_frc_minus
  local.tee $4
  i64.const 4294967295
  i64.and
  local.tee $9
  i64.mul
  local.get $4
  i64.const 32
  i64.shr_u
  local.tee $4
  local.get $2
  i64.mul
  local.get $2
  local.get $9
  i64.mul
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
  local.get $6
  i64.mul
  local.get $9
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
  local.get $6
  local.get $5
  local.get $5
  i64.clz
  i32.wrap_i64
  local.tee $0
  i64.extend_i32_s
  i64.shl
  local.tee $5
  i64.const 4294967295
  i64.and
  local.tee $9
  i64.mul
  local.get $5
  i64.const 32
  i64.shr_u
  local.tee $5
  local.get $2
  i64.mul
  local.get $2
  local.get $9
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $2
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  local.get $5
  local.get $6
  i64.mul
  local.get $2
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  global.get $~lib/util/number/_exp_pow
  local.tee $3
  local.get $7
  local.get $0
  i32.sub
  i32.add
  i32.const -64
  i32.sub
  local.get $8
  global.get $~lib/util/number/_exp
  local.get $3
  i32.add
  i32.const -64
  i32.sub
  local.get $4
  local.get $10
  call $~lib/util/number/genDigits
  local.get $10
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.get $10
  i32.add
 )
 (func $~lib/util/number/dtoa (; 136 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 5504
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
    i32.const 5528
    return
   end
   i32.const 5552
   i32.const 5592
   local.get $0
   f64.const 0
   f64.lt
   select
   return
  end
  i32.const 56
  call $~lib/util/runtime/allocate
  local.tee $2
  local.get $0
  call $~lib/util/number/dtoa_core
  local.set $1
  local.get $2
  local.get $1
  call $~lib/string/String#substring
  local.set $1
  local.get $2
  call $~lib/util/runtime/discard
  local.get $1
 )
 (func $~lib/util/number/dtoa_stream (; 137 ;) (type $FUNCSIG$iiid) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
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
    local.tee $3
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 5552
    i32.const 5592
    local.get $3
    select
    local.get $1
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $1
    return
   end
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/util/number/dtoa_core
 )
 (func $~lib/array/Array<f64>#join_flt (; 138 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
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
  i32.const 5468
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $4
  i32.const 28
  i32.add
  local.get $2
  i32.mul
  i32.const 28
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.set $1
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $5
   local.get $2
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    f64.load
    call $~lib/util/number/dtoa_stream
    local.get $0
    i32.add
    local.set $0
    local.get $4
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.const 5480
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
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
  local.get $6
  local.get $1
  local.get $0
  local.get $2
  i32.const 3
  i32.shl
  local.get $3
  i32.add
  f64.load
  call $~lib/util/number/dtoa_stream
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.set $0
   local.get $1
   call $~lib/util/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/array/Array<~lib/string/String>#join_str (; 139 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.tee $5
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
   return
  end
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $5
  i32.eqz
  if
   local.get $6
   i32.load
   return
  end
  local.get $1
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.set $7
  i32.const 0
  local.set $0
  local.get $5
  i32.const 1
  i32.add
  local.set $3
  loop $repeat|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $6
    i32.add
    i32.load
    local.tee $4
    if
     local.get $4
     i32.const 16
     i32.sub
     i32.load offset=4
     i32.const 1
     i32.shr_u
     local.get $2
     i32.add
     local.set $2
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  i32.const 0
  local.set $0
  local.get $5
  local.get $7
  i32.mul
  local.get $2
  i32.add
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.set $2
  i32.const 0
  local.set $3
  loop $repeat|1
   local.get $3
   local.get $5
   i32.lt_s
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $6
    i32.add
    i32.load
    local.tee $4
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     local.get $4
     local.get $4
     i32.const 16
     i32.sub
     i32.load offset=4
     i32.const 1
     i32.shr_u
     local.tee $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     local.get $4
     i32.add
     local.set $0
    end
    local.get $7
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     local.get $1
     local.get $7
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
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
  i32.const 2
  i32.shl
  local.get $6
  i32.add
  i32.load
  local.tee $1
  if
   local.get $0
   i32.const 1
   i32.shl
   local.get $2
   i32.add
   local.get $1
   local.get $1
   i32.const 16
   i32.sub
   i32.load offset=4
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $2
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 140 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#join_str
 )
 (func $std/array/Ref#constructor (; 141 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 32
  call $~lib/util/runtime/register
 )
 (func $~lib/array/Array<std/array/Ref | null>#join_ref (; 142 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
   return
  end
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $2
  i32.eqz
  if
   i32.const 6928
   return
  end
  i32.const 4524
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.const 15
  i32.add
  local.get $2
  i32.mul
  i32.const 15
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.set $1
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $4
   local.get $2
   i32.lt_s
   if
    local.get $4
    i32.const 2
    i32.shl
    local.get $5
    i32.add
    i32.load
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.const 6928
     i32.const 30
     call $~lib/memory/memory.copy
     local.get $0
     i32.const 15
     i32.add
     local.set $0
    end
    local.get $3
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.const 4536
     local.get $3
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     local.get $3
     i32.add
     local.set $0
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $repeat|0
   end
  end
  block (result i32)
   local.get $2
   i32.const 2
   i32.shl
   local.get $5
   i32.add
   i32.load
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $1
    i32.add
    i32.const 6928
    i32.const 30
    call $~lib/memory/memory.copy
    local.get $0
    i32.const 15
    i32.add
    local.set $0
   end
   local.get $6
   local.get $0
   i32.gt_s
  end
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.set $0
   local.get $1
   call $~lib/util/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/array/Array<i32>#toString (; 143 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<i32>#join
 )
 (func $~lib/util/number/itoa_stream<i8> (; 144 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.store16
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
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  local.get $0
  local.get $3
  local.get $2
  call $~lib/util/number/utoa32_lut
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/array/Array<i8>#join_int (; 145 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
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
   call $~lib/util/number/itoa32
   return
  end
  i32.const 4524
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $4
  i32.const 11
  i32.add
  local.get $2
  i32.mul
  i32.const 11
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.set $1
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $5
   local.get $2
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $3
    local.get $5
    i32.add
    i32.load8_s
    call $~lib/util/number/itoa_stream<i8>
    local.get $0
    i32.add
    local.set $0
    local.get $4
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.const 4536
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
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
  local.get $6
  local.get $1
  local.get $0
  local.get $2
  local.get $3
  i32.add
  i32.load8_s
  call $~lib/util/number/itoa_stream<i8>
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.set $0
   local.get $1
   call $~lib/util/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/util/number/itoa_stream<u16> (; 146 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.store16
   i32.const 1
   return
  end
  local.get $2
  i32.const 65535
  i32.and
  local.tee $2
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa32_lut
  local.get $1
 )
 (func $~lib/array/Array<u16>#join_int (; 147 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
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
   call $~lib/util/number/utoa32
   return
  end
  i32.const 4524
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $4
  i32.const 10
  i32.add
  local.get $2
  i32.mul
  i32.const 10
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.set $1
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $5
   local.get $2
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $5
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    i32.load16_u
    call $~lib/util/number/itoa_stream<u16>
    local.get $0
    i32.add
    local.set $0
    local.get $4
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.const 4536
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
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
  local.get $6
  local.get $1
  local.get $0
  local.get $2
  i32.const 1
  i32.shl
  local.get $3
  i32.add
  i32.load16_u
  call $~lib/util/number/itoa_stream<u16>
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.set $0
   local.get $1
   call $~lib/util/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/util/number/decimalCount64 (; 148 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 149 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 5100
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
    local.get $4
    i32.const 10000
    i32.rem_u
    local.tee $4
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i64.load32_u
    local.get $4
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $6
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i64.load32_u
    local.get $5
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $continue|0
   end
  end
  local.get $0
  local.get $1
  i32.wrap_i64
  local.get $2
  call $~lib/util/number/utoa32_lut
 )
 (func $~lib/util/number/utoa64 (; 150 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i64.eqz
  if
   i32.const 4656
   return
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.tee $1
   call $~lib/util/number/decimalCount32
   local.tee $3
   i32.const 1
   i32.shl
   call $~lib/util/runtime/allocate
   local.tee $2
   local.get $1
   local.get $3
   call $~lib/util/number/utoa32_lut
  else   
   local.get $0
   call $~lib/util/number/decimalCount64
   local.tee $1
   i32.const 1
   i32.shl
   call $~lib/util/runtime/allocate
   local.tee $2
   local.get $0
   local.get $1
   call $~lib/util/number/utoa64_lut
  end
  local.get $2
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/util/number/itoa_stream<u64> (; 151 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
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
   i32.store16
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
   call $~lib/util/number/decimalCount32
   local.set $1
   local.get $0
   local.get $3
   local.get $1
   call $~lib/util/number/utoa32_lut
  else   
   local.get $0
   local.get $2
   local.get $2
   call $~lib/util/number/decimalCount64
   local.tee $1
   call $~lib/util/number/utoa64_lut
  end
  local.get $1
 )
 (func $~lib/array/Array<u64>#join_int (; 152 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
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
   call $~lib/util/number/utoa64
   return
  end
  i32.const 4524
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $4
  i32.const 20
  i32.add
  local.get $2
  i32.mul
  i32.const 20
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.set $1
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $5
   local.get $2
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    i64.load
    call $~lib/util/number/itoa_stream<u64>
    local.get $0
    i32.add
    local.set $0
    local.get $4
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.const 4536
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
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
  local.get $6
  local.get $1
  local.get $0
  local.get $2
  i32.const 3
  i32.shl
  local.get $3
  i32.add
  i64.load
  call $~lib/util/number/itoa_stream<u64>
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.set $0
   local.get $1
   call $~lib/util/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/util/number/itoa64 (; 153 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i64.eqz
  if
   i32.const 4656
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
   call $~lib/util/number/decimalCount32
   local.get $1
   i32.add
   local.tee $4
   i32.const 1
   i32.shl
   call $~lib/util/runtime/allocate
   local.tee $3
   local.get $2
   local.get $4
   call $~lib/util/number/utoa32_lut
  else   
   local.get $0
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.shl
   call $~lib/util/runtime/allocate
   local.tee $3
   local.get $0
   local.get $2
   call $~lib/util/number/utoa64_lut
  end
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/util/number/itoa_stream<i64> (; 154 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
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
   i32.store16
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
   call $~lib/util/number/decimalCount32
   local.get $1
   i32.add
   local.set $3
   local.get $0
   local.get $4
   local.get $3
   call $~lib/util/number/utoa32_lut
  else   
   local.get $0
   local.get $2
   local.get $2
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.tee $3
   call $~lib/util/number/utoa64_lut
  end
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/array/Array<i64>#join_int (; 155 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
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
   call $~lib/util/number/itoa64
   return
  end
  i32.const 4524
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $4
  i32.const 21
  i32.add
  local.get $2
  i32.mul
  i32.const 21
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.set $1
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $5
   local.get $2
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    i64.load
    call $~lib/util/number/itoa_stream<i64>
    local.get $0
    i32.add
    local.set $0
    local.get $4
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.const 4536
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
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
  local.get $6
  local.get $1
  local.get $0
  local.get $2
  i32.const 3
  i32.shl
  local.get $3
  i32.add
  i64.load
  call $~lib/util/number/itoa_stream<i64>
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.set $0
   local.get $1
   call $~lib/util/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/array/Array<~lib/string/String | null>#toString (; 156 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4536
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#join_arr (; 157 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
   return
  end
  i32.const 4208
  local.set $1
  i32.const 4524
  i32.load
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load
   local.tee $0
   if (result i32)
    local.get $0
    i32.const 4536
    call $~lib/array/Array<i32>#join
   else    
    i32.const 4208
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
    i32.load
    local.tee $5
    if
     local.get $1
     local.get $5
     i32.const 4536
     call $~lib/array/Array<i32>#join
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $4
    if
     local.get $1
     i32.const 4536
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
  i32.load
  local.tee $0
  if (result i32)
   local.get $1
   local.get $0
   i32.const 4536
   call $~lib/array/Array<i32>#join
   call $~lib/string/String.__concat
  else   
   local.get $1
  end
 )
 (func $~lib/util/number/itoa_stream<u8> (; 158 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.store16
   i32.const 1
   return
  end
  local.get $2
  i32.const 255
  i32.and
  local.tee $2
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa32_lut
  local.get $1
 )
 (func $~lib/array/Array<u8>#join_int (; 159 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
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
   call $~lib/util/number/utoa32
   return
  end
  i32.const 4524
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $4
  i32.const 10
  i32.add
  local.get $2
  i32.mul
  i32.const 10
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  call $~lib/util/runtime/allocate
  local.set $1
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $5
   local.get $2
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $3
    local.get $5
    i32.add
    i32.load8_u
    call $~lib/util/number/itoa_stream<u8>
    local.get $0
    i32.add
    local.set $0
    local.get $4
    if
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.const 4536
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
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
  local.get $6
  local.get $1
  local.get $0
  local.get $2
  local.get $3
  i32.add
  i32.load8_u
  call $~lib/util/number/itoa_stream<u8>
  local.get $0
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.set $0
   local.get $1
   call $~lib/util/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 16
  call $~lib/util/runtime/register
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#join_arr (; 160 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
   return
  end
  i32.const 4208
  local.set $1
  i32.const 4524
  i32.load
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load
   local.tee $0
   if (result i32)
    local.get $0
    call $~lib/array/Array<u8>#join_int
   else    
    i32.const 4208
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
    i32.load
    local.tee $5
    if
     local.get $1
     local.get $5
     call $~lib/array/Array<u8>#join_int
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $4
    if
     local.get $1
     i32.const 4536
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
  i32.load
  local.tee $0
  if (result i32)
   local.get $1
   local.get $0
   call $~lib/array/Array<u8>#join_int
   call $~lib/string/String.__concat
  else   
   local.get $1
  end
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#join_arr (; 161 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
   return
  end
  i32.const 4208
  local.set $1
  i32.const 4524
  i32.load
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load
   local.tee $0
   if (result i32)
    local.get $0
    i32.const 4536
    call $~lib/array/Array<u32>#join
   else    
    i32.const 4208
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
    i32.load
    local.tee $5
    if
     local.get $1
     local.get $5
     i32.const 4536
     call $~lib/array/Array<u32>#join
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $4
    if
     local.get $1
     i32.const 4536
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
  i32.load
  local.tee $0
  if (result i32)
   local.get $1
   local.get $0
   i32.const 4536
   call $~lib/array/Array<u32>#join
   call $~lib/string/String.__concat
  else   
   local.get $1
  end
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr (; 162 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 4208
   return
  end
  i32.const 4208
  local.set $1
  i32.const 4524
  i32.load
  i32.const 1
  i32.shr_u
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   i32.load
   local.tee $0
   if (result i32)
    local.get $0
    call $~lib/array/Array<~lib/array/Array<u32>>#join_arr
   else    
    i32.const 4208
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
    i32.load
    local.tee $5
    if
     local.get $1
     local.get $5
     call $~lib/array/Array<~lib/array/Array<u32>>#join_arr
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $4
    if
     local.get $1
     i32.const 4536
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
  i32.load
  local.tee $0
  if (result i32)
   local.get $1
   local.get $0
   call $~lib/array/Array<~lib/array/Array<u32>>#join_arr
   call $~lib/string/String.__concat
  else   
   local.get $1
  end
 )
 (func $start:std/array (; 163 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 8400
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $~lib/array/Array<i32>#constructor
  global.set $std/array/arr
  global.get $std/array/Null
  if
   i32.const 0
   i32.const 160
   i32.const 39
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  i32.ne
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 40
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 18
  call $~lib/util/runtime/register
  drop
  i32.const 12
  call $~lib/util/runtime/allocate
  i32.const 19
  call $~lib/util/runtime/register
  i32.const 1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  drop
  global.get $std/array/arr8
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u8>#fill
  global.get $std/array/arr8
  i32.const 5
  i32.const 0
  i32.const 20
  i32.const 256
  call $~lib/util/runtime/makeArray
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 51
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr8
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/array/Array<u8>#fill
  global.get $std/array/arr8
  i32.const 5
  i32.const 0
  i32.const 20
  i32.const 328
  call $~lib/util/runtime/makeArray
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 54
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr8
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u8>#fill
  global.get $std/array/arr8
  i32.const 5
  i32.const 0
  i32.const 20
  i32.const 352
  call $~lib/util/runtime/makeArray
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 57
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr8
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<u8>#fill
  global.get $std/array/arr8
  i32.const 5
  i32.const 0
  i32.const 20
  i32.const 376
  call $~lib/util/runtime/makeArray
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 60
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr8
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u8>#fill
  global.get $std/array/arr8
  i32.const 5
  i32.const 0
  i32.const 20
  i32.const 400
  call $~lib/util/runtime/makeArray
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 63
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr32
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u32>#fill
  global.get $std/array/arr32
  i32.const 5
  i32.const 2
  i32.const 21
  i32.const 496
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 68
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr32
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/array/Array<u32>#fill
  global.get $std/array/arr32
  i32.const 5
  i32.const 2
  i32.const 21
  i32.const 536
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 71
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr32
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u32>#fill
  global.get $std/array/arr32
  i32.const 5
  i32.const 2
  i32.const 21
  i32.const 576
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 74
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr32
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<u32>#fill
  global.get $std/array/arr32
  i32.const 5
  i32.const 2
  i32.const 21
  i32.const 616
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 77
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr32
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u32>#fill
  global.get $std/array/arr32
  i32.const 5
  i32.const 2
  i32.const 21
  i32.const 656
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 80
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 160
   i32.const 84
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  if
   i32.const 0
   i32.const 160
   i32.const 85
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 42
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 89
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 90
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 91
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 95
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 160
   i32.const 96
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 97
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 101
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 102
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 103
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 44
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 107
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 108
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 109
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 110
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 45
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 114
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 115
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 116
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 117
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 118
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/array/Array<i32>#constructor
  global.set $std/array/other
  global.get $std/array/arr
  global.get $std/array/other
  call $~lib/array/Array<i32>#concat
  global.set $std/array/out
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 125
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 126
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 127
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 0
  i32.const 2
  i32.const 17
  i32.const 696
  call $~lib/util/runtime/makeArray
  call $~lib/array/Array<i32>#concat
  drop
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 130
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 132
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 133
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 134
   i32.const 0
   call $~lib/builtins/abort
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
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 141
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/other
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 142
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.load offset=12
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 143
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 144
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 145
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 146
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 3
  call $~lib/array/Array<u32>#__get
  i32.const 46
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 147
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 4
  call $~lib/array/Array<u32>#__get
  i32.const 47
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 148
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/out
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 151
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#concat
  global.set $std/array/out
  global.get $std/array/out
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 154
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 155
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/source
  i32.load offset=12
  if
   i32.const 0
   i32.const 160
   i32.const 158
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/source
  global.get $std/array/arr
  call $~lib/array/Array<i32>#concat
  global.set $std/array/out
  global.get $std/array/out
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 160
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/source
  i32.load offset=12
  if
   i32.const 0
   i32.const 160
   i32.const 161
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 760
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const 3
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 800
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 167
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 840
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 3
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 880
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 169
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 920
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 960
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 171
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1000
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 2
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1040
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 173
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1080
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1120
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 175
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1160
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1200
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 177
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1240
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 1
  i32.const 2
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1280
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 179
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1320
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1360
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 181
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1400
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const 0
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1440
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 183
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1480
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  i32.const -2
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1520
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 185
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1560
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1600
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 187
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1640
  call $~lib/util/runtime/makeArray
  global.set $std/array/cwArr
  global.get $std/array/cwArr
  i32.const -4
  i32.const -3
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1680
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 189
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 42
  call $~lib/array/Array<i32>#unshift
  global.get $std/array/arr
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 195
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 196
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 197
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 198
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 199
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 200
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 41
  call $~lib/array/Array<i32>#unshift
  global.get $std/array/arr
  i32.load offset=12
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 204
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 205
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 41
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 206
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 207
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 208
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 209
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 4
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 210
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 216
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 217
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 218
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 219
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 220
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 221
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 222
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 226
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 227
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 228
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 229
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 230
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 231
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#reverse
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 237
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 238
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 239
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 240
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 241
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 250
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 254
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 258
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 262
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 266
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 270
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 274
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 278
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 282
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 286
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 44
  i32.const 0
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 292
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 42
  i32.const 0
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 296
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 45
  i32.const 0
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  if
   i32.const 0
   i32.const 160
   i32.const 300
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 100
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  if
   i32.const 0
   i32.const 160
   i32.const 304
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -100
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 308
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -2
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 312
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -4
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 316
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 0
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 320
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 1
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 324
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 2
  call $~lib/array/Array<i32>#includes
  global.set $std/array/includes
  global.get $std/array/includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 328
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  i32.const 1
  call $~lib/array/Array<i32>#splice
  drop
  global.get $std/array/arr
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 332
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=4
  i32.const 2
  i32.shr_s
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 333
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 334
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 335
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 0
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1792
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 340
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 0
  i32.const 2
  i32.const 17
  i32.const 1832
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 341
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1848
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  i32.const 3
  i32.const 2
  i32.const 17
  i32.const 1888
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 344
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 2
  i32.const 2
  i32.const 17
  i32.const 1920
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 345
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 1944
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#splice
  i32.const 2
  i32.const 2
  i32.const 17
  i32.const 1984
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 348
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 3
  i32.const 2
  i32.const 17
  i32.const 2008
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 349
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2040
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#splice
  i32.const 1
  i32.const 2
  i32.const 17
  i32.const 2080
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 352
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 4
  i32.const 2
  i32.const 17
  i32.const 2104
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 353
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2136
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -1
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  i32.const 1
  i32.const 2
  i32.const 17
  i32.const 2176
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 356
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 4
  i32.const 2
  i32.const 17
  i32.const 2200
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 357
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2232
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  i32.const 2
  i32.const 2
  i32.const 17
  i32.const 2272
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 360
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 3
  i32.const 2
  i32.const 17
  i32.const 2296
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 361
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2328
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -2
  i32.const 1
  call $~lib/array/Array<i32>#splice
  i32.const 1
  i32.const 2
  i32.const 17
  i32.const 2368
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 364
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 4
  i32.const 2
  i32.const 17
  i32.const 2392
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 365
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2424
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -7
  i32.const 1
  call $~lib/array/Array<i32>#splice
  i32.const 1
  i32.const 2
  i32.const 17
  i32.const 2464
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 368
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 4
  i32.const 2
  i32.const 17
  i32.const 2488
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 369
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2520
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#splice
  i32.const 0
  i32.const 2
  i32.const 17
  i32.const 2560
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 372
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2576
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 373
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2616
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 1
  i32.const -2
  call $~lib/array/Array<i32>#splice
  i32.const 0
  i32.const 2
  i32.const 17
  i32.const 2656
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 376
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2672
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 377
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2712
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 4
  i32.const 0
  call $~lib/array/Array<i32>#splice
  i32.const 0
  i32.const 2
  i32.const 17
  i32.const 2752
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 380
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2768
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 381
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2808
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 7
  i32.const 0
  call $~lib/array/Array<i32>#splice
  i32.const 0
  i32.const 2
  i32.const 17
  i32.const 2848
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 384
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2864
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 385
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2904
  call $~lib/util/runtime/makeArray
  global.set $std/array/sarr
  global.get $std/array/sarr
  i32.const 7
  i32.const 5
  call $~lib/array/Array<i32>#splice
  i32.const 0
  i32.const 2
  i32.const 17
  i32.const 2944
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 388
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/sarr
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 2960
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 389
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 399
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 402
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 405
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 413
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 414
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 416
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 429
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 430
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 438
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 8
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  if
   i32.const 0
   i32.const 160
   i32.const 441
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 449
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 450
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 10
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  if
   i32.const 0
   i32.const 160
   i32.const 452
   i32.const 0
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
  global.set $std/array/every
  global.get $std/array/every
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 465
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 466
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 474
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 13
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  if
   i32.const 0
   i32.const 160
   i32.const 477
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 14
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  if
   i32.const 0
   i32.const 160
   i32.const 485
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 486
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 488
   i32.const 0
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
  global.set $std/array/some
  global.get $std/array/some
  if
   i32.const 0
   i32.const 160
   i32.const 501
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 502
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 511
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 520
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 521
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 524
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 538
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 539
   i32.const 0
   call $~lib/builtins/abort
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
  i32.load offset=12
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 564
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  loop $repeat|0
   local.get $0
   i32.const 100
   i32.lt_s
   if
    global.get $std/array/arr
    call $~lib/array/Array<i32>#pop
    drop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
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
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 575
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/newArr
  i32.const 0
  call $~lib/array/Array<f32>#__get
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  f32.convert_i32_s
  f32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 576
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 585
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 586
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 593
   i32.const 0
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
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 608
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 609
   i32.const 0
   call $~lib/builtins/abort
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
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 617
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 626
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 627
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 634
   i32.const 0
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
  drop
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 649
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 650
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 658
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 662
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 665
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 668
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 676
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 677
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 679
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 692
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 693
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 701
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 705
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 708
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 711
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 719
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 720
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 722
   i32.const 0
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
  i32.ne
  if
   i32.const 0
   i32.const 160
   i32.const 735
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 160
   i32.const 736
   i32.const 0
   call $~lib/builtins/abort
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
  local.set $1
  i32.const 0
  local.set $0
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 44
   local.set $0
  end
  local.get $1
  local.get $0
  call $~lib/array/Array<f32>#sort
  global.get $std/array/f32ArrayTyped
  i32.const 8
  i32.const 2
  i32.const 22
  i32.const 3312
  call $~lib/util/runtime/makeArray
  call $std/array/isArraysEqual<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 824
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~lib/argc
  global.get $std/array/f64ArrayTyped
  local.set $1
  i32.const 0
  local.set $0
  block $1of143
   block $0of144
    block $outOfRange45
     global.get $~lib/argc
     br_table $0of144 $1of143 $outOfRange45
    end
    unreachable
   end
   i32.const 45
   local.set $0
  end
  local.get $1
  local.get $0
  call $~lib/array/Array<f64>#sort
  global.get $std/array/f64ArrayTyped
  i32.const 8
  i32.const 3
  i32.const 23
  i32.const 3472
  call $~lib/util/runtime/makeArray
  call $std/array/isArraysEqual<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 828
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~lib/argc
  global.get $std/array/i32ArrayTyped
  local.set $1
  i32.const 0
  local.set $0
  block $1of146
   block $0of147
    block $outOfRange48
     global.get $~lib/argc
     br_table $0of147 $1of146 $outOfRange48
    end
    unreachable
   end
   i32.const 46
   local.set $0
  end
  local.get $1
  local.get $0
  call $~lib/array/Array<i32>#sort
  drop
  global.get $std/array/i32ArrayTyped
  i32.const 5
  i32.const 2
  i32.const 17
  i32.const 3624
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 832
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~lib/argc
  global.get $std/array/u32ArrayTyped
  local.set $1
  i32.const 0
  local.set $0
  block $1of149
   block $0of150
    block $outOfRange51
     global.get $~lib/argc
     br_table $0of150 $1of149 $outOfRange51
    end
    unreachable
   end
   i32.const 47
   local.set $0
  end
  local.get $1
  local.get $0
  call $~lib/array/Array<i32>#sort
  drop
  global.get $std/array/u32ArrayTyped
  i32.const 5
  i32.const 2
  i32.const 21
  i32.const 3736
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 836
   i32.const 0
   call $~lib/builtins/abort
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
  i32.const 2
  i32.const 17
  i32.const 4064
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 856
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/reversed2
  call $std/array/assertSortedDefault<i32>
  global.get $std/array/reversed2
  i32.const 2
  i32.const 2
  i32.const 17
  i32.const 4088
  call $~lib/util/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 859
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 862
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 865
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 868
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 871
   i32.const 0
   call $~lib/builtins/abort
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
   i32.const 160
   i32.const 874
   i32.const 0
   call $~lib/builtins/abort
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
  call $std/array/assertSorted<~lib/string/String | null>|trampoline
  global.get $std/array/randomStringsActual
  global.get $std/array/randomStringsExpected
  call $std/array/isArraysEqual<~lib/string/String | null>
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 904
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $std/array/createRandomStringArray
  global.set $std/array/randomStrings400
  i32.const 1
  global.set $~lib/argc
  global.get $std/array/randomStrings400
  local.set $1
  i32.const 0
  local.set $0
  block $1of152
   block $0of153
    block $outOfRange54
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of153 $1of152 $outOfRange54
    end
    unreachable
   end
   i32.const 56
   local.set $0
  end
  local.get $1
  local.get $0
  call $std/array/assertSorted<~lib/array/Array<i32>>
  i32.const 2
  i32.const 0
  i32.const 29
  i32.const 4560
  call $~lib/util/runtime/makeArray
  call $~lib/array/Array<bool>#join_bool
  i32.const 4584
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 913
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 17
  i32.const 5128
  call $~lib/util/runtime/makeArray
  i32.const 4208
  call $~lib/array/Array<i32>#join
  i32.const 5160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 914
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 21
  i32.const 5248
  call $~lib/util/runtime/makeArray
  i32.const 5224
  call $~lib/array/Array<u32>#join
  i32.const 5160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 915
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 17
  i32.const 5328
  call $~lib/util/runtime/makeArray
  i32.const 5304
  call $~lib/array/Array<i32>#join
  i32.const 5352
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 916
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  i32.const 3
  i32.const 23
  i32.const 6680
  call $~lib/util/runtime/makeArray
  call $~lib/array/Array<f64>#join_flt
  i32.const 6744
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 917
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 28
  i32.const 6896
  call $~lib/util/runtime/makeArray
  i32.const 4208
  call $~lib/array/Array<~lib/string/String>#join
  i32.const 6840
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 918
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 33
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $1
  i32.load offset=4
  local.tee $0
  call $std/array/Ref#constructor
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  call $std/array/Ref#constructor
  i32.store offset=8
  local.get $1
  global.set $std/array/refArr
  global.get $std/array/refArr
  call $~lib/array/Array<std/array/Ref | null>#join_ref
  i32.const 6976
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 920
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/reversed0
  call $~lib/array/Array<i32>#toString
  i32.const 4208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 924
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/reversed1
  call $~lib/array/Array<i32>#toString
  i32.const 6840
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 925
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/reversed2
  call $~lib/array/Array<i32>#toString
  i32.const 7056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 926
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/reversed4
  call $~lib/array/Array<i32>#toString
  i32.const 7080
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 927
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 0
  i32.const 34
  i32.const 7136
  call $~lib/util/runtime/makeArray
  call $~lib/array/Array<i8>#join_int
  i32.const 7160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 929
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 1
  i32.const 35
  i32.const 7216
  call $~lib/util/runtime/makeArray
  call $~lib/array/Array<u16>#join_int
  i32.const 7240
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 930
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 3
  i32.const 30
  i32.const 7320
  call $~lib/util/runtime/makeArray
  call $~lib/array/Array<u64>#join_int
  i32.const 7360
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 931
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 3
  i32.const 36
  i32.const 7472
  call $~lib/util/runtime/makeArray
  call $~lib/array/Array<i64>#join_int
  i32.const 7520
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 932
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/randomStringsExpected
  call $~lib/array/Array<~lib/string/String | null>#toString
  i32.const 7624
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 933
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 2
  i32.const 28
  i32.const 7752
  call $~lib/util/runtime/makeArray
  call $~lib/array/Array<~lib/string/String | null>#toString
  i32.const 7784
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 934
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 24
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.const 2
  i32.const 2
  i32.const 17
  i32.const 7840
  call $~lib/util/runtime/makeArray
  i32.store
  local.get $1
  i32.const 2
  i32.const 2
  i32.const 17
  i32.const 7864
  call $~lib/util/runtime/makeArray
  i32.store offset=4
  local.get $0
  global.set $std/array/subarr32
  global.get $std/array/subarr32
  call $~lib/array/Array<~lib/array/Array<i32>>#join_arr
  i32.const 7888
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 937
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 37
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.const 2
  i32.const 0
  i32.const 20
  i32.const 7944
  call $~lib/util/runtime/makeArray
  i32.store
  local.get $1
  i32.const 2
  i32.const 0
  i32.const 20
  i32.const 7968
  call $~lib/util/runtime/makeArray
  i32.store offset=4
  local.get $0
  global.set $std/array/subarr8
  global.get $std/array/subarr8
  call $~lib/array/Array<~lib/array/Array<u8>>#join_arr
  i32.const 7888
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 940
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 39
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $0
  i32.load offset=4
  local.set $1
  i32.const 1
  i32.const 2
  i32.const 38
  i32.const 0
  call $~lib/util/runtime/makeArray
  local.tee $2
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.const 21
  i32.const 8064
  call $~lib/util/runtime/makeArray
  i32.store
  local.get $1
  local.get $2
  i32.store
  local.get $0
  global.set $std/array/subarrU32
  global.get $std/array/subarrU32
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr
  i32.const 6840
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 160
   i32.const 943
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $std/array/main (; 164 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start:std/array
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 40
   call $~lib/util/runtime/register
   global.set $~lib/runtime/ROOT
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $~lib/runtime/runtime.instanceof (; 165 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 8072
   i32.load
   i32.le_u
  else   
   local.get $0
  end
  if
   loop $continue|0
    local.get $0
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $0
    i32.const 3
    i32.shl
    i32.const 8072
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/runtime/runtime.flags (; 166 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.const 8072
   i32.load
   i32.gt_u
   local.set $1
  end
  local.get $1
  if (result i32)
   unreachable
  else   
   local.get $0
   i32.const 3
   i32.shl
   i32.const 8072
   i32.add
   i32.load
  end
 )
 (func $~lib/runtime/runtime.newObject (; 167 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 168 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 169 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArray (; 170 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $2
  i32.eqz
  local.tee $0
  if (result i32)
   local.get $0
  else   
   local.get $2
   i32.const 8072
   i32.load
   i32.gt_u
  end
  if (result i32)
   unreachable
  else   
   local.get $2
   i32.const 3
   i32.shl
   i32.const 8072
   i32.add
   i32.load
  end
  local.tee $0
  i32.const 8
  i32.div_u
  i32.const 31
  i32.and
  local.set $4
  local.get $1
  if (result i32)
   local.get $1
   i32.const 16
   i32.sub
   i32.load offset=4
  else   
   i32.const 0
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
   i32.const 0
  end
  local.set $3
  local.get $2
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.tee $2
  i32.load
  drop
  local.get $2
  local.get $1
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $2
  local.get $3
  local.get $4
  i32.shr_u
  i32.store offset=12
  local.get $0
  i32.const 512
  i32.and
  if
   local.get $1
   local.get $3
   i32.add
   local.set $0
   loop $continue|0
    local.get $1
    local.get $0
    i32.lt_u
    if
     local.get $1
     i32.load
     drop
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $continue|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/runtime/runtime.retain (; 171 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/runtime/runtime.collect (; 172 ;) (type $FUNCSIG$v)
  nop
 )
)
