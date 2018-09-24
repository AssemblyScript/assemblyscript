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
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $iIiIiIii (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/dtoa/_K (mut i32) (i32.const 0))
 (global $~lib/internal/dtoa/_exp (mut i32) (i32.const 0))
 (global $~lib/internal/dtoa/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/internal/dtoa/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/internal/dtoa/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/internal/dtoa/_exp_pow (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/arr8 (mut i32) (i32.const 120))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/array/arr32 (mut i32) (i32.const 288))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $std/array/includes (mut i32) (i32.const 0))
 (global $std/array/every (mut i32) (i32.const 0))
 (global $std/array/some (mut i32) (i32.const 0))
 (global $std/array/newArr (mut i32) (i32.const 0))
 (global $std/array/filteredArr (mut i32) (i32.const 0))
 (global $std/array/boolVal (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1 (mut i64) (i64.const 0))
 (global $std/array/f32ArrayTyped (mut i32) (i32.const 728))
 (global $std/array/f64ArrayTyped (mut i32) (i32.const 936))
 (global $std/array/i32ArrayTyped (mut i32) (i32.const 1112))
 (global $std/array/u32ArrayTyped (mut i32) (i32.const 1192))
 (global $std/array/reversed0 (mut i32) (i32.const 1248))
 (global $std/array/reversed1 (mut i32) (i32.const 1272))
 (global $std/array/reversed2 (mut i32) (i32.const 1296))
 (global $std/array/reversed4 (mut i32) (i32.const 1336))
 (global $std/array/expected4 (mut i32) (i32.const 1376))
 (global $std/array/reversed64 (mut i32) (i32.const 0))
 (global $std/array/reversed128 (mut i32) (i32.const 0))
 (global $std/array/reversed1024 (mut i32) (i32.const 0))
 (global $std/array/reversed10000 (mut i32) (i32.const 0))
 (global $std/array/randomized512 (mut i32) (i32.const 0))
 (global $std/array/randomized64 (mut i32) (i32.const 0))
 (global $std/array/randomized257 (mut i32) (i32.const 0))
 (global $std/array/reversedNested512 (mut i32) (i32.const 0))
 (global $std/array/reversedElements512 (mut i32) (i32.const 0))
 (global $std/array/randomStringsActual (mut i32) (i32.const 1536))
 (global $std/array/randomStringsExpected (mut i32) (i32.const 1608))
 (global $std/array/randomStrings400 (mut i32) (i32.const 0))
 (global $std/array/refArr (mut i32) (i32.const 0))
 (global $std/array/subarr32 (mut i32) (i32.const 5368))
 (global $std/array/subarr8 (mut i32) (i32.const 5464))
 (table 56 56 anyfunc)
 (elem (i32.const 0) $null $start~anonymous|1 $start~anonymous|2 $start~anonymous|3 $start~anonymous|4 $start~anonymous|3 $start~anonymous|6 $start~anonymous|7 $start~anonymous|8 $start~anonymous|9 $start~anonymous|10 $start~anonymous|11 $start~anonymous|12 $start~anonymous|13 $start~anonymous|14 $start~anonymous|15 $start~anonymous|16 $start~anonymous|17 $start~anonymous|18 $start~anonymous|17 $start~anonymous|20 $start~anonymous|21 $start~anonymous|22 $start~anonymous|23 $start~anonymous|24 $start~anonymous|25 $start~anonymous|26 $start~anonymous|27 $start~anonymous|28 $start~anonymous|29 $start~anonymous|29 $start~anonymous|31 $start~anonymous|32 $start~anonymous|33 $start~anonymous|29 $start~anonymous|35 $start~anonymous|29 $start~anonymous|29 $start~anonymous|31 $start~anonymous|32 $start~anonymous|33 $start~anonymous|29 $start~anonymous|35 $~lib/array/Array<f32>#sort|trampoline~anonymous|43 $~lib/array/Array<f64>#sort|trampoline~anonymous|44 $~lib/array/Array<i32>#sort|trampoline~anonymous|45 $~lib/array/Array<u32>#sort|trampoline~anonymous|46 $~lib/array/Array<i32>#sort|trampoline~anonymous|45 $~lib/array/Array<i32>#sort|trampoline~anonymous|45 $start~anonymous|49 $~lib/array/Array<i32>#sort|trampoline~anonymous|45 $start~anonymous|49 $start~anonymous|52 $start~anonymous|53 $start~anonymous|54 $start~anonymous|54)
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 104) "\05\00\00\00\00\00\00\00\01\02\03\04\05")
 (data (i32.const 120) "h\00\00\00\05")
 (data (i32.const 128) "\05\00\00\00\00\00\00\00\01\01\01\04\05")
 (data (i32.const 144) "\80\00\00\00\05")
 (data (i32.const 152) "\0c\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 184) "\05")
 (data (i32.const 200) "\b8\00\00\00\05")
 (data (i32.const 208) "\05\00\00\00\00\00\00\00\01\01")
 (data (i32.const 224) "\d0\00\00\00\05")
 (data (i32.const 232) "\05\00\00\00\00\00\00\00\01\01\00\02\02")
 (data (i32.const 248) "\e8\00\00\00\05")
 (data (i32.const 256) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 289) "\01\00\00\05")
 (data (i32.const 296) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 328) "(\01\00\00\05")
 (data (i32.const 336) "\14")
 (data (i32.const 368) "P\01\00\00\05")
 (data (i32.const 376) "\14\00\00\00\00\00\00\00\01\00\00\00\01")
 (data (i32.const 408) "x\01\00\00\05")
 (data (i32.const 416) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 448) "\a0\01\00\00\05")
 (data (i32.const 456) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 488) "V\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?")
 (data (i32.const 664) " ")
 (data (i32.const 674) "\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 728) "\98\02\00\00\08")
 (data (i32.const 736) " ")
 (data (i32.const 746) "\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 800) "\e0\02\00\00\08")
 (data (i32.const 808) "@")
 (data (i32.const 822) "\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?")
 (data (i32.const 862) "\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 936) "(\03\00\00\08")
 (data (i32.const 944) "@")
 (data (i32.const 958) "\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf")
 (data (i32.const 990) "\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 1072) "\b0\03\00\00\08")
 (data (i32.const 1080) "\14\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 1112) "8\04\00\00\05")
 (data (i32.const 1120) "\14\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02")
 (data (i32.const 1152) "`\04\00\00\05")
 (data (i32.const 1160) "\14\00\00\00\00\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 1192) "\88\04\00\00\05")
 (data (i32.const 1200) "\14")
 (data (i32.const 1212) "\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 1232) "\b0\04\00\00\05")
 (data (i32.const 1248) "\d8\04")
 (data (i32.const 1256) "\04\00\00\00\00\00\00\00\01")
 (data (i32.const 1272) "\e8\04\00\00\01")
 (data (i32.const 1280) "\08\00\00\00\00\00\00\00\02\00\00\00\01")
 (data (i32.const 1297) "\05\00\00\02")
 (data (i32.const 1304) "\10\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00\01")
 (data (i32.const 1336) "\18\05\00\00\04")
 (data (i32.const 1344) "\10")
 (data (i32.const 1356) "\01\00\00\00\02\00\00\00\03")
 (data (i32.const 1376) "@\05\00\00\04")
 (data (i32.const 1384) "\04\00\00\00\00\00\00\00\01")
 (data (i32.const 1400) "h\05\00\00\01")
 (data (i32.const 1408) "\08\00\00\00\00\00\00\00\01\00\00\00\02")
 (data (i32.const 1424) "\80\05\00\00\02")
 (data (i32.const 1432) "\01\00\00\00a")
 (data (i32.const 1440) "\01\00\00\00b")
 (data (i32.const 1448) "\02\00\00\00a\00b")
 (data (i32.const 1456) "\02\00\00\00b\00a")
 (data (i32.const 1472) "\1c\00\00\00\00\00\00\00\98\05\00\00\a0\05\00\00\98\05\00\00\a8\05\00\00\b0\05\00\00\b8\05")
 (data (i32.const 1536) "\c0\05\00\00\07")
 (data (i32.const 1544) "\1c\00\00\00\00\00\00\00\b8\05\00\00\98\05\00\00\98\05\00\00\a8\05\00\00\a0\05\00\00\b0\05")
 (data (i32.const 1608) "\08\06\00\00\07")
 (data (i32.const 1616) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1648) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1704) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 1720) "\02\00\00\00\00\00\00\00\01")
 (data (i32.const 1736) "\b8\06\00\00\02")
 (data (i32.const 1744) "\04\00\00\00t\00r\00u\00e")
 (data (i32.const 1760) "\05\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 1776) "\01\00\00\00,")
 (data (i32.const 1784) "\02\00\00\00\00\00\00\00\01")
 (data (i32.const 1800) "\f8\06\00\00\02")
 (data (i32.const 1808) "\n\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e")
 (data (i32.const 1832) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 1864) "(\07\00\00\03")
 (data (i32.const 1872) "\01\00\00\000")
 (data (i32.const 1880) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 2392) "X\07\00\00d")
 (data (i32.const 2400) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 2432) "`\t\00\00\03")
 (data (i32.const 2440) "\03\00\00\001\002\003")
 (data (i32.const 2456) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 2488) "\98\t\00\00\03")
 (data (i32.const 2496) "\01\00\00\00-")
 (data (i32.const 2504) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 2536) "\c8\t\00\00\03")
 (data (i32.const 2544) "\05\00\00\001\00-\002\00-\003")
 (data (i32.const 2560) "\18")
 (data (i32.const 2574) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@")
 (data (i32.const 2593) "\n\00\00\03")
 (data (i32.const 2600) "\02\00\00\00,\00 ")
 (data (i32.const 2608) "\03\00\00\000\00.\000")
 (data (i32.const 2624) "\03\00\00\00N\00a\00N")
 (data (i32.const 2640) "\t\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 2664) "\08\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 2688) "\b8\02\00\00\00\00\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 3712) "\80\n\00\00W")
 (data (i32.const 3720) "\ae\00\00\00\00\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 3976) "\88\0e\00\00W")
 (data (i32.const 3984) "(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 4048) "\90\0f\00\00\n")
 (data (i32.const 4056) "\18")
 (data (i32.const 4070) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@")
 (data (i32.const 4088) "\d8\0f\00\00\03")
 (data (i32.const 4096) "\0d\00\00\001\00.\000\00,\00 \002\00.\000\00,\00 \003\00.\000")
 (data (i32.const 4128) "\01\00\00\001")
 (data (i32.const 4136) "\0c\00\00\00\00\00\00\00\b8\05\00\00 \10")
 (data (i32.const 4168) "(\10\00\00\03")
 (data (i32.const 4176) "\0c\00\00\00\00\00\00\00\b8\05\00\00 \10")
 (data (i32.const 4208) "P\10\00\00\03")
 (data (i32.const 4216) "\0f\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 4256) " \00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 4328) "\03\00\00\001\00,\002")
 (data (i32.const 4344) "\07\00\00\000\00,\001\00,\002\00,\003")
 (data (i32.const 4368) "\03\00\00\00\00\00\00\00\01\ff")
 (data (i32.const 4384) "\10\11\00\00\03")
 (data (i32.const 4392) "\03\00\00\00\00\00\00\00\01\ff")
 (data (i32.const 4408) "(\11\00\00\03")
 (data (i32.const 4416) "\06\00\00\001\00,\00-\001\00,\000")
 (data (i32.const 4432) "\06\00\00\00\00\00\00\00\01\00\ff\ff")
 (data (i32.const 4448) "P\11\00\00\03")
 (data (i32.const 4456) "\06\00\00\00\00\00\00\00\01\00\ff\ff")
 (data (i32.const 4472) "h\11\00\00\03")
 (data (i32.const 4480) "\t\00\00\001\00,\006\005\005\003\005\00,\000")
 (data (i32.const 4504) "\18\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 4536) "\98\11\00\00\03")
 (data (i32.const 4544) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 5056) "\c0\11\00\00d")
 (data (i32.const 5064) "\18\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 5096) "\c8\13\00\00\03")
 (data (i32.const 5104) "\18\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000")
 (data (i32.const 5160) "\0d\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,")
 (data (i32.const 5192) "\01\00\00\002")
 (data (i32.const 5200) "\01\00\00\004")
 (data (i32.const 5208) "\10\00\00\00\00\00\00\00 \10\00\00H\14\00\00\00\00\00\00P\14")
 (data (i32.const 5240) "X\14\00\00\04")
 (data (i32.const 5248) "\10\00\00\00\00\00\00\00 \10\00\00H\14\00\00\00\00\00\00P\14")
 (data (i32.const 5280) "\80\14\00\00\04")
 (data (i32.const 5288) "\06\00\00\001\00,\002\00,\00,\004")
 (data (i32.const 5304) "\08\00\00\00\00\00\00\00\01\00\00\00\02")
 (data (i32.const 5320) "\b8\14\00\00\02")
 (data (i32.const 5328) "\08\00\00\00\00\00\00\00\03\00\00\00\04")
 (data (i32.const 5344) "\d0\14\00\00\02")
 (data (i32.const 5352) "\08\00\00\00\00\00\00\00\c8\14\00\00\e0\14")
 (data (i32.const 5368) "\e8\14\00\00\02")
 (data (i32.const 5376) "\07\00\00\001\00,\002\00,\003\00,\004")
 (data (i32.const 5400) "\02\00\00\00\00\00\00\00\01\02")
 (data (i32.const 5416) "\18\15\00\00\02")
 (data (i32.const 5424) "\02\00\00\00\00\00\00\00\03\04")
 (data (i32.const 5440) "0\15\00\00\02")
 (data (i32.const 5448) "\08\00\00\00\00\00\00\00(\15\00\00@\15")
 (data (i32.const 5464) "H\15\00\00\02")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (i32.shl
   (i32.const 1)
   (i32.sub
    (i32.const 32)
    (i32.clz
     (i32.add
      (get_local $0)
      (i32.const 7)
     )
    )
   )
  )
 )
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741824)
   )
   (unreachable)
  )
  (if
   (i32.gt_u
    (tee_local $2
     (i32.and
      (i32.add
       (i32.add
        (tee_local $1
         (get_global $~lib/allocator/arena/offset)
        )
        (select
         (get_local $0)
         (i32.const 1)
         (i32.gt_u
          (get_local $0)
          (i32.const 1)
         )
        )
       )
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    (i32.shl
     (tee_local $3
      (current_memory)
     )
     (i32.const 16)
    )
   )
   (if
    (i32.lt_s
     (grow_memory
      (select
       (get_local $3)
       (tee_local $0
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (get_local $2)
            (get_local $1)
           )
           (i32.const 65535)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (i32.gt_s
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $0)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $2)
  )
  (get_local $1)
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 4 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/__memory_allocate
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 5 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/allocator/arena/__memory_allocate
   (get_local $0)
  )
 )
 (func $~lib/internal/memory/memset (; 6 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (if
   (i32.eqz
    (get_local $2)
   )
   (return)
  )
  (i32.store8
   (get_local $0)
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 1)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 2)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 1)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (get_local $3)
    (i32.const 3)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 6)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 3)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (tee_local $3
     (i32.and
      (i32.sub
       (i32.const 0)
       (get_local $0)
      )
      (i32.const 3)
     )
    )
   )
  )
  (i32.store
   (tee_local $0
    (i32.add
     (get_local $0)
     (get_local $3)
    )
   )
   (tee_local $1
    (i32.mul
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
     (i32.const 16843009)
    )
   )
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (tee_local $2
      (i32.and
       (get_local $2)
       (i32.const -4)
      )
     )
    )
    (i32.const 4)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.const 12)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
    (i32.const 8)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 24)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.const 28)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
    (i32.const 24)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
    (i32.const 20)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
    (i32.const 16)
   )
   (get_local $1)
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.and
       (get_local $0)
       (i32.const 4)
      )
      (i32.const 24)
     )
    )
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $4
   (i64.or
    (tee_local $4
     (i64.extend_u/i32
      (get_local $1)
     )
    )
    (i64.shl
     (get_local $4)
     (i64.const 32)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.ge_u
     (get_local $2)
     (i32.const 32)
    )
    (block
     (i64.store
      (get_local $0)
      (get_local $4)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
      (get_local $4)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 16)
      )
      (get_local $4)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 24)
      )
      (get_local $4)
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 32)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 32)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<i32>#constructor (; 7 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 26)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (tee_local $3
     (i32.shl
      (get_local $0)
      (i32.const 2)
     )
    )
   )
  )
  (i32.store
   (tee_local $1
    (call $~lib/memory/memory.allocate
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (get_local $1)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $1)
   (get_local $0)
  )
  (call $~lib/internal/memory/memset
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
   (get_local $3)
  )
  (get_local $1)
 )
 (func $~lib/array/Array<u8>#fill (; 8 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $~lib/internal/memory/memset
   (i32.add
    (i32.add
     (i32.load
      (get_local $0)
     )
     (tee_local $2
      (if (result i32)
       (i32.lt_s
        (get_local $2)
        (i32.const 0)
       )
       (select
        (tee_local $5
         (i32.add
          (get_local $4)
          (get_local $2)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (get_local $5)
         (i32.const 0)
        )
       )
       (select
        (tee_local $5
         (get_local $2)
        )
        (get_local $4)
        (i32.lt_s
         (get_local $2)
         (get_local $4)
        )
       )
      )
     )
    )
    (i32.const 8)
   )
   (get_local $1)
   (i32.sub
    (tee_local $3
     (if (result i32)
      (i32.lt_s
       (get_local $3)
       (i32.const 0)
      )
      (select
       (tee_local $5
        (i32.add
         (get_local $4)
         (get_local $3)
        )
       )
       (i32.const 0)
       (i32.gt_s
        (get_local $5)
        (i32.const 0)
       )
      )
      (select
       (tee_local $5
        (get_local $3)
       )
       (get_local $4)
       (i32.lt_s
        (get_local $3)
        (get_local $4)
       )
      )
     )
    )
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<u8>#__get (; 9 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (tee_local $0
   (if (result i32)
    (i32.lt_u
     (get_local $1)
     (i32.load
      (tee_local $0
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (i32.load8_u offset=8
     (i32.add
      (get_local $0)
      (get_local $1)
     )
    )
    (unreachable)
   )
  )
 )
 (func $std/array/isArraysEqual<u8> (; 10 ;) (; has Stack IR ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.ne
    (tee_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.load offset=4
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $3)
     )
    )
    (if
     (i32.ne
      (i32.and
       (call $~lib/array/Array<u8>#__get
        (get_local $0)
        (get_local $2)
       )
       (i32.const 255)
      )
      (i32.and
       (call $~lib/array/Array<u8>#__get
        (get_local $1)
        (get_local $2)
       )
       (i32.const 255)
      )
     )
     (return
      (i32.const 0)
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (i32.const 1)
 )
 (func $~lib/array/Array<u8>#fill|trampoline (; 11 ;) (; has Stack IR ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (i32.sub
        (get_global $~argc)
        (i32.const 1)
       )
      )
     )
     (unreachable)
    )
    (set_local $2
     (i32.const 0)
    )
   )
   (set_local $3
    (i32.const 2147483647)
   )
  )
  (call $~lib/array/Array<u8>#fill
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/array/Array<u32>#fill (; 12 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $2
   (if (result i32)
    (i32.lt_s
     (get_local $2)
     (i32.const 0)
    )
    (select
     (tee_local $5
      (i32.add
       (get_local $4)
       (get_local $2)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (get_local $5)
      (i32.const 0)
     )
    )
    (select
     (tee_local $5
      (get_local $2)
     )
     (get_local $4)
     (i32.lt_s
      (get_local $2)
      (get_local $4)
     )
    )
   )
  )
  (set_local $3
   (if (result i32)
    (i32.lt_s
     (get_local $3)
     (i32.const 0)
    )
    (select
     (tee_local $5
      (i32.add
       (get_local $4)
       (get_local $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (get_local $5)
      (i32.const 0)
     )
    )
    (select
     (tee_local $5
      (get_local $3)
     )
     (get_local $4)
     (i32.lt_s
      (get_local $3)
      (get_local $4)
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $3)
     )
    )
    (i32.store offset=8
     (i32.add
      (get_local $6)
      (i32.shl
       (get_local $2)
       (i32.const 2)
      )
     )
     (get_local $1)
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<u32>#__get (; 13 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (tee_local $0
   (if (result i32)
    (i32.lt_u
     (get_local $1)
     (i32.shr_u
      (i32.load
       (tee_local $0
        (i32.load
         (get_local $0)
        )
       )
      )
      (i32.const 2)
     )
    )
    (i32.load offset=8
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
    (unreachable)
   )
  )
 )
 (func $std/array/isArraysEqual<u32> (; 14 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (tee_local $2
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (if
     (i32.eq
      (get_local $0)
      (get_local $1)
     )
     (return
      (i32.const 1)
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $3)
      (get_local $2)
     )
    )
    (if
     (i32.ne
      (call $~lib/array/Array<u32>#__get
       (get_local $0)
       (get_local $3)
      )
      (call $~lib/array/Array<u32>#__get
       (get_local $1)
       (get_local $3)
      )
     )
     (return
      (i32.const 0)
     )
     (block
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (i32.const 1)
 )
 (func $~lib/array/Array<u32>#fill|trampoline (; 15 ;) (; has Stack IR ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (i32.sub
        (get_global $~argc)
        (i32.const 1)
       )
      )
     )
     (unreachable)
    )
    (set_local $2
     (i32.const 0)
    )
   )
   (set_local $3
    (i32.const 2147483647)
   )
  )
  (call $~lib/array/Array<u32>#fill
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $std/array/internalCapacity<i32> (; 16 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (i32.shr_s
   (i32.load
    (i32.load
     (get_local $0)
    )
   )
   (i32.const 2)
  )
 )
 (func $~lib/internal/memory/memcpy (; 17 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (loop $continue|0
   (if
    (tee_local $3
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $4
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (get_local $1)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
   )
   (block
    (loop $continue|1
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 16)
      )
      (block
       (i32.store
        (get_local $0)
        (i32.load
         (get_local $1)
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 4)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 8)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 12)
        )
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 12)
         )
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 16)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 16)
        )
       )
       (br $continue|1)
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $0)
       (i32.load16_u
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
     (block
      (set_local $3
       (get_local $1)
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (get_local $1)
       )
      )
     )
    )
    (return)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (if
       (i32.ne
        (tee_local $3
         (i32.and
          (get_local $0)
          (i32.const 3)
         )
        )
        (i32.const 1)
       )
       (block
        (br_if $case1|2
         (i32.eq
          (get_local $3)
          (i32.const 2)
         )
        )
        (br_if $case2|2
         (i32.eq
          (get_local $3)
          (i32.const 3)
         )
        )
        (br $break|2)
       )
      )
      (set_local $5
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (tee_local $3
         (get_local $1)
        )
       )
      )
      (set_local $0
       (tee_local $1
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (i32.store8
       (get_local $1)
       (i32.load8_u
        (tee_local $1
         (i32.add
          (get_local $3)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $4
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (tee_local $3
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $4)
       (i32.load8_u
        (get_local $3)
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 3)
       )
      )
      (loop $continue|3
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 17)
        )
        (block
         (i32.store
          (get_local $0)
          (i32.or
           (i32.shr_u
            (get_local $5)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
          (i32.or
           (i32.shr_u
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $5
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
          (i32.or
           (i32.shr_u
            (get_local $5)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 12)
          )
          (i32.or
           (i32.shr_u
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $5
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 16)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
         (br $continue|3)
        )
       )
      )
      (br $break|2)
     )
     (set_local $5
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (get_local $0)
      (i32.load8_u
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 2)
      )
     )
     (loop $continue|4
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 18)
       )
       (block
        (i32.store
         (get_local $0)
         (i32.or
          (i32.shr_u
           (get_local $5)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
         (i32.or
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
         (i32.or
          (i32.shr_u
           (get_local $5)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 12)
         )
         (i32.or
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 16)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 16)
         )
        )
        (set_local $2
         (i32.sub
          (get_local $2)
          (i32.const 16)
         )
        )
        (br $continue|4)
       )
      )
     )
     (br $break|2)
    )
    (set_local $5
     (i32.load
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (get_local $1)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (loop $continue|5
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 19)
      )
      (block
       (i32.store
        (get_local $0)
        (i32.or
         (i32.shr_u
          (get_local $5)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
        (i32.or
         (i32.shr_u
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (i32.or
         (i32.shr_u
          (get_local $5)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 12)
        )
        (i32.or
         (i32.shr_u
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 16)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 16)
        )
       )
       (br $continue|5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 8)
   )
   (block
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 4)
   )
   (block
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 2)
   )
   (block
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (block
    (set_local $3
     (get_local $1)
    )
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memmove (; 18 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
   )
   (set_local $3
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
  )
  (if
   (get_local $3)
   (block
    (call $~lib/internal/memory/memcpy
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (return)
   )
  )
  (if
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (loop $continue|0
       (if
        (i32.and
         (get_local $0)
         (i32.const 7)
        )
        (block
         (if
          (i32.eqz
           (get_local $2)
          )
          (return)
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $0
          (i32.add
           (tee_local $3
            (tee_local $4
             (get_local $0)
            )
           )
           (i32.const 1)
          )
         )
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (i32.store8
          (get_local $4)
          (i32.load8_u
           (get_local $3)
          )
         )
         (br $continue|0)
        )
       )
      )
      (loop $continue|1
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
        (block
         (i64.store
          (get_local $0)
          (i64.load
           (get_local $1)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 8)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
    )
    (loop $continue|2
     (if
      (get_local $2)
      (block
       (set_local $0
        (i32.add
         (tee_local $3
          (tee_local $4
           (get_local $0)
          )
         )
         (i32.const 1)
        )
       )
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (get_local $4)
        (i32.load8_u
         (get_local $3)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $continue|2)
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (loop $continue|3
       (if
        (i32.and
         (i32.add
          (get_local $0)
          (get_local $2)
         )
         (i32.const 7)
        )
        (block
         (if
          (i32.eqz
           (get_local $2)
          )
          (return)
         )
         (i32.store8
          (i32.add
           (get_local $0)
           (tee_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
          )
          (i32.load8_u
           (i32.add
            (get_local $1)
            (get_local $2)
           )
          )
         )
         (br $continue|3)
        )
       )
      )
      (loop $continue|4
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
        (block
         (i64.store
          (i32.add
           (get_local $0)
           (tee_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
          )
          (i64.load
           (i32.add
            (get_local $1)
            (get_local $2)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (loop $continue|5
     (if
      (get_local $2)
      (block
       (i32.store8
        (i32.add
         (get_local $0)
         (tee_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (i32.load8_u
         (i32.add
          (get_local $1)
          (get_local $2)
         )
        )
       )
       (br $continue|5)
      )
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 19 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_s
    (get_local $1)
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
   )
   (block
    (if
     (i32.gt_s
      (get_local $1)
      (i32.const 1073741816)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 40)
       (i32.const 37)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (if
     (i32.le_s
      (get_local $1)
      (i32.sub
       (call $~lib/internal/arraybuffer/computeSize
        (get_local $2)
       )
       (i32.const 8)
      )
     )
     (block
      (i32.store
       (get_local $0)
       (get_local $1)
      )
      (call $~lib/internal/memory/memset
       (i32.add
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (get_local $2)
       )
       (i32.const 0)
       (i32.sub
        (get_local $1)
        (get_local $2)
       )
      )
     )
     (block
      (call $~lib/internal/memory/memmove
       (i32.add
        (tee_local $3
         (call $~lib/internal/arraybuffer/allocateUnsafe
          (get_local $1)
         )
        )
        (i32.const 8)
       )
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (get_local $2)
      )
      (call $~lib/internal/memory/memset
       (i32.add
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
        (get_local $2)
       )
       (i32.const 0)
       (i32.sub
        (get_local $1)
        (get_local $2)
       )
      )
      (return
       (get_local $3)
      )
     )
    )
   )
   (if
    (i32.lt_s
     (get_local $1)
     (get_local $2)
    )
    (block
     (if
      (i32.lt_s
       (get_local $1)
       (i32.const 0)
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 40)
        (i32.const 61)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (i32.store
      (get_local $0)
      (get_local $1)
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#push (; 20 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.add
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.shr_u
     (i32.load
      (tee_local $4
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 2)
    )
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 168)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    (i32.store
     (get_local $0)
     (tee_local $4
      (call $~lib/internal/arraybuffer/reallocateUnsafe
       (get_local $4)
       (i32.shl
        (get_local $3)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store offset=8
   (i32.add
    (get_local $4)
    (i32.shl
     (get_local $2)
     (i32.const 2)
    )
   )
   (get_local $1)
  )
  (get_local $3)
 )
 (func $~lib/array/Array<i32>#pop (; 21 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.lt_s
    (tee_local $1
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 180)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=8
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.shl
      (tee_local $1
       (i32.sub
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 2)
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (get_local $2)
 )
 (func $~lib/array/Array<i32>#unshift (; 22 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (i32.add
    (tee_local $4
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $4)
    (tee_local $5
     (i32.shr_u
      (i32.load
       (tee_local $2
        (i32.load
         (get_local $0)
        )
       )
      )
      (i32.const 2)
     )
    )
   )
   (block
    (if
     (i32.ge_u
      (get_local $4)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 270)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    (set_local $5
     (i32.shr_u
      (i32.load
       (tee_local $2
        (call $~lib/internal/arraybuffer/reallocateUnsafe
         (get_local $2)
         (i32.shl
          (get_local $3)
          (i32.const 2)
         )
        )
       )
      )
      (i32.const 2)
     )
    )
    (i32.store
     (get_local $0)
     (get_local $2)
    )
   )
  )
  (call $~lib/internal/memory/memmove
   (i32.add
    (get_local $2)
    (i32.const 12)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.shl
    (i32.sub
     (get_local $5)
     (i32.const 1)
    )
    (i32.const 2)
   )
  )
  (i32.store offset=8
   (get_local $2)
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (get_local $3)
 )
 (func $~lib/array/Array<i32>#shift (; 23 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.lt_s
    (tee_local $1
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 241)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_local $3
   (i32.load offset=8
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
   )
  )
  (call $~lib/internal/memory/memmove
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.add
    (get_local $2)
    (i32.const 12)
   )
   (i32.shl
    (tee_local $1
     (i32.sub
      (get_local $1)
      (i32.const 1)
     )
    )
    (i32.const 2)
   )
  )
  (i32.store offset=8
   (i32.add
    (get_local $2)
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (get_local $3)
 )
 (func $~lib/array/Array<i32>#reverse (; 24 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.sub
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $4
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.shl
        (get_local $1)
        (i32.const 2)
       )
      )
     )
    )
    (i32.store offset=8
     (i32.add
      (get_local $3)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.shl
        (get_local $2)
        (i32.const 2)
       )
      )
     )
    )
    (i32.store offset=8
     (i32.add
      (get_local $3)
      (i32.shl
       (get_local $2)
       (i32.const 2)
      )
     )
     (get_local $4)
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#indexOf (; 25 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (tee_local $3
     (i32.eqz
      (tee_local $4
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
   )
   (set_local $3
    (i32.ge_s
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (if
   (get_local $3)
   (return
    (i32.const -1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (set_local $2
    (select
     (tee_local $3
      (i32.add
       (get_local $4)
       (get_local $2)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (get_local $3)
      (i32.const 0)
     )
    )
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $2)
     (get_local $4)
    )
    (block
     (if
      (i32.eq
       (i32.load offset=8
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
      )
      (return
       (get_local $2)
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.const -1)
 )
 (func $~lib/array/Array<i32>#includes (; 26 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (tee_local $3
     (i32.eqz
      (tee_local $4
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
   )
   (set_local $3
    (i32.ge_s
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (if
   (get_local $3)
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (set_local $2
    (select
     (tee_local $3
      (i32.add
       (get_local $4)
       (get_local $2)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (get_local $3)
      (i32.const 0)
     )
    )
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $2)
     (get_local $4)
    )
    (block
     (if
      (i32.eq
       (i32.load offset=8
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
      )
      (return
       (i32.const 1)
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/array/Array<i32>#splice (; 27 ;) (; has Stack IR ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.ge_s
    (i32.const 1)
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (return)
  )
  (call $~lib/internal/memory/memmove
   (i32.add
    (tee_local $1
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.const 8)
     )
    )
    (i32.const 4)
   )
   (i32.add
    (get_local $1)
    (i32.shl
     (i32.add
      (tee_local $1
       (select
        (i32.const 1)
        (tee_local $1
         (i32.sub
          (get_local $2)
          (i32.const 1)
         )
        )
        (i32.lt_s
         (i32.const 1)
         (get_local $1)
        )
       )
      )
      (i32.const 1)
     )
     (i32.const 2)
    )
   )
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_local $2)
    (get_local $1)
   )
  )
 )
 (func $~lib/array/Array<i32>#__set (; 28 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (tee_local $3
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 2)
    )
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 90)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (i32.store
     (get_local $0)
     (tee_local $3
      (call $~lib/internal/arraybuffer/reallocateUnsafe
       (get_local $3)
       (i32.shl
        (tee_local $4
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 2)
       )
      )
     )
    )
    (i32.store offset=4
     (get_local $0)
     (get_local $4)
    )
   )
  )
  (i32.store offset=8
   (i32.add
    (get_local $3)
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (get_local $2)
  )
 )
 (func $start~anonymous|1 (; 29 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eqz
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i32>#findIndex (; 30 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (if
     (i32.and
      (call_indirect (type $iiii)
       (i32.load offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (get_local $2)
       (get_local $0)
       (get_local $1)
      )
      (i32.const 1)
     )
     (return
      (get_local $2)
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (i32.const -1)
 )
 (func $start~anonymous|2 (; 31 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 1)
  )
 )
 (func $start~anonymous|3 (; 32 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|4 (; 33 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|6 (; 34 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|7 (; 35 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/array/Array<i32>#every (; 36 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (if
     (i32.and
      (call_indirect (type $iiii)
       (i32.load offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (get_local $2)
       (get_local $0)
       (get_local $1)
      )
      (i32.const 1)
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
     (return
      (i32.const 0)
     )
    )
   )
  )
  (i32.const 1)
 )
 (func $start~anonymous|8 (; 37 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $start~anonymous|9 (; 38 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (i32.lt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|10 (; 39 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.lt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|11 (; 40 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (i32.lt_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $start~anonymous|12 (; 41 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $~lib/array/Array<i32>#some (; 42 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (if
     (i32.and
      (call_indirect (type $iiii)
       (i32.load offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (get_local $2)
       (get_local $0)
       (get_local $1)
      )
      (i32.const 1)
     )
     (return
      (i32.const 1)
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (i32.const 0)
 )
 (func $start~anonymous|13 (; 43 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const -1)
  )
 )
 (func $start~anonymous|14 (; 44 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (i32.gt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|15 (; 45 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.gt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|16 (; 46 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (i32.gt_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $start~anonymous|17 (; 47 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
 )
 (func $~lib/array/Array<i32>#forEach (; 48 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (call_indirect (type $iiiv)
     (i32.load offset=8
      (i32.add
       (get_local $4)
       (i32.shl
        (get_local $2)
        (i32.const 2)
       )
      )
     )
     (get_local $2)
     (get_local $0)
     (get_local $1)
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $start~anonymous|18 (; 49 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
 )
 (func $start~anonymous|20 (; 50 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
 )
 (func $start~anonymous|21 (; 51 ;) (; has Stack IR ;) (type $iiif) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (f32.convert_s/i32
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i32>#map<f32> (; 52 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (tee_local $5
     (call $~lib/array/Array<i32>#constructor
      (tee_local $4
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (if
     (tee_local $2
      (i32.lt_s
       (get_local $1)
       (get_local $4)
      )
     )
     (set_local $2
      (i32.lt_s
       (get_local $1)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $2)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (f32.store offset=8
     (i32.add
      (get_local $6)
      (tee_local $2
       (i32.shl
        (get_local $1)
        (i32.const 2)
       )
      )
     )
     (call_indirect (type $iiif)
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (get_local $2)
       )
      )
      (get_local $1)
      (get_local $0)
      (i32.const 21)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $5)
 )
 (func $~lib/array/Array<f32>#__get (; 53 ;) (; has Stack IR ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
  (if (result f32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (tee_local $0
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 2)
    )
   )
   (f32.load offset=8
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (unreachable)
  )
 )
 (func $start~anonymous|22 (; 54 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#map<i32> (; 55 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $7
   (i32.load
    (tee_local $6
     (call $~lib/array/Array<i32>#constructor
      (tee_local $5
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (i32.store offset=8
     (i32.add
      (get_local $7)
      (i32.shl
       (get_local $2)
       (i32.const 2)
      )
     )
     (call_indirect (type $iiii)
      (i32.load offset=8
       (i32.add
        (get_local $4)
        (i32.shl
         (get_local $2)
         (i32.const 2)
        )
       )
      )
      (get_local $2)
      (get_local $0)
      (get_local $1)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $6)
 )
 (func $start~anonymous|23 (; 56 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (get_local $0)
 )
 (func $start~anonymous|24 (; 57 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (get_local $0)
 )
 (func $start~anonymous|25 (; 58 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 2)
  )
 )
 (func $~lib/array/Array<i32>#filter (; 59 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $6)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_local $3
     (i32.load offset=8
      (i32.add
       (get_local $5)
       (i32.shl
        (get_local $2)
        (i32.const 2)
       )
      )
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (if
     (i32.and
      (call_indirect (type $iiii)
       (get_local $3)
       (get_local $2)
       (get_local $0)
       (get_local $1)
      )
      (i32.const 1)
     )
     (drop
      (call $~lib/array/Array<i32>#push
       (get_local $4)
       (get_local $3)
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $4)
 )
 (func $start~anonymous|26 (; 60 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (i32.ge_s
   (get_local $0)
   (i32.const 2)
  )
 )
 (func $start~anonymous|27 (; 61 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (i32.ge_s
   (get_local $0)
   (i32.const 2)
  )
 )
 (func $start~anonymous|28 (; 62 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (i32.ge_s
   (get_local $0)
   (i32.const 2)
  )
 )
 (func $start~anonymous|29 (; 63 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 64 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $6
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (if
     (tee_local $4
      (i32.lt_s
       (get_local $3)
       (get_local $6)
      )
     )
     (set_local $4
      (i32.lt_s
       (get_local $3)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $4)
     )
    )
    (set_global $~argc
     (i32.const 4)
    )
    (set_local $2
     (call_indirect (type $iiiii)
      (get_local $2)
      (i32.load offset=8
       (i32.add
        (get_local $5)
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
      )
      (get_local $3)
      (get_local $0)
      (get_local $1)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $start~anonymous|31 (; 65 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (if (result i32)
   (i32.and
    (get_local $0)
    (i32.const 1)
   )
   (get_local $0)
   (i32.gt_s
    (get_local $1)
    (i32.const 2)
   )
  )
 )
 (func $start~anonymous|32 (; 66 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (if (result i32)
   (i32.and
    (get_local $0)
    (i32.const 1)
   )
   (get_local $0)
   (i32.gt_s
    (get_local $1)
    (i32.const 100)
   )
  )
 )
 (func $start~anonymous|33 (; 67 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|35 (; 68 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $3)
   )
  )
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 69 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $3
    (i32.sub
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.lt_s
      (get_local $3)
      (i32.const 0)
     )
    )
    (set_global $~argc
     (i32.const 4)
    )
    (set_local $2
     (call_indirect (type $iiiii)
      (get_local $2)
      (i32.load offset=8
       (i32.add
        (get_local $4)
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
      )
      (get_local $3)
      (get_local $0)
      (get_local $1)
     )
    )
    (set_local $3
     (i32.sub
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $~lib/math/murmurHash3 (; 70 ;) (; has Stack IR ;) (type $II) (param $0 i64) (result i64)
  (i64.xor
   (tee_local $0
    (i64.mul
     (i64.xor
      (tee_local $0
       (i64.mul
        (i64.xor
         (get_local $0)
         (i64.shr_u
          (get_local $0)
          (i64.const 33)
         )
        )
        (i64.const -49064778989728563)
       )
      )
      (i64.shr_u
       (get_local $0)
       (i64.const 33)
      )
     )
     (i64.const -4265267296055464877)
    )
   )
   (i64.shr_u
    (get_local $0)
    (i64.const 33)
   )
  )
 )
 (func $~lib/math/NativeMath.seedRandom (; 71 ;) (; has Stack IR ;) (type $Iv) (param $0 i64)
  (if
   (i64.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 456)
     (i32.const 1000)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_global $~lib/math/random_seeded
   (i32.const 1)
  )
  (set_global $~lib/math/random_state0
   (call $~lib/math/murmurHash3
    (get_local $0)
   )
  )
  (set_global $~lib/math/random_state1
   (call $~lib/math/murmurHash3
    (get_global $~lib/math/random_state0)
   )
  )
 )
 (func $~lib/internal/array/insertionSort<f32> (; 72 ;) (; has Stack IR ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $4)
      (get_local $1)
     )
    )
    (set_local $5
     (f32.load offset=8
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $4)
        (i32.const 2)
       )
      )
     )
    )
    (set_local $3
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_s
        (get_local $3)
        (i32.const 0)
       )
       (block
        (set_local $6
         (f32.load offset=8
          (i32.add
           (get_local $0)
           (i32.shl
            (get_local $3)
            (i32.const 2)
           )
          )
         )
        )
        (set_global $~argc
         (i32.const 2)
        )
        (br_if $break|1
         (i32.ge_s
          (call_indirect (type $ffi)
           (get_local $5)
           (get_local $6)
           (get_local $2)
          )
          (i32.const 0)
         )
        )
        (set_local $3
         (i32.sub
          (tee_local $7
           (get_local $3)
          )
          (i32.const 1)
         )
        )
        (f32.store offset=8
         (i32.add
          (get_local $0)
          (i32.shl
           (i32.add
            (get_local $7)
            (i32.const 1)
           )
           (i32.const 2)
          )
         )
         (get_local $6)
        )
        (br $continue|1)
       )
      )
     )
    )
    (f32.store offset=8
     (i32.add
      (get_local $0)
      (i32.shl
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
     (get_local $5)
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/allocator/arena/__memory_free (; 73 ;) (; has Stack IR ;) (type $FUNCSIG$v)
  (nop)
 )
 (func $~lib/internal/array/weakHeapSort<f32> (; 74 ;) (; has Stack IR ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  (call $~lib/internal/memory/memset
   (tee_local $8
    (call $~lib/allocator/arena/__memory_allocate
     (tee_local $5
      (i32.shl
       (i32.shr_s
        (i32.add
         (get_local $1)
         (i32.const 31)
        )
        (i32.const 5)
       )
       (i32.const 2)
      )
     )
    )
   )
   (i32.const 0)
   (get_local $5)
  )
  (block $break|0
   (set_local $3
    (i32.sub
     (get_local $1)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.le_s
      (get_local $3)
      (i32.const 0)
     )
    )
    (set_local $5
     (get_local $3)
    )
    (loop $continue|1
     (if
      (i32.eq
       (i32.and
        (get_local $5)
        (i32.const 1)
       )
       (i32.and
        (i32.shr_u
         (i32.load
          (i32.add
           (get_local $8)
           (i32.shl
            (i32.shr_s
             (get_local $5)
             (i32.const 6)
            )
            (i32.const 2)
           )
          )
         )
         (i32.and
          (i32.shr_s
           (get_local $5)
           (i32.const 1)
          )
          (i32.const 31)
         )
        )
        (i32.const 1)
       )
      )
      (block
       (set_local $5
        (i32.shr_s
         (get_local $5)
         (i32.const 1)
        )
       )
       (br $continue|1)
      )
     )
    )
    (set_local $7
     (f32.load offset=8
      (i32.add
       (get_local $0)
       (i32.shl
        (tee_local $4
         (i32.shr_s
          (get_local $5)
          (i32.const 1)
         )
        )
        (i32.const 2)
       )
      )
     )
    )
    (set_local $6
     (f32.load offset=8
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 2)
       )
      )
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $ffi)
       (get_local $7)
       (get_local $6)
       (get_local $2)
      )
      (i32.const 0)
     )
     (block
      (i32.store
       (tee_local $5
        (i32.add
         (get_local $8)
         (i32.shl
          (i32.shr_s
           (get_local $3)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
       )
       (i32.xor
        (i32.load
         (get_local $5)
        )
        (i32.shl
         (i32.const 1)
         (i32.and
          (get_local $3)
          (i32.const 31)
         )
        )
       )
      )
      (f32.store offset=8
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
       (get_local $7)
      )
      (f32.store offset=8
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $4)
         (i32.const 2)
        )
       )
       (get_local $6)
      )
     )
    )
    (set_local $3
     (i32.sub
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $3
    (i32.sub
     (get_local $1)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.lt_s
      (get_local $3)
      (i32.const 2)
     )
    )
    (set_local $6
     (f32.load offset=8
      (get_local $0)
     )
    )
    (f32.store offset=8
     (get_local $0)
     (f32.load offset=8
      (tee_local $1
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
    )
    (f32.store offset=8
     (get_local $1)
     (get_local $6)
    )
    (set_local $4
     (i32.const 1)
    )
    (loop $continue|3
     (if
      (i32.lt_s
       (tee_local $5
        (i32.add
         (i32.shl
          (get_local $4)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $8)
             (i32.shl
              (i32.shr_s
               (get_local $4)
               (i32.const 5)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (get_local $4)
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
       )
       (get_local $3)
      )
      (block
       (set_local $4
        (get_local $5)
       )
       (br $continue|3)
      )
     )
    )
    (loop $continue|4
     (if
      (i32.gt_s
       (get_local $4)
       (i32.const 0)
      )
      (block
       (set_local $6
        (f32.load offset=8
         (get_local $0)
        )
       )
       (set_local $7
        (f32.load offset=8
         (i32.add
          (get_local $0)
          (i32.shl
           (get_local $4)
           (i32.const 2)
          )
         )
        )
       )
       (set_global $~argc
        (i32.const 2)
       )
       (if
        (i32.lt_s
         (call_indirect (type $ffi)
          (get_local $6)
          (get_local $7)
          (get_local $2)
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (tee_local $1
           (i32.add
            (get_local $8)
            (i32.shl
             (i32.shr_s
              (get_local $4)
              (i32.const 5)
             )
             (i32.const 2)
            )
           )
          )
          (i32.xor
           (i32.load
            (get_local $1)
           )
           (i32.shl
            (i32.const 1)
            (i32.and
             (get_local $4)
             (i32.const 31)
            )
           )
          )
         )
         (f32.store offset=8
          (i32.add
           (get_local $0)
           (i32.shl
            (get_local $4)
            (i32.const 2)
           )
          )
          (get_local $6)
         )
         (f32.store offset=8
          (get_local $0)
          (get_local $7)
         )
        )
       )
       (set_local $4
        (i32.shr_s
         (get_local $4)
         (i32.const 1)
        )
       )
       (br $continue|4)
      )
     )
    )
    (set_local $3
     (i32.sub
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (call $~lib/allocator/arena/__memory_free)
  (set_local $6
   (f32.load offset=8
    (tee_local $1
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
   )
  )
  (f32.store offset=8
   (get_local $1)
   (f32.load offset=8
    (get_local $0)
   )
  )
  (f32.store offset=8
   (get_local $0)
   (get_local $6)
  )
 )
 (func $~lib/array/Array<f32>#sort (; 75 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 333)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.le_s
    (tee_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const 2)
   )
   (block
    (set_local $4
     (f32.load offset=8
      (i32.add
       (get_local $2)
       (i32.const 4)
      )
     )
    )
    (set_local $5
     (f32.load offset=8
      (get_local $2)
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $ffi)
       (get_local $4)
       (get_local $5)
       (get_local $1)
      )
      (i32.const 0)
     )
     (block
      (f32.store offset=8
       (i32.add
        (get_local $2)
        (i32.const 4)
       )
       (get_local $5)
      )
      (f32.store offset=8
       (get_local $2)
       (get_local $4)
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 256)
   )
   (call $~lib/internal/array/insertionSort<f32>
    (get_local $2)
    (get_local $3)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<f32>
    (get_local $2)
    (get_local $3)
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<f32>#sort|trampoline~anonymous|43 (; 76 ;) (; has Stack IR ;) (type $ffi) (param $0 f32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (i32.sub
   (i32.gt_s
    (tee_local $2
     (i32.xor
      (tee_local $2
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.shr_u
       (i32.shr_s
        (get_local $2)
        (i32.const 31)
       )
       (i32.const 1)
      )
     )
    )
    (tee_local $3
     (i32.xor
      (tee_local $3
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
      (i32.shr_u
       (i32.shr_s
        (get_local $3)
        (i32.const 31)
       )
       (i32.const 1)
      )
     )
    )
   )
   (i32.lt_s
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $~lib/array/Array<f32>#sort|trampoline (; 77 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (i32.const 43)
   )
  )
  (call $~lib/array/Array<f32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/builtins/isNaN<f32> (; 78 ;) (; has Stack IR ;) (type $fi) (param $0 f32) (result i32)
  (f32.ne
   (get_local $0)
   (get_local $0)
  )
 )
 (func $std/array/isArraysEqual<f32> (; 79 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.ne
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.load
     (i32.const 804)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eq
    (get_local $0)
    (i32.const 800)
   )
   (return
    (i32.const 1)
   )
  )
  (block $break|0
   (loop $repeat|0
    (block $continue|0
     (br_if $break|0
      (i32.ge_s
       (get_local $1)
       (get_local $2)
      )
     )
     (br_if $continue|0
      (i32.eq
       (call $~lib/builtins/isNaN<f32>
        (call $~lib/array/Array<f32>#__get
         (get_local $0)
         (get_local $1)
        )
       )
       (call $~lib/builtins/isNaN<f32>
        (call $~lib/array/Array<f32>#__get
         (i32.const 800)
         (get_local $1)
        )
       )
      )
     )
     (if
      (f32.ne
       (call $~lib/array/Array<f32>#__get
        (get_local $0)
        (get_local $1)
       )
       (call $~lib/array/Array<f32>#__get
        (i32.const 800)
        (get_local $1)
       )
      )
      (return
       (i32.const 0)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $~lib/internal/array/insertionSort<f64> (; 80 ;) (; has Stack IR ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $4)
      (get_local $1)
     )
    )
    (set_local $5
     (f64.load offset=8
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $4)
        (i32.const 3)
       )
      )
     )
    )
    (set_local $3
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_s
        (get_local $3)
        (i32.const 0)
       )
       (block
        (set_local $6
         (f64.load offset=8
          (i32.add
           (get_local $0)
           (i32.shl
            (get_local $3)
            (i32.const 3)
           )
          )
         )
        )
        (set_global $~argc
         (i32.const 2)
        )
        (br_if $break|1
         (i32.ge_s
          (call_indirect (type $FFi)
           (get_local $5)
           (get_local $6)
           (get_local $2)
          )
          (i32.const 0)
         )
        )
        (set_local $3
         (i32.sub
          (tee_local $7
           (get_local $3)
          )
          (i32.const 1)
         )
        )
        (f64.store offset=8
         (i32.add
          (get_local $0)
          (i32.shl
           (i32.add
            (get_local $7)
            (i32.const 1)
           )
           (i32.const 3)
          )
         )
         (get_local $6)
        )
        (br $continue|1)
       )
      )
     )
    )
    (f64.store offset=8
     (i32.add
      (get_local $0)
      (i32.shl
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
       (i32.const 3)
      )
     )
     (get_local $5)
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/internal/array/weakHeapSort<f64> (; 81 ;) (; has Stack IR ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (call $~lib/internal/memory/memset
   (tee_local $8
    (call $~lib/allocator/arena/__memory_allocate
     (tee_local $5
      (i32.shl
       (i32.shr_s
        (i32.add
         (get_local $1)
         (i32.const 31)
        )
        (i32.const 5)
       )
       (i32.const 2)
      )
     )
    )
   )
   (i32.const 0)
   (get_local $5)
  )
  (block $break|0
   (set_local $3
    (i32.sub
     (get_local $1)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.le_s
      (get_local $3)
      (i32.const 0)
     )
    )
    (set_local $5
     (get_local $3)
    )
    (loop $continue|1
     (if
      (i32.eq
       (i32.and
        (get_local $5)
        (i32.const 1)
       )
       (i32.and
        (i32.shr_u
         (i32.load
          (i32.add
           (get_local $8)
           (i32.shl
            (i32.shr_s
             (get_local $5)
             (i32.const 6)
            )
            (i32.const 2)
           )
          )
         )
         (i32.and
          (i32.shr_s
           (get_local $5)
           (i32.const 1)
          )
          (i32.const 31)
         )
        )
        (i32.const 1)
       )
      )
      (block
       (set_local $5
        (i32.shr_s
         (get_local $5)
         (i32.const 1)
        )
       )
       (br $continue|1)
      )
     )
    )
    (set_local $7
     (f64.load offset=8
      (i32.add
       (get_local $0)
       (i32.shl
        (tee_local $4
         (i32.shr_s
          (get_local $5)
          (i32.const 1)
         )
        )
        (i32.const 3)
       )
      )
     )
    )
    (set_local $6
     (f64.load offset=8
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 3)
       )
      )
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $FFi)
       (get_local $7)
       (get_local $6)
       (get_local $2)
      )
      (i32.const 0)
     )
     (block
      (i32.store
       (tee_local $5
        (i32.add
         (get_local $8)
         (i32.shl
          (i32.shr_s
           (get_local $3)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
       )
       (i32.xor
        (i32.load
         (get_local $5)
        )
        (i32.shl
         (i32.const 1)
         (i32.and
          (get_local $3)
          (i32.const 31)
         )
        )
       )
      )
      (f64.store offset=8
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $3)
         (i32.const 3)
        )
       )
       (get_local $7)
      )
      (f64.store offset=8
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $4)
         (i32.const 3)
        )
       )
       (get_local $6)
      )
     )
    )
    (set_local $3
     (i32.sub
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $3
    (i32.sub
     (get_local $1)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.lt_s
      (get_local $3)
      (i32.const 2)
     )
    )
    (set_local $6
     (f64.load offset=8
      (get_local $0)
     )
    )
    (f64.store offset=8
     (get_local $0)
     (f64.load offset=8
      (tee_local $1
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $3)
         (i32.const 3)
        )
       )
      )
     )
    )
    (f64.store offset=8
     (get_local $1)
     (get_local $6)
    )
    (set_local $4
     (i32.const 1)
    )
    (loop $continue|3
     (if
      (i32.lt_s
       (tee_local $5
        (i32.add
         (i32.shl
          (get_local $4)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $8)
             (i32.shl
              (i32.shr_s
               (get_local $4)
               (i32.const 5)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (get_local $4)
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
       )
       (get_local $3)
      )
      (block
       (set_local $4
        (get_local $5)
       )
       (br $continue|3)
      )
     )
    )
    (loop $continue|4
     (if
      (i32.gt_s
       (get_local $4)
       (i32.const 0)
      )
      (block
       (set_local $6
        (f64.load offset=8
         (get_local $0)
        )
       )
       (set_local $7
        (f64.load offset=8
         (i32.add
          (get_local $0)
          (i32.shl
           (get_local $4)
           (i32.const 3)
          )
         )
        )
       )
       (set_global $~argc
        (i32.const 2)
       )
       (if
        (i32.lt_s
         (call_indirect (type $FFi)
          (get_local $6)
          (get_local $7)
          (get_local $2)
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (tee_local $1
           (i32.add
            (get_local $8)
            (i32.shl
             (i32.shr_s
              (get_local $4)
              (i32.const 5)
             )
             (i32.const 2)
            )
           )
          )
          (i32.xor
           (i32.load
            (get_local $1)
           )
           (i32.shl
            (i32.const 1)
            (i32.and
             (get_local $4)
             (i32.const 31)
            )
           )
          )
         )
         (f64.store offset=8
          (i32.add
           (get_local $0)
           (i32.shl
            (get_local $4)
            (i32.const 3)
           )
          )
          (get_local $6)
         )
         (f64.store offset=8
          (get_local $0)
          (get_local $7)
         )
        )
       )
       (set_local $4
        (i32.shr_s
         (get_local $4)
         (i32.const 1)
        )
       )
       (br $continue|4)
      )
     )
    )
    (set_local $3
     (i32.sub
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (call $~lib/allocator/arena/__memory_free)
  (set_local $6
   (f64.load offset=8
    (tee_local $1
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
   )
  )
  (f64.store offset=8
   (get_local $1)
   (f64.load offset=8
    (get_local $0)
   )
  )
  (f64.store offset=8
   (get_local $0)
   (get_local $6)
  )
 )
 (func $~lib/array/Array<f64>#sort (; 82 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 333)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.le_s
    (tee_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const 2)
   )
   (block
    (set_local $4
     (f64.load offset=8
      (i32.add
       (get_local $2)
       (i32.const 8)
      )
     )
    )
    (set_local $5
     (f64.load offset=8
      (get_local $2)
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $FFi)
       (get_local $4)
       (get_local $5)
       (get_local $1)
      )
      (i32.const 0)
     )
     (block
      (f64.store offset=8
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (get_local $5)
      )
      (f64.store offset=8
       (get_local $2)
       (get_local $4)
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 256)
   )
   (call $~lib/internal/array/insertionSort<f64>
    (get_local $2)
    (get_local $3)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<f64>
    (get_local $2)
    (get_local $3)
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<f64>#sort|trampoline~anonymous|44 (; 83 ;) (; has Stack IR ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  (i32.sub
   (i64.gt_s
    (tee_local $2
     (i64.xor
      (tee_local $2
       (i64.reinterpret/f64
        (get_local $0)
       )
      )
      (i64.shr_u
       (i64.shr_s
        (get_local $2)
        (i64.const 63)
       )
       (i64.const 1)
      )
     )
    )
    (tee_local $3
     (i64.xor
      (tee_local $3
       (i64.reinterpret/f64
        (get_local $1)
       )
      )
      (i64.shr_u
       (i64.shr_s
        (get_local $3)
        (i64.const 63)
       )
       (i64.const 1)
      )
     )
    )
   )
   (i64.lt_s
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $~lib/array/Array<f64>#sort|trampoline (; 84 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (i32.const 44)
   )
  )
  (call $~lib/array/Array<f64>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<f64>#__get (; 85 ;) (; has Stack IR ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (if (result f64)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (tee_local $0
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 3)
    )
   )
   (f64.load offset=8
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 3)
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/builtins/isNaN<f64> (; 86 ;) (; has Stack IR ;) (type $Fi) (param $0 f64) (result i32)
  (f64.ne
   (get_local $0)
   (get_local $0)
  )
 )
 (func $std/array/isArraysEqual<f64> (; 87 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.ne
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.load
     (i32.const 1076)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eq
    (get_local $0)
    (i32.const 1072)
   )
   (return
    (i32.const 1)
   )
  )
  (block $break|0
   (loop $repeat|0
    (block $continue|0
     (br_if $break|0
      (i32.ge_s
       (get_local $1)
       (get_local $2)
      )
     )
     (br_if $continue|0
      (i32.eq
       (call $~lib/builtins/isNaN<f64>
        (call $~lib/array/Array<f64>#__get
         (get_local $0)
         (get_local $1)
        )
       )
       (call $~lib/builtins/isNaN<f64>
        (call $~lib/array/Array<f64>#__get
         (i32.const 1072)
         (get_local $1)
        )
       )
      )
     )
     (if
      (f64.ne
       (call $~lib/array/Array<f64>#__get
        (get_local $0)
        (get_local $1)
       )
       (call $~lib/array/Array<f64>#__get
        (i32.const 1072)
        (get_local $1)
       )
      )
      (return
       (i32.const 0)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $~lib/internal/array/insertionSort<i32> (; 88 ;) (; has Stack IR ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $4)
      (get_local $1)
     )
    )
    (set_local $6
     (i32.load offset=8
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $4)
        (i32.const 2)
       )
      )
     )
    )
    (set_local $3
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_s
        (get_local $3)
        (i32.const 0)
       )
       (block
        (set_local $5
         (i32.load offset=8
          (i32.add
           (get_local $0)
           (i32.shl
            (get_local $3)
            (i32.const 2)
           )
          )
         )
        )
        (set_global $~argc
         (i32.const 2)
        )
        (br_if $break|1
         (i32.ge_s
          (call_indirect (type $iii)
           (get_local $6)
           (get_local $5)
           (get_local $2)
          )
          (i32.const 0)
         )
        )
        (set_local $7
         (get_local $5)
        )
        (set_local $3
         (i32.sub
          (tee_local $5
           (get_local $3)
          )
          (i32.const 1)
         )
        )
        (i32.store offset=8
         (i32.add
          (get_local $0)
          (i32.shl
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
           (i32.const 2)
          )
         )
         (get_local $7)
        )
        (br $continue|1)
       )
      )
     )
    )
    (i32.store offset=8
     (i32.add
      (get_local $0)
      (i32.shl
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
     (get_local $6)
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/internal/array/weakHeapSort<i32> (; 89 ;) (; has Stack IR ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (call $~lib/internal/memory/memset
   (tee_local $7
    (call $~lib/allocator/arena/__memory_allocate
     (tee_local $6
      (i32.shl
       (i32.shr_s
        (i32.add
         (get_local $1)
         (i32.const 31)
        )
        (i32.const 5)
       )
       (i32.const 2)
      )
     )
    )
   )
   (i32.const 0)
   (get_local $6)
  )
  (block $break|0
   (set_local $3
    (i32.sub
     (get_local $1)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.le_s
      (get_local $3)
      (i32.const 0)
     )
    )
    (set_local $4
     (get_local $3)
    )
    (loop $continue|1
     (if
      (i32.eq
       (i32.and
        (get_local $4)
        (i32.const 1)
       )
       (i32.and
        (i32.shr_u
         (i32.load
          (i32.add
           (get_local $7)
           (i32.shl
            (i32.shr_s
             (get_local $4)
             (i32.const 6)
            )
            (i32.const 2)
           )
          )
         )
         (i32.and
          (i32.shr_s
           (get_local $4)
           (i32.const 1)
          )
          (i32.const 31)
         )
        )
        (i32.const 1)
       )
      )
      (block
       (set_local $4
        (i32.shr_s
         (get_local $4)
         (i32.const 1)
        )
       )
       (br $continue|1)
      )
     )
    )
    (set_local $4
     (i32.load offset=8
      (i32.add
       (get_local $0)
       (i32.shl
        (tee_local $5
         (i32.shr_s
          (get_local $4)
          (i32.const 1)
         )
        )
        (i32.const 2)
       )
      )
     )
    )
    (set_local $6
     (i32.load offset=8
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 2)
       )
      )
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $iii)
       (get_local $4)
       (get_local $6)
       (get_local $2)
      )
      (i32.const 0)
     )
     (block
      (i32.store
       (tee_local $8
        (i32.add
         (get_local $7)
         (i32.shl
          (i32.shr_s
           (get_local $3)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
       )
       (i32.xor
        (i32.load
         (get_local $8)
        )
        (i32.shl
         (i32.const 1)
         (i32.and
          (get_local $3)
          (i32.const 31)
         )
        )
       )
      )
      (i32.store offset=8
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
       (get_local $4)
      )
      (i32.store offset=8
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
       (get_local $6)
      )
     )
    )
    (set_local $3
     (i32.sub
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $3
    (i32.sub
     (get_local $1)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.lt_s
      (get_local $3)
      (i32.const 2)
     )
    )
    (set_local $6
     (i32.load offset=8
      (get_local $0)
     )
    )
    (i32.store offset=8
     (get_local $0)
     (i32.load offset=8
      (tee_local $1
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
    )
    (i32.store offset=8
     (get_local $1)
     (get_local $6)
    )
    (set_local $5
     (i32.const 1)
    )
    (loop $continue|3
     (if
      (i32.lt_s
       (tee_local $4
        (i32.add
         (i32.shl
          (get_local $5)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $7)
             (i32.shl
              (i32.shr_s
               (get_local $5)
               (i32.const 5)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (get_local $5)
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
       )
       (get_local $3)
      )
      (block
       (set_local $5
        (get_local $4)
       )
       (br $continue|3)
      )
     )
    )
    (loop $continue|4
     (if
      (i32.gt_s
       (get_local $5)
       (i32.const 0)
      )
      (block
       (set_local $6
        (i32.load offset=8
         (get_local $0)
        )
       )
       (set_local $4
        (i32.load offset=8
         (i32.add
          (get_local $0)
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
       )
       (set_global $~argc
        (i32.const 2)
       )
       (if
        (i32.lt_s
         (call_indirect (type $iii)
          (get_local $6)
          (get_local $4)
          (get_local $2)
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (tee_local $1
           (i32.add
            (get_local $7)
            (i32.shl
             (i32.shr_s
              (get_local $5)
              (i32.const 5)
             )
             (i32.const 2)
            )
           )
          )
          (i32.xor
           (i32.load
            (get_local $1)
           )
           (i32.shl
            (i32.const 1)
            (i32.and
             (get_local $5)
             (i32.const 31)
            )
           )
          )
         )
         (i32.store offset=8
          (i32.add
           (get_local $0)
           (i32.shl
            (get_local $5)
            (i32.const 2)
           )
          )
          (get_local $6)
         )
         (i32.store offset=8
          (get_local $0)
          (get_local $4)
         )
        )
       )
       (set_local $5
        (i32.shr_s
         (get_local $5)
         (i32.const 1)
        )
       )
       (br $continue|4)
      )
     )
    )
    (set_local $3
     (i32.sub
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (call $~lib/allocator/arena/__memory_free)
  (set_local $1
   (i32.load offset=8
    (tee_local $2
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $2)
   (i32.load offset=8
    (get_local $0)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#sort (; 90 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 333)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.le_s
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 2)
   )
   (block
    (set_local $2
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load offset=8
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $iii)
       (get_local $2)
       (get_local $4)
       (get_local $1)
      )
      (i32.const 0)
     )
     (block
      (i32.store offset=8
       (i32.add
        (get_local $3)
        (i32.const 4)
       )
       (get_local $4)
      )
      (i32.store offset=8
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 256)
   )
   (call $~lib/internal/array/insertionSort<i32>
    (get_local $3)
    (get_local $2)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<i32>
    (get_local $3)
    (get_local $2)
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#sort|trampoline~anonymous|45 (; 91 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#sort|trampoline (; 92 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (i32.const 45)
   )
  )
  (call $~lib/array/Array<i32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<u32>#sort|trampoline~anonymous|46 (; 93 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.gt_u
    (get_local $0)
    (get_local $1)
   )
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/array/Array<u32>#sort|trampoline (; 94 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (i32.const 46)
   )
  )
  (call $~lib/array/Array<i32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/createReverseOrderedArray (; 95 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.load offset=4
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $0)
     (i32.sub
      (i32.sub
       (i32.load offset=4
        (get_local $1)
       )
       (i32.const 1)
      )
      (get_local $0)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $~lib/math/NativeMath.random (; 96 ;) (; has Stack IR ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (if
   (i32.eqz
    (get_global $~lib/math/random_seeded)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 456)
     (i32.const 1007)
     (i32.const 24)
    )
    (unreachable)
   )
  )
  (set_local $0
   (get_global $~lib/math/random_state0)
  )
  (set_global $~lib/math/random_state0
   (tee_local $1
    (get_global $~lib/math/random_state1)
   )
  )
  (set_global $~lib/math/random_state1
   (tee_local $0
    (i64.xor
     (i64.xor
      (i64.xor
       (tee_local $0
        (i64.xor
         (get_local $0)
         (i64.shl
          (get_local $0)
          (i64.const 23)
         )
        )
       )
       (i64.shr_u
        (get_local $0)
        (i64.const 17)
       )
      )
      (get_local $1)
     )
     (i64.shr_u
      (get_local $1)
      (i64.const 26)
     )
    )
   )
  )
  (f64.sub
   (f64.reinterpret/i64
    (i64.or
     (i64.and
      (i64.add
       (get_local $1)
       (get_local $0)
      )
      (i64.const 4503599627370495)
     )
     (i64.const 4607182418800017408)
    )
   )
   (f64.const 1)
  )
 )
 (func $std/array/createRandomOrderedArray (; 97 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/array/Array<i32>#constructor
    (get_local $0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $0)
     (get_local $1)
     (i32.trunc_s/f64
      (f64.mul
       (call $~lib/math/NativeMath.random)
       (f64.convert_s/i32
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $0)
 )
 (func $std/array/isSorted<i32> (; 98 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (set_local $2
    (i32.const 1)
   )
   (set_local $3
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.gt_s
      (call_indirect (type $iii)
       (call $~lib/array/Array<u32>#__get
        (get_local $0)
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       (call $~lib/array/Array<u32>#__get
        (get_local $0)
        (get_local $2)
       )
       (get_local $1)
      )
      (i32.const 0)
     )
     (return
      (i32.const 0)
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (i32.const 1)
 )
 (func $std/array/assertSorted<i32> (; 99 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $std/array/isSorted<i32>
     (call $~lib/array/Array<i32>#sort
      (get_local $0)
      (get_local $1)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 639)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/array/assertSortedDefault<i32> (; 100 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (call $std/array/assertSorted<i32>
   (get_local $0)
   (i32.const 47)
  )
 )
 (func $start~anonymous|49 (; 101 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $std/array/createReverseOrderedNestedArray (; 102 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (i32.const 512)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.load offset=4
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $0)
     (call $~lib/array/Array<i32>#constructor
      (i32.const 1)
     )
    )
    (call $~lib/array/Array<i32>#__set
     (call $~lib/array/Array<u32>#__get
      (get_local $1)
      (get_local $0)
     )
     (i32.const 0)
     (i32.sub
      (i32.sub
       (i32.load offset=4
        (get_local $1)
       )
       (i32.const 1)
      )
      (get_local $0)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $start~anonymous|52 (; 103 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (call $~lib/array/Array<u32>#__get
    (get_local $0)
    (i32.const 0)
   )
   (call $~lib/array/Array<u32>#__get
    (get_local $1)
    (i32.const 0)
   )
  )
 )
 (func $~lib/array/Array<Array<i32>>#sort (; 104 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 333)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.le_s
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 2)
   )
   (block
    (set_local $2
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load offset=8
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $iii)
       (get_local $2)
       (get_local $4)
       (get_local $1)
      )
      (i32.const 0)
     )
     (block
      (i32.store offset=8
       (i32.add
        (get_local $3)
        (i32.const 4)
       )
       (get_local $4)
      )
      (i32.store offset=8
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (call $~lib/internal/array/insertionSort<i32>
   (get_local $3)
   (get_local $2)
   (get_local $1)
  )
  (get_local $0)
 )
 (func $std/array/assertSorted<Array<i32>> (; 105 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $std/array/isSorted<i32>
     (call $~lib/array/Array<Array<i32>>#sort
      (get_local $0)
      (get_local $1)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 639)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/array/Proxy<i32>#constructor (; 106 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store
   (tee_local $1
    (call $~lib/memory/memory.allocate
     (i32.const 4)
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $std/array/createReverseOrderedElementsArray (; 107 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (i32.const 512)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.load offset=4
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $0)
     (call $std/array/Proxy<i32>#constructor
      (i32.sub
       (i32.sub
        (i32.load offset=4
         (get_local $1)
        )
        (i32.const 1)
       )
       (get_local $0)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $start~anonymous|53 (; 108 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.load
    (get_local $0)
   )
   (i32.load
    (get_local $1)
   )
  )
 )
 (func $~lib/internal/string/compareUnsafe (; 109 ;) (; has Stack IR ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (get_local $0)
  )
  (loop $continue|0
   (if
    (tee_local $0
     (if (result i32)
      (get_local $2)
      (i32.eqz
       (tee_local $4
        (i32.sub
         (i32.load16_u offset=4
          (get_local $3)
         )
         (i32.load16_u offset=4
          (get_local $1)
         )
        )
       )
      )
      (get_local $2)
     )
    )
    (block
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $4)
 )
 (func $~lib/string/String.__gt (; 110 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (tee_local $2
     (i32.eq
      (get_local $0)
      (get_local $1)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $0)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const 1)
   )
  )
  (i32.gt_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (get_local $1)
    (select
     (get_local $2)
     (get_local $3)
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__lt (; 111 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (tee_local $2
     (i32.eq
      (get_local $0)
      (get_local $1)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $0)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.load
      (get_local $1)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 1)
   )
  )
  (i32.lt_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (get_local $1)
    (select
     (get_local $2)
     (get_local $3)
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $start~anonymous|54 (; 112 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (call $~lib/string/String.__gt
    (get_local $0)
    (get_local $1)
   )
   (call $~lib/string/String.__lt
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/string/String.__eq (; 113 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
 )
 (func $~lib/string/String.__ne (; 114 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $~lib/string/String.__eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $std/array/isArraysEqual<String> (; 115 ;) (; has Stack IR ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.ne
    (tee_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.load offset=4
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $3)
     )
    )
    (if
     (call $~lib/string/String.__ne
      (call $~lib/array/Array<u32>#__get
       (get_local $0)
       (get_local $2)
      )
      (call $~lib/array/Array<u32>#__get
       (get_local $1)
       (get_local $2)
      )
     )
     (return
      (i32.const 0)
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (i32.const 1)
 )
 (func $~lib/internal/string/allocateUnsafe (; 116 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (tee_local $1
    (i32.gt_s
     (get_local $0)
     (i32.const 0)
    )
   )
   (set_local $1
    (i32.le_s
     (get_local $0)
     (i32.const 536870910)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1648)
     (i32.const 14)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/__memory_allocate
     (i32.add
      (i32.shl
       (get_local $0)
       (i32.const 1)
      )
      (i32.const 4)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/string/String#charAt (; 117 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.ge_u
    (get_local $0)
    (i32.load
     (i32.const 488)
    )
   )
   (return
    (i32.const 1464)
   )
  )
  (i32.store16 offset=4
   (tee_local $1
    (call $~lib/internal/string/allocateUnsafe
     (i32.const 1)
    )
   )
   (i32.load16_u offset=4
    (i32.add
     (i32.shl
      (get_local $0)
      (i32.const 1)
     )
     (i32.const 488)
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/internal/string/copyUnsafe (; 118 ;) (; has Stack IR ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (call $~lib/internal/memory/memmove
   (i32.add
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
    (i32.const 4)
   )
   (i32.add
    (i32.add
     (get_local $2)
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
    (i32.const 4)
   )
   (i32.shl
    (get_local $4)
    (i32.const 1)
   )
  )
 )
 (func $~lib/string/String#concat (; 119 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1616)
     (i32.const 106)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 1704)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.add
      (tee_local $3
       (i32.load
        (get_local $0)
       )
      )
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   (return
    (i32.const 1464)
   )
  )
  (call $~lib/internal/string/copyUnsafe
   (tee_local $2
    (call $~lib/internal/string/allocateUnsafe
     (get_local $2)
    )
   )
   (i32.const 0)
   (get_local $0)
   (i32.const 0)
   (get_local $3)
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $2)
   (get_local $3)
   (get_local $1)
   (i32.const 0)
   (get_local $4)
  )
  (get_local $2)
 )
 (func $~lib/string/String.__concat (; 120 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 1704)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/createRandomString (; 121 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (i32.const 1464)
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $0)
     )
    )
    (set_local $1
     (call $~lib/string/String.__concat
      (get_local $1)
      (call $~lib/string/String#charAt
       (i32.trunc_s/f64
        (f64.floor
         (f64.mul
          (call $~lib/math/NativeMath.random)
          (f64.convert_s/i32
           (i32.load
            (i32.const 488)
           )
          )
         )
        )
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $std/array/createRandomStringArray (; 122 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (i32.const 400)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.load offset=4
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $0)
     (call $std/array/createRandomString
      (i32.trunc_s/f64
       (f64.mul
        (call $~lib/math/NativeMath.random)
        (f64.const 32)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $~lib/array/Array<bool>#join (; 123 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.lt_s
    (tee_local $2
     (i32.sub
      (i32.load
       (i32.const 1804)
      )
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $0
   (i32.const 1464)
  )
  (set_local $3
   (i32.load
    (i32.const 1800)
   )
  )
  (set_local $4
   (i32.ne
    (i32.load
     (i32.const 1776)
    )
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $0
     (call $~lib/string/String.__concat
      (get_local $0)
      (if (result i32)
       (i32.and
        (i32.load8_u offset=8
         (i32.add
          (get_local $3)
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (i32.const 1744)
       (i32.const 1760)
      )
     )
    )
    (if
     (get_local $4)
     (set_local $0
      (call $~lib/string/String.__concat
       (get_local $0)
       (i32.const 1776)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $~lib/string/String.__concat
   (get_local $0)
   (tee_local $1
    (if (result i32)
     (i32.and
      (i32.load8_u offset=8
       (i32.add
        (get_local $3)
        (get_local $2)
       )
      )
      (i32.const 1)
     )
     (i32.const 1744)
     (i32.const 1760)
    )
   )
  )
 )
 (func $~lib/internal/itoa/decimalCount32 (; 124 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (if (result i32)
   (i32.lt_u
    (get_local $0)
    (i32.const 100000)
   )
   (if (result i32)
    (i32.lt_u
     (get_local $0)
     (i32.const 100)
    )
    (select
     (i32.const 1)
     (i32.const 2)
     (i32.lt_u
      (get_local $0)
      (i32.const 10)
     )
    )
    (select
     (i32.const 3)
     (select
      (i32.const 4)
      (i32.const 5)
      (i32.lt_u
       (get_local $0)
       (i32.const 10000)
      )
     )
     (i32.lt_u
      (get_local $0)
      (i32.const 1000)
     )
    )
   )
   (if (result i32)
    (i32.lt_u
     (get_local $0)
     (i32.const 10000000)
    )
    (select
     (i32.const 6)
     (i32.const 7)
     (i32.lt_u
      (get_local $0)
      (i32.const 1000000)
     )
    )
    (select
     (i32.const 8)
     (select
      (i32.const 9)
      (i32.const 10)
      (i32.lt_u
       (get_local $0)
       (i32.const 1000000000)
      )
     )
     (i32.lt_u
      (get_local $0)
      (i32.const 100000000)
     )
    )
   )
  )
 )
 (func $~lib/internal/itoa/utoa32_lut (; 125 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (i32.const 2392)
   )
  )
  (loop $continue|0
   (if
    (i32.ge_u
     (get_local $1)
     (i32.const 10000)
    )
    (block
     (set_local $4
      (i32.rem_u
       (get_local $1)
       (i32.const 10000)
      )
     )
     (set_local $1
      (i32.div_u
       (get_local $1)
       (i32.const 10000)
      )
     )
     (i64.store offset=4
      (i32.add
       (get_local $0)
       (i32.shl
        (tee_local $2
         (i32.sub
          (get_local $2)
          (i32.const 4)
         )
        )
        (i32.const 1)
       )
      )
      (i64.or
       (i64.load32_u offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (i32.div_u
           (get_local $4)
           (i32.const 100)
          )
          (i32.const 2)
         )
        )
       )
       (i64.shl
        (i64.load32_u offset=8
         (i32.add
          (get_local $3)
          (i32.shl
           (i32.rem_u
            (get_local $4)
            (i32.const 100)
           )
           (i32.const 2)
          )
         )
        )
        (i64.const 32)
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 100)
   )
   (block
    (set_local $4
     (i32.rem_u
      (get_local $1)
      (i32.const 100)
     )
    )
    (set_local $1
     (i32.div_u
      (get_local $1)
      (i32.const 100)
     )
    )
    (i32.store offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (tee_local $2
        (i32.sub
         (get_local $2)
         (i32.const 2)
        )
       )
       (i32.const 1)
      )
     )
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.shl
        (get_local $4)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 10)
   )
   (i32.store offset=4
    (i32.add
     (get_local $0)
     (i32.shl
      (i32.sub
       (get_local $2)
       (i32.const 2)
      )
      (i32.const 1)
     )
    )
    (i32.load offset=8
     (i32.add
      (get_local $3)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (i32.store16 offset=4
    (i32.add
     (get_local $0)
     (i32.shl
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
      (i32.const 1)
     )
    )
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
   )
  )
 )
 (func $~lib/internal/itoa/itoa32 (; 126 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 1872)
   )
  )
  (if
   (tee_local $1
    (i32.lt_s
     (get_local $0)
     (i32.const 0)
    )
   )
   (set_local $0
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
   )
  )
  (call $~lib/internal/itoa/utoa32_lut
   (tee_local $2
    (call $~lib/internal/string/allocateUnsafe
     (tee_local $3
      (i32.add
       (call $~lib/internal/itoa/decimalCount32
        (get_local $0)
       )
       (get_local $1)
      )
     )
    )
   )
   (get_local $0)
   (get_local $3)
  )
  (if
   (get_local $1)
   (i32.store16 offset=4
    (get_local $2)
    (i32.const 45)
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/itoa/itoa<i32> (; 127 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/internal/itoa/itoa32
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i32>#join (; 128 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.lt_s
    (tee_local $3
     (i32.sub
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $2
   (i32.const 1464)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $5
   (i32.ne
    (i32.load
     (get_local $1)
    )
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (get_local $3)
     )
    )
    (set_local $2
     (call $~lib/string/String.__concat
      (get_local $2)
      (call $~lib/internal/itoa/itoa<i32>
       (i32.load offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $0)
          (i32.const 2)
         )
        )
       )
      )
     )
    )
    (if
     (get_local $5)
     (set_local $2
      (call $~lib/string/String.__concat
       (get_local $2)
       (get_local $1)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $~lib/string/String.__concat
   (get_local $2)
   (call $~lib/internal/itoa/itoa<i32>
    (i32.load offset=8
     (i32.add
      (get_local $4)
      (i32.shl
       (get_local $3)
       (i32.const 2)
      )
     )
    )
   )
  )
 )
 (func $~lib/builtins/isFinite<f64> (; 129 ;) (; has Stack IR ;) (type $Fi) (param $0 f64) (result i32)
  (f64.eq
   (f64.sub
    (get_local $0)
    (get_local $0)
   )
   (f64.const 0)
  )
 )
 (func $~lib/internal/dtoa/genDigits (; 130 ;) (; has Stack IR ;) (type $iIiIiIii) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i64)
  (set_local $8
   (i64.sub
    (get_local $3)
    (get_local $1)
   )
  )
  (set_local $1
   (i64.and
    (get_local $3)
    (tee_local $14
     (i64.sub
      (tee_local $10
       (i64.shl
        (i64.const 1)
        (tee_local $13
         (i64.extend_s/i32
          (tee_local $11
           (i32.sub
            (i32.const 0)
            (get_local $4)
           )
          )
         )
        )
       )
      )
      (i64.const 1)
     )
    )
   )
  )
  (set_local $9
   (call $~lib/internal/itoa/decimalCount32
    (tee_local $7
     (i32.wrap/i64
      (i64.shr_u
       (get_local $3)
       (get_local $13)
      )
     )
    )
   )
  )
  (set_local $12
   (i32.load
    (i32.const 4048)
   )
  )
  (loop $continue|0
   (if
    (i32.gt_s
     (get_local $9)
     (i32.const 0)
    )
    (block
     (block $break|1
      (block $case10|1
       (block $case9|1
        (block $case8|1
         (block $case7|1
          (block $case6|1
           (block $case5|1
            (block $case4|1
             (block $case3|1
              (block $case2|1
               (block $case1|1
                (if
                 (i32.ne
                  (tee_local $2
                   (get_local $9)
                  )
                  (i32.const 10)
                 )
                 (block
                  (block $tablify|0
                   (br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $case1|1 $tablify|0
                    (i32.sub
                     (get_local $2)
                     (i32.const 1)
                    )
                   )
                  )
                  (br $case10|1)
                 )
                )
                (set_local $4
                 (i32.div_u
                  (get_local $7)
                  (i32.const 1000000000)
                 )
                )
                (set_local $7
                 (i32.rem_u
                  (get_local $7)
                  (i32.const 1000000000)
                 )
                )
                (br $break|1)
               )
               (set_local $4
                (i32.div_u
                 (get_local $7)
                 (i32.const 100000000)
                )
               )
               (set_local $7
                (i32.rem_u
                 (get_local $7)
                 (i32.const 100000000)
                )
               )
               (br $break|1)
              )
              (set_local $4
               (i32.div_u
                (get_local $7)
                (i32.const 10000000)
               )
              )
              (set_local $7
               (i32.rem_u
                (get_local $7)
                (i32.const 10000000)
               )
              )
              (br $break|1)
             )
             (set_local $4
              (i32.div_u
               (get_local $7)
               (i32.const 1000000)
              )
             )
             (set_local $7
              (i32.rem_u
               (get_local $7)
               (i32.const 1000000)
              )
             )
             (br $break|1)
            )
            (set_local $4
             (i32.div_u
              (get_local $7)
              (i32.const 100000)
             )
            )
            (set_local $7
             (i32.rem_u
              (get_local $7)
              (i32.const 100000)
             )
            )
            (br $break|1)
           )
           (set_local $4
            (i32.div_u
             (get_local $7)
             (i32.const 10000)
            )
           )
           (set_local $7
            (i32.rem_u
             (get_local $7)
             (i32.const 10000)
            )
           )
           (br $break|1)
          )
          (set_local $4
           (i32.div_u
            (get_local $7)
            (i32.const 1000)
           )
          )
          (set_local $7
           (i32.rem_u
            (get_local $7)
            (i32.const 1000)
           )
          )
          (br $break|1)
         )
         (set_local $4
          (i32.div_u
           (get_local $7)
           (i32.const 100)
          )
         )
         (set_local $7
          (i32.rem_u
           (get_local $7)
           (i32.const 100)
          )
         )
         (br $break|1)
        )
        (set_local $4
         (i32.div_u
          (get_local $7)
          (i32.const 10)
         )
        )
        (set_local $7
         (i32.rem_u
          (get_local $7)
          (i32.const 10)
         )
        )
        (br $break|1)
       )
       (set_local $4
        (get_local $7)
       )
       (set_local $7
        (i32.const 0)
       )
       (br $break|1)
      )
      (set_local $4
       (i32.const 0)
      )
     )
     (if
      (i32.or
       (get_local $4)
       (get_local $6)
      )
      (block
       (set_local $6
        (i32.add
         (tee_local $2
          (get_local $6)
         )
         (i32.const 1)
        )
       )
       (i32.store16 offset=4
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $2)
          (i32.const 1)
         )
        )
        (i32.add
         (i32.and
          (get_local $4)
          (i32.const 65535)
         )
         (i32.const 48)
        )
       )
      )
     )
     (set_local $9
      (i32.sub
       (get_local $9)
       (i32.const 1)
      )
     )
     (if
      (i64.le_u
       (tee_local $3
        (i64.add
         (i64.shl
          (i64.extend_u/i32
           (get_local $7)
          )
          (i64.extend_s/i32
           (get_local $11)
          )
         )
         (get_local $1)
        )
       )
       (get_local $5)
      )
      (block
       (set_global $~lib/internal/dtoa/_K
        (i32.add
         (get_global $~lib/internal/dtoa/_K)
         (get_local $9)
        )
       )
       (set_local $1
        (i64.shl
         (i64.load32_u offset=8
          (i32.add
           (get_local $12)
           (i32.shl
            (get_local $9)
            (i32.const 2)
           )
          )
         )
         (i64.extend_s/i32
          (get_local $11)
         )
        )
       )
       (set_local $7
        (i32.load16_u offset=4
         (tee_local $2
          (i32.add
           (get_local $0)
           (i32.shl
            (i32.sub
             (get_local $6)
             (i32.const 1)
            )
            (i32.const 1)
           )
          )
         )
        )
       )
       (loop $continue|2
        (if
         (tee_local $0
          (i64.lt_u
           (get_local $3)
           (get_local $8)
          )
         )
         (set_local $0
          (i64.ge_u
           (i64.sub
            (get_local $5)
            (get_local $3)
           )
           (get_local $1)
          )
         )
        )
        (if
         (get_local $0)
         (if
          (i32.eqz
           (tee_local $0
            (i64.lt_u
             (i64.add
              (get_local $3)
              (get_local $1)
             )
             (get_local $8)
            )
           )
          )
          (set_local $0
           (i64.gt_u
            (i64.sub
             (get_local $8)
             (get_local $3)
            )
            (i64.sub
             (i64.add
              (get_local $3)
              (get_local $1)
             )
             (get_local $8)
            )
           )
          )
         )
        )
        (if
         (get_local $0)
         (block
          (set_local $7
           (i32.sub
            (get_local $7)
            (i32.const 1)
           )
          )
          (set_local $3
           (i64.add
            (get_local $3)
            (get_local $1)
           )
          )
          (br $continue|2)
         )
        )
       )
       (i32.store16 offset=4
        (get_local $2)
        (get_local $7)
       )
       (return
        (get_local $6)
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  (loop $continue|3 (result i32)
   (set_local $5
    (i64.mul
     (get_local $5)
     (i64.const 10)
    )
   )
   (if
    (i64.ne
     (i64.or
      (tee_local $3
       (i64.shr_u
        (tee_local $1
         (i64.mul
          (get_local $1)
          (i64.const 10)
         )
        )
        (i64.extend_s/i32
         (get_local $11)
        )
       )
      )
      (i64.extend_s/i32
       (get_local $6)
      )
     )
     (i64.const 0)
    )
    (block
     (set_local $6
      (i32.add
       (tee_local $4
        (get_local $6)
       )
       (i32.const 1)
      )
     )
     (i32.store16 offset=4
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $4)
        (i32.const 1)
       )
      )
      (i32.add
       (i32.and
        (i32.wrap/i64
         (get_local $3)
        )
        (i32.const 65535)
       )
       (i32.const 48)
      )
     )
    )
   )
   (set_local $9
    (i32.sub
     (get_local $9)
     (i32.const 1)
    )
   )
   (if (result i32)
    (i64.lt_u
     (tee_local $1
      (i64.and
       (get_local $1)
       (get_local $14)
      )
     )
     (get_local $5)
    )
    (block (result i32)
     (set_global $~lib/internal/dtoa/_K
      (i32.add
       (get_global $~lib/internal/dtoa/_K)
       (get_local $9)
      )
     )
     (set_local $8
      (i64.mul
       (get_local $8)
       (i64.load32_u offset=8
        (i32.add
         (get_local $12)
         (i32.shl
          (i32.sub
           (i32.const 0)
           (get_local $9)
          )
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $7
      (i32.load16_u offset=4
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.shl
          (i32.sub
           (get_local $6)
           (i32.const 1)
          )
          (i32.const 1)
         )
        )
       )
      )
     )
     (loop $continue|4
      (if
       (tee_local $2
        (i64.lt_u
         (get_local $1)
         (get_local $8)
        )
       )
       (set_local $2
        (i64.ge_u
         (i64.sub
          (get_local $5)
          (get_local $1)
         )
         (get_local $10)
        )
       )
      )
      (if
       (get_local $2)
       (if
        (i32.eqz
         (tee_local $2
          (i64.lt_u
           (i64.add
            (get_local $1)
            (get_local $10)
           )
           (get_local $8)
          )
         )
        )
        (set_local $2
         (i64.gt_u
          (i64.sub
           (get_local $8)
           (get_local $1)
          )
          (i64.sub
           (i64.add
            (get_local $1)
            (get_local $10)
           )
           (get_local $8)
          )
         )
        )
       )
      )
      (if
       (get_local $2)
       (block
        (set_local $7
         (i32.sub
          (get_local $7)
          (i32.const 1)
         )
        )
        (set_local $1
         (i64.add
          (get_local $1)
          (get_local $10)
         )
        )
        (br $continue|4)
       )
      )
     )
     (i32.store16 offset=4
      (get_local $4)
      (get_local $7)
     )
     (get_local $6)
    )
    (br $continue|3)
   )
  )
 )
 (func $~lib/internal/dtoa/prettify (; 131 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (i32.store offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.const 3145774)
    )
    (return
     (i32.add
      (get_local $1)
      (i32.const 2)
     )
    )
   )
  )
  (if
   (tee_local $3
    (i32.le_s
     (get_local $1)
     (tee_local $4
      (i32.add
       (get_local $1)
       (get_local $2)
      )
     )
    )
   )
   (set_local $3
    (i32.le_s
     (get_local $4)
     (i32.const 21)
    )
   )
  )
  (if (result i32)
   (get_local $3)
   (block (result i32)
    (block $break|0
     (set_local $3
      (get_local $1)
     )
     (loop $repeat|0
      (br_if $break|0
       (i32.ge_s
        (get_local $3)
        (get_local $4)
       )
      )
      (i32.store16 offset=4
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $3)
         (i32.const 1)
        )
       )
       (i32.const 48)
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
    (i32.store offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $4)
       (i32.const 1)
      )
     )
     (i32.const 3145774)
    )
    (i32.add
     (get_local $4)
     (i32.const 2)
    )
   )
   (block (result i32)
    (if
     (tee_local $3
      (i32.gt_s
       (get_local $4)
       (i32.const 0)
      )
     )
     (set_local $3
      (i32.le_s
       (get_local $4)
       (i32.const 21)
      )
     )
    )
    (if (result i32)
     (get_local $3)
     (block (result i32)
      (call $~lib/internal/memory/memmove
       (i32.add
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.shl
           (get_local $4)
           (i32.const 1)
          )
         )
        )
        (i32.const 6)
       )
       (i32.add
        (get_local $3)
        (i32.const 4)
       )
       (i32.shl
        (i32.sub
         (i32.const 0)
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (i32.store16 offset=4
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 46)
      )
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (block (result i32)
      (if
       (tee_local $3
        (i32.lt_s
         (i32.const -6)
         (get_local $4)
        )
       )
       (set_local $3
        (i32.le_s
         (get_local $4)
         (i32.const 0)
        )
       )
      )
      (if (result i32)
       (get_local $3)
       (block (result i32)
        (call $~lib/internal/memory/memmove
         (i32.add
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
          (i32.shl
           (tee_local $3
            (i32.sub
             (i32.const 2)
             (get_local $4)
            )
           )
           (i32.const 1)
          )
         )
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
         (i32.shl
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.store offset=4
         (get_local $0)
         (i32.const 3014704)
        )
        (block $break|1
         (set_local $2
          (i32.const 2)
         )
         (loop $repeat|1
          (br_if $break|1
           (i32.ge_s
            (get_local $2)
            (get_local $3)
           )
          )
          (i32.store16 offset=4
           (i32.add
            (get_local $0)
            (i32.shl
             (get_local $2)
             (i32.const 1)
            )
           )
           (i32.const 48)
          )
          (set_local $2
           (i32.add
            (get_local $2)
            (i32.const 1)
           )
          )
          (br $repeat|1)
         )
        )
        (i32.add
         (get_local $1)
         (get_local $3)
        )
       )
       (if (result i32)
        (i32.eq
         (get_local $1)
         (i32.const 1)
        )
        (block (result i32)
         (i32.store16 offset=6
          (get_local $0)
          (i32.const 101)
         )
         (set_local $3
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
         )
         (if
          (tee_local $0
           (i32.lt_s
            (tee_local $2
             (i32.sub
              (get_local $4)
              (i32.const 1)
             )
            )
            (i32.const 0)
           )
          )
          (set_local $2
           (i32.sub
            (i32.const 0)
            (get_local $2)
           )
          )
         )
         (call $~lib/internal/itoa/utoa32_lut
          (get_local $3)
          (get_local $2)
          (tee_local $2
           (i32.add
            (call $~lib/internal/itoa/decimalCount32
             (get_local $2)
            )
            (i32.const 1)
           )
          )
         )
         (i32.store16 offset=4
          (get_local $3)
          (select
           (i32.const 45)
           (i32.const 43)
           (get_local $0)
          )
         )
         (i32.add
          (get_local $2)
          (i32.const 2)
         )
        )
        (block (result i32)
         (call $~lib/internal/memory/memmove
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
          (i32.add
           (get_local $0)
           (i32.const 6)
          )
          (i32.sub
           (tee_local $2
            (i32.shl
             (get_local $1)
             (i32.const 1)
            )
           )
           (i32.const 2)
          )
         )
         (i32.store16 offset=6
          (get_local $0)
          (i32.const 46)
         )
         (i32.store16 offset=6
          (tee_local $0
           (i32.add
            (get_local $0)
            (get_local $2)
           )
          )
          (i32.const 101)
         )
         (set_local $3
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
         )
         (if
          (tee_local $0
           (i32.lt_s
            (tee_local $2
             (i32.sub
              (get_local $4)
              (i32.const 1)
             )
            )
            (i32.const 0)
           )
          )
          (set_local $2
           (i32.sub
            (i32.const 0)
            (get_local $2)
           )
          )
         )
         (call $~lib/internal/itoa/utoa32_lut
          (get_local $3)
          (get_local $2)
          (tee_local $2
           (i32.add
            (call $~lib/internal/itoa/decimalCount32
             (get_local $2)
            )
            (i32.const 1)
           )
          )
         )
         (i32.store16 offset=4
          (get_local $3)
          (select
           (i32.const 45)
           (i32.const 43)
           (get_local $0)
          )
         )
         (i32.add
          (i32.add
           (get_local $1)
           (get_local $2)
          )
          (i32.const 2)
         )
        )
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/internal/dtoa/dtoa_core (; 132 ;) (; has Stack IR ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  (if
   (tee_local $12
    (f64.lt
     (get_local $1)
     (f64.const 0)
    )
   )
   (block
    (set_local $1
     (f64.neg
      (get_local $1)
     )
    )
    (i32.store16 offset=4
     (get_local $0)
     (i32.const 45)
    )
   )
  )
  (set_local $2
   (i64.add
    (i64.shl
     (i64.extend_u/i32
      (tee_local $5
       (i32.ne
        (tee_local $13
         (i32.wrap/i64
          (i64.shr_u
           (i64.and
            (tee_local $2
             (i64.reinterpret/f64
              (get_local $1)
             )
            )
            (i64.const 9218868437227405312)
           )
           (i64.const 52)
          )
         )
        )
        (i32.const 0)
       )
      )
     )
     (i64.const 52)
    )
    (i64.and
     (get_local $2)
     (i64.const 4503599627370495)
    )
   )
  )
  (set_local $5
   (i32.sub
    (tee_local $13
     (i32.sub
      (select
       (get_local $13)
       (i32.const 1)
       (get_local $5)
      )
      (i32.const 1075)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $4
   (i32.wrap/i64
    (i64.clz
     (tee_local $6
      (i64.add
       (i64.shl
        (get_local $2)
        (i64.const 1)
       )
       (i64.const 1)
      )
     )
    )
   )
  )
  (set_global $~lib/internal/dtoa/_frc_plus
   (i64.shl
    (get_local $6)
    (i64.extend_s/i32
     (get_local $4)
    )
   )
  )
  (set_global $~lib/internal/dtoa/_frc_minus
   (i64.shl
    (i64.sub
     (i64.shl
      (get_local $2)
      (i64.extend_s/i32
       (tee_local $14
        (i32.add
         (i64.eq
          (get_local $2)
          (i64.const 4503599627370496)
         )
         (i32.const 1)
        )
       )
      )
     )
     (i64.const 1)
    )
    (i64.extend_s/i32
     (i32.sub
      (i32.sub
       (get_local $13)
       (get_local $14)
      )
      (tee_local $5
       (i32.sub
        (get_local $5)
        (get_local $4)
       )
      )
     )
    )
   )
  )
  (set_global $~lib/internal/dtoa/_exp
   (get_local $5)
  )
  (set_global $~lib/internal/dtoa/_K
   (i32.sub
    (i32.const 348)
    (i32.shl
     (tee_local $5
      (i32.add
       (i32.shr_s
        (i32.add
         (tee_local $4
          (i32.trunc_s/f64
           (tee_local $1
            (f64.add
             (f64.mul
              (f64.convert_s/i32
               (i32.sub
                (i32.const -61)
                (get_global $~lib/internal/dtoa/_exp)
               )
              )
              (f64.const 0.30102999566398114)
             )
             (f64.const 347)
            )
           )
          )
         )
         (f64.ne
          (f64.convert_s/i32
           (get_local $4)
          )
          (get_local $1)
         )
        )
        (i32.const 3)
       )
       (i32.const 1)
      )
     )
     (i32.const 3)
    )
   )
  )
  (set_local $4
   (i32.load
    (i32.const 3976)
   )
  )
  (set_global $~lib/internal/dtoa/_frc_pow
   (i64.load offset=8
    (i32.add
     (i32.load
      (i32.const 3712)
     )
     (i32.shl
      (get_local $5)
      (i32.const 3)
     )
    )
   )
  )
  (set_global $~lib/internal/dtoa/_exp_pow
   (i32.load16_s offset=8
    (i32.add
     (get_local $4)
     (i32.shl
      (get_local $5)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $9
   (i64.mul
    (tee_local $7
     (i64.and
      (tee_local $2
       (i64.shl
        (get_local $2)
        (i64.extend_s/i32
         (tee_local $4
          (i32.wrap/i64
           (i64.clz
            (get_local $2)
           )
          )
         )
        )
       )
      )
      (i64.const 4294967295)
     )
    )
    (tee_local $8
     (i64.and
      (tee_local $6
       (get_global $~lib/internal/dtoa/_frc_pow)
      )
      (i64.const 4294967295)
     )
    )
   )
  )
  (set_local $2
   (i64.add
    (i64.mul
     (get_local $7)
     (tee_local $10
      (i64.shr_u
       (get_local $6)
       (i64.const 32)
      )
     )
    )
    (i64.and
     (tee_local $3
      (i64.add
       (i64.mul
        (tee_local $11
         (i64.shr_u
          (get_local $2)
          (i64.const 32)
         )
        )
        (get_local $8)
       )
       (i64.shr_u
        (get_local $9)
        (i64.const 32)
       )
      )
     )
     (i64.const 4294967295)
    )
   )
  )
  (set_local $2
   (i64.add
    (i64.add
     (i64.mul
      (get_local $11)
      (get_local $10)
     )
     (i64.shr_u
      (get_local $3)
      (i64.const 32)
     )
    )
    (i64.shr_u
     (i64.add
      (get_local $2)
      (i64.const 2147483647)
     )
     (i64.const 32)
    )
   )
  )
  (set_local $7
   (i64.mul
    (tee_local $9
     (i64.and
      (tee_local $3
       (get_global $~lib/internal/dtoa/_frc_plus)
      )
      (i64.const 4294967295)
     )
    )
    (tee_local $10
     (i64.and
      (get_local $6)
      (i64.const 4294967295)
     )
    )
   )
  )
  (set_local $7
   (i64.add
    (i64.mul
     (get_local $9)
     (tee_local $8
      (i64.shr_u
       (get_local $6)
       (i64.const 32)
      )
     )
    )
    (i64.and
     (tee_local $3
      (i64.add
       (i64.mul
        (tee_local $11
         (i64.shr_u
          (get_local $3)
          (i64.const 32)
         )
        )
        (get_local $10)
       )
       (i64.shr_u
        (get_local $7)
        (i64.const 32)
       )
      )
     )
     (i64.const 4294967295)
    )
   )
  )
  (set_local $15
   (i64.add
    (i64.add
     (i64.mul
      (get_local $11)
      (get_local $8)
     )
     (i64.shr_u
      (get_local $3)
      (i64.const 32)
     )
    )
    (i64.shr_u
     (i64.add
      (get_local $7)
      (i64.const 2147483647)
     )
     (i64.const 32)
    )
   )
  )
  (set_local $9
   (i64.mul
    (tee_local $7
     (i64.and
      (tee_local $3
       (get_global $~lib/internal/dtoa/_frc_minus)
      )
      (i64.const 4294967295)
     )
    )
    (tee_local $8
     (i64.and
      (get_local $6)
      (i64.const 4294967295)
     )
    )
   )
  )
  (set_local $6
   (i64.add
    (i64.mul
     (get_local $7)
     (tee_local $10
      (i64.shr_u
       (get_local $6)
       (i64.const 32)
      )
     )
    )
    (i64.and
     (tee_local $3
      (i64.add
       (i64.mul
        (tee_local $11
         (i64.shr_u
          (get_local $3)
          (i64.const 32)
         )
        )
        (get_local $8)
       )
       (i64.shr_u
        (get_local $9)
        (i64.const 32)
       )
      )
     )
     (i64.const 4294967295)
    )
   )
  )
  (set_local $3
   (i64.sub
    (tee_local $7
     (i64.sub
      (get_local $15)
      (i64.const 1)
     )
    )
    (i64.add
     (i64.add
      (i64.add
       (i64.mul
        (get_local $11)
        (get_local $10)
       )
       (i64.shr_u
        (get_local $3)
        (i64.const 32)
       )
      )
      (i64.shr_u
       (i64.add
        (get_local $6)
        (i64.const 2147483647)
       )
       (i64.const 32)
      )
     )
     (i64.const 1)
    )
   )
  )
  (i32.add
   (call $~lib/internal/dtoa/prettify
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $12)
      (i32.const 1)
     )
    )
    (i32.sub
     (call $~lib/internal/dtoa/genDigits
      (get_local $0)
      (get_local $2)
      (tee_local $5
       (i32.sub
        (i32.add
         (i32.sub
          (get_local $13)
          (get_local $4)
         )
         (tee_local $4
          (get_global $~lib/internal/dtoa/_exp_pow)
         )
        )
        (i32.const -64)
       )
      )
      (get_local $7)
      (i32.sub
       (i32.add
        (get_global $~lib/internal/dtoa/_exp)
        (get_local $4)
       )
       (i32.const -64)
      )
      (get_local $3)
      (get_local $12)
     )
     (get_local $12)
    )
    (get_global $~lib/internal/dtoa/_K)
   )
   (get_local $12)
  )
 )
 (func $~lib/string/String#substring (; 133 ;) (; has Stack IR ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1616)
     (i32.const 264)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $1
   (select
    (tee_local $2
     (select
      (get_local $1)
      (i32.const 0)
      (i32.gt_s
       (get_local $1)
       (i32.const 0)
      )
     )
    )
    (tee_local $3
     (i32.load
      (get_local $0)
     )
    )
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (set_local $4
   (select
    (tee_local $2
     (select
      (i32.const 0)
      (get_local $3)
      (i32.lt_s
       (i32.const 0)
       (get_local $3)
      )
     )
    )
    (get_local $1)
    (i32.lt_s
     (get_local $2)
     (get_local $1)
    )
   )
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.sub
      (tee_local $1
       (select
        (get_local $2)
        (get_local $1)
        (i32.gt_s
         (get_local $2)
         (get_local $1)
        )
       )
      )
      (get_local $4)
     )
    )
   )
   (return
    (i32.const 1464)
   )
  )
  (if
   (tee_local $2
    (i32.eqz
     (get_local $4)
    )
   )
   (set_local $2
    (i32.eq
     (get_local $1)
     (i32.load
      (get_local $0)
     )
    )
   )
  )
  (if
   (get_local $2)
   (return
    (get_local $0)
   )
  )
  (call $~lib/internal/string/copyUnsafe
   (tee_local $2
    (call $~lib/internal/string/allocateUnsafe
     (get_local $3)
    )
   )
   (i32.const 0)
   (get_local $0)
   (get_local $4)
   (get_local $3)
  )
  (get_local $2)
 )
 (func $~lib/internal/dtoa/dtoa (; 134 ;) (; has Stack IR ;) (type $Fi) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (f64.eq
    (get_local $0)
    (f64.const 0)
   )
   (return
    (i32.const 2608)
   )
  )
  (if
   (i32.eqz
    (call $~lib/builtins/isFinite<f64>
     (get_local $0)
    )
   )
   (block
    (if
     (call $~lib/builtins/isNaN<f64>
      (get_local $0)
     )
     (return
      (i32.const 2624)
     )
    )
    (return
     (select
      (i32.const 2640)
      (i32.const 2664)
      (f64.lt
       (get_local $0)
       (f64.const 0)
      )
     )
    )
   )
  )
  (set_local $2
   (call $~lib/internal/dtoa/dtoa_core
    (tee_local $1
     (call $~lib/internal/string/allocateUnsafe
      (i32.const 30)
     )
    )
    (get_local $0)
   )
  )
  (set_local $2
   (call $~lib/string/String#substring
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1648)
     (i32.const 28)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (call $~lib/allocator/arena/__memory_free)
  (get_local $2)
 )
 (func $~lib/array/Array<f64>#join (; 135 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.lt_s
    (tee_local $2
     (i32.sub
      (i32.load
       (i32.const 4092)
      )
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $0
   (i32.const 1464)
  )
  (set_local $3
   (i32.load
    (i32.const 4088)
   )
  )
  (set_local $4
   (i32.ne
    (i32.load
     (i32.const 2600)
    )
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $0
     (call $~lib/string/String.__concat
      (get_local $0)
      (call $~lib/internal/dtoa/dtoa
       (f64.load offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $1)
          (i32.const 3)
         )
        )
       )
      )
     )
    )
    (if
     (get_local $4)
     (set_local $0
      (call $~lib/string/String.__concat
       (get_local $0)
       (i32.const 2600)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $~lib/string/String.__concat
   (get_local $0)
   (call $~lib/internal/dtoa/dtoa
    (f64.load offset=8
     (i32.add
      (get_local $3)
      (i32.shl
       (get_local $2)
       (i32.const 3)
      )
     )
    )
   )
  )
 )
 (func $~lib/array/Array<String>#join (; 136 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.lt_s
    (tee_local $4
     (i32.sub
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $2
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.ne
    (i32.load
     (get_local $1)
    )
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (get_local $4)
     )
    )
    (if
     (tee_local $3
      (i32.load offset=8
       (i32.add
        (get_local $5)
        (i32.shl
         (get_local $0)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $2
      (call $~lib/string/String.__concat
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (if
     (get_local $6)
     (set_local $2
      (call $~lib/string/String.__concat
       (get_local $2)
       (get_local $1)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (tee_local $3
    (i32.load offset=8
     (i32.add
      (get_local $5)
      (i32.shl
       (get_local $4)
       (i32.const 2)
      )
     )
    )
   )
   (set_local $2
    (call $~lib/string/String.__concat
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (get_local $2)
 )
 (func $std/array/Ref#constructor (; 137 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (call $~lib/memory/memory.allocate
   (i32.const 0)
  )
 )
 (func $~lib/array/Array<Ref>#__unchecked_set (; 138 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (get_local $2)
  )
 )
 (func $~lib/array/Array<Ref>#join (; 139 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.lt_s
    (tee_local $2
     (i32.sub
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $1
   (i32.const 1464)
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.ne
    (i32.load
     (i32.const 1776)
    )
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (get_local $2)
     )
    )
    (if
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.shl
        (get_local $0)
        (i32.const 2)
       )
      )
     )
     (set_local $1
      (call $~lib/string/String.__concat
       (get_local $1)
       (i32.const 4216)
      )
     )
    )
    (if
     (get_local $4)
     (set_local $1
      (call $~lib/string/String.__concat
       (get_local $1)
       (i32.const 1776)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (i32.load offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 2)
     )
    )
   )
   (set_local $1
    (call $~lib/string/String.__concat
     (get_local $1)
     (i32.const 4216)
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/internal/itoa/itoa<i8> (; 140 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/internal/itoa/itoa32
   (i32.shr_s
    (i32.shl
     (get_local $0)
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
 )
 (func $~lib/array/Array<i8>#join (; 141 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.lt_s
    (tee_local $2
     (i32.sub
      (i32.load
       (i32.const 4412)
      )
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $0
   (i32.const 1464)
  )
  (set_local $3
   (i32.load
    (i32.const 4408)
   )
  )
  (set_local $4
   (i32.ne
    (i32.load
     (i32.const 1776)
    )
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $0
     (call $~lib/string/String.__concat
      (get_local $0)
      (call $~lib/internal/itoa/itoa<i8>
       (i32.load8_s offset=8
        (i32.add
         (get_local $3)
         (get_local $1)
        )
       )
      )
     )
    )
    (if
     (get_local $4)
     (set_local $0
      (call $~lib/string/String.__concat
       (get_local $0)
       (i32.const 1776)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $~lib/string/String.__concat
   (get_local $0)
   (call $~lib/internal/itoa/itoa<i8>
    (i32.load8_s offset=8
     (i32.add
      (get_local $3)
      (get_local $2)
     )
    )
   )
  )
 )
 (func $~lib/internal/itoa/utoa32 (; 142 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 1872)
   )
  )
  (call $~lib/internal/itoa/utoa32_lut
   (tee_local $2
    (call $~lib/internal/string/allocateUnsafe
     (tee_local $1
      (call $~lib/internal/itoa/decimalCount32
       (get_local $0)
      )
     )
    )
   )
   (get_local $0)
   (get_local $1)
  )
  (get_local $2)
 )
 (func $~lib/internal/itoa/itoa<u16> (; 143 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/internal/itoa/utoa32
   (i32.and
    (get_local $0)
    (i32.const 65535)
   )
  )
 )
 (func $~lib/array/Array<u16>#join (; 144 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.lt_s
    (tee_local $2
     (i32.sub
      (i32.load
       (i32.const 4476)
      )
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $0
   (i32.const 1464)
  )
  (set_local $3
   (i32.load
    (i32.const 4472)
   )
  )
  (set_local $4
   (i32.ne
    (i32.load
     (i32.const 1776)
    )
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $0
     (call $~lib/string/String.__concat
      (get_local $0)
      (call $~lib/internal/itoa/itoa<u16>
       (i32.load16_u offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $1)
          (i32.const 1)
         )
        )
       )
      )
     )
    )
    (if
     (get_local $4)
     (set_local $0
      (call $~lib/string/String.__concat
       (get_local $0)
       (i32.const 1776)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $~lib/string/String.__concat
   (get_local $0)
   (call $~lib/internal/itoa/itoa<u16>
    (i32.load16_u offset=8
     (i32.add
      (get_local $3)
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
    )
   )
  )
 )
 (func $~lib/internal/itoa/decimalCount64 (; 145 ;) (; has Stack IR ;) (type $Ii) (param $0 i64) (result i32)
  (if (result i32)
   (i64.lt_u
    (get_local $0)
    (i64.const 1000000000000000)
   )
   (if (result i32)
    (i64.lt_u
     (get_local $0)
     (i64.const 1000000000000)
    )
    (select
     (i32.const 11)
     (i32.const 12)
     (i64.lt_u
      (get_local $0)
      (i64.const 100000000000)
     )
    )
    (select
     (i32.const 13)
     (select
      (i32.const 14)
      (i32.const 15)
      (i64.lt_u
       (get_local $0)
       (i64.const 100000000000000)
      )
     )
     (i64.lt_u
      (get_local $0)
      (i64.const 10000000000000)
     )
    )
   )
   (if (result i32)
    (i64.lt_u
     (get_local $0)
     (i64.const 100000000000000000)
    )
    (select
     (i32.const 16)
     (i32.const 17)
     (i64.lt_u
      (get_local $0)
      (i64.const 10000000000000000)
     )
    )
    (select
     (i32.const 18)
     (select
      (i32.const 19)
      (i32.const 20)
      (i64.lt_u
       (get_local $0)
       (i64.const -8446744073709551616)
      )
     )
     (i64.lt_u
      (get_local $0)
      (i64.const 1000000000000000000)
     )
    )
   )
  )
 )
 (func $~lib/internal/itoa/utoa64_lut (; 146 ;) (; has Stack IR ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (i32.load
    (i32.const 5056)
   )
  )
  (loop $continue|0
   (if
    (i64.ge_u
     (get_local $1)
     (i64.const 100000000)
    )
    (block
     (set_local $6
      (i32.div_u
       (tee_local $5
        (i32.div_u
         (tee_local $4
          (i32.wrap/i64
           (i64.sub
            (get_local $1)
            (i64.mul
             (tee_local $1
              (i64.div_u
               (get_local $1)
               (i64.const 100000000)
              )
             )
             (i64.const 100000000)
            )
           )
          )
         )
         (i32.const 10000)
        )
       )
       (i32.const 100)
      )
     )
     (set_local $5
      (i32.rem_u
       (get_local $5)
       (i32.const 100)
      )
     )
     (i64.store offset=4
      (i32.add
       (get_local $0)
       (i32.shl
        (tee_local $2
         (i32.sub
          (get_local $2)
          (i32.const 4)
         )
        )
        (i32.const 1)
       )
      )
      (i64.or
       (i64.load32_u offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (i32.div_u
           (tee_local $4
            (i32.rem_u
             (get_local $4)
             (i32.const 10000)
            )
           )
           (i32.const 100)
          )
          (i32.const 2)
         )
        )
       )
       (i64.shl
        (i64.load32_u offset=8
         (i32.add
          (get_local $3)
          (i32.shl
           (i32.rem_u
            (get_local $4)
            (i32.const 100)
           )
           (i32.const 2)
          )
         )
        )
        (i64.const 32)
       )
      )
     )
     (i64.store offset=4
      (i32.add
       (get_local $0)
       (i32.shl
        (tee_local $2
         (i32.sub
          (get_local $2)
          (i32.const 4)
         )
        )
        (i32.const 1)
       )
      )
      (i64.or
       (i64.load32_u offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
       )
       (i64.shl
        (i64.load32_u offset=8
         (i32.add
          (get_local $3)
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
        (i64.const 32)
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  (call $~lib/internal/itoa/utoa32_lut
   (get_local $0)
   (i32.wrap/i64
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $~lib/internal/itoa/utoa64 (; 147 ;) (; has Stack IR ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i64.eqz
    (get_local $0)
   )
   (return
    (i32.const 1872)
   )
  )
  (if
   (i64.le_u
    (get_local $0)
    (i64.const 4294967295)
   )
   (call $~lib/internal/itoa/utoa32_lut
    (tee_local $2
     (call $~lib/internal/string/allocateUnsafe
      (tee_local $1
       (call $~lib/internal/itoa/decimalCount32
        (tee_local $3
         (i32.wrap/i64
          (get_local $0)
         )
        )
       )
      )
     )
    )
    (get_local $3)
    (get_local $1)
   )
   (call $~lib/internal/itoa/utoa64_lut
    (tee_local $2
     (call $~lib/internal/string/allocateUnsafe
      (tee_local $1
       (call $~lib/internal/itoa/decimalCount64
        (get_local $0)
       )
      )
     )
    )
    (get_local $0)
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/itoa/itoa<u64> (; 148 ;) (; has Stack IR ;) (type $Ii) (param $0 i64) (result i32)
  (call $~lib/internal/itoa/utoa64
   (get_local $0)
  )
 )
 (func $~lib/array/Array<u64>#join (; 149 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.lt_s
    (tee_local $2
     (i32.sub
      (i32.load
       (i32.const 5100)
      )
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $0
   (i32.const 1464)
  )
  (set_local $3
   (i32.load
    (i32.const 5096)
   )
  )
  (set_local $4
   (i32.ne
    (i32.load
     (i32.const 1776)
    )
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $0
     (call $~lib/string/String.__concat
      (get_local $0)
      (call $~lib/internal/itoa/itoa<u64>
       (i64.load offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $1)
          (i32.const 3)
         )
        )
       )
      )
     )
    )
    (if
     (get_local $4)
     (set_local $0
      (call $~lib/string/String.__concat
       (get_local $0)
       (i32.const 1776)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $~lib/string/String.__concat
   (get_local $0)
   (call $~lib/internal/itoa/itoa<u64>
    (i64.load offset=8
     (i32.add
      (get_local $3)
      (i32.shl
       (get_local $2)
       (i32.const 3)
      )
     )
    )
   )
  )
 )
 (func $~lib/array/Array<Array<i32>>#join (; 150 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.lt_s
    (tee_local $3
     (i32.sub
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $1
   (i32.const 1464)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $5
   (i32.ne
    (i32.load
     (i32.const 1776)
    )
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (get_local $3)
     )
    )
    (if
     (tee_local $2
      (i32.load offset=8
       (i32.add
        (get_local $4)
        (i32.shl
         (get_local $0)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $1
      (call $~lib/string/String.__concat
       (get_local $1)
       (call $~lib/array/Array<i32>#join
        (get_local $2)
        (i32.const 1776)
       )
      )
     )
    )
    (if
     (get_local $5)
     (set_local $1
      (call $~lib/string/String.__concat
       (get_local $1)
       (i32.const 1776)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (tee_local $2
    (i32.load offset=8
     (i32.add
      (get_local $4)
      (i32.shl
       (get_local $3)
       (i32.const 2)
      )
     )
    )
   )
   (set_local $1
    (call $~lib/string/String.__concat
     (get_local $1)
     (call $~lib/array/Array<i32>#join
      (get_local $2)
      (i32.const 1776)
     )
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/internal/itoa/itoa<u8> (; 151 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/internal/itoa/utoa32
   (i32.and
    (get_local $0)
    (i32.const 255)
   )
  )
 )
 (func $~lib/array/Array<u8>#join (; 152 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.lt_s
    (tee_local $3
     (i32.sub
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $2
   (i32.const 1464)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $5
   (i32.ne
    (i32.load
     (get_local $1)
    )
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (get_local $3)
     )
    )
    (set_local $2
     (call $~lib/string/String.__concat
      (get_local $2)
      (call $~lib/internal/itoa/itoa<u8>
       (i32.load8_u offset=8
        (i32.add
         (get_local $4)
         (get_local $0)
        )
       )
      )
     )
    )
    (if
     (get_local $5)
     (set_local $2
      (call $~lib/string/String.__concat
       (get_local $2)
       (get_local $1)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $~lib/string/String.__concat
   (get_local $2)
   (call $~lib/internal/itoa/itoa<u8>
    (i32.load8_u offset=8
     (i32.add
      (get_local $4)
      (get_local $3)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<Array<u8>>#join (; 153 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.lt_s
    (tee_local $3
     (i32.sub
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $1
   (i32.const 1464)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $5
   (i32.ne
    (i32.load
     (i32.const 1776)
    )
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (get_local $3)
     )
    )
    (if
     (tee_local $2
      (i32.load offset=8
       (i32.add
        (get_local $4)
        (i32.shl
         (get_local $0)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $1
      (call $~lib/string/String.__concat
       (get_local $1)
       (call $~lib/array/Array<u8>#join
        (get_local $2)
        (i32.const 1776)
       )
      )
     )
    )
    (if
     (get_local $5)
     (set_local $1
      (call $~lib/string/String.__concat
       (get_local $1)
       (i32.const 1776)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (tee_local $2
    (i32.load offset=8
     (i32.add
      (get_local $4)
      (i32.shl
       (get_local $3)
       (i32.const 2)
      )
     )
    )
   )
   (set_local $1
    (call $~lib/string/String.__concat
     (get_local $1)
     (call $~lib/array/Array<u8>#join
      (get_local $2)
      (i32.const 1776)
     )
    )
   )
  )
  (get_local $1)
 )
 (func $start (; 154 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 5472)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $std/array/arr
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/array/Array<u8>#fill
    (get_global $std/array/arr8)
    (i32.const 1)
    (i32.const 1)
    (i32.const 3)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u8>
     (get_global $std/array/arr8)
     (i32.const 144)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 36)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (drop
   (call $~lib/array/Array<u8>#fill|trampoline
    (get_global $std/array/arr8)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u8>
     (get_global $std/array/arr8)
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 39)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<u8>#fill
    (get_global $std/array/arr8)
    (i32.const 1)
    (i32.const 0)
    (i32.const -3)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u8>
     (get_global $std/array/arr8)
     (i32.const 224)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 42)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 2)
  )
  (drop
   (call $~lib/array/Array<u8>#fill|trampoline
    (get_global $std/array/arr8)
    (i32.const 2)
    (i32.const -2)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u8>
     (get_global $std/array/arr8)
     (i32.const 248)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 45)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<u32>#fill
    (get_global $std/array/arr32)
    (i32.const 1)
    (i32.const 1)
    (i32.const 3)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/arr32)
     (i32.const 328)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 50)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (drop
   (call $~lib/array/Array<u32>#fill|trampoline
    (get_global $std/array/arr32)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/arr32)
     (i32.const 368)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 53)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<u32>#fill
    (get_global $std/array/arr32)
    (i32.const 1)
    (i32.const 0)
    (i32.const -3)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/arr32)
     (i32.const 408)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 56)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 2)
  )
  (drop
   (call $~lib/array/Array<u32>#fill|trampoline
    (get_global $std/array/arr32)
    (i32.const 2)
    (i32.const -2)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/arr32)
     (i32.const 448)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 59)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (get_global $std/array/arr)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 63)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $std/array/internalCapacity<i32>
    (get_global $std/array/arr)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 64)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 42)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 68)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 69)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 70)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 74)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (get_global $std/array/arr)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 75)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 76)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 43)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 81)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 43)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 82)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 44)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 86)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 87)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 43)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 88)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 44)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 89)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 45)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 93)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 94)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 43)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 95)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 44)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 96)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 45)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 97)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#unshift
    (get_global $std/array/arr)
    (i32.const 42)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 103)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 104)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 105)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 106)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 44)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 107)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 3)
    )
    (i32.const 45)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 108)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#unshift
    (get_global $std/array/arr)
    (i32.const 41)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 5)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 112)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 5)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 113)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 41)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 114)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 115)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 43)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 3)
    )
    (i32.const 44)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 117)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 4)
    )
    (i32.const 45)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 118)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#shift
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 41)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 124)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 125)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 5)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 126)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 127)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 128)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 44)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 129)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 3)
    )
    (i32.const 45)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 130)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 45)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 134)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 135)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 5)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 136)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 137)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 138)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 44)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 139)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#reverse
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 145)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 5)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 146)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 44)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 147)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 148)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 149)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 43)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 44)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 44)
    (i32.const 0)
   )
  )
  (if
   (get_global $std/array/i)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 158)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 42)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 162)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 45)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 166)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 100)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 170)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -100)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 174)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -2)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 178)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -4)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 182)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 186)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 1)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 190)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 2)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 194)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 44)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 200)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 42)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 204)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 45)
    (i32.const 0)
   )
  )
  (if
   (get_global $std/array/includes)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 208)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 100)
   )
  )
  (if
   (get_global $std/array/includes)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 212)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -100)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 216)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -2)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 220)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -4)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 224)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 228)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 1)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 232)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 2)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 236)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $~lib/array/Array<i32>#splice
   (get_global $std/array/arr)
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 240)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 5)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 241)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 44)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 242)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/array/Array<u32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 243)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $~lib/array/Array<i32>#__set
   (get_global $std/array/arr)
   (i32.const 0)
   (i32.const 0)
  )
  (call $~lib/array/Array<i32>#__set
   (get_global $std/array/arr)
   (i32.const 1)
   (i32.const 1)
  )
  (call $~lib/array/Array<i32>#__set
   (get_global $std/array/arr)
   (i32.const 2)
   (i32.const 2)
  )
  (call $~lib/array/Array<i32>#__set
   (get_global $std/array/arr)
   (i32.const 3)
   (i32.const 3)
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 1)
   )
  )
  (if
   (get_global $std/array/i)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 253)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 256)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 259)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 4)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 267)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 268)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 5)
   )
  )
  (if
   (i32.eq
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 270)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 6)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 283)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 284)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/every
   (call $~lib/array/Array<i32>#every
    (get_global $std/array/arr)
    (i32.const 7)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/every)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 292)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/every
   (call $~lib/array/Array<i32>#every
    (get_global $std/array/arr)
    (i32.const 8)
   )
  )
  (if
   (get_global $std/array/every)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 295)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/every
   (call $~lib/array/Array<i32>#every
    (get_global $std/array/arr)
    (i32.const 9)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/every)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 303)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 304)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/every
   (call $~lib/array/Array<i32>#every
    (get_global $std/array/arr)
    (i32.const 10)
   )
  )
  (if
   (get_global $std/array/every)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 306)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/every
   (call $~lib/array/Array<i32>#every
    (get_global $std/array/arr)
    (i32.const 11)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/every)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 319)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 320)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/some
   (call $~lib/array/Array<i32>#some
    (get_global $std/array/arr)
    (i32.const 12)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/some)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 328)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/some
   (call $~lib/array/Array<i32>#some
    (get_global $std/array/arr)
    (i32.const 13)
   )
  )
  (if
   (get_global $std/array/some)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 331)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/some
   (call $~lib/array/Array<i32>#some
    (get_global $std/array/arr)
    (i32.const 14)
   )
  )
  (if
   (get_global $std/array/some)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 339)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 340)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/some
   (call $~lib/array/Array<i32>#some
    (get_global $std/array/arr)
    (i32.const 15)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/some)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 342)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/some
   (call $~lib/array/Array<i32>#some
    (get_global $std/array/arr)
    (i32.const 16)
   )
  )
  (if
   (get_global $std/array/some)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 355)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 356)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (call $~lib/array/Array<i32>#forEach
   (get_global $std/array/arr)
   (i32.const 17)
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 365)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (call $~lib/array/Array<i32>#forEach
   (get_global $std/array/arr)
   (i32.const 18)
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 374)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 375)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (call $~lib/array/Array<i32>#forEach
   (get_global $std/array/arr)
   (i32.const 19)
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 406)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 378)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (call $~lib/array/Array<i32>#forEach
   (get_global $std/array/arr)
   (i32.const 20)
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 392)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 393)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/newArr
   (call $~lib/array/Array<i32>#map<f32>
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/newArr)
    )
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 402)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.ne
    (call $~lib/array/Array<f32>#__get
     (get_global $std/array/newArr)
     (i32.const 0)
    )
    (f32.convert_s/i32
     (call $~lib/array/Array<u32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 403)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#map<i32>
    (get_global $std/array/arr)
    (i32.const 22)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 412)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 413)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#map<i32>
    (get_global $std/array/arr)
    (i32.const 23)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 406)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 420)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#map<i32>
    (get_global $std/array/arr)
    (i32.const 24)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 435)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 436)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/filteredArr
   (call $~lib/array/Array<i32>#filter
    (get_global $std/array/arr)
    (i32.const 25)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/filteredArr)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 444)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#filter
    (get_global $std/array/arr)
    (i32.const 26)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 453)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 454)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#filter
    (get_global $std/array/arr)
    (i32.const 27)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 406)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 461)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#filter
    (get_global $std/array/arr)
    (i32.const 28)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 476)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 477)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 29)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 485)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 30)
    (i32.const 4)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 10)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 489)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (i32.and
    (call $~lib/array/Array<i32>#reduce<i32>
     (get_global $std/array/arr)
     (i32.const 31)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/boolVal)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 492)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (i32.and
    (call $~lib/array/Array<i32>#reduce<i32>
     (get_global $std/array/arr)
     (i32.const 32)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (get_global $std/array/boolVal)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 495)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 33)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 503)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 504)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 34)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 10)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 506)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 35)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 519)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 520)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduceRight<i32>
    (get_global $std/array/arr)
    (i32.const 36)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 528)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduceRight<i32>
    (get_global $std/array/arr)
    (i32.const 37)
    (i32.const 4)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 10)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 532)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (i32.and
    (call $~lib/array/Array<i32>#reduceRight<i32>
     (get_global $std/array/arr)
     (i32.const 38)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/boolVal)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 535)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (i32.and
    (call $~lib/array/Array<i32>#reduceRight<i32>
     (get_global $std/array/arr)
     (i32.const 39)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (get_global $std/array/boolVal)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 538)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduceRight<i32>
    (get_global $std/array/arr)
    (i32.const 40)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 546)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 547)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduceRight<i32>
    (get_global $std/array/arr)
    (i32.const 41)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 10)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 549)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduceRight<i32>
    (get_global $std/array/arr)
    (i32.const 42)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 562)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (get_global $std/array/arr)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 563)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 1)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (call $~lib/math/NativeMath.seedRandom
   (i64.reinterpret/f64
    (call $~lib/math/JSMath.random)
   )
  )
  (set_global $~argc
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<f32>#sort|trampoline
    (get_global $std/array/f32ArrayTyped)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<f32>
     (get_global $std/array/f32ArrayTyped)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 650)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<f64>#sort|trampoline
    (get_global $std/array/f64ArrayTyped)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<f64>
     (get_global $std/array/f64ArrayTyped)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 654)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#sort|trampoline
    (get_global $std/array/i32ArrayTyped)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/i32ArrayTyped)
     (i32.const 1152)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 658)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<u32>#sort|trampoline
    (get_global $std/array/u32ArrayTyped)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/u32ArrayTyped)
     (i32.const 1232)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 662)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/reversed64
   (call $std/array/createReverseOrderedArray
    (i32.const 64)
   )
  )
  (set_global $std/array/reversed128
   (call $std/array/createReverseOrderedArray
    (i32.const 128)
   )
  )
  (set_global $std/array/reversed1024
   (call $std/array/createReverseOrderedArray
    (i32.const 1024)
   )
  )
  (set_global $std/array/reversed10000
   (call $std/array/createReverseOrderedArray
    (i32.const 10000)
   )
  )
  (set_global $std/array/randomized512
   (call $std/array/createRandomOrderedArray
    (i32.const 512)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed0)
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed1)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/reversed1)
     (i32.const 1400)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 682)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed2)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/reversed2)
     (i32.const 1424)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 685)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed4)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/reversed4)
     (get_global $std/array/expected4)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 688)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed64)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/reversed64)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 691)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed128)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/reversed128)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 694)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed1024)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/reversed1024)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 697)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed10000)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/reversed10000)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 700)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/randomized512)
  )
  (set_global $std/array/randomized64
   (call $std/array/createRandomOrderedArray
    (i32.const 64)
   )
  )
  (set_global $std/array/randomized257
   (call $std/array/createRandomOrderedArray
    (i32.const 257)
   )
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized64)
   (i32.const 48)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized64)
   (i32.const 49)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized257)
   (i32.const 50)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized257)
   (i32.const 51)
  )
  (set_global $std/array/reversedNested512
   (call $std/array/createReverseOrderedNestedArray)
  )
  (call $std/array/assertSorted<Array<i32>>
   (get_global $std/array/reversedNested512)
   (i32.const 52)
  )
  (set_global $std/array/reversedElements512
   (call $std/array/createReverseOrderedElementsArray)
  )
  (call $std/array/assertSorted<Array<i32>>
   (get_global $std/array/reversedElements512)
   (i32.const 53)
  )
  (call $std/array/assertSorted<Array<i32>>
   (get_global $std/array/randomStringsActual)
   (i32.const 54)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<String>
     (get_global $std/array/randomStringsActual)
     (get_global $std/array/randomStringsExpected)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 729)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/randomStrings400
   (call $std/array/createRandomStringArray)
  )
  (call $std/array/assertSorted<Array<i32>>
   (get_global $std/array/randomStrings400)
   (i32.const 55)
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<bool>#join)
     (i32.const 1808)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 738)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<i32>#join
      (i32.const 2432)
      (i32.const 1464)
     )
     (i32.const 2440)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 739)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<i32>#join
      (i32.const 2536)
      (i32.const 2496)
     )
     (i32.const 2544)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 740)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<f64>#join)
     (i32.const 4096)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 741)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<String>#join
      (i32.const 4208)
      (i32.const 1464)
     )
     (i32.const 4128)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 742)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $~lib/array/Array<Ref>#__unchecked_set
   (tee_local $0
    (call $~lib/array/Array<i32>#constructor
     (i32.const 3)
    )
   )
   (i32.const 0)
   (call $std/array/Ref#constructor)
  )
  (call $~lib/array/Array<Ref>#__unchecked_set
   (get_local $0)
   (i32.const 1)
   (i32.const 0)
  )
  (call $~lib/array/Array<Ref>#__unchecked_set
   (get_local $0)
   (i32.const 2)
   (call $std/array/Ref#constructor)
  )
  (set_global $std/array/refArr
   (get_local $0)
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<Ref>#join
      (get_global $std/array/refArr)
     )
     (i32.const 4256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 744)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<i32>#join
      (get_global $std/array/reversed0)
      (i32.const 1776)
     )
     (i32.const 1464)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 748)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<i32>#join
      (get_global $std/array/reversed1)
      (i32.const 1776)
     )
     (i32.const 4128)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 749)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<i32>#join
      (get_global $std/array/reversed2)
      (i32.const 1776)
     )
     (i32.const 4328)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 750)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<i32>#join
      (get_global $std/array/reversed4)
      (i32.const 1776)
     )
     (i32.const 4344)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 751)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<i8>#join)
     (i32.const 4416)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 753)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<u16>#join)
     (i32.const 4480)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 754)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<u64>#join)
     (i32.const 5104)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 755)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<String>#join
      (get_global $std/array/randomStringsExpected)
      (i32.const 1776)
     )
     (i32.const 5160)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 756)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<String>#join
      (i32.const 5280)
      (i32.const 1776)
     )
     (i32.const 5288)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 757)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<Array<i32>>#join
      (get_global $std/array/subarr32)
     )
     (i32.const 5376)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 760)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<Array<u8>>#join
      (get_global $std/array/subarr8)
     )
     (i32.const 5376)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 763)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
 (func $null (; 155 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
