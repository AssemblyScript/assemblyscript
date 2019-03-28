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
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\1e")
 (data (i32.const 24) "~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 56) "\01\00\00\00&")
 (data (i32.const 72) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 112) "\01\00\00\00\06")
 (data (i32.const 128) "a\00b\00c")
 (data (i32.const 136) "\01\00\00\00\18")
 (data (i32.const 152) "s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 176) "\02\00\00\00\05")
 (data (i32.const 192) "\01\02\03\04\05")
 (data (i32.const 200) "\07\00\00\00\10")
 (data (i32.const 216) "\c0\00\00\00\c0\00\00\00\05\00\00\00\05")
 (data (i32.const 232) "\02\00\00\00\05")
 (data (i32.const 248) "\01\01\01\04\05")
 (data (i32.const 256) "\01\00\00\00\1a")
 (data (i32.const 272) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 304) "\02\00\00\00\05")
 (data (i32.const 328) "\02\00\00\00\05")
 (data (i32.const 344) "\01\01")
 (data (i32.const 352) "\02\00\00\00\05")
 (data (i32.const 368) "\01\01\00\02\02")
 (data (i32.const 376) "\02\00\00\00\05")
 (data (i32.const 392) "\01\01\00\02\02")
 (data (i32.const 400) "\02\00\00\00\14")
 (data (i32.const 416) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 440) "\08\00\00\00\10")
 (data (i32.const 456) "\a0\01\00\00\a0\01\00\00\14\00\00\00\05")
 (data (i32.const 472) "\02\00\00\00\14")
 (data (i32.const 488) "\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 512) "\02\00\00\00\14")
 (data (i32.const 552) "\02\00\00\00\14")
 (data (i32.const 568) "\01\00\00\00\01")
 (data (i32.const 592) "\02\00\00\00\14")
 (data (i32.const 608) "\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 632) "\02\00\00\00\14")
 (data (i32.const 648) "\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 672) "\02")
 (data (i32.const 688) "\02")
 (data (i32.const 704) "\04\00\00\00\10")
 (data (i32.const 720) "\c0\02\00\00\c0\02")
 (data (i32.const 736) "\02\00\00\00\14")
 (data (i32.const 752) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 776) "\02\00\00\00\14")
 (data (i32.const 792) "\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 816) "\02\00\00\00\14")
 (data (i32.const 832) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 856) "\02\00\00\00\14")
 (data (i32.const 872) "\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05")
 (data (i32.const 896) "\02\00\00\00\14")
 (data (i32.const 912) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 936) "\02\00\00\00\14")
 (data (i32.const 952) "\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 976) "\02\00\00\00\14")
 (data (i32.const 992) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1016) "\02\00\00\00\14")
 (data (i32.const 1032) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1056) "\02\00\00\00\14")
 (data (i32.const 1072) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1096) "\02\00\00\00\14")
 (data (i32.const 1112) "\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1136) "\02\00\00\00\14")
 (data (i32.const 1152) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1176) "\02\00\00\00\14")
 (data (i32.const 1192) "\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1216) "\02\00\00\00\14")
 (data (i32.const 1232) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1256) "\02\00\00\00\14")
 (data (i32.const 1272) "\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 1296) "\02\00\00\00\14")
 (data (i32.const 1312) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1336) "\02\00\00\00\14")
 (data (i32.const 1352) "\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1376) "\02\00\00\00\14")
 (data (i32.const 1392) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1416) "\02\00\00\00\14")
 (data (i32.const 1432) "\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1456) "\02\00\00\00\14")
 (data (i32.const 1472) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1496) "\02\00\00\00\14")
 (data (i32.const 1512) "\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1536) "\02\00\00\00\14")
 (data (i32.const 1552) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1576) "\02\00\00\00\14")
 (data (i32.const 1592) "\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 1616) "\02\00\00\00\14")
 (data (i32.const 1632) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1656) "\02\00\00\00\14")
 (data (i32.const 1672) "\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 1696) "\02\00\00\00\14")
 (data (i32.const 1712) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1736) "\04\00\00\00\10")
 (data (i32.const 1752) "\b0\06\00\00\b0\06\00\00\14\00\00\00\05")
 (data (i32.const 1768) "\02\00\00\00\14")
 (data (i32.const 1784) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1808) "\02")
 (data (i32.const 1824) "\02\00\00\00\14")
 (data (i32.const 1840) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1864) "\02\00\00\00\0c")
 (data (i32.const 1880) "\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1896) "\02\00\00\00\08")
 (data (i32.const 1912) "\01\00\00\00\02")
 (data (i32.const 1920) "\02\00\00\00\14")
 (data (i32.const 1936) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1960) "\02\00\00\00\08")
 (data (i32.const 1976) "\03\00\00\00\04")
 (data (i32.const 1984) "\02\00\00\00\0c")
 (data (i32.const 2000) "\01\00\00\00\02\00\00\00\05")
 (data (i32.const 2016) "\02\00\00\00\14")
 (data (i32.const 2032) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2056) "\02\00\00\00\04")
 (data (i32.const 2072) "\01")
 (data (i32.const 2080) "\02\00\00\00\10")
 (data (i32.const 2096) "\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2112) "\02\00\00\00\14")
 (data (i32.const 2128) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2152) "\02\00\00\00\04")
 (data (i32.const 2168) "\05")
 (data (i32.const 2176) "\02\00\00\00\10")
 (data (i32.const 2192) "\01\00\00\00\02\00\00\00\03\00\00\00\04")
 (data (i32.const 2208) "\02\00\00\00\14")
 (data (i32.const 2224) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2248) "\02\00\00\00\08")
 (data (i32.const 2264) "\04\00\00\00\05")
 (data (i32.const 2272) "\02\00\00\00\0c")
 (data (i32.const 2288) "\01\00\00\00\02\00\00\00\03")
 (data (i32.const 2304) "\02\00\00\00\14")
 (data (i32.const 2320) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2344) "\02\00\00\00\04")
 (data (i32.const 2360) "\04")
 (data (i32.const 2368) "\02\00\00\00\10")
 (data (i32.const 2384) "\01\00\00\00\02\00\00\00\03\00\00\00\05")
 (data (i32.const 2400) "\02\00\00\00\14")
 (data (i32.const 2416) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2440) "\02\00\00\00\04")
 (data (i32.const 2456) "\01")
 (data (i32.const 2464) "\02\00\00\00\10")
 (data (i32.const 2480) "\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2496) "\02\00\00\00\14")
 (data (i32.const 2512) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2536) "\02")
 (data (i32.const 2552) "\02\00\00\00\14")
 (data (i32.const 2568) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2592) "\02\00\00\00\14")
 (data (i32.const 2608) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2632) "\02")
 (data (i32.const 2648) "\02\00\00\00\14")
 (data (i32.const 2664) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2688) "\02\00\00\00\14")
 (data (i32.const 2704) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2728) "\02")
 (data (i32.const 2744) "\02\00\00\00\14")
 (data (i32.const 2760) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2784) "\02\00\00\00\14")
 (data (i32.const 2800) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2824) "\02")
 (data (i32.const 2840) "\02\00\00\00\14")
 (data (i32.const 2856) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2880) "\02\00\00\00\14")
 (data (i32.const 2896) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2920) "\02")
 (data (i32.const 2936) "\02\00\00\00\14")
 (data (i32.const 2952) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2976) "\01\00\00\00\18")
 (data (i32.const 2992) "~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 3016) "\01\00\00\00\ac")
 (data (i32.const 3032) "A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?")
 (data (i32.const 3208) "\02\00\00\00 ")
 (data (i32.const 3226) "\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 3256) "\t\00\00\00\10")
 (data (i32.const 3272) "\98\0c\00\00\98\0c\00\00 \00\00\00\08")
 (data (i32.const 3288) "\02\00\00\00 ")
 (data (i32.const 3306) "\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 3336) "\02\00\00\00@")
 (data (i32.const 3358) "\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?")
 (data (i32.const 3398) "\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 3416) "\n\00\00\00\10")
 (data (i32.const 3432) "\18\0d\00\00\18\0d\00\00@\00\00\00\08")
 (data (i32.const 3448) "\02\00\00\00@")
 (data (i32.const 3470) "\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf")
 (data (i32.const 3502) "\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 3528) "\02\00\00\00\14")
 (data (i32.const 3544) "\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 3568) "\04\00\00\00\10")
 (data (i32.const 3584) "\d8\0d\00\00\d8\0d\00\00\14\00\00\00\05")
 (data (i32.const 3600) "\02\00\00\00\14")
 (data (i32.const 3616) "\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02")
 (data (i32.const 3640) "\02\00\00\00\14")
 (data (i32.const 3656) "\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 3680) "\08\00\00\00\10")
 (data (i32.const 3696) "H\0e\00\00H\0e\00\00\14\00\00\00\05")
 (data (i32.const 3712) "\02\00\00\00\14")
 (data (i32.const 3732) "\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 3752) "\02")
 (data (i32.const 3768) "\04\00\00\00\10")
 (data (i32.const 3784) "\b8\0e\00\00\b8\0e")
 (data (i32.const 3800) "\02\00\00\00\04")
 (data (i32.const 3816) "\01")
 (data (i32.const 3824) "\04\00\00\00\10")
 (data (i32.const 3840) "\e8\0e\00\00\e8\0e\00\00\04\00\00\00\01")
 (data (i32.const 3856) "\02\00\00\00\08")
 (data (i32.const 3872) "\02\00\00\00\01")
 (data (i32.const 3880) "\04\00\00\00\10")
 (data (i32.const 3896) " \0f\00\00 \0f\00\00\08\00\00\00\02")
 (data (i32.const 3912) "\02\00\00\00\10")
 (data (i32.const 3928) "\03\00\00\00\02\00\00\00\01")
 (data (i32.const 3944) "\04\00\00\00\10")
 (data (i32.const 3960) "X\0f\00\00X\0f\00\00\10\00\00\00\04")
 (data (i32.const 3976) "\02\00\00\00\10")
 (data (i32.const 3996) "\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4008) "\04\00\00\00\10")
 (data (i32.const 4024) "\98\0f\00\00\98\0f\00\00\10\00\00\00\04")
 (data (i32.const 4040) "\02\00\00\00\04")
 (data (i32.const 4056) "\01")
 (data (i32.const 4064) "\02\00\00\00\08")
 (data (i32.const 4080) "\01\00\00\00\02")
 (data (i32.const 4088) "\01\00\00\00\02")
 (data (i32.const 4104) "a")
 (data (i32.const 4112) "\01\00\00\00\02")
 (data (i32.const 4128) "b")
 (data (i32.const 4136) "\01\00\00\00\04")
 (data (i32.const 4152) "a\00b")
 (data (i32.const 4160) "\01\00\00\00\04")
 (data (i32.const 4176) "b\00a")
 (data (i32.const 4184) "\01")
 (data (i32.const 4200) "\02\00\00\00\1c")
 (data (i32.const 4216) "\08\10\00\00 \10\00\00\08\10\00\008\10\00\00P\10\00\00h\10")
 (data (i32.const 4248) "\0e\00\00\00\10")
 (data (i32.const 4264) "x\10\00\00x\10\00\00\1c\00\00\00\07")
 (data (i32.const 4280) "\02\00\00\00\1c")
 (data (i32.const 4296) "h\10\00\00\08\10\00\00\08\10\00\008\10\00\00 \10\00\00P\10")
 (data (i32.const 4328) "\0e\00\00\00\10")
 (data (i32.const 4344) "\c8\10\00\00\c8\10\00\00\1c\00\00\00\07")
 (data (i32.const 4360) "\01\00\00\00\1c")
 (data (i32.const 4376) "~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 4408) "\01\00\00\00\08")
 (data (i32.const 4424) "n\00u\00l\00l")
 (data (i32.const 4432) "\02\00\00\00\02")
 (data (i32.const 4448) "\01")
 (data (i32.const 4456) "\01\00\00\00\08")
 (data (i32.const 4472) "t\00r\00u\00e")
 (data (i32.const 4480) "\01\00\00\00\n")
 (data (i32.const 4496) "f\00a\00l\00s\00e")
 (data (i32.const 4512) "\01\00\00\00\02")
 (data (i32.const 4528) ",")
 (data (i32.const 4536) "\02\00\00\00\02")
 (data (i32.const 4552) "\01")
 (data (i32.const 4560) "\01\00\00\00\14")
 (data (i32.const 4576) "t\00r\00u\00e\00,\00f\00a\00l\00s\00e")
 (data (i32.const 4600) "\02\00\00\00\0c")
 (data (i32.const 4616) "\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 4632) "\01\00\00\00\02")
 (data (i32.const 4648) "0")
 (data (i32.const 4656) "\02\00\00\00\90\01")
 (data (i32.const 4672) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 5072) "\08\00\00\00\10")
 (data (i32.const 5088) "@\12\00\00@\12\00\00\90\01\00\00d")
 (data (i32.const 5104) "\02\00\00\00\0c")
 (data (i32.const 5120) "\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 5136) "\01\00\00\00\n")
 (data (i32.const 5152) "1\00-\002\00-\003")
 (data (i32.const 5168) "\02\00\00\00\0c")
 (data (i32.const 5184) "\01\00\00\00\02\00\00\00\03")
 (data (i32.const 5200) "\01\00\00\00\02")
 (data (i32.const 5216) "-")
 (data (i32.const 5224) "\02\00\00\00\0c")
 (data (i32.const 5240) "\01\00\00\00\02\00\00\00\03")
 (data (i32.const 5256) "\02\00\00\00\08")
 (data (i32.const 5275) "\80\00\00\00\80")
 (data (i32.const 5280) "\01\00\00\00\04")
 (data (i32.const 5296) "_\00_")
 (data (i32.const 5304) "\02\00\00\00\08")
 (data (i32.const 5323) "\80\00\00\00\80")
 (data (i32.const 5328) "\01\00\00\000")
 (data (i32.const 5344) "-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 5392) "\02\00\00\000")
 (data (i32.const 5422) "\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 5456) "\01\00\00\00\04")
 (data (i32.const 5472) ",\00 ")
 (data (i32.const 5480) "\01\00\00\00\06")
 (data (i32.const 5496) "0\00.\000")
 (data (i32.const 5504) "\01\00\00\00\06")
 (data (i32.const 5520) "N\00a\00N")
 (data (i32.const 5528) "\01\00\00\00\12")
 (data (i32.const 5544) "-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 5568) "\01\00\00\00\10")
 (data (i32.const 5584) "I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 5600) "\02\00\00\00\b8\02")
 (data (i32.const 5616) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 6312) "\11\00\00\00\10")
 (data (i32.const 6328) "\f0\15\00\00\f0\15\00\00\b8\02\00\00W")
 (data (i32.const 6344) "\02\00\00\00\ae")
 (data (i32.const 6360) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 6536) "\12\00\00\00\10")
 (data (i32.const 6552) "\d8\18\00\00\d8\18\00\00\ae\00\00\00W")
 (data (i32.const 6568) "\02\00\00\00(")
 (data (i32.const 6584) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 6624) "\08\00\00\00\10")
 (data (i32.const 6640) "\b8\19\00\00\b8\19\00\00(\00\00\00\n")
 (data (i32.const 6656) "\02\00\00\000")
 (data (i32.const 6686) "\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 6720) "\01\00\00\00P")
 (data (i32.const 6736) "0\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 6816) "\01\00\00\00\02")
 (data (i32.const 6832) "1")
 (data (i32.const 6840) "\02\00\00\00\0c")
 (data (i32.const 6856) "h\10\00\00\b0\1a")
 (data (i32.const 6872) "\02\00\00\00\0c")
 (data (i32.const 6888) "h\10\00\00\b0\1a")
 (data (i32.const 6904) "\01\00\00\00\1e")
 (data (i32.const 6920) "[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 6952) "\01\00\00\00@")
 (data (i32.const 6968) "[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 7032) "\01\00\00\00\06")
 (data (i32.const 7048) "1\00,\002")
 (data (i32.const 7056) "\01\00\00\00\0e")
 (data (i32.const 7072) "0\00,\001\00,\002\00,\003")
 (data (i32.const 7088) "\02\00\00\00\03")
 (data (i32.const 7104) "\01\ff")
 (data (i32.const 7112) "\02\00\00\00\03")
 (data (i32.const 7128) "\01\ff")
 (data (i32.const 7136) "\01\00\00\00\0c")
 (data (i32.const 7152) "1\00,\00-\001\00,\000")
 (data (i32.const 7168) "\02\00\00\00\06")
 (data (i32.const 7184) "\01\00\ff\ff")
 (data (i32.const 7192) "\02\00\00\00\06")
 (data (i32.const 7208) "\01\00\ff\ff")
 (data (i32.const 7216) "\01\00\00\00\12")
 (data (i32.const 7232) "1\00,\006\005\005\003\005\00,\000")
 (data (i32.const 7256) "\02\00\00\00\18")
 (data (i32.const 7272) "\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 7296) "\02\00\00\00\18")
 (data (i32.const 7312) "\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 7336) "\01\00\00\000")
 (data (i32.const 7352) "1\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000")
 (data (i32.const 7400) "\02\00\00\00 ")
 (data (i32.const 7416) "\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff")
 (data (i32.const 7440) "\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7448) "\02\00\00\00 ")
 (data (i32.const 7464) "\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff")
 (data (i32.const 7488) "\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7496) "\01\00\00\00T")
 (data (i32.const 7512) "-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007")
 (data (i32.const 7600) "\01\00\00\00\1a")
 (data (i32.const 7616) ",\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,")
 (data (i32.const 7648) "\01\00\00\00\02")
 (data (i32.const 7664) "2")
 (data (i32.const 7672) "\01\00\00\00\02")
 (data (i32.const 7688) "4")
 (data (i32.const 7696) "\02\00\00\00\10")
 (data (i32.const 7712) "\b0\1a\00\00\f0\1d\00\00\00\00\00\00\08\1e")
 (data (i32.const 7728) "\02\00\00\00\10")
 (data (i32.const 7744) "\b0\1a\00\00\f0\1d\00\00\00\00\00\00\08\1e")
 (data (i32.const 7760) "\01\00\00\00\0c")
 (data (i32.const 7776) "1\00,\002\00,\00,\004")
 (data (i32.const 7792) "\02\00\00\00\08")
 (data (i32.const 7808) "\01\00\00\00\02")
 (data (i32.const 7816) "\02\00\00\00\08")
 (data (i32.const 7832) "\01\00\00\00\02")
 (data (i32.const 7840) "\02\00\00\00\08")
 (data (i32.const 7856) "\03\00\00\00\04")
 (data (i32.const 7864) "\01\00\00\00\0e")
 (data (i32.const 7880) "1\00,\002\00,\003\00,\004")
 (data (i32.const 7896) "\02\00\00\00\02")
 (data (i32.const 7912) "\01\02")
 (data (i32.const 7920) "\02\00\00\00\02")
 (data (i32.const 7936) "\01\02")
 (data (i32.const 7944) "\02\00\00\00\02")
 (data (i32.const 7960) "\03\04")
 (data (i32.const 7968) "\02\00\00\00\04")
 (data (i32.const 7984) "\01")
 (data (i32.const 7992) "\02\00\00\00\04")
 (data (i32.const 8008) "\01")
 (data (i32.const 8016) "\02\00\00\00\04")
 (data (i32.const 8032) "\01")
 (data (i32.const 8040) "\02\00\00\00\04")
 (data (i32.const 8056) "\01")
 (table $0 57 funcref)
 (elem (i32.const 0) $null $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|2 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|16 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $start:std/array~anonymous|47 $start:std/array~anonymous|48 $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/Null (mut i32) (i32.const 0))
 (global $std/array/arr8 (mut i32) (i32.const 216))
 (global $std/array/arr32 (mut i32) (i32.const 456))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $std/array/other (mut i32) (i32.const 0))
 (global $std/array/out (mut i32) (i32.const 0))
 (global $std/array/source (mut i32) (i32.const 720))
 (global $std/array/cwArr (mut i32) (i32.const 0))
 (global $std/array/includes (mut i32) (i32.const 0))
 (global $std/array/sarr (mut i32) (i32.const 1752))
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
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/array/main))
 (export ".capabilities" (global $~lib/capabilities))
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
 (func $~lib/runtime/allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/runtime/register (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 8060
  i32.le_u
  if
   i32.const 0
   i32.const 24
   i32.const 149
   i32.const 4
   call $~lib/env/abort
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
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 0
   i32.const 72
   i32.const 25
   i32.const 43
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/runtime/allocate
  local.tee $1
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 2
  call $~lib/runtime/register
 )
 (func $~lib/runtime/ArrayBufferView#constructor (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1073741808
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
  call $~lib/runtime/allocate
  i32.const 4
  call $~lib/runtime/register
  i32.const 0
  i32.const 2
  call $~lib/runtime/ArrayBufferView#constructor
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
 (func $~lib/util/memory/memcpy (; 10 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.copy (; 11 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
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
 (func $~lib/runtime/makeArray (; 12 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  call $~lib/runtime/allocate
  local.get $1
  call $~lib/runtime/register
  local.set $1
  local.get $0
  local.get $2
  i32.shl
  local.tee $4
  call $~lib/runtime/allocate
  i32.const 2
  call $~lib/runtime/register
  local.tee $2
  local.set $5
  local.get $1
  i32.load
  drop
  local.get $1
  local.get $5
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $2
   local.get $3
   local.get $4
   call $~lib/memory/memory.copy
  end
  local.get $1
 )
 (func $~lib/array/Array<u8>#__get (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
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
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $std/array/isArraysEqual<u8> (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<u32>#fill (; 15 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
 (func $~lib/array/Array<u32>#__get (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $std/array/isArraysEqual<u32> (; 17 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/runtime/reallocate (; 18 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 8060
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
     i32.const 8060
     i32.le_u
     if
      i32.const 0
      i32.const 24
      i32.const 113
      i32.const 8
      call $~lib/env/abort
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
 (func $~lib/array/ensureCapacity (; 19 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
    i32.const 272
    i32.const 13
    i32.const 64
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $2
   local.get $1
   i32.const 2
   i32.shl
   local.tee $3
   call $~lib/runtime/reallocate
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
 (func $~lib/array/Array<i32>#push (; 20 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i32>#pop (; 21 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
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
 (func $~lib/array/Array<i32>#concat (; 22 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $1
  i32.load offset=12
  i32.const 0
  local.get $1
  select
  local.tee $3
  i32.add
  i32.const 4
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
  local.tee $4
  i32.load offset=4
  local.tee $5
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  local.tee $0
  call $~lib/memory/memory.copy
  local.get $0
  local.get $5
  i32.add
  local.get $1
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $4
 )
 (func $~lib/array/Array<i32>#copyWithin (; 23 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<i32>#unshift (; 24 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array<i32>#shift (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 272
   i32.const 380
   i32.const 20
   call $~lib/env/abort
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
 (func $~lib/array/Array<i32>#reverse (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/array/Array<i32>#indexOf (; 27 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#includes (; 28 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#splice (; 29 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 4
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
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
 (func $~lib/array/Array<i32>#__set (; 30 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $start:std/array~anonymous|0 (; 31 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
 )
 (func $~lib/array/Array<i32>#findIndex (; 32 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:std/array~anonymous|1 (; 33 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.eq
 )
 (func $start:std/array~anonymous|2 (; 34 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|3 (; 35 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|5 (; 36 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|6 (; 37 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#every (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:std/array~anonymous|7 (; 39 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.le_s
 )
 (func $start:std/array~anonymous|8 (; 40 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|9 (; 41 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|10 (; 42 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.lt_s
 )
 (func $start:std/array~anonymous|11 (; 43 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 3
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#some (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:std/array~anonymous|12 (; 45 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const -1
  i32.le_s
 )
 (func $start:std/array~anonymous|13 (; 46 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|14 (; 47 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|15 (; 48 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.gt_s
 )
 (func $start:std/array~anonymous|16 (; 49 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $~lib/array/Array<i32>#forEach (; 50 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $start:std/array~anonymous|17 (; 51 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|19 (; 52 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|20 (; 53 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 152
    i32.const 562
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
  end
 )
 (func $start:std/array~anonymous|21 (; 54 ;) (type $FUNCSIG$fiii) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  f32.convert_i32_s
 )
 (func $~lib/array/Array<i32>#map<f32> (; 55 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 9
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
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
 (func $~lib/array/Array<f32>#__get (; 56 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
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
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $start:std/array~anonymous|22 (; 57 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $~lib/array/Array<i32>#map<i32> (; 58 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.tee $4
  i32.const 4
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
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
 (func $start:std/array~anonymous|23 (; 59 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|24 (; 60 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|25 (; 61 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#filter (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 4
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
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
 (func $start:std/array~anonymous|26 (; 63 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|27 (; 64 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|28 (; 65 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|29 (; 66 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 67 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|31 (; 68 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start:std/array~anonymous|32 (; 69 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start:std/array~anonymous|33 (; 70 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|35 (; 71 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 72 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/math/splitMix32 (; 73 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/math/NativeMath.seedRandom (; 74 ;) (type $FUNCSIG$vj) (param $0 i64)
  (local $1 i64)
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
 (func $~lib/util/sort/insertionSort<f32> (; 75 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/util/sort/weakHeapSort<f32> (; 76 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<f32>#sort (; 77 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
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
 (func $~lib/util/sort/COMPARATOR<f32>~anonymous|0 (; 78 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
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
 (func $std/array/isArraysEqual<f32> (; 79 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/util/sort/insertionSort<f64> (; 80 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/util/sort/weakHeapSort<f64> (; 81 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<f64>#sort (; 82 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
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
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 83 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/array/Array<f64>#__get (; 84 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
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
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $std/array/isArraysEqual<f64> (; 85 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/util/sort/insertionSort<i32> (; 86 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/util/sort/weakHeapSort<i32> (; 87 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<i32>#sort (; 88 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|0 (; 89 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/util/sort/COMPARATOR<u32>~anonymous|0 (; 90 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $~lib/array/Array.create<i32> (; 91 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 0
   i32.const 272
   i32.const 43
   i32.const 62
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
  local.tee $0
  i32.load offset=4
  i32.const 0
  local.get $0
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $std/array/createReverseOrderedArray (; 92 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/math/NativeMath.random (; 93 ;) (type $FUNCSIG$d) (result f64)
  (local $0 i64)
  (local $1 i64)
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
 (func $std/array/createRandomOrderedArray (; 94 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $std/array/isSorted<i32> (; 95 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/assertSorted<i32> (; 96 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $std/array/assertSortedDefault<i32> (; 97 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 48
  call $std/array/assertSorted<i32>
 )
 (func $start:std/array~anonymous|44 (; 98 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $~lib/array/Array.create<~lib/array/Array<i32>> (; 99 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 512
  i32.const 11
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
  local.tee $0
  i32.load offset=4
  i32.const 0
  local.get $0
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (; 100 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  local.tee $3
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
 (func $std/array/createReverseOrderedNestedArray (; 101 ;) (type $FUNCSIG$i) (result i32)
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
 (func $start:std/array~anonymous|47 (; 102 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.sub
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#sort (; 103 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
 (func $~lib/array/Array<~lib/array/Array<i32>>#__get (; 104 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $std/array/isSorted<~lib/array/Array<i32>> (; 105 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/assertSorted<~lib/array/Array<i32>> (; 106 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/array/Array.create<std/array/Proxy<i32>> (; 107 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 512
  i32.const 12
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
  local.tee $0
  i32.load offset=4
  i32.const 0
  local.get $0
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $std/array/createReverseOrderedElementsArray (; 108 ;) (type $FUNCSIG$i) (result i32)
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
    call $~lib/runtime/allocate
    i32.const 13
    call $~lib/runtime/register
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
 (func $start:std/array~anonymous|48 (; 109 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
 )
 (func $~lib/util/string/compareImpl (; 110 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 (; 111 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/assertSorted<~lib/string/String | null>|trampoline (; 112 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   i32.const 152
   i32.const 814
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/string/String.__eq (; 113 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/isArraysEqual<~lib/string/String | null> (; 114 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array.create<~lib/string/String> (; 115 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 400
  i32.const 15
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
  local.tee $0
  i32.load offset=4
  i32.const 0
  local.get $0
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/string/String#charAt (; 116 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 3020
  i32.load
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 4200
   return
  end
  i32.const 2
  call $~lib/runtime/allocate
  local.tee $1
  local.get $0
  i32.const 1
  i32.shl
  i32.const 3032
  i32.add
  i32.load16_u
  i32.store16
  local.get $1
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/string/String#concat (; 117 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 4424
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
   i32.const 4200
   return
  end
  local.get $2
  call $~lib/runtime/allocate
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
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/string/String.__concat (; 118 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 4424
  local.get $0
  select
  local.get $1
  call $~lib/string/String#concat
 )
 (func $std/array/createRandomString (; 119 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4200
  local.set $1
  loop $repeat|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $1
    call $~lib/math/NativeMath.random
    i32.const 3020
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
 (func $std/array/createRandomStringArray (; 120 ;) (type $FUNCSIG$i) (result i32)
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
 (func $~lib/string/String#substring (; 121 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4376
   i32.const 190
   i32.const 4
   call $~lib/env/abort
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
   i32.const 4200
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
  call $~lib/runtime/allocate
  local.tee $1
  local.get $0
  local.get $2
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/runtime/discard (; 122 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 8060
  i32.le_u
  if
   i32.const 0
   i32.const 24
   i32.const 173
   i32.const 4
   call $~lib/env/abort
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
   i32.const 24
   i32.const 175
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/array/Array<bool>#join_bool (; 123 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $1
  i32.eqz
  if
   i32.const 4472
   i32.const 4496
   local.get $3
   i32.load8_u
   select
   return
  end
  i32.const 4516
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
  call $~lib/runtime/allocate
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
    i32.const 4472
    i32.const 4496
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
     i32.const 4528
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
  i32.const 4472
  i32.const 4496
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
   call $~lib/runtime/discard
   local.get $0
   return
  end
  local.get $2
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/util/number/decimalCount32 (; 124 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 125 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 5092
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
 (func $~lib/util/number/itoa32 (; 126 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4648
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
  call $~lib/runtime/allocate
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
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/util/number/itoa_stream<i32> (; 127 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#join_int (; 128 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 4200
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
  call $~lib/runtime/allocate
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
   call $~lib/runtime/discard
   local.get $0
   return
  end
  local.get $2
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/array/Array<i32>#join (; 129 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#join_int
 )
 (func $~lib/util/number/utoa32 (; 130 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4648
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.tee $1
  i32.const 1
  i32.shl
  call $~lib/runtime/allocate
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/util/number/utoa32_lut
  local.get $2
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/util/number/itoa_stream<u32> (; 131 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<u32>#join_int (; 132 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 4200
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
  call $~lib/runtime/allocate
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
   call $~lib/runtime/discard
   local.get $0
   return
  end
  local.get $2
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/array/Array<u32>#join (; 133 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#join_int
 )
 (func $~lib/util/number/genDigits (; 134 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  i32.const 6644
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
 (func $~lib/util/number/prettify (; 135 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/util/number/dtoa_core (; 136 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
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
  i32.const 6332
  i32.load
  local.get $3
  i32.const 3
  i32.shl
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  i32.const 6556
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
 (func $~lib/util/number/dtoa (; 137 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 5496
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
  i32.const 56
  call $~lib/runtime/allocate
  local.tee $2
  local.get $0
  call $~lib/util/number/dtoa_core
  local.set $1
  local.get $2
  local.get $1
  call $~lib/string/String#substring
  local.set $1
  local.get $2
  call $~lib/runtime/discard
  local.get $1
 )
 (func $~lib/util/number/dtoa_stream (; 138 ;) (type $FUNCSIG$iiid) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
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
    i32.const 5544
    i32.const 5584
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
 (func $~lib/array/Array<f64>#join_flt (; 139 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  i32.const 5460
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
  call $~lib/runtime/allocate
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
     i32.const 5472
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
   call $~lib/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/array/Array<~lib/string/String>#join_str (; 140 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 4200
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
  call $~lib/runtime/allocate
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
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 141 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#join_str
 )
 (func $std/array/Ref#constructor (; 142 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $~lib/runtime/allocate
  i32.const 19
  call $~lib/runtime/register
 )
 (func $~lib/array/Array<std/array/Ref | null>#join_ref (; 143 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 4200
   return
  end
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $2
  i32.eqz
  if
   i32.const 6920
   return
  end
  i32.const 4516
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
  call $~lib/runtime/allocate
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
     i32.const 6920
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
     i32.const 4528
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
    i32.const 6920
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
   call $~lib/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/array/Array<i32>#toString (; 144 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<i32>#join
 )
 (func $~lib/util/number/itoa_stream<i8> (; 145 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i8>#join_int (; 146 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   call $~lib/util/number/itoa32
   return
  end
  i32.const 4516
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
  call $~lib/runtime/allocate
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
     i32.const 4528
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
   call $~lib/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/util/number/itoa_stream<u16> (; 147 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<u16>#join_int (; 148 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   call $~lib/util/number/utoa32
   return
  end
  i32.const 4516
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
  call $~lib/runtime/allocate
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
     i32.const 4528
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
   call $~lib/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/util/number/decimalCount64 (; 149 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 150 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 5092
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
 (func $~lib/util/number/utoa64 (; 151 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i64.eqz
  if
   i32.const 4648
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
   call $~lib/runtime/allocate
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
   call $~lib/runtime/allocate
   local.tee $2
   local.get $0
   local.get $1
   call $~lib/util/number/utoa64_lut
  end
  local.get $2
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/util/number/itoa_stream<u64> (; 152 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
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
 (func $~lib/array/Array<u64>#join_int (; 153 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   call $~lib/util/number/utoa64
   return
  end
  i32.const 4516
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
  call $~lib/runtime/allocate
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
     i32.const 4528
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
   call $~lib/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/util/number/itoa64 (; 154 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i64.eqz
  if
   i32.const 4648
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
   call $~lib/runtime/allocate
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
   call $~lib/runtime/allocate
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
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/util/number/itoa_stream<i64> (; 155 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
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
 (func $~lib/array/Array<i64>#join_int (; 156 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   call $~lib/util/number/itoa64
   return
  end
  i32.const 4516
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
  call $~lib/runtime/allocate
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
     i32.const 4528
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
   call $~lib/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/array/Array<~lib/string/String | null>#toString (; 157 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 4528
  call $~lib/array/Array<~lib/string/String>#join
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#join_arr (; 158 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 4200
   return
  end
  i32.const 4200
  local.set $1
  i32.const 4516
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
    i32.const 4528
    call $~lib/array/Array<i32>#join
   else    
    i32.const 4200
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
     i32.const 4528
     call $~lib/array/Array<i32>#join
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $4
    if
     local.get $1
     i32.const 4528
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
   i32.const 4528
   call $~lib/array/Array<i32>#join
   call $~lib/string/String.__concat
  else   
   local.get $1
  end
 )
 (func $~lib/util/number/itoa_stream<u8> (; 159 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<u8>#join_int (; 160 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   call $~lib/util/number/utoa32
   return
  end
  i32.const 4516
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
  call $~lib/runtime/allocate
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
     i32.const 4528
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
   call $~lib/runtime/discard
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#join_arr (; 161 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 4200
   return
  end
  i32.const 4200
  local.set $1
  i32.const 4516
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
    i32.const 4200
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
     i32.const 4528
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
 (func $~lib/array/Array<~lib/array/Array<u32>>#join_arr (; 162 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 4200
   return
  end
  i32.const 4200
  local.set $1
  i32.const 4516
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
    i32.const 4528
    call $~lib/array/Array<u32>#join
   else    
    i32.const 4200
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
     i32.const 4528
     call $~lib/array/Array<u32>#join
     call $~lib/string/String.__concat
     local.set $1
    end
    local.get $4
    if
     local.get $1
     i32.const 4528
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
   i32.const 4528
   call $~lib/array/Array<u32>#join
   call $~lib/string/String.__concat
  else   
   local.get $1
  end
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr (; 163 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 4200
   return
  end
  i32.const 4200
  local.set $1
  i32.const 4516
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
    i32.const 4200
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
     i32.const 4528
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
 (func $start:std/array (; 164 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 8064
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $~lib/array/Array<i32>#constructor
  global.set $std/array/arr
  global.get $std/array/Null
  if
   i32.const 0
   i32.const 152
   i32.const 40
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
   i32.const 152
   i32.const 41
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $~lib/runtime/allocate
  i32.const 5
  call $~lib/runtime/register
  drop
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 6
  call $~lib/runtime/register
  i32.const 1
  i32.const 0
  call $~lib/runtime/ArrayBufferView#constructor
  drop
  global.get $std/array/arr8
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u8>#fill
  global.get $std/array/arr8
  i32.const 5
  i32.const 7
  i32.const 0
  i32.const 248
  call $~lib/runtime/makeArray
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
  i32.const 2147483647
  call $~lib/array/Array<u8>#fill
  global.get $std/array/arr8
  i32.const 5
  i32.const 7
  i32.const 0
  i32.const 320
  call $~lib/runtime/makeArray
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
  global.get $std/array/arr8
  i32.const 5
  i32.const 7
  i32.const 0
  i32.const 344
  call $~lib/runtime/makeArray
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
  i32.const 2147483647
  call $~lib/array/Array<u8>#fill
  global.get $std/array/arr8
  i32.const 5
  i32.const 7
  i32.const 0
  i32.const 368
  call $~lib/runtime/makeArray
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
  global.get $std/array/arr8
  i32.const 5
  i32.const 7
  i32.const 0
  i32.const 392
  call $~lib/runtime/makeArray
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
  global.get $std/array/arr32
  i32.const 5
  i32.const 8
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
  i32.const 2147483647
  call $~lib/array/Array<u32>#fill
  global.get $std/array/arr32
  i32.const 5
  i32.const 8
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
  global.get $std/array/arr32
  i32.const 5
  i32.const 8
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
  i32.const 2147483647
  call $~lib/array/Array<u32>#fill
  global.get $std/array/arr32
  i32.const 5
  i32.const 8
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
  global.get $std/array/arr32
  i32.const 5
  i32.const 8
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
  i32.load offset=12
  if
   i32.const 0
   i32.const 152
   i32.const 85
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 86
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 90
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 91
   i32.const 0
   call $~lib/env/abort
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
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 96
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 152
   i32.const 97
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 98
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 102
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 103
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
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
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 108
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 109
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
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
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 115
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 116
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 119
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 126
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 127
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.load offset=12
  i32.const 3
  i32.ne
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
   i32.const 152
   i32.const 131
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
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
   i32.const 152
   i32.const 142
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/other
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 143
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/out
  i32.load offset=12
  i32.const 5
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 46
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 47
  i32.ne
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
  i32.load offset=12
  i32.const 4
  i32.ne
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
  i32.load offset=12
  i32.const 3
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 156
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/source
  i32.load offset=12
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
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 161
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/source
  i32.load offset=12
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
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 792
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 872
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 952
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1032
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1352
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1672
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  global.get $std/array/arr
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 196
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 197
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
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
  global.get $std/array/arr
  i32.load offset=12
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 205
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 206
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 41
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 217
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 218
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 219
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
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
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 227
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 228
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 229
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
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
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 238
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 239
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.ne
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
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 333
   i32.const 0
   call $~lib/env/abort
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
   i32.const 152
   i32.const 334
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
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
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
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
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  i32.const 5
  i32.const 4
  i32.const 2
  i32.const 1784
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  i32.const 3
  i32.const 4
  i32.const 2
  i32.const 1880
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  i32.const 1
  i32.const 4
  i32.const 2
  i32.const 2168
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  i32.const 2
  i32.const 4
  i32.const 2
  i32.const 2264
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  i32.const 1
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  if
   i32.const 0
   i32.const 152
   i32.const 400
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
   i32.const 152
   i32.const 403
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
   i32.const 152
   i32.const 406
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
   i32.const 152
   i32.const 414
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 415
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
  i32.const 6
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 430
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
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
   i32.const 152
   i32.const 439
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
   i32.const 152
   i32.const 442
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
   i32.const 152
   i32.const 450
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 451
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
  i32.const 11
  call $~lib/array/Array<i32>#every
  global.set $std/array/every
  global.get $std/array/every
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 466
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
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
   i32.const 152
   i32.const 475
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
   i32.const 152
   i32.const 478
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
   i32.const 152
   i32.const 486
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 487
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
  i32.const 16
  call $~lib/array/Array<i32>#some
  global.set $std/array/some
  global.get $std/array/some
  if
   i32.const 0
   i32.const 152
   i32.const 502
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
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
   i32.const 152
   i32.const 512
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
   i32.const 152
   i32.const 521
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
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
  i32.const 19
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 406
  i32.ne
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
  i32.const 20
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 539
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
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
   i32.const 152
   i32.const 565
   i32.const 0
   call $~lib/env/abort
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
  call $~lib/array/Array<u32>#__get
  f32.convert_i32_s
  f32.ne
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
  i32.const 23
  call $~lib/array/Array<i32>#map<i32>
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 586
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
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
  i32.const 24
  call $~lib/array/Array<i32>#map<i32>
  global.get $std/array/i
  i32.const 406
  i32.ne
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
  i32.const 25
  call $~lib/array/Array<i32>#map<i32>
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 609
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
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
   i32.const 152
   i32.const 618
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
   i32.const 152
   i32.const 627
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
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
  i32.const 28
  call $~lib/array/Array<i32>#filter
  drop
  global.get $std/array/i
  i32.const 406
  i32.ne
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
  i32.const 29
  call $~lib/array/Array<i32>#filter
  drop
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 650
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
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
   i32.const 152
   i32.const 659
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
   i32.const 152
   i32.const 663
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
   i32.const 152
   i32.const 666
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
   i32.const 152
   i32.const 669
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
   i32.const 152
   i32.const 677
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 678
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
  i32.const 36
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 693
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
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
   i32.const 152
   i32.const 702
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
   i32.const 152
   i32.const 706
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
   i32.const 152
   i32.const 709
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
   i32.const 152
   i32.const 712
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
   i32.const 152
   i32.const 720
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 721
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
  i32.const 43
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 152
   i32.const 736
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
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
  i32.const 9
  i32.const 2
  i32.const 3304
  call $~lib/runtime/makeArray
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
  i32.const 10
  i32.const 3
  i32.const 3464
  call $~lib/runtime/makeArray
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
  i32.const 4
  i32.const 2
  i32.const 3616
  call $~lib/runtime/makeArray
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 833
   i32.const 0
   call $~lib/env/abort
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
  i32.const 8
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
  call $std/array/isArraysEqual<u32>
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
   i32.const 152
   i32.const 905
   i32.const 0
   call $~lib/env/abort
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
  i32.const 16
  i32.const 0
  i32.const 4552
  call $~lib/runtime/makeArray
  call $~lib/array/Array<bool>#join_bool
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
  i32.const 8
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
  i32.const 10
  i32.const 3
  i32.const 6672
  call $~lib/runtime/makeArray
  call $~lib/array/Array<f64>#join_flt
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
  i32.const 15
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
  i32.const 3
  i32.const 20
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
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
  i32.const 21
  i32.const 0
  i32.const 7128
  call $~lib/runtime/makeArray
  call $~lib/array/Array<i8>#join_int
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
  i32.const 22
  i32.const 1
  i32.const 7208
  call $~lib/runtime/makeArray
  call $~lib/array/Array<u16>#join_int
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
  i32.const 17
  i32.const 3
  i32.const 7312
  call $~lib/runtime/makeArray
  call $~lib/array/Array<u64>#join_int
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
  i32.const 23
  i32.const 3
  i32.const 7464
  call $~lib/runtime/makeArray
  call $~lib/array/Array<i64>#join_int
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
  i32.const 15
  i32.const 2
  i32.const 7744
  call $~lib/runtime/makeArray
  call $~lib/array/Array<~lib/string/String | null>#toString
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
  i32.const 2
  i32.const 11
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.const 2
  i32.const 4
  i32.const 2
  i32.const 7832
  call $~lib/runtime/makeArray
  i32.store
  local.get $1
  i32.const 2
  i32.const 4
  i32.const 2
  i32.const 7856
  call $~lib/runtime/makeArray
  i32.store offset=4
  local.get $0
  global.set $std/array/subarr32
  global.get $std/array/subarr32
  call $~lib/array/Array<~lib/array/Array<i32>>#join_arr
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
  i32.const 2
  i32.const 24
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.const 2
  i32.const 7
  i32.const 0
  i32.const 7936
  call $~lib/runtime/makeArray
  i32.store
  local.get $1
  i32.const 2
  i32.const 7
  i32.const 0
  i32.const 7960
  call $~lib/runtime/makeArray
  i32.store offset=4
  local.get $0
  global.set $std/array/subarr8
  global.get $std/array/subarr8
  call $~lib/array/Array<~lib/array/Array<u8>>#join_arr
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
  i32.const 1
  i32.const 26
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
  local.tee $0
  i32.load offset=4
  local.set $1
  i32.const 1
  i32.const 25
  i32.const 2
  i32.const 0
  call $~lib/runtime/makeArray
  local.tee $2
  i32.load offset=4
  i32.const 1
  i32.const 8
  i32.const 2
  i32.const 8056
  call $~lib/runtime/makeArray
  i32.store
  local.get $1
  local.get $2
  i32.store
  local.get $0
  global.set $std/array/subarrU32
  global.get $std/array/subarrU32
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr
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
 (func $std/array/main (; 165 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start:std/array
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $null (; 166 ;) (type $FUNCSIG$v)
  nop
 )
)
