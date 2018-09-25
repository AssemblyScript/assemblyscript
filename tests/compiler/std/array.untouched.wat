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
 (type $iFi (func (param i32 f64) (result i32)))
 (type $iIiIiIii (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $iiFi (func (param i32 i32 f64) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $iiIi (func (param i32 i32 i64) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
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
 (global $~lib/internal/number/_K (mut i32) (i32.const 0))
 (global $~lib/internal/number/_frc (mut i64) (i64.const 0))
 (global $~lib/internal/number/_exp (mut i32) (i32.const 0))
 (global $~lib/internal/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/internal/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/internal/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/internal/number/_exp_pow (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/arr8 (mut i32) (i32.const 120))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
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
 (global $std/array/charset i32 (i32.const 488))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $Infinity f64 (f64.const inf))
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
 (global $std/array/subarr32 (mut i32) (i32.const 5816))
 (global $std/array/subarr8 (mut i32) (i32.const 5912))
 (global $HEAP_BASE i32 (i32.const 5920))
 (table 56 56 anyfunc)
 (elem (i32.const 0) $null $start~anonymous|1 $start~anonymous|2 $start~anonymous|3 $start~anonymous|4 $start~anonymous|5 $start~anonymous|6 $start~anonymous|7 $start~anonymous|8 $start~anonymous|9 $start~anonymous|10 $start~anonymous|11 $start~anonymous|12 $start~anonymous|13 $start~anonymous|14 $start~anonymous|15 $start~anonymous|16 $start~anonymous|17 $start~anonymous|18 $start~anonymous|19 $start~anonymous|20 $start~anonymous|21 $start~anonymous|22 $start~anonymous|23 $start~anonymous|24 $start~anonymous|25 $start~anonymous|26 $start~anonymous|27 $start~anonymous|28 $start~anonymous|29 $start~anonymous|30 $start~anonymous|31 $start~anonymous|32 $start~anonymous|33 $start~anonymous|34 $start~anonymous|35 $start~anonymous|36 $start~anonymous|37 $start~anonymous|38 $start~anonymous|39 $start~anonymous|40 $start~anonymous|41 $start~anonymous|42 $~lib/array/Array<f32>#sort|trampoline~anonymous|43 $~lib/array/Array<f64>#sort|trampoline~anonymous|44 $~lib/array/Array<i32>#sort|trampoline~anonymous|45 $~lib/array/Array<u32>#sort|trampoline~anonymous|46 $std/array/assertSortedDefault<i32>~anonymous|47 $start~anonymous|48 $start~anonymous|49 $start~anonymous|50 $start~anonymous|51 $start~anonymous|52 $start~anonymous|53 $start~anonymous|54 $start~anonymous|55)
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 104) "\05\00\00\00\00\00\00\00\01\02\03\04\05\00\00\00")
 (data (i32.const 120) "h\00\00\00\05\00\00\00")
 (data (i32.const 128) "\05\00\00\00\00\00\00\00\01\01\01\04\05\00\00\00")
 (data (i32.const 144) "\80\00\00\00\05\00\00\00")
 (data (i32.const 152) "\0c\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 184) "\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 200) "\b8\00\00\00\05\00\00\00")
 (data (i32.const 208) "\05\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00")
 (data (i32.const 224) "\d0\00\00\00\05\00\00\00")
 (data (i32.const 232) "\05\00\00\00\00\00\00\00\01\01\00\02\02\00\00\00")
 (data (i32.const 248) "\e8\00\00\00\05\00\00\00")
 (data (i32.const 256) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 288) "\00\01\00\00\05\00\00\00")
 (data (i32.const 296) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 328) "(\01\00\00\05\00\00\00")
 (data (i32.const 336) "\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 368) "P\01\00\00\05\00\00\00")
 (data (i32.const 376) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 408) "x\01\00\00\05\00\00\00")
 (data (i32.const 416) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 448) "\a0\01\00\00\05\00\00\00")
 (data (i32.const 456) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 488) "V\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?\00")
 (data (i32.const 664) " \00\00\00\00\00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 728) "\98\02\00\00\08\00\00\00")
 (data (i32.const 736) " \00\00\00\00\00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 800) "\e0\02\00\00\08\00\00\00")
 (data (i32.const 808) "@\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 936) "(\03\00\00\08\00\00\00")
 (data (i32.const 944) "@\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1072) "\b0\03\00\00\08\00\00\00")
 (data (i32.const 1080) "\14\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 1112) "8\04\00\00\05\00\00\00")
 (data (i32.const 1120) "\14\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 1152) "`\04\00\00\05\00\00\00")
 (data (i32.const 1160) "\14\00\00\00\00\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 1192) "\88\04\00\00\05\00\00\00")
 (data (i32.const 1200) "\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00")
 (data (i32.const 1232) "\b0\04\00\00\05\00\00\00")
 (data (i32.const 1240) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1248) "\d8\04\00\00\00\00\00\00")
 (data (i32.const 1256) "\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1272) "\e8\04\00\00\01\00\00\00")
 (data (i32.const 1280) "\08\00\00\00\00\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 1296) "\00\05\00\00\02\00\00\00")
 (data (i32.const 1304) "\10\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1336) "\18\05\00\00\04\00\00\00")
 (data (i32.const 1344) "\10\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1376) "@\05\00\00\04\00\00\00")
 (data (i32.const 1384) "\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1400) "h\05\00\00\01\00\00\00")
 (data (i32.const 1408) "\08\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 1424) "\80\05\00\00\02\00\00\00")
 (data (i32.const 1432) "\01\00\00\00a\00")
 (data (i32.const 1440) "\01\00\00\00b\00")
 (data (i32.const 1448) "\02\00\00\00a\00b\00")
 (data (i32.const 1456) "\02\00\00\00b\00a\00")
 (data (i32.const 1464) "\00\00\00\00")
 (data (i32.const 1472) "\1c\00\00\00\00\00\00\00\98\05\00\00\a0\05\00\00\98\05\00\00\a8\05\00\00\b0\05\00\00\b8\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1536) "\c0\05\00\00\07\00\00\00")
 (data (i32.const 1544) "\1c\00\00\00\00\00\00\00\b8\05\00\00\98\05\00\00\98\05\00\00\a8\05\00\00\a0\05\00\00\b0\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1608) "\08\06\00\00\07\00\00\00")
 (data (i32.const 1616) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1648) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1704) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 1720) "\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1736) "\b8\06\00\00\02\00\00\00")
 (data (i32.const 1744) "\04\00\00\00t\00r\00u\00e\00")
 (data (i32.const 1760) "\05\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 1776) "\01\00\00\00,\00")
 (data (i32.const 1784) "\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1800) "\f8\06\00\00\02\00\00\00")
 (data (i32.const 1808) "\n\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e\00")
 (data (i32.const 1832) "\0c\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1864) "(\07\00\00\03\00\00\00")
 (data (i32.const 1872) "\01\00\00\000\00")
 (data (i32.const 1880) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2392) "X\07\00\00d\00\00\00")
 (data (i32.const 2400) "\0c\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2432) "`\t\00\00\03\00\00\00")
 (data (i32.const 2440) "\05\00\00\001\00-\002\00-\003\00")
 (data (i32.const 2456) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2488) "\98\t\00\00\03\00\00\00")
 (data (i32.const 2496) "\01\00\00\00-\00")
 (data (i32.const 2504) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2536) "\c8\t\00\00\03\00\00\00")
 (data (i32.const 2544) "\08\00\00\00\00\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 2560) "\f0\t\00\00\02\00\00\00")
 (data (i32.const 2568) "\02\00\00\00_\00_\00")
 (data (i32.const 2576) "\08\00\00\00\00\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 2592) "\10\n\00\00\02\00\00\00")
 (data (i32.const 2600) "\18\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 2656) "0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\00\00")
 (data (i32.const 2720) "`\n\00\00\06\00\00\00")
 (data (i32.const 2728) "\02\00\00\00,\00 \00")
 (data (i32.const 2736) "\03\00\00\000\00.\000\00")
 (data (i32.const 2752) "\03\00\00\00N\00a\00N\00")
 (data (i32.const 2768) "\t\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 2792) "\08\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 2816) "\b8\02\00\00\00\00\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3840) "\00\0b\00\00W\00\00\00")
 (data (i32.const 3848) "\ae\00\00\00\00\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4104) "\08\0f\00\00W\00\00\00")
 (data (i32.const 4112) "(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4176) "\10\10\00\00\n\00\00\00")
 (data (i32.const 4184) "0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\00\00")
 (data (i32.const 4248) "X\10\00\00\06\00\00\00")
 (data (i32.const 4256) "(\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 4344) "\01\00\00\001\00")
 (data (i32.const 4352) "\0c\00\00\00\00\00\00\00\b8\05\00\00\f8\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4384) "\00\11\00\00\03\00\00\00")
 (data (i32.const 4392) "\0c\00\00\00\00\00\00\00\b8\05\00\00\f8\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4424) "(\11\00\00\03\00\00\00")
 (data (i32.const 4432) "\0f\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 4472) " \00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 4544) "\03\00\00\001\00,\002\00")
 (data (i32.const 4560) "\07\00\00\000\00,\001\00,\002\00,\003\00")
 (data (i32.const 4584) "\03\00\00\00\00\00\00\00\01\ff\00\00\00\00\00\00")
 (data (i32.const 4600) "\e8\11\00\00\03\00\00\00")
 (data (i32.const 4608) "\03\00\00\00\00\00\00\00\01\ff\00\00\00\00\00\00")
 (data (i32.const 4624) "\00\12\00\00\03\00\00\00")
 (data (i32.const 4632) "\06\00\00\001\00,\00-\001\00,\000\00")
 (data (i32.const 4648) "\06\00\00\00\00\00\00\00\01\00\ff\ff\00\00\00\00")
 (data (i32.const 4664) "(\12\00\00\03\00\00\00")
 (data (i32.const 4672) "\06\00\00\00\00\00\00\00\01\00\ff\ff\00\00\00\00")
 (data (i32.const 4688) "@\12\00\00\03\00\00\00")
 (data (i32.const 4696) "\t\00\00\001\00,\006\005\005\003\005\00,\000\00")
 (data (i32.const 4720) "\18\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 4752) "p\12\00\00\03\00\00\00")
 (data (i32.const 4760) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5272) "\98\12\00\00d\00\00\00")
 (data (i32.const 5280) "\18\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 5312) "\a0\14\00\00\03\00\00\00")
 (data (i32.const 5320) "\18\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000\00")
 (data (i32.const 5376) " \00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5440) "\00\15\00\00\04\00\00\00")
 (data (i32.const 5448) " \00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5512) "H\15\00\00\04\00\00\00")
 (data (i32.const 5520) "*\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 5608) "\0d\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,\00")
 (data (i32.const 5640) "\01\00\00\002\00")
 (data (i32.const 5648) "\01\00\00\004\00")
 (data (i32.const 5656) "\10\00\00\00\00\00\00\00\f8\10\00\00\08\16\00\00\00\00\00\00\10\16\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5688) "\18\16\00\00\04\00\00\00")
 (data (i32.const 5696) "\10\00\00\00\00\00\00\00\f8\10\00\00\08\16\00\00\00\00\00\00\10\16\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5728) "@\16\00\00\04\00\00\00")
 (data (i32.const 5736) "\06\00\00\001\00,\002\00,\00,\004\00")
 (data (i32.const 5752) "\08\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 5768) "x\16\00\00\02\00\00\00")
 (data (i32.const 5776) "\08\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 5792) "\90\16\00\00\02\00\00\00")
 (data (i32.const 5800) "\08\00\00\00\00\00\00\00\88\16\00\00\a0\16\00\00")
 (data (i32.const 5816) "\a8\16\00\00\02\00\00\00")
 (data (i32.const 5824) "\07\00\00\001\00,\002\00,\003\00,\004\00")
 (data (i32.const 5848) "\02\00\00\00\00\00\00\00\01\02\00\00\00\00\00\00")
 (data (i32.const 5864) "\d8\16\00\00\02\00\00\00")
 (data (i32.const 5872) "\02\00\00\00\00\00\00\00\03\04\00\00\00\00\00\00")
 (data (i32.const 5888) "\f0\16\00\00\02\00\00\00")
 (data (i32.const 5896) "\08\00\00\00\00\00\00\00\e8\16\00\00\00\17\00\00")
 (data (i32.const 5912) "\08\17\00\00\02\00\00\00")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (i32.shl
   (i32.const 1)
   (i32.sub
    (i32.const 32)
    (i32.clz
     (i32.sub
      (i32.add
       (get_local $0)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (get_global $~lib/internal/allocator/MAX_SIZE_32)
   )
   (unreachable)
  )
  (set_local $1
   (get_global $~lib/allocator/arena/offset)
  )
  (set_local $4
   (i32.and
    (i32.add
     (i32.add
      (get_local $1)
      (select
       (tee_local $2
        (get_local $0)
       )
       (tee_local $3
        (i32.const 1)
       )
       (i32.gt_u
        (get_local $2)
        (get_local $3)
       )
      )
     )
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_local $5
   (current_memory)
  )
  (if
   (i32.gt_u
    (get_local $4)
    (i32.shl
     (get_local $5)
     (i32.const 16)
    )
   )
   (block
    (set_local $2
     (i32.shr_u
      (i32.and
       (i32.add
        (i32.sub
         (get_local $4)
         (get_local $1)
        )
        (i32.const 65535)
       )
       (i32.xor
        (i32.const 65535)
        (i32.const -1)
       )
      )
      (i32.const 16)
     )
    )
    (set_local $3
     (select
      (tee_local $3
       (get_local $5)
      )
      (tee_local $6
       (get_local $2)
      )
      (i32.gt_s
       (get_local $3)
       (get_local $6)
      )
     )
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $3)
      )
      (i32.const 0)
     )
     (if
      (i32.lt_s
       (grow_memory
        (get_local $2)
       )
       (i32.const 0)
      )
      (unreachable)
     )
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $4)
  )
  (get_local $1)
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
    )
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
  (set_local $1
   (block $~lib/memory/memory.allocate|inlined.0 (result i32)
    (set_local $2
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
    (br $~lib/memory/memory.allocate|inlined.0
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $2)
     )
    )
   )
  )
  (i32.store
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/memory/memset (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
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
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
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
  (set_local $3
   (i32.and
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
    (i32.const 3)
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.and
    (get_local $2)
    (i32.const -4)
   )
  )
  (set_local $4
   (i32.mul
    (i32.div_u
     (i32.const -1)
     (i32.const 255)
    )
    (i32.and
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $4)
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
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 12)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 8)
   )
   (get_local $4)
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
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 28)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 16)
   )
   (get_local $4)
  )
  (set_local $3
   (i32.add
    (i32.const 24)
    (i32.and
     (get_local $0)
     (i32.const 4)
    )
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $5
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    (i64.shl
     (i64.extend_u/i32
      (get_local $4)
     )
     (i64.const 32)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 32)
     )
     (block
      (block
       (i64.store
        (get_local $0)
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 24)
        )
        (get_local $5)
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
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<i32>#constructor (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 37)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.0
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<u8>#fill (; 8 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $5
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
     (tee_local $6
      (i32.add
       (get_local $5)
       (get_local $2)
      )
     )
     (tee_local $7
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $6)
      (get_local $7)
     )
    )
    (select
     (tee_local $6
      (get_local $2)
     )
     (tee_local $7
      (get_local $5)
     )
     (i32.lt_s
      (get_local $6)
      (get_local $7)
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
     (tee_local $6
      (i32.add
       (get_local $5)
       (get_local $3)
      )
     )
     (tee_local $7
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $6)
      (get_local $7)
     )
    )
    (select
     (tee_local $6
      (get_local $3)
     )
     (tee_local $7
      (get_local $5)
     )
     (i32.lt_s
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $~lib/memory/memory.fill|inlined.1
   (set_local $6
    (i32.add
     (i32.add
      (get_local $4)
      (get_local $2)
     )
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $7
    (i32.sub
     (get_local $3)
     (get_local $2)
    )
   )
   (call $~lib/internal/memory/memset
    (get_local $6)
    (get_local $1)
    (get_local $7)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<u8>#__get (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 0)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<u8,u8>|inlined.0 (result i32)
    (i32.load8_u offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 0)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $std/array/isArraysEqual<u8> (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (set_local $2
     (block $~lib/array/Array<u8>#get:length|inlined.0 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (if
     (i32.ne
      (get_local $2)
      (block $~lib/array/Array<u8>#get:length|inlined.2 (result i32)
       (i32.load offset=4
        (get_local $1)
       )
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
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (if
     (i32.ne
      (i32.and
       (call $~lib/array/Array<u8>#__get
        (get_local $0)
        (get_local $3)
       )
       (i32.const 255)
      )
      (i32.and
       (call $~lib/array/Array<u8>#__get
        (get_local $1)
        (get_local $3)
       )
       (i32.const 255)
      )
     )
     (return
      (i32.const 0)
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
  (i32.const 1)
 )
 (func $~lib/array/Array<u8>#fill|trampoline (; 11 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
    (get_global $~lib/builtins/i32.MAX_VALUE)
   )
  )
  (call $~lib/array/Array<u8>#fill
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~lib/array/Array<u32>#fill (; 12 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $5
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
     (tee_local $6
      (i32.add
       (get_local $5)
       (get_local $2)
      )
     )
     (tee_local $7
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $6)
      (get_local $7)
     )
    )
    (select
     (tee_local $6
      (get_local $2)
     )
     (tee_local $7
      (get_local $5)
     )
     (i32.lt_s
      (get_local $6)
      (get_local $7)
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
     (tee_local $6
      (i32.add
       (get_local $5)
       (get_local $3)
      )
     )
     (tee_local $7
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $6)
      (get_local $7)
     )
    )
    (select
     (tee_local $6
      (get_local $3)
     )
     (tee_local $7
      (get_local $5)
     )
     (i32.lt_s
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (block $~lib/internal/arraybuffer/storeUnsafe<u32,u32>|inlined.0
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
 (func $~lib/array/Array<u32>#__get (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $std/array/isArraysEqual<u32> (; 14 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (set_local $2
     (block $~lib/array/Array<u32>#get:length|inlined.0 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (if
     (i32.ne
      (get_local $2)
      (block $~lib/array/Array<u32>#get:length|inlined.2 (result i32)
       (i32.load offset=4
        (get_local $1)
       )
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
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
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
  (i32.const 1)
 )
 (func $~lib/array/Array<u32>#fill|trampoline (; 15 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
    (get_global $~lib/builtins/i32.MAX_VALUE)
   )
  )
  (call $~lib/array/Array<u32>#fill
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $std/array/internalCapacity<i32> (; 16 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (i32.shr_s
   (i32.load
    (get_local $1)
   )
   (i32.const 2)
  )
 )
 (func $~lib/internal/memory/memcpy (; 17 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
    (i32.const 0)
   )
   (block
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 16)
       )
       (block
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
        )
        (br $continue|1)
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
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
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
      (block $case0|2
       (set_local $5
        (i32.and
         (get_local $0)
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      (block
       (set_local $3
        (i32.load
         (get_local $1)
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 3)
        )
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.ge_u
           (get_local $2)
           (i32.const 17)
          )
          (block
           (block
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.store
             (get_local $0)
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
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
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
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
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
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
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
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
           )
           (br $continue|3)
          )
         )
        )
       )
       (br $break|2)
      )
     )
     (block
      (set_local $3
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 2)
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 18)
         )
         (block
          (block
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.store
            (get_local $0)
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
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
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
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
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
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
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
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
          )
          (br $continue|4)
         )
        )
       )
      )
      (br $break|2)
     )
    )
    (block
     (set_local $3
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (block $break|5
      (loop $continue|5
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 19)
        )
        (block
         (block
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.store
           (get_local $0)
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
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
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
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
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
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
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
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
         )
         (br $continue|5)
        )
       )
      )
     )
     (br $break|2)
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
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
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
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
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
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
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
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (i32.store8
    (block (result i32)
     (set_local $5
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    (i32.load8_u
     (block (result i32)
      (set_local $5
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memmove (; 18 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
    (get_local $3)
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
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
      (block $break|0
       (loop $continue|0
        (if
         (i32.and
          (get_local $0)
          (i32.const 7)
         )
         (block
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
           (i32.store8
            (block (result i32)
             (set_local $3
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            (i32.load8_u
             (block (result i32)
              (set_local $3
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $3)
                (i32.const 1)
               )
              )
              (get_local $3)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      (block $break|1
       (loop $continue|1
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
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
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    (block $break|2
     (loop $continue|2
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (block (result i32)
           (set_local $3
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          (i32.load8_u
           (block (result i32)
            (set_local $3
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $3)
              (i32.const 1)
             )
            )
            (get_local $3)
           )
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
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
      (block $break|3
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
          )
          (br $continue|3)
         )
        )
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (i64.store
            (i32.add
             (get_local $0)
             (get_local $2)
            )
            (i64.load
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    (block $break|5
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
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.gt_s
    (get_local $1)
    (get_local $2)
   )
   (block
    (if
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
      )
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
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
     )
     (block
      (i32.store
       (get_local $0)
       (get_local $1)
      )
      (block $~lib/memory/memory.fill|inlined.2
       (set_local $3
        (i32.add
         (i32.add
          (get_local $0)
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         (get_local $2)
        )
       )
       (set_local $4
        (i32.const 0)
       )
       (set_local $5
        (i32.sub
         (get_local $1)
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $5)
       )
      )
     )
     (block
      (set_local $5
       (call $~lib/internal/arraybuffer/allocateUnsafe
        (get_local $1)
       )
      )
      (block $~lib/memory/memory.copy|inlined.0
       (set_local $4
        (i32.add
         (get_local $5)
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (set_local $3
        (i32.add
         (get_local $0)
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (call $~lib/internal/memory/memmove
        (get_local $4)
        (get_local $3)
        (get_local $2)
       )
      )
      (block $~lib/memory/memory.fill|inlined.3
       (set_local $3
        (i32.add
         (i32.add
          (get_local $5)
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         (get_local $2)
        )
       )
       (set_local $4
        (i32.const 0)
       )
       (set_local $6
        (i32.sub
         (get_local $1)
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $6)
       )
      )
      (return
       (get_local $5)
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
      (i32.eqz
       (i32.ge_s
        (get_local $1)
        (i32.const 0)
       )
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
 (func $~lib/array/Array<i32>#push (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
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
       (i32.const 172)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 2)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $~lib/array/Array<i32>#__get (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/array/Array<i32>#pop (; 22 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 184)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.1 (result i32)
    (set_local $2
     (i32.load
      (get_local $0)
     )
    )
    (set_local $3
     (tee_local $1
      (i32.sub
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 2)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (get_local $4)
 )
 (func $~lib/array/Array<i32>#unshift (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load
     (get_local $2)
    )
    (i32.const 2)
   )
  )
  (set_local $4
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $5
   (i32.add
    (get_local $4)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $4)
    (get_local $3)
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
       (i32.const 274)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    (set_local $2
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $2)
      (i32.shl
       (get_local $5)
       (i32.const 2)
      )
     )
    )
    (set_local $3
     (i32.shr_u
      (i32.load
       (get_local $2)
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
  (block $~lib/memory/memory.copy|inlined.1
   (set_local $6
    (i32.add
     (i32.add
      (get_local $2)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.const 4)
    )
   )
   (set_local $7
    (i32.add
     (get_local $2)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $8
    (i32.shl
     (i32.sub
      (get_local $3)
      (i32.const 1)
     )
     (i32.const 2)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $6)
    (get_local $7)
    (get_local $8)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.1
   (set_local $8
    (i32.const 0)
   )
   (i32.store offset=8
    (i32.add
     (get_local $2)
     (i32.shl
      (get_local $8)
      (i32.const 2)
     )
    )
    (get_local $1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (get_local $5)
 )
 (func $~lib/array/Array<i32>#shift (; 24 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $1
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 245)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.2 (result i32)
    (set_local $3
     (i32.const 0)
    )
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 2)
      )
     )
    )
   )
  )
  (set_local $5
   (i32.sub
    (get_local $1)
    (i32.const 1)
   )
  )
  (block $~lib/memory/memory.copy|inlined.2
   (set_local $3
    (i32.add
     (get_local $2)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $6
    (i32.add
     (i32.add
      (get_local $2)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.const 4)
    )
   )
   (set_local $7
    (i32.shl
     (get_local $5)
     (i32.const 2)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $3)
    (get_local $6)
    (get_local $7)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.2
   (set_local $7
    (i32.const 0)
   )
   (i32.store offset=8
    (i32.add
     (get_local $2)
     (i32.shl
      (get_local $5)
      (i32.const 2)
     )
    )
    (get_local $7)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (get_local $4)
 )
 (func $~lib/array/Array<i32>#reverse (; 25 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $2
     (i32.const 0)
    )
    (set_local $3
     (i32.sub
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.3 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $1)
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.3
      (set_local $5
       (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.4 (result i32)
        (i32.load offset=8
         (i32.add
          (get_local $1)
          (i32.shl
           (get_local $3)
           (i32.const 2)
          )
         )
        )
       )
      )
      (i32.store offset=8
       (i32.add
        (get_local $1)
        (i32.shl
         (get_local $2)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.4
      (i32.store offset=8
       (i32.add
        (get_local $1)
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
       (get_local $4)
      )
     )
    )
    (block
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.sub
       (get_local $3)
       (i32.const 1)
      )
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#indexOf (; 26 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.eq
      (get_local $3)
      (i32.const 0)
     )
    )
    (get_local $4)
    (i32.ge_s
     (get_local $2)
     (get_local $3)
    )
   )
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
     (tee_local $4
      (i32.add
       (get_local $3)
       (get_local $2)
      )
     )
     (tee_local $5
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
    )
   )
  )
  (set_local $6
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
       (if
        (i32.eq
         (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.6 (result i32)
          (i32.load offset=8
           (i32.add
            (get_local $6)
            (i32.shl
             (get_local $2)
             (i32.const 2)
            )
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
      )
      (br $continue|0)
     )
    )
   )
  )
  (i32.const -1)
 )
 (func $~lib/array/Array<i32>#splice (; 27 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 1)
   )
   (return)
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (select
     (tee_local $4
      (i32.add
       (get_local $3)
       (get_local $1)
      )
     )
     (tee_local $5
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
    )
   )
  )
  (if
   (i32.ge_s
    (get_local $1)
    (get_local $3)
   )
   (return)
  )
  (set_local $2
   (select
    (tee_local $4
     (get_local $2)
    )
    (tee_local $5
     (i32.sub
      (get_local $3)
      (get_local $1)
     )
    )
    (i32.lt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (set_local $6
   (i32.load
    (get_local $0)
   )
  )
  (block $~lib/memory/memory.copy|inlined.3
   (set_local $4
    (i32.add
     (i32.add
      (get_local $6)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (set_local $5
    (i32.add
     (i32.add
      (get_local $6)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.shl
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (i32.const 2)
     )
    )
   )
   (set_local $7
    (i32.shl
     (get_local $2)
     (i32.const 2)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $4)
    (get_local $5)
    (get_local $7)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $~lib/array/Array<i32>#__set (; 28 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
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
       (i32.const 101)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.5
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
 )
 (func $start~anonymous|1 (; 29 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/array/Array<i32>#findIndex (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $3
     (i32.const 0)
    )
    (set_local $4
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $5
        (i32.lt_s
         (get_local $3)
         (get_local $4)
        )
       )
       (i32.lt_s
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $5)
      )
     )
    )
    (if
     (i32.and
      (block (result i32)
       (set_global $~argc
        (i32.const 3)
       )
       (call_indirect (type $iiii)
        (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.8 (result i32)
         (i32.load offset=8
          (i32.add
           (get_local $2)
           (i32.shl
            (get_local $3)
            (i32.const 2)
           )
          )
         )
        )
        (get_local $3)
        (get_local $0)
        (get_local $1)
       )
      )
      (i32.const 1)
     )
     (return
      (get_local $3)
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
  (i32.const -1)
 )
 (func $start~anonymous|2 (; 31 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 1)
  )
 )
 (func $start~anonymous|3 (; 32 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|4 (; 33 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|5 (; 34 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|6 (; 35 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|7 (; 36 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/array/Array<i32>#every (; 37 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $3
     (i32.const 0)
    )
    (set_local $4
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $5
        (i32.lt_s
         (get_local $3)
         (get_local $4)
        )
       )
       (i32.lt_s
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $5)
      )
     )
    )
    (if
     (i32.eqz
      (i32.and
       (block (result i32)
        (set_global $~argc
         (i32.const 3)
        )
        (call_indirect (type $iiii)
         (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.10 (result i32)
          (i32.load offset=8
           (i32.add
            (get_local $2)
            (i32.shl
             (get_local $3)
             (i32.const 2)
            )
           )
          )
         )
         (get_local $3)
         (get_local $0)
         (get_local $1)
        )
       )
       (i32.const 1)
      )
     )
     (return
      (i32.const 0)
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
  (i32.const 1)
 )
 (func $start~anonymous|8 (; 38 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $start~anonymous|9 (; 39 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|10 (; 40 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.lt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|11 (; 41 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|12 (; 42 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $~lib/array/Array<i32>#some (; 43 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $3
     (i32.const 0)
    )
    (set_local $4
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $5
        (i32.lt_s
         (get_local $3)
         (get_local $4)
        )
       )
       (i32.lt_s
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $5)
      )
     )
    )
    (if
     (i32.and
      (block (result i32)
       (set_global $~argc
        (i32.const 3)
       )
       (call_indirect (type $iiii)
        (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.12 (result i32)
         (i32.load offset=8
          (i32.add
           (get_local $2)
           (i32.shl
            (get_local $3)
            (i32.const 2)
           )
          )
         )
        )
        (get_local $3)
        (get_local $0)
        (get_local $1)
       )
      )
      (i32.const 1)
     )
     (return
      (i32.const 1)
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
  (i32.const 0)
 )
 (func $start~anonymous|13 (; 44 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const -1)
  )
 )
 (func $start~anonymous|14 (; 45 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|15 (; 46 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.gt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|16 (; 47 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|17 (; 48 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
 )
 (func $~lib/array/Array<i32>#forEach (; 49 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $3
     (i32.const 0)
    )
    (set_local $4
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $5
        (i32.lt_s
         (get_local $3)
         (get_local $4)
        )
       )
       (i32.lt_s
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $5)
      )
     )
    )
    (block
     (set_global $~argc
      (i32.const 3)
     )
     (call_indirect (type $iiiv)
      (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.13 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $2)
         (i32.shl
          (get_local $3)
          (i32.const 2)
         )
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
 )
 (func $start~anonymous|18 (; 50 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $start~anonymous|19 (; 51 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
 )
 (func $start~anonymous|20 (; 52 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $start~anonymous|21 (; 53 ;) (type $iiif) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (f32.convert_s/i32
   (get_local $0)
  )
 )
 (func $~lib/array/Array<f32>#constructor (; 54 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 37)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.4
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#map<f32> (; 55 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (call $~lib/array/Array<f32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (i32.load
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $7
        (i32.lt_s
         (get_local $6)
         (get_local $3)
        )
       )
       (i32.lt_s
        (get_local $6)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $7)
      )
     )
    )
    (block $~lib/internal/arraybuffer/storeUnsafe<f32,f32>|inlined.0
     (set_local $8
      (block (result f32)
       (set_global $~argc
        (i32.const 3)
       )
       (call_indirect (type $iiif)
        (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.14 (result i32)
         (i32.load offset=8
          (i32.add
           (get_local $2)
           (i32.shl
            (get_local $6)
            (i32.const 2)
           )
          )
         )
        )
        (get_local $6)
        (get_local $0)
        (get_local $1)
       )
      )
     )
     (f32.store offset=8
      (i32.add
       (get_local $5)
       (i32.shl
        (get_local $6)
        (i32.const 2)
       )
      )
      (get_local $8)
     )
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $4)
 )
 (func $~lib/array/Array<f32>#__get (; 56 ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result f32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<f32,f32>|inlined.0 (result f32)
    (f32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $start~anonymous|22 (; 57 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#map<i32> (; 58 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (i32.load
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $7
        (i32.lt_s
         (get_local $6)
         (get_local $3)
        )
       )
       (i32.lt_s
        (get_local $6)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $7)
      )
     )
    )
    (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.6
     (set_local $7
      (block (result i32)
       (set_global $~argc
        (i32.const 3)
       )
       (call_indirect (type $iiii)
        (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.15 (result i32)
         (i32.load offset=8
          (i32.add
           (get_local $2)
           (i32.shl
            (get_local $6)
            (i32.const 2)
           )
          )
         )
        )
        (get_local $6)
        (get_local $0)
        (get_local $1)
       )
      )
     )
     (i32.store offset=8
      (i32.add
       (get_local $5)
       (i32.shl
        (get_local $6)
        (i32.const 2)
       )
      )
      (get_local $7)
     )
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $4)
 )
 (func $start~anonymous|23 (; 59 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (get_local $0)
 )
 (func $start~anonymous|24 (; 60 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|25 (; 61 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 2)
  )
 )
 (func $~lib/array/Array<i32>#filter (; 62 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $6
        (i32.lt_s
         (get_local $5)
         (get_local $3)
        )
       )
       (i32.lt_s
        (get_local $5)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $6)
      )
     )
    )
    (block
     (set_local $6
      (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.16 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $2)
         (i32.shl
          (get_local $5)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (i32.and
       (block (result i32)
        (set_global $~argc
         (i32.const 3)
        )
        (call_indirect (type $iiii)
         (get_local $6)
         (get_local $5)
         (get_local $0)
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (drop
       (call $~lib/array/Array<i32>#push
        (get_local $4)
        (get_local $6)
       )
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $4)
 )
 (func $start~anonymous|26 (; 63 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|27 (; 64 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|28 (; 65 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|29 (; 66 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 67 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $5
     (i32.const 0)
    )
    (set_local $6
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $7
        (i32.lt_s
         (get_local $5)
         (get_local $6)
        )
       )
       (i32.lt_s
        (get_local $5)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $7)
      )
     )
    )
    (set_local $3
     (block (result i32)
      (set_global $~argc
       (i32.const 4)
      )
      (call_indirect (type $iiiii)
       (get_local $3)
       (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.17 (result i32)
        (i32.load offset=8
         (i32.add
          (get_local $4)
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
       )
       (get_local $5)
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $start~anonymous|30 (; 68 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|31 (; 69 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<i32>#reduce<bool> (; 70 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $5
     (i32.const 0)
    )
    (set_local $6
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $7
        (i32.lt_s
         (get_local $5)
         (get_local $6)
        )
       )
       (i32.lt_s
        (get_local $5)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $7)
      )
     )
    )
    (set_local $3
     (block (result i32)
      (set_global $~argc
       (i32.const 4)
      )
      (call_indirect (type $iiiii)
       (get_local $3)
       (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.18 (result i32)
        (i32.load offset=8
         (i32.add
          (get_local $4)
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
       )
       (get_local $5)
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $start~anonymous|32 (; 71 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start~anonymous|33 (; 72 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start~anonymous|34 (; 73 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|35 (; 74 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start~anonymous|36 (; 75 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 76 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.sub
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.ge_s
       (get_local $5)
       (i32.const 0)
      )
     )
    )
    (set_local $3
     (block (result i32)
      (set_global $~argc
       (i32.const 4)
      )
      (call_indirect (type $iiiii)
       (get_local $3)
       (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.19 (result i32)
        (i32.load offset=8
         (i32.add
          (get_local $4)
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
       )
       (get_local $5)
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (set_local $5
     (i32.sub
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $start~anonymous|37 (; 77 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|38 (; 78 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<i32>#reduceRight<bool> (; 79 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.sub
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.ge_s
       (get_local $5)
       (i32.const 0)
      )
     )
    )
    (set_local $3
     (block (result i32)
      (set_global $~argc
       (i32.const 4)
      )
      (call_indirect (type $iiiii)
       (get_local $3)
       (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.20 (result i32)
        (i32.load offset=8
         (i32.add
          (get_local $4)
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
       )
       (get_local $5)
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (set_local $5
     (i32.sub
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $start~anonymous|39 (; 80 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start~anonymous|40 (; 81 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start~anonymous|41 (; 82 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|42 (; 83 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/math/murmurHash3 (; 84 ;) (type $II) (param $0 i64) (result i64)
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (set_local $0
   (i64.mul
    (get_local $0)
    (i64.const -49064778989728563)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (set_local $0
   (i64.mul
    (get_local $0)
    (i64.const -4265267296055464877)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/math/NativeMath.seedRandom (; 85 ;) (type $Iv) (param $0 i64)
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
 (func $~lib/internal/array/insertionSort<f32> (; 86 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.0 (result f32)
       (f32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.1 (result f32)
            (f32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $ffi)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (f32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.1
      (set_local $8
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (f32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $8)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
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
 (func $~lib/allocator/arena/__memory_free (; 87 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/internal/array/weakHeapSort<f32> (; 88 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f32)
  (local $11 i32)
  (local $12 f32)
  (set_local $4
   (i32.shl
    (i32.shr_s
     (i32.add
      (get_local $2)
      (i32.const 31)
     )
     (i32.const 5)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (block $~lib/memory/memory.allocate|inlined.1 (result i32)
    (br $~lib/memory/memory.allocate|inlined.1
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $4)
     )
    )
   )
  )
  (block $~lib/memory/memory.fill|inlined.5
   (set_local $6
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $5)
    (get_local $6)
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.gt_s
       (get_local $6)
       (i32.const 0)
      )
     )
    )
    (block
     (set_local $7
      (get_local $6)
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.eq
         (i32.and
          (get_local $7)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $5)
             (i32.shl
              (i32.shr_s
               (get_local $7)
               (i32.const 6)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (i32.shr_s
             (get_local $7)
             (i32.const 1)
            )
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
        (block
         (set_local $7
          (i32.shr_s
           (get_local $7)
           (i32.const 1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (set_local $8
      (i32.shr_s
       (get_local $7)
       (i32.const 1)
      )
     )
     (set_local $9
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.2 (result f32)
       (f32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.3 (result f32)
       (f32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (i32.lt_s
       (block (result i32)
        (set_global $~argc
         (i32.const 2)
        )
        (call_indirect (type $ffi)
         (get_local $9)
         (get_local $10)
         (get_local $3)
        )
       )
       (i32.const 0)
      )
      (block
       (i32.store
        (i32.add
         (get_local $5)
         (i32.shl
          (i32.shr_s
           (get_local $6)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
        (i32.xor
         (i32.load
          (i32.add
           (get_local $5)
           (i32.shl
            (i32.shr_s
             (get_local $6)
             (i32.const 5)
            )
            (i32.const 2)
           )
          )
         )
         (i32.shl
          (i32.const 1)
          (i32.and
           (get_local $6)
           (i32.const 31)
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.2
        (f32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
         (get_local $9)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.3
        (f32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $10)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.ge_s
       (get_local $6)
       (i32.const 2)
      )
     )
    )
    (block
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.4 (result f32)
       (set_local $8
        (i32.const 0)
       )
       (f32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 2)
         )
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.4
      (set_local $8
       (i32.const 0)
      )
      (set_local $9
       (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.5 (result f32)
        (f32.load offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
        )
       )
      )
      (f32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $8)
         (i32.const 2)
        )
       )
       (get_local $9)
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.5
      (f32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $6)
         (i32.const 2)
        )
       )
       (get_local $10)
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (block $break|3
      (loop $continue|3
       (if
        (i32.lt_s
         (tee_local $7
          (i32.add
           (i32.shl
            (get_local $8)
            (i32.const 1)
           )
           (i32.and
            (i32.shr_u
             (i32.load
              (i32.add
               (get_local $5)
               (i32.shl
                (i32.shr_s
                 (get_local $8)
                 (i32.const 5)
                )
                (i32.const 2)
               )
              )
             )
             (i32.and
              (get_local $8)
              (i32.const 31)
             )
            )
            (i32.const 1)
           )
          )
         )
         (get_local $6)
        )
        (block
         (set_local $8
          (get_local $7)
         )
         (br $continue|3)
        )
       )
      )
     )
     (block $break|4
      (loop $continue|4
       (if
        (i32.gt_s
         (get_local $8)
         (i32.const 0)
        )
        (block
         (block
          (set_local $10
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.6 (result f32)
            (set_local $11
             (i32.const 0)
            )
            (f32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $11)
               (i32.const 2)
              )
             )
            )
           )
          )
          (set_local $9
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.7 (result f32)
            (f32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $ffi)
              (get_local $10)
              (get_local $9)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block
            (i32.store
             (i32.add
              (get_local $5)
              (i32.shl
               (i32.shr_s
                (get_local $8)
                (i32.const 5)
               )
               (i32.const 2)
              )
             )
             (i32.xor
              (i32.load
               (i32.add
                (get_local $5)
                (i32.shl
                 (i32.shr_s
                  (get_local $8)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
              )
              (i32.shl
               (i32.const 1)
               (i32.and
                (get_local $8)
                (i32.const 31)
               )
              )
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.6
             (f32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $8)
                (i32.const 2)
               )
              )
              (get_local $10)
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.7
             (set_local $11
              (i32.const 0)
             )
             (f32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $11)
                (i32.const 2)
               )
              )
              (get_local $9)
             )
            )
           )
          )
          (set_local $8
           (i32.shr_s
            (get_local $8)
            (i32.const 1)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (block $~lib/memory/memory.free|inlined.0
   (block
    (call $~lib/allocator/arena/__memory_free
     (get_local $5)
    )
    (br $~lib/memory/memory.free|inlined.0)
   )
  )
  (set_local $12
   (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.8 (result f32)
    (set_local $6
     (i32.const 1)
    )
    (f32.load offset=8
     (i32.add
      (i32.add
       (get_local $0)
       (get_local $1)
      )
      (i32.shl
       (get_local $6)
       (i32.const 2)
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.8
   (set_local $6
    (i32.const 1)
   )
   (set_local $10
    (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.9 (result f32)
     (set_local $7
      (i32.const 0)
     )
     (f32.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (get_local $7)
        (i32.const 2)
       )
      )
     )
    )
   )
   (f32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $10)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.9
   (set_local $6
    (i32.const 0)
   )
   (f32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $12)
   )
  )
 )
 (func $~lib/array/Array<f32>#sort (; 89 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 337)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
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
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<f32,f32>|inlined.1 (result f32)
      (set_local $4
       (i32.const 1)
      )
      (f32.load offset=8
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
    (set_local $6
     (block $~lib/internal/arraybuffer/loadUnsafe<f32,f32>|inlined.2 (result f32)
      (set_local $4
       (i32.const 0)
      )
      (f32.load offset=8
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
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $ffi)
        (get_local $5)
        (get_local $6)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<f32,f32>|inlined.1
       (set_local $4
        (i32.const 1)
       )
       (f32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
        (get_local $6)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<f32,f32>|inlined.2
       (set_local $4
        (i32.const 0)
       )
       (f32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
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
   (call $~lib/internal/array/insertionSort<f32>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<f32>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<f32>#sort|trampoline~anonymous|43 (; 90 ;) (type $ffi) (param $0 f32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $3
   (i32.reinterpret/f32
    (get_local $1)
   )
  )
  (set_local $2
   (i32.xor
    (get_local $2)
    (i32.shr_u
     (i32.shr_s
      (get_local $2)
      (i32.const 31)
     )
     (i32.const 1)
    )
   )
  )
  (set_local $3
   (i32.xor
    (get_local $3)
    (i32.shr_u
     (i32.shr_s
      (get_local $3)
      (i32.const 31)
     )
     (i32.const 1)
    )
   )
  )
  (i32.sub
   (i32.gt_s
    (get_local $2)
    (get_local $3)
   )
   (i32.lt_s
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $~lib/array/Array<f32>#sort|trampoline (; 91 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (block $~lib/internal/array/defaultComparator<f32>|inlined.0 (result i32)
     (br $~lib/internal/array/defaultComparator<f32>|inlined.0
      (i32.const 43)
     )
    )
   )
  )
  (call $~lib/array/Array<f32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/builtins/isNaN<f32> (; 92 ;) (type $fi) (param $0 f32) (result i32)
  (f32.ne
   (get_local $0)
   (get_local $0)
  )
 )
 (func $std/array/isArraysEqual<f32> (; 93 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (set_local $2
     (block $~lib/array/Array<f32>#get:length|inlined.1 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (if
     (i32.ne
      (get_local $2)
      (block $~lib/array/Array<f32>#get:length|inlined.3 (result i32)
       (i32.load offset=4
        (get_local $1)
       )
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
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (block $continue|0
     (br_if $break|0
      (i32.eqz
       (i32.lt_s
        (get_local $3)
        (get_local $2)
       )
      )
     )
     (block
      (if
       (i32.eq
        (call $~lib/builtins/isNaN<f32>
         (call $~lib/array/Array<f32>#__get
          (get_local $0)
          (get_local $3)
         )
        )
        (call $~lib/builtins/isNaN<f32>
         (call $~lib/array/Array<f32>#__get
          (get_local $1)
          (get_local $3)
         )
        )
       )
       (br $continue|0)
      )
      (if
       (f32.ne
        (call $~lib/array/Array<f32>#__get
         (get_local $0)
         (get_local $3)
        )
        (call $~lib/array/Array<f32>#__get
         (get_local $1)
         (get_local $3)
        )
       )
       (return
        (i32.const 0)
       )
      )
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
  (i32.const 1)
 )
 (func $~lib/internal/array/insertionSort<f64> (; 94 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.0 (result f64)
       (f64.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 3)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.1 (result f64)
            (f64.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 3)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $FFi)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (f64.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 3)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.1
      (set_local $8
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (f64.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $8)
         (i32.const 3)
        )
       )
       (get_local $5)
      )
     )
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
 (func $~lib/internal/array/weakHeapSort<f64> (; 95 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 i32)
  (local $12 f64)
  (set_local $4
   (i32.shl
    (i32.shr_s
     (i32.add
      (get_local $2)
      (i32.const 31)
     )
     (i32.const 5)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (block $~lib/memory/memory.allocate|inlined.2 (result i32)
    (br $~lib/memory/memory.allocate|inlined.2
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $4)
     )
    )
   )
  )
  (block $~lib/memory/memory.fill|inlined.6
   (set_local $6
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $5)
    (get_local $6)
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.gt_s
       (get_local $6)
       (i32.const 0)
      )
     )
    )
    (block
     (set_local $7
      (get_local $6)
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.eq
         (i32.and
          (get_local $7)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $5)
             (i32.shl
              (i32.shr_s
               (get_local $7)
               (i32.const 6)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (i32.shr_s
             (get_local $7)
             (i32.const 1)
            )
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
        (block
         (set_local $7
          (i32.shr_s
           (get_local $7)
           (i32.const 1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (set_local $8
      (i32.shr_s
       (get_local $7)
       (i32.const 1)
      )
     )
     (set_local $9
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.2 (result f64)
       (f64.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 3)
         )
        )
       )
      )
     )
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.3 (result f64)
       (f64.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $6)
          (i32.const 3)
         )
        )
       )
      )
     )
     (if
      (i32.lt_s
       (block (result i32)
        (set_global $~argc
         (i32.const 2)
        )
        (call_indirect (type $FFi)
         (get_local $9)
         (get_local $10)
         (get_local $3)
        )
       )
       (i32.const 0)
      )
      (block
       (i32.store
        (i32.add
         (get_local $5)
         (i32.shl
          (i32.shr_s
           (get_local $6)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
        (i32.xor
         (i32.load
          (i32.add
           (get_local $5)
           (i32.shl
            (i32.shr_s
             (get_local $6)
             (i32.const 5)
            )
            (i32.const 2)
           )
          )
         )
         (i32.shl
          (i32.const 1)
          (i32.and
           (get_local $6)
           (i32.const 31)
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.2
        (f64.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 3)
          )
         )
         (get_local $9)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.3
        (f64.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $8)
           (i32.const 3)
          )
         )
         (get_local $10)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.ge_s
       (get_local $6)
       (i32.const 2)
      )
     )
    )
    (block
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.4 (result f64)
       (set_local $8
        (i32.const 0)
       )
       (f64.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 3)
         )
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.4
      (set_local $8
       (i32.const 0)
      )
      (set_local $9
       (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.5 (result f64)
        (f64.load offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 3)
          )
         )
        )
       )
      )
      (f64.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $8)
         (i32.const 3)
        )
       )
       (get_local $9)
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.5
      (f64.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $6)
         (i32.const 3)
        )
       )
       (get_local $10)
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (block $break|3
      (loop $continue|3
       (if
        (i32.lt_s
         (tee_local $7
          (i32.add
           (i32.shl
            (get_local $8)
            (i32.const 1)
           )
           (i32.and
            (i32.shr_u
             (i32.load
              (i32.add
               (get_local $5)
               (i32.shl
                (i32.shr_s
                 (get_local $8)
                 (i32.const 5)
                )
                (i32.const 2)
               )
              )
             )
             (i32.and
              (get_local $8)
              (i32.const 31)
             )
            )
            (i32.const 1)
           )
          )
         )
         (get_local $6)
        )
        (block
         (set_local $8
          (get_local $7)
         )
         (br $continue|3)
        )
       )
      )
     )
     (block $break|4
      (loop $continue|4
       (if
        (i32.gt_s
         (get_local $8)
         (i32.const 0)
        )
        (block
         (block
          (set_local $10
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.6 (result f64)
            (set_local $11
             (i32.const 0)
            )
            (f64.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $11)
               (i32.const 3)
              )
             )
            )
           )
          )
          (set_local $9
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.7 (result f64)
            (f64.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 3)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $FFi)
              (get_local $10)
              (get_local $9)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block
            (i32.store
             (i32.add
              (get_local $5)
              (i32.shl
               (i32.shr_s
                (get_local $8)
                (i32.const 5)
               )
               (i32.const 2)
              )
             )
             (i32.xor
              (i32.load
               (i32.add
                (get_local $5)
                (i32.shl
                 (i32.shr_s
                  (get_local $8)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
              )
              (i32.shl
               (i32.const 1)
               (i32.and
                (get_local $8)
                (i32.const 31)
               )
              )
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.6
             (f64.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $8)
                (i32.const 3)
               )
              )
              (get_local $10)
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.7
             (set_local $11
              (i32.const 0)
             )
             (f64.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $11)
                (i32.const 3)
               )
              )
              (get_local $9)
             )
            )
           )
          )
          (set_local $8
           (i32.shr_s
            (get_local $8)
            (i32.const 1)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (block $~lib/memory/memory.free|inlined.1
   (block
    (call $~lib/allocator/arena/__memory_free
     (get_local $5)
    )
    (br $~lib/memory/memory.free|inlined.1)
   )
  )
  (set_local $12
   (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.8 (result f64)
    (set_local $6
     (i32.const 1)
    )
    (f64.load offset=8
     (i32.add
      (i32.add
       (get_local $0)
       (get_local $1)
      )
      (i32.shl
       (get_local $6)
       (i32.const 3)
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.8
   (set_local $6
    (i32.const 1)
   )
   (set_local $10
    (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.9 (result f64)
     (set_local $7
      (i32.const 0)
     )
     (f64.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (get_local $7)
        (i32.const 3)
       )
      )
     )
    )
   )
   (f64.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 3)
     )
    )
    (get_local $10)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.9
   (set_local $6
    (i32.const 0)
   )
   (f64.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 3)
     )
    )
    (get_local $12)
   )
  )
 )
 (func $~lib/array/Array<f64>#sort (; 96 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 337)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
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
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.0 (result f64)
      (set_local $4
       (i32.const 1)
      )
      (f64.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $4)
         (i32.const 3)
        )
       )
      )
     )
    )
    (set_local $6
     (block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.1 (result f64)
      (set_local $4
       (i32.const 0)
      )
      (f64.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $4)
         (i32.const 3)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $FFi)
        (get_local $5)
        (get_local $6)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<f64,f64>|inlined.0
       (set_local $4
        (i32.const 1)
       )
       (f64.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $4)
          (i32.const 3)
         )
        )
        (get_local $6)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<f64,f64>|inlined.1
       (set_local $4
        (i32.const 0)
       )
       (f64.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $4)
          (i32.const 3)
         )
        )
        (get_local $5)
       )
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
   (call $~lib/internal/array/insertionSort<f64>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<f64>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<f64>#sort|trampoline~anonymous|44 (; 97 ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  (set_local $2
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $3
   (i64.reinterpret/f64
    (get_local $1)
   )
  )
  (set_local $2
   (i64.xor
    (get_local $2)
    (i64.shr_u
     (i64.shr_s
      (get_local $2)
      (i64.const 63)
     )
     (i64.const 1)
    )
   )
  )
  (set_local $3
   (i64.xor
    (get_local $3)
    (i64.shr_u
     (i64.shr_s
      (get_local $3)
      (i64.const 63)
     )
     (i64.const 1)
    )
   )
  )
  (i32.sub
   (i64.gt_s
    (get_local $2)
    (get_local $3)
   )
   (i64.lt_s
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $~lib/array/Array<f64>#sort|trampoline (; 98 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (block $~lib/internal/array/defaultComparator<f64>|inlined.0 (result i32)
     (br $~lib/internal/array/defaultComparator<f64>|inlined.0
      (i32.const 44)
     )
    )
   )
  )
  (call $~lib/array/Array<f64>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<f64>#__get (; 99 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result f64)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 3)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.2 (result f64)
    (f64.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 3)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/builtins/isNaN<f64> (; 100 ;) (type $Fi) (param $0 f64) (result i32)
  (f64.ne
   (get_local $0)
   (get_local $0)
  )
 )
 (func $std/array/isArraysEqual<f64> (; 101 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (set_local $2
     (block $~lib/array/Array<f64>#get:length|inlined.0 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (if
     (i32.ne
      (get_local $2)
      (block $~lib/array/Array<f64>#get:length|inlined.2 (result i32)
       (i32.load offset=4
        (get_local $1)
       )
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
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (block $continue|0
     (br_if $break|0
      (i32.eqz
       (i32.lt_s
        (get_local $3)
        (get_local $2)
       )
      )
     )
     (block
      (if
       (i32.eq
        (call $~lib/builtins/isNaN<f64>
         (call $~lib/array/Array<f64>#__get
          (get_local $0)
          (get_local $3)
         )
        )
        (call $~lib/builtins/isNaN<f64>
         (call $~lib/array/Array<f64>#__get
          (get_local $1)
          (get_local $3)
         )
        )
       )
       (br $continue|0)
      )
      (if
       (f64.ne
        (call $~lib/array/Array<f64>#__get
         (get_local $0)
         (get_local $3)
        )
        (call $~lib/array/Array<f64>#__get
         (get_local $1)
         (get_local $3)
        )
       )
       (return
        (i32.const 0)
       )
      )
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
  (i32.const 1)
 )
 (func $~lib/internal/array/insertionSort<i32> (; 102 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.1 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (i32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.1
      (set_local $7
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
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
 (func $~lib/internal/array/weakHeapSort<i32> (; 103 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (set_local $4
   (i32.shl
    (i32.shr_s
     (i32.add
      (get_local $2)
      (i32.const 31)
     )
     (i32.const 5)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (block $~lib/memory/memory.allocate|inlined.3 (result i32)
    (br $~lib/memory/memory.allocate|inlined.3
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $4)
     )
    )
   )
  )
  (block $~lib/memory/memory.fill|inlined.7
   (set_local $6
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $5)
    (get_local $6)
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.gt_s
       (get_local $6)
       (i32.const 0)
      )
     )
    )
    (block
     (set_local $7
      (get_local $6)
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.eq
         (i32.and
          (get_local $7)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $5)
             (i32.shl
              (i32.shr_s
               (get_local $7)
               (i32.const 6)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (i32.shr_s
             (get_local $7)
             (i32.const 1)
            )
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
        (block
         (set_local $7
          (i32.shr_s
           (get_local $7)
           (i32.const 1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (set_local $8
      (i32.shr_s
       (get_local $7)
       (i32.const 1)
      )
     )
     (set_local $9
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.2 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.3 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (i32.lt_s
       (block (result i32)
        (set_global $~argc
         (i32.const 2)
        )
        (call_indirect (type $iii)
         (get_local $9)
         (get_local $10)
         (get_local $3)
        )
       )
       (i32.const 0)
      )
      (block
       (i32.store
        (i32.add
         (get_local $5)
         (i32.shl
          (i32.shr_s
           (get_local $6)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
        (i32.xor
         (i32.load
          (i32.add
           (get_local $5)
           (i32.shl
            (i32.shr_s
             (get_local $6)
             (i32.const 5)
            )
            (i32.const 2)
           )
          )
         )
         (i32.shl
          (i32.const 1)
          (i32.and
           (get_local $6)
           (i32.const 31)
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.2
        (i32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
         (get_local $9)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.3
        (i32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $10)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.ge_s
       (get_local $6)
       (i32.const 2)
      )
     )
    )
    (block
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.4 (result i32)
       (set_local $10
        (i32.const 0)
       )
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $10)
          (i32.const 2)
         )
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.4
      (set_local $9
       (i32.const 0)
      )
      (set_local $8
       (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.5 (result i32)
        (i32.load offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
        )
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $9)
         (i32.const 2)
        )
       )
       (get_local $8)
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.5
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $6)
         (i32.const 2)
        )
       )
       (get_local $10)
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (block $break|3
      (loop $continue|3
       (if
        (i32.lt_s
         (tee_local $9
          (i32.add
           (i32.shl
            (get_local $8)
            (i32.const 1)
           )
           (i32.and
            (i32.shr_u
             (i32.load
              (i32.add
               (get_local $5)
               (i32.shl
                (i32.shr_s
                 (get_local $8)
                 (i32.const 5)
                )
                (i32.const 2)
               )
              )
             )
             (i32.and
              (get_local $8)
              (i32.const 31)
             )
            )
            (i32.const 1)
           )
          )
         )
         (get_local $6)
        )
        (block
         (set_local $8
          (get_local $9)
         )
         (br $continue|3)
        )
       )
      )
     )
     (block $break|4
      (loop $continue|4
       (if
        (i32.gt_s
         (get_local $8)
         (i32.const 0)
        )
        (block
         (block
          (set_local $10
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.6 (result i32)
            (set_local $7
             (i32.const 0)
            )
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $7)
               (i32.const 2)
              )
             )
            )
           )
          )
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.7 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $10)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block
            (i32.store
             (i32.add
              (get_local $5)
              (i32.shl
               (i32.shr_s
                (get_local $8)
                (i32.const 5)
               )
               (i32.const 2)
              )
             )
             (i32.xor
              (i32.load
               (i32.add
                (get_local $5)
                (i32.shl
                 (i32.shr_s
                  (get_local $8)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
              )
              (i32.shl
               (i32.const 1)
               (i32.and
                (get_local $8)
                (i32.const 31)
               )
              )
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.6
             (i32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $8)
                (i32.const 2)
               )
              )
              (get_local $10)
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.7
             (set_local $11
              (i32.const 0)
             )
             (i32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $11)
                (i32.const 2)
               )
              )
              (get_local $7)
             )
            )
           )
          )
          (set_local $8
           (i32.shr_s
            (get_local $8)
            (i32.const 1)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (block $~lib/memory/memory.free|inlined.2
   (block
    (call $~lib/allocator/arena/__memory_free
     (get_local $5)
    )
    (br $~lib/memory/memory.free|inlined.2)
   )
  )
  (set_local $12
   (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.8 (result i32)
    (set_local $6
     (i32.const 1)
    )
    (i32.load offset=8
     (i32.add
      (i32.add
       (get_local $0)
       (get_local $1)
      )
      (i32.shl
       (get_local $6)
       (i32.const 2)
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.8
   (set_local $6
    (i32.const 1)
   )
   (set_local $9
    (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.9 (result i32)
     (set_local $9
      (i32.const 0)
     )
     (i32.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (get_local $9)
        (i32.const 2)
       )
      )
     )
    )
   )
   (i32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $9)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.9
   (set_local $9
    (i32.const 0)
   )
   (i32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $9)
      (i32.const 2)
     )
    )
    (get_local $12)
   )
  )
 )
 (func $~lib/array/Array<i32>#sort (; 104 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 337)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
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
    (set_local $4
     (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.21 (result i32)
      (set_local $4
       (i32.const 1)
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
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.22 (result i32)
      (set_local $5
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (get_local $4)
        (get_local $5)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.7
       (set_local $6
        (i32.const 1)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.8
       (set_local $6
        (i32.const 0)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
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
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<i32>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i32>#sort|trampoline~anonymous|45 (; 105 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#sort|trampoline (; 106 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (block $~lib/internal/array/defaultComparator<i32>|inlined.0 (result i32)
     (br $~lib/internal/array/defaultComparator<i32>|inlined.0
      (i32.const 45)
     )
    )
   )
  )
  (call $~lib/array/Array<i32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/isArraysEqual<i32> (; 107 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (set_local $2
     (block $~lib/array/Array<i32>#get:length|inlined.29 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (if
     (i32.ne
      (get_local $2)
      (block $~lib/array/Array<i32>#get:length|inlined.31 (result i32)
       (i32.load offset=4
        (get_local $1)
       )
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
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (if
     (i32.ne
      (call $~lib/array/Array<i32>#__get
       (get_local $0)
       (get_local $3)
      )
      (call $~lib/array/Array<i32>#__get
       (get_local $1)
       (get_local $3)
      )
     )
     (return
      (i32.const 0)
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
  (i32.const 1)
 )
 (func $~lib/internal/array/insertionSort<u32> (; 108 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.1 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (i32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.1
      (set_local $7
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
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
 (func $~lib/internal/array/weakHeapSort<u32> (; 109 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (set_local $4
   (i32.shl
    (i32.shr_s
     (i32.add
      (get_local $2)
      (i32.const 31)
     )
     (i32.const 5)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (block $~lib/memory/memory.allocate|inlined.4 (result i32)
    (br $~lib/memory/memory.allocate|inlined.4
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $4)
     )
    )
   )
  )
  (block $~lib/memory/memory.fill|inlined.8
   (set_local $6
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $5)
    (get_local $6)
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.gt_s
       (get_local $6)
       (i32.const 0)
      )
     )
    )
    (block
     (set_local $7
      (get_local $6)
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.eq
         (i32.and
          (get_local $7)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $5)
             (i32.shl
              (i32.shr_s
               (get_local $7)
               (i32.const 6)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (i32.shr_s
             (get_local $7)
             (i32.const 1)
            )
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
        (block
         (set_local $7
          (i32.shr_s
           (get_local $7)
           (i32.const 1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (set_local $8
      (i32.shr_s
       (get_local $7)
       (i32.const 1)
      )
     )
     (set_local $9
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.2 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.3 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (i32.lt_s
       (block (result i32)
        (set_global $~argc
         (i32.const 2)
        )
        (call_indirect (type $iii)
         (get_local $9)
         (get_local $10)
         (get_local $3)
        )
       )
       (i32.const 0)
      )
      (block
       (i32.store
        (i32.add
         (get_local $5)
         (i32.shl
          (i32.shr_s
           (get_local $6)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
        (i32.xor
         (i32.load
          (i32.add
           (get_local $5)
           (i32.shl
            (i32.shr_s
             (get_local $6)
             (i32.const 5)
            )
            (i32.const 2)
           )
          )
         )
         (i32.shl
          (i32.const 1)
          (i32.and
           (get_local $6)
           (i32.const 31)
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.2
        (i32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
         (get_local $9)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.3
        (i32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $10)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.ge_s
       (get_local $6)
       (i32.const 2)
      )
     )
    )
    (block
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.4 (result i32)
       (set_local $10
        (i32.const 0)
       )
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $10)
          (i32.const 2)
         )
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.4
      (set_local $9
       (i32.const 0)
      )
      (set_local $8
       (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.5 (result i32)
        (i32.load offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
        )
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $9)
         (i32.const 2)
        )
       )
       (get_local $8)
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.5
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $6)
         (i32.const 2)
        )
       )
       (get_local $10)
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (block $break|3
      (loop $continue|3
       (if
        (i32.lt_s
         (tee_local $9
          (i32.add
           (i32.shl
            (get_local $8)
            (i32.const 1)
           )
           (i32.and
            (i32.shr_u
             (i32.load
              (i32.add
               (get_local $5)
               (i32.shl
                (i32.shr_s
                 (get_local $8)
                 (i32.const 5)
                )
                (i32.const 2)
               )
              )
             )
             (i32.and
              (get_local $8)
              (i32.const 31)
             )
            )
            (i32.const 1)
           )
          )
         )
         (get_local $6)
        )
        (block
         (set_local $8
          (get_local $9)
         )
         (br $continue|3)
        )
       )
      )
     )
     (block $break|4
      (loop $continue|4
       (if
        (i32.gt_s
         (get_local $8)
         (i32.const 0)
        )
        (block
         (block
          (set_local $10
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.6 (result i32)
            (set_local $7
             (i32.const 0)
            )
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $7)
               (i32.const 2)
              )
             )
            )
           )
          )
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.7 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $10)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block
            (i32.store
             (i32.add
              (get_local $5)
              (i32.shl
               (i32.shr_s
                (get_local $8)
                (i32.const 5)
               )
               (i32.const 2)
              )
             )
             (i32.xor
              (i32.load
               (i32.add
                (get_local $5)
                (i32.shl
                 (i32.shr_s
                  (get_local $8)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
              )
              (i32.shl
               (i32.const 1)
               (i32.and
                (get_local $8)
                (i32.const 31)
               )
              )
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.6
             (i32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $8)
                (i32.const 2)
               )
              )
              (get_local $10)
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.7
             (set_local $11
              (i32.const 0)
             )
             (i32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $11)
                (i32.const 2)
               )
              )
              (get_local $7)
             )
            )
           )
          )
          (set_local $8
           (i32.shr_s
            (get_local $8)
            (i32.const 1)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (block $~lib/memory/memory.free|inlined.3
   (block
    (call $~lib/allocator/arena/__memory_free
     (get_local $5)
    )
    (br $~lib/memory/memory.free|inlined.3)
   )
  )
  (set_local $12
   (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.8 (result i32)
    (set_local $6
     (i32.const 1)
    )
    (i32.load offset=8
     (i32.add
      (i32.add
       (get_local $0)
       (get_local $1)
      )
      (i32.shl
       (get_local $6)
       (i32.const 2)
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.8
   (set_local $6
    (i32.const 1)
   )
   (set_local $9
    (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.9 (result i32)
     (set_local $9
      (i32.const 0)
     )
     (i32.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (get_local $9)
        (i32.const 2)
       )
      )
     )
    )
   )
   (i32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $9)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.9
   (set_local $9
    (i32.const 0)
   )
   (i32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $9)
      (i32.const 2)
     )
    )
    (get_local $12)
   )
  )
 )
 (func $~lib/array/Array<u32>#sort (; 110 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 337)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
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
    (set_local $4
     (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.1 (result i32)
      (set_local $4
       (i32.const 1)
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
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.2 (result i32)
      (set_local $5
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (get_local $4)
        (get_local $5)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<u32,u32>|inlined.1
       (set_local $6
        (i32.const 1)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<u32,u32>|inlined.2
       (set_local $6
        (i32.const 0)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
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
   (call $~lib/internal/array/insertionSort<u32>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<u32>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<u32>#sort|trampoline~anonymous|46 (; 111 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<u32>#sort|trampoline (; 112 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (block $~lib/internal/array/defaultComparator<u32>|inlined.0 (result i32)
     (br $~lib/internal/array/defaultComparator<u32>|inlined.0
      (i32.const 46)
     )
    )
   )
  )
  (call $~lib/array/Array<u32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/createReverseOrderedArray (; 113 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<i32>#get:length|inlined.33 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $2)
     (i32.sub
      (i32.sub
       (block $~lib/array/Array<i32>#get:length|inlined.34 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (get_local $2)
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
 (func $~lib/math/NativeMath.random (; 114 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
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
  (set_local $1
   (get_global $~lib/math/random_state1)
  )
  (set_global $~lib/math/random_state0
   (get_local $1)
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shl
     (get_local $0)
     (i64.const 23)
    )
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 17)
    )
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (get_local $1)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $1)
     (i64.const 26)
    )
   )
  )
  (set_global $~lib/math/random_state1
   (get_local $0)
  )
  (set_local $2
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
  (f64.sub
   (f64.reinterpret/i64
    (get_local $2)
   )
   (f64.const 1)
  )
 )
 (func $std/array/createRandomOrderedArray (; 115 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<i32>#get:length|inlined.36 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $2)
     (i32.trunc_s/f64
      (f64.mul
       (call $~lib/math/NativeMath.random)
       (f64.convert_s/i32
        (block $~lib/array/Array<i32>#get:length|inlined.37 (result i32)
         (i32.load offset=4
          (get_local $1)
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
 (func $std/array/assertSortedDefault<i32>~anonymous|47 (; 116 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/isSorted<i32> (; 117 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (block $~lib/array/Array<i32>#get:length|inlined.38 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (if
     (i32.gt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (call $~lib/array/Array<i32>#__get
         (get_local $0)
         (i32.sub
          (get_local $2)
          (i32.const 1)
         )
        )
        (call $~lib/array/Array<i32>#__get
         (get_local $0)
         (get_local $2)
        )
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (return
      (i32.const 0)
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
  (i32.const 1)
 )
 (func $std/array/assertSorted<i32> (; 118 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $std/array/assertSortedDefault<i32> (; 119 ;) (type $iv) (param $0 i32)
  (call $std/array/assertSorted<i32>
   (get_local $0)
   (block $~lib/internal/array/defaultComparator<i32>|inlined.1 (result i32)
    (br $~lib/internal/array/defaultComparator<i32>|inlined.1
     (i32.const 47)
    )
   )
  )
 )
 (func $start~anonymous|48 (; 120 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|49 (; 121 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $start~anonymous|50 (; 122 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|51 (; 123 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Array<i32>>#constructor (; 124 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 37)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.9
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Array<i32>>#__set (; 125 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
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
       (i32.const 101)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>,Array<i32>>|inlined.0
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
 )
 (func $~lib/array/Array<Array<i32>>#__get (; 126 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $std/array/createReverseOrderedNestedArray (; 127 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/array/Array<Array<i32>>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<Array<i32>>#get:length|inlined.1 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (block
     (call $~lib/array/Array<Array<i32>>#__set
      (get_local $1)
      (get_local $2)
      (call $~lib/array/Array<i32>#constructor
       (i32.const 0)
       (i32.const 1)
      )
     )
     (call $~lib/array/Array<i32>#__set
      (call $~lib/array/Array<Array<i32>>#__get
       (get_local $1)
       (get_local $2)
      )
      (i32.const 0)
      (i32.sub
       (i32.sub
        (block $~lib/array/Array<Array<i32>>#get:length|inlined.2 (result i32)
         (i32.load offset=4
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (get_local $2)
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
 (func $start~anonymous|52 (; 128 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (call $~lib/array/Array<i32>#__get
    (get_local $0)
    (i32.const 0)
   )
   (call $~lib/array/Array<i32>#__get
    (get_local $1)
    (i32.const 0)
   )
  )
 )
 (func $~lib/internal/array/insertionSort<Array<i32>> (; 129 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.1 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (i32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.1
      (set_local $7
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
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
 (func $~lib/array/Array<Array<i32>>#sort (; 130 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 337)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
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
    (set_local $4
     (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.1 (result i32)
      (set_local $4
       (i32.const 1)
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
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.2 (result i32)
      (set_local $5
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (get_local $4)
        (get_local $5)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>,Array<i32>>|inlined.1
       (set_local $6
        (i32.const 1)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>,Array<i32>>|inlined.2
       (set_local $6
        (i32.const 0)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (call $~lib/internal/array/insertionSort<Array<i32>>
   (get_local $3)
   (i32.const 0)
   (get_local $2)
   (get_local $1)
  )
  (return
   (get_local $0)
  )
 )
 (func $std/array/isSorted<Array<i32>> (; 131 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (block $~lib/array/Array<Array<i32>>#get:length|inlined.3 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (if
     (i32.gt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (call $~lib/array/Array<Array<i32>>#__get
         (get_local $0)
         (i32.sub
          (get_local $2)
          (i32.const 1)
         )
        )
        (call $~lib/array/Array<Array<i32>>#__get
         (get_local $0)
         (get_local $2)
        )
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (return
      (i32.const 0)
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
  (i32.const 1)
 )
 (func $std/array/assertSorted<Array<i32>> (; 132 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $std/array/isSorted<Array<i32>>
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
 (func $~lib/array/Array<Proxy<i32>>#constructor (; 133 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 37)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.10
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $std/array/Proxy<i32>#constructor (; 134 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $2
       (call $~lib/memory/memory.allocate
        (i32.const 4)
       )
      )
      (i32.store
       (get_local $2)
       (get_local $1)
      )
      (get_local $2)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<Proxy<i32>>#__set (; 135 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
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
       (i32.const 101)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>,Proxy<i32>>|inlined.0
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
 )
 (func $std/array/createReverseOrderedElementsArray (; 136 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/array/Array<Proxy<i32>>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<Proxy<i32>>#get:length|inlined.1 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (call $~lib/array/Array<Proxy<i32>>#__set
     (get_local $1)
     (get_local $2)
     (call $std/array/Proxy<i32>#constructor
      (i32.const 0)
      (i32.sub
       (i32.sub
        (block $~lib/array/Array<Proxy<i32>>#get:length|inlined.2 (result i32)
         (i32.load offset=4
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (get_local $2)
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
 (func $start~anonymous|53 (; 137 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.load
    (get_local $0)
   )
   (i32.load
    (get_local $1)
   )
  )
 )
 (func $~lib/internal/array/insertionSort<Proxy<i32>> (; 138 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.1 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (i32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.1
      (set_local $7
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
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
 (func $~lib/array/Array<Proxy<i32>>#sort (; 139 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 337)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
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
    (set_local $4
     (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>,Proxy<i32>>|inlined.0 (result i32)
      (set_local $4
       (i32.const 1)
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
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>,Proxy<i32>>|inlined.1 (result i32)
      (set_local $5
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (get_local $4)
        (get_local $5)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>,Proxy<i32>>|inlined.1
       (set_local $6
        (i32.const 1)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>,Proxy<i32>>|inlined.2
       (set_local $6
        (i32.const 0)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (call $~lib/internal/array/insertionSort<Proxy<i32>>
   (get_local $3)
   (i32.const 0)
   (get_local $2)
   (get_local $1)
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Proxy<i32>>#__get (; 140 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>,Proxy<i32>>|inlined.2 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $std/array/isSorted<Proxy<i32>> (; 141 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (block $~lib/array/Array<Proxy<i32>>#get:length|inlined.3 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (if
     (i32.gt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (call $~lib/array/Array<Proxy<i32>>#__get
         (get_local $0)
         (i32.sub
          (get_local $2)
          (i32.const 1)
         )
        )
        (call $~lib/array/Array<Proxy<i32>>#__get
         (get_local $0)
         (get_local $2)
        )
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (return
      (i32.const 0)
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
  (i32.const 1)
 )
 (func $std/array/assertSorted<Proxy<i32>> (; 142 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $std/array/isSorted<Proxy<i32>>
     (call $~lib/array/Array<Proxy<i32>>#sort
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
 (func $~lib/internal/string/compareUnsafe (; 143 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $5
   (i32.const 0)
  )
  (set_local $6
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (set_local $7
   (i32.add
    (get_local $2)
    (i32.shl
     (get_local $3)
     (i32.const 1)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $4)
      (i32.eqz
       (tee_local $5
        (i32.sub
         (i32.load16_u offset=4
          (get_local $6)
         )
         (i32.load16_u offset=4
          (get_local $7)
         )
        )
       )
      )
      (get_local $4)
     )
     (block
      (block
       (set_local $4
        (i32.sub
         (get_local $4)
         (i32.const 1)
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (set_local $7
        (i32.add
         (get_local $7)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (get_local $5)
 )
 (func $~lib/string/String.__gt (; 144 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (if (result i32)
    (tee_local $2
     (if (result i32)
      (tee_local $2
       (i32.eq
        (get_local $0)
        (get_local $1)
       )
      )
      (get_local $2)
      (i32.eq
       (get_local $0)
       (i32.const 0)
      )
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $4)
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $6
   (select
    (tee_local $2
     (get_local $3)
    )
    (tee_local $5
     (get_local $4)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $5)
    )
   )
  )
  (i32.gt_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $6)
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__lt (; 145 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (if (result i32)
    (tee_local $2
     (if (result i32)
      (tee_local $2
       (i32.eq
        (get_local $0)
        (get_local $1)
       )
      )
      (get_local $2)
      (i32.eq
       (get_local $0)
       (i32.const 0)
      )
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $4)
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
  (set_local $6
   (select
    (tee_local $2
     (get_local $3)
    )
    (tee_local $5
     (get_local $4)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $5)
    )
   )
  )
  (i32.lt_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $6)
   )
   (i32.const 0)
  )
 )
 (func $start~anonymous|54 (; 146 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/internal/array/insertionSort<String> (; 147 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<String,String>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<String,String>|inlined.1 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<String,String>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (i32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<String,String>|inlined.1
      (set_local $7
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
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
 (func $~lib/array/Array<String>#sort (; 148 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 337)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
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
    (set_local $4
     (block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.0 (result i32)
      (set_local $4
       (i32.const 1)
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
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.1 (result i32)
      (set_local $5
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (get_local $4)
        (get_local $5)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<String,String>|inlined.0
       (set_local $6
        (i32.const 1)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<String,String>|inlined.1
       (set_local $6
        (i32.const 0)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (call $~lib/internal/array/insertionSort<String>
   (get_local $3)
   (i32.const 0)
   (get_local $2)
   (get_local $1)
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<String>#__get (; 149 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.2 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $std/array/isSorted<String> (; 150 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (block $~lib/array/Array<String>#get:length|inlined.0 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (if
     (i32.gt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (call $~lib/array/Array<String>#__get
         (get_local $0)
         (i32.sub
          (get_local $2)
          (i32.const 1)
         )
        )
        (call $~lib/array/Array<String>#__get
         (get_local $0)
         (get_local $2)
        )
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (return
      (i32.const 0)
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
  (i32.const 1)
 )
 (func $std/array/assertSorted<String> (; 151 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $std/array/isSorted<String>
     (call $~lib/array/Array<String>#sort
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
 (func $~lib/string/String.__eq (; 152 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
   (if (result i32)
    (tee_local $2
     (i32.eq
      (get_local $0)
      (i32.const 0)
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_local $3)
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
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $3)
   )
  )
 )
 (func $~lib/string/String.__ne (; 153 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $~lib/string/String.__eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $std/array/isArraysEqual<String> (; 154 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (set_local $2
     (block $~lib/array/Array<String>#get:length|inlined.1 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (if
     (i32.ne
      (get_local $2)
      (block $~lib/array/Array<String>#get:length|inlined.3 (result i32)
       (i32.load offset=4
        (get_local $1)
       )
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
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (if
     (call $~lib/string/String.__ne
      (call $~lib/array/Array<String>#__get
       (get_local $0)
       (get_local $3)
      )
      (call $~lib/array/Array<String>#__get
       (get_local $1)
       (get_local $3)
      )
     )
     (return
      (i32.const 0)
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
  (i32.const 1)
 )
 (func $~lib/array/Array<String>#constructor (; 155 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 37)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.11
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/string/allocateUnsafe (; 156 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (i32.gt_s
       (get_local $0)
       (i32.const 0)
      )
     )
     (i32.le_s
      (get_local $0)
      (get_global $~lib/internal/string/MAX_LENGTH)
     )
     (get_local $1)
    )
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
  (set_local $2
   (block $~lib/memory/memory.allocate|inlined.5 (result i32)
    (set_local $1
     (i32.add
      (get_global $~lib/internal/string/HEADER_SIZE)
      (i32.shl
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (br $~lib/memory/memory.allocate|inlined.5
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $1)
     )
    )
   )
  )
  (i32.store
   (get_local $2)
   (get_local $0)
  )
  (get_local $2)
 )
 (func $~lib/string/String#charAt (; 157 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1616)
     (i32.const 54)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $2
   (call $~lib/internal/string/allocateUnsafe
    (i32.const 1)
   )
  )
  (i32.store16 offset=4
   (get_local $2)
   (i32.load16_u offset=4
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/string/copyUnsafe (; 158 ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $~lib/memory/memory.copy|inlined.4
   (set_local $5
    (i32.add
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   (set_local $6
    (i32.add
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   (set_local $7
    (i32.shl
     (get_local $4)
     (i32.const 1)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $5)
    (get_local $6)
    (get_local $7)
   )
  )
 )
 (func $~lib/string/String#concat (; 159 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
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
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 1704)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (set_local $4
   (i32.add
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $5
   (call $~lib/internal/string/allocateUnsafe
    (get_local $4)
   )
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $5)
   (i32.const 0)
   (get_local $0)
   (i32.const 0)
   (get_local $2)
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $5)
   (get_local $2)
   (get_local $1)
   (i32.const 0)
   (get_local $3)
  )
  (get_local $5)
 )
 (func $~lib/string/String.__concat (; 160 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/createRandomString (; 161 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (set_local $1
   (i32.const 1464)
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $0)
      )
     )
    )
    (set_local $1
     (call $~lib/string/String.__concat
      (get_local $1)
      (call $~lib/string/String#charAt
       (get_global $std/array/charset)
       (i32.trunc_s/f64
        (block $~lib/math/NativeMath.floor|inlined.0 (result f64)
         (set_local $3
          (f64.mul
           (call $~lib/math/NativeMath.random)
           (f64.convert_s/i32
            (i32.load
             (get_global $std/array/charset)
            )
           )
          )
         )
         (f64.floor
          (get_local $3)
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
 (func $~lib/array/Array<String>#__set (; 162 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
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
       (i32.const 101)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<String,String>|inlined.2
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
 )
 (func $std/array/createRandomStringArray (; 163 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/array/Array<String>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<String>#get:length|inlined.5 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (call $~lib/array/Array<String>#__set
     (get_local $1)
     (get_local $2)
     (call $std/array/createRandomString
      (i32.trunc_s/f64
       (f64.mul
        (call $~lib/math/NativeMath.random)
        (f64.const 32)
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
 (func $start~anonymous|55 (; 164 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String#substring (; 165 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
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
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (select
    (tee_local $4
     (select
      (tee_local $4
       (get_local $1)
      )
      (tee_local $5
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $4)
       (get_local $5)
      )
     )
    )
    (tee_local $5
     (get_local $3)
    )
    (i32.lt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (set_local $7
   (select
    (tee_local $4
     (select
      (tee_local $4
       (get_local $2)
      )
      (tee_local $5
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $4)
       (get_local $5)
      )
     )
    )
    (tee_local $5
     (get_local $3)
    )
    (i32.lt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (set_local $8
   (select
    (tee_local $4
     (get_local $6)
    )
    (tee_local $5
     (get_local $7)
    )
    (i32.lt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (set_local $9
   (select
    (tee_local $4
     (get_local $6)
    )
    (tee_local $5
     (get_local $7)
    )
    (i32.gt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (set_local $3
   (i32.sub
    (get_local $9)
    (get_local $8)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const 1464)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.eqz
      (get_local $8)
     )
    )
    (i32.eq
     (get_local $9)
     (i32.load
      (get_local $0)
     )
    )
    (get_local $4)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $10
   (call $~lib/internal/string/allocateUnsafe
    (get_local $3)
   )
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $10)
   (i32.const 0)
   (get_local $0)
   (get_local $8)
   (get_local $3)
  )
  (get_local $10)
 )
 (func $~lib/array/Array<bool>#join (; 166 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (select
     (i32.const 1744)
     (i32.const 1760)
     (i32.and
      (block $~lib/internal/arraybuffer/loadUnsafe<bool,bool>|inlined.0 (result i32)
       (set_local $8
        (i32.const 0)
       )
       (i32.load8_u offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $8)
          (i32.const 0)
         )
        )
       )
      )
      (i32.const 1)
     )
    )
   )
  )
  (set_local $8
   (i32.const 5)
  )
  (set_local $9
   (i32.add
    (i32.mul
     (i32.add
      (get_local $8)
      (get_local $6)
     )
     (get_local $2)
    )
    (get_local $8)
   )
  )
  (set_local $10
   (call $~lib/internal/string/allocateUnsafe
    (get_local $9)
   )
  )
  (set_local $11
   (i32.const 0)
  )
  (block $break|0
   (set_local $12
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $12)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<bool,bool>|inlined.1 (result i32)
       (i32.load8_u offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $12)
          (i32.const 0)
         )
        )
       )
      )
     )
     (set_local $8
      (i32.add
       (i32.const 4)
       (i32.eqz
        (i32.and
         (get_local $4)
         (i32.const 1)
        )
       )
      )
     )
     (call $~lib/internal/string/copyUnsafe
      (get_local $10)
      (get_local $11)
      (select
       (i32.const 1744)
       (i32.const 1760)
       (i32.and
        (get_local $4)
        (i32.const 1)
       )
      )
      (i32.const 0)
      (get_local $8)
     )
     (set_local $11
      (i32.add
       (get_local $11)
       (get_local $8)
      )
     )
     (if
      (get_local $7)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $10)
        (get_local $11)
        (get_local $1)
        (i32.const 0)
        (get_local $6)
       )
       (set_local $11
        (i32.add
         (get_local $11)
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $12
     (i32.add
      (get_local $12)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<bool,bool>|inlined.2 (result i32)
    (i32.load8_u offset=8
     (i32.add
      (get_local $5)
      (i32.shl
       (get_local $2)
       (i32.const 0)
      )
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (i32.const 4)
    (i32.eqz
     (i32.and
      (get_local $4)
      (i32.const 1)
     )
    )
   )
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $10)
   (get_local $11)
   (select
    (i32.const 1744)
    (i32.const 1760)
    (i32.and
     (get_local $4)
     (i32.const 1)
    )
   )
   (i32.const 0)
   (get_local $8)
  )
  (set_local $11
   (i32.add
    (get_local $11)
    (get_local $8)
   )
  )
  (set_local $12
   (get_local $10)
  )
  (if
   (i32.gt_s
    (get_local $9)
    (get_local $11)
   )
   (block
    (set_local $12
     (call $~lib/string/String#substring
      (get_local $10)
      (i32.const 0)
      (get_local $11)
     )
    )
    (block $~lib/internal/string/freeUnsafe|inlined.0
     (block
      (if
       (i32.eqz
        (get_local $10)
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
      (block $~lib/memory/memory.free|inlined.4
       (block
        (call $~lib/allocator/arena/__memory_free
         (get_local $10)
        )
        (br $~lib/memory/memory.free|inlined.4)
       )
      )
     )
    )
   )
  )
  (return
   (get_local $12)
  )
 )
 (func $~lib/internal/number/decimalCount32 (; 167 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.lt_u
    (get_local $0)
    (i32.const 100000)
   )
   (block
    (if
     (i32.lt_u
      (get_local $0)
      (i32.const 100)
     )
     (return
      (select
       (i32.const 1)
       (i32.const 2)
       (i32.lt_u
        (get_local $0)
        (i32.const 10)
       )
      )
     )
     (block
      (set_local $1
       (select
        (i32.const 4)
        (i32.const 5)
        (i32.lt_u
         (get_local $0)
         (i32.const 10000)
        )
       )
      )
      (return
       (select
        (i32.const 3)
        (get_local $1)
        (i32.lt_u
         (get_local $0)
         (i32.const 1000)
        )
       )
      )
     )
    )
    (unreachable)
   )
   (block
    (if
     (i32.lt_u
      (get_local $0)
      (i32.const 10000000)
     )
     (return
      (select
       (i32.const 6)
       (i32.const 7)
       (i32.lt_u
        (get_local $0)
        (i32.const 1000000)
       )
      )
     )
     (block
      (set_local $1
       (select
        (i32.const 9)
        (i32.const 10)
        (i32.lt_u
         (get_local $0)
         (i32.const 1000000000)
        )
       )
      )
      (return
       (select
        (i32.const 8)
        (get_local $1)
        (i32.lt_u
         (get_local $0)
         (i32.const 100000000)
        )
       )
      )
     )
    )
    (unreachable)
   )
  )
  (unreachable)
 )
 (func $~lib/internal/number/utoa32_lut (; 168 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (set_local $3
   (i32.load
    (block $~lib/internal/number/DIGITS|inlined.0 (result i32)
     (i32.const 2392)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 10000)
     )
     (block
      (block
       (set_local $4
        (i32.div_u
         (get_local $1)
         (i32.const 10000)
        )
       )
       (set_local $5
        (i32.rem_u
         (get_local $1)
         (i32.const 10000)
        )
       )
       (set_local $1
        (get_local $4)
       )
       (set_local $6
        (i32.div_u
         (get_local $5)
         (i32.const 100)
        )
       )
       (set_local $7
        (i32.rem_u
         (get_local $5)
         (i32.const 100)
        )
       )
       (set_local $8
        (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.0 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $6)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $9
        (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.1 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $7)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 4)
        )
       )
       (i64.store offset=4
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $2)
          (i32.const 1)
         )
        )
        (i64.or
         (get_local $8)
         (i64.shl
          (get_local $9)
          (i64.const 32)
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 100)
   )
   (block
    (set_local $7
     (i32.div_u
      (get_local $1)
      (i32.const 100)
     )
    )
    (set_local $6
     (i32.rem_u
      (get_local $1)
      (i32.const 100)
     )
    )
    (set_local $1
     (get_local $7)
    )
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 2)
     )
    )
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.3 (result i32)
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $6)
         (i32.const 2)
        )
       )
      )
     )
    )
    (i32.store offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 10)
   )
   (block
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 2)
     )
    )
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.4 (result i32)
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
    )
    (i32.store offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
   )
   (block
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (set_local $5
     (i32.add
      (get_global $~lib/internal/string/CharCode._0)
      (get_local $1)
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
     (get_local $5)
    )
   )
  )
 )
 (func $~lib/internal/number/itoa32 (; 169 ;) (type $ii) (param $0 i32) (result i32)
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
  (set_local $1
   (i32.lt_s
    (get_local $0)
    (i32.const 0)
   )
  )
  (if
   (get_local $1)
   (set_local $0
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
   )
  )
  (set_local $2
   (i32.add
    (call $~lib/internal/number/decimalCount32
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/internal/string/allocateUnsafe
    (get_local $2)
   )
  )
  (block $~lib/internal/number/utoa32_core|inlined.0
   (call $~lib/internal/number/utoa32_lut
    (get_local $3)
    (get_local $0)
    (get_local $2)
   )
  )
  (if
   (get_local $1)
   (i32.store16 offset=4
    (get_local $3)
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
  )
  (get_local $3)
 )
 (func $~lib/internal/number/itoa<i32> (; 170 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/number/itoa32
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/number/itoa_stream<i32> (; 171 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (i32.store16 offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/CharCode._0)
    )
    (return
     (i32.const 1)
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (set_local $4
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
  )
  (if
   (get_local $4)
   (set_local $2
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
  )
  (set_local $3
   (i32.add
    (call $~lib/internal/number/decimalCount32
     (get_local $2)
    )
    (get_local $4)
   )
  )
  (block $~lib/internal/number/utoa32_core|inlined.1
   (set_local $5
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/internal/number/utoa32_lut
    (get_local $5)
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (get_local $4)
   (i32.store16 offset=4
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
  )
  (get_local $3)
 )
 (func $~lib/array/Array<i32>#join (; 172 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (call $~lib/internal/number/itoa<i32>
     (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.23 (result i32)
      (set_local $8
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $5)
        (i32.shl
         (get_local $8)
         (i32.const 2)
        )
       )
      )
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (i32.const 10)
    (i32.const 1)
   )
  )
  (set_local $9
   (i32.add
    (i32.mul
     (i32.add
      (get_local $8)
      (get_local $6)
     )
     (get_local $2)
    )
    (get_local $8)
   )
  )
  (set_local $10
   (call $~lib/internal/string/allocateUnsafe
    (get_local $9)
   )
  )
  (set_local $11
   (i32.const 0)
  )
  (block $break|0
   (set_local $12
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $12)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.24 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $12)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $11
      (i32.add
       (get_local $11)
       (call $~lib/internal/number/itoa_stream<i32>
        (get_local $10)
        (get_local $11)
        (get_local $4)
       )
      )
     )
     (if
      (get_local $7)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $10)
        (get_local $11)
        (get_local $1)
        (i32.const 0)
        (get_local $6)
       )
       (set_local $11
        (i32.add
         (get_local $11)
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $12
     (i32.add
      (get_local $12)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.25 (result i32)
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
  )
  (set_local $11
   (i32.add
    (get_local $11)
    (call $~lib/internal/number/itoa_stream<i32>
     (get_local $10)
     (get_local $11)
     (get_local $4)
    )
   )
  )
  (set_local $12
   (get_local $10)
  )
  (if
   (i32.gt_s
    (get_local $9)
    (get_local $11)
   )
   (block
    (set_local $12
     (call $~lib/string/String#substring
      (get_local $10)
      (i32.const 0)
      (get_local $11)
     )
    )
    (block $~lib/internal/string/freeUnsafe|inlined.1
     (block
      (if
       (i32.eqz
        (get_local $10)
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
      (block $~lib/memory/memory.free|inlined.5
       (block
        (call $~lib/allocator/arena/__memory_free
         (get_local $10)
        )
        (br $~lib/memory/memory.free|inlined.5)
       )
      )
     )
    )
   )
  )
  (return
   (get_local $12)
  )
 )
 (func $~lib/internal/number/utoa32 (; 173 ;) (type $ii) (param $0 i32) (result i32)
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
  (set_local $1
   (call $~lib/internal/number/decimalCount32
    (get_local $0)
   )
  )
  (set_local $2
   (call $~lib/internal/string/allocateUnsafe
    (get_local $1)
   )
  )
  (block $~lib/internal/number/utoa32_core|inlined.2
   (call $~lib/internal/number/utoa32_lut
    (get_local $2)
    (get_local $0)
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/number/itoa<u32> (; 174 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/number/utoa32
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/number/itoa_stream<u32> (; 175 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (i32.store16 offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/CharCode._0)
    )
    (return
     (i32.const 1)
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (set_local $3
   (call $~lib/internal/number/decimalCount32
    (get_local $2)
   )
  )
  (block $~lib/internal/number/utoa32_core|inlined.3
   (set_local $4
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/internal/number/utoa32_lut
    (get_local $4)
    (get_local $2)
    (get_local $3)
   )
  )
  (get_local $3)
 )
 (func $~lib/array/Array<u32>#join (; 176 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (call $~lib/internal/number/itoa<u32>
     (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.5 (result i32)
      (set_local $8
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $5)
        (i32.shl
         (get_local $8)
         (i32.const 2)
        )
       )
      )
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (i32.const 10)
    (i32.const 0)
   )
  )
  (set_local $9
   (i32.add
    (i32.mul
     (i32.add
      (get_local $8)
      (get_local $6)
     )
     (get_local $2)
    )
    (get_local $8)
   )
  )
  (set_local $10
   (call $~lib/internal/string/allocateUnsafe
    (get_local $9)
   )
  )
  (set_local $11
   (i32.const 0)
  )
  (block $break|0
   (set_local $12
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $12)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.6 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $12)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $11
      (i32.add
       (get_local $11)
       (call $~lib/internal/number/itoa_stream<u32>
        (get_local $10)
        (get_local $11)
        (get_local $4)
       )
      )
     )
     (if
      (get_local $7)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $10)
        (get_local $11)
        (get_local $1)
        (i32.const 0)
        (get_local $6)
       )
       (set_local $11
        (i32.add
         (get_local $11)
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $12
     (i32.add
      (get_local $12)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.7 (result i32)
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
  )
  (set_local $11
   (i32.add
    (get_local $11)
    (call $~lib/internal/number/itoa_stream<u32>
     (get_local $10)
     (get_local $11)
     (get_local $4)
    )
   )
  )
  (set_local $12
   (get_local $10)
  )
  (if
   (i32.gt_s
    (get_local $9)
    (get_local $11)
   )
   (block
    (set_local $12
     (call $~lib/string/String#substring
      (get_local $10)
      (i32.const 0)
      (get_local $11)
     )
    )
    (block $~lib/internal/string/freeUnsafe|inlined.2
     (block
      (if
       (i32.eqz
        (get_local $10)
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
      (block $~lib/memory/memory.free|inlined.6
       (block
        (call $~lib/allocator/arena/__memory_free
         (get_local $10)
        )
        (br $~lib/memory/memory.free|inlined.6)
       )
      )
     )
    )
   )
  )
  (return
   (get_local $12)
  )
 )
 (func $~lib/builtins/isFinite<f64> (; 177 ;) (type $Fi) (param $0 f64) (result i32)
  (f64.eq
   (f64.sub
    (get_local $0)
    (get_local $0)
   )
   (f64.const 0)
  )
 )
 (func $~lib/internal/number/genDigits (; 178 ;) (type $iIiIiIii) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  (local $21 i32)
  (local $22 i32)
  (set_local $7
   (i32.sub
    (i32.const 0)
    (get_local $4)
   )
  )
  (set_local $8
   (i64.shl
    (i64.const 1)
    (i64.extend_s/i32
     (get_local $7)
    )
   )
  )
  (set_local $9
   (i64.sub
    (get_local $8)
    (i64.const 1)
   )
  )
  (set_local $10
   (i64.sub
    (get_local $3)
    (get_local $1)
   )
  )
  (set_local $11
   (get_local $4)
  )
  (set_local $12
   (i32.wrap/i64
    (i64.shr_u
     (get_local $3)
     (i64.extend_s/i32
      (get_local $7)
     )
    )
   )
  )
  (set_local $13
   (i64.and
    (get_local $3)
    (get_local $9)
   )
  )
  (set_local $14
   (call $~lib/internal/number/decimalCount32
    (get_local $12)
   )
  )
  (set_local $15
   (get_local $6)
  )
  (set_local $16
   (i32.load
    (block $~lib/internal/number/POWERS10|inlined.0 (result i32)
     (i32.const 4176)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.gt_s
      (get_local $14)
      (i32.const 0)
     )
     (block
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
                  (block $case0|1
                   (set_local $18
                    (get_local $14)
                   )
                   (br_if $case0|1
                    (i32.eq
                     (get_local $18)
                     (i32.const 10)
                    )
                   )
                   (br_if $case1|1
                    (i32.eq
                     (get_local $18)
                     (i32.const 9)
                    )
                   )
                   (br_if $case2|1
                    (i32.eq
                     (get_local $18)
                     (i32.const 8)
                    )
                   )
                   (br_if $case3|1
                    (i32.eq
                     (get_local $18)
                     (i32.const 7)
                    )
                   )
                   (br_if $case4|1
                    (i32.eq
                     (get_local $18)
                     (i32.const 6)
                    )
                   )
                   (br_if $case5|1
                    (i32.eq
                     (get_local $18)
                     (i32.const 5)
                    )
                   )
                   (br_if $case6|1
                    (i32.eq
                     (get_local $18)
                     (i32.const 4)
                    )
                   )
                   (br_if $case7|1
                    (i32.eq
                     (get_local $18)
                     (i32.const 3)
                    )
                   )
                   (br_if $case8|1
                    (i32.eq
                     (get_local $18)
                     (i32.const 2)
                    )
                   )
                   (br_if $case9|1
                    (i32.eq
                     (get_local $18)
                     (i32.const 1)
                    )
                   )
                   (br $case10|1)
                  )
                  (block
                   (set_local $17
                    (i32.div_u
                     (get_local $12)
                     (i32.const 1000000000)
                    )
                   )
                   (set_local $12
                    (i32.rem_u
                     (get_local $12)
                     (i32.const 1000000000)
                    )
                   )
                   (br $break|1)
                  )
                 )
                 (block
                  (set_local $17
                   (i32.div_u
                    (get_local $12)
                    (i32.const 100000000)
                   )
                  )
                  (set_local $12
                   (i32.rem_u
                    (get_local $12)
                    (i32.const 100000000)
                   )
                  )
                  (br $break|1)
                 )
                )
                (block
                 (set_local $17
                  (i32.div_u
                   (get_local $12)
                   (i32.const 10000000)
                  )
                 )
                 (set_local $12
                  (i32.rem_u
                   (get_local $12)
                   (i32.const 10000000)
                  )
                 )
                 (br $break|1)
                )
               )
               (block
                (set_local $17
                 (i32.div_u
                  (get_local $12)
                  (i32.const 1000000)
                 )
                )
                (set_local $12
                 (i32.rem_u
                  (get_local $12)
                  (i32.const 1000000)
                 )
                )
                (br $break|1)
               )
              )
              (block
               (set_local $17
                (i32.div_u
                 (get_local $12)
                 (i32.const 100000)
                )
               )
               (set_local $12
                (i32.rem_u
                 (get_local $12)
                 (i32.const 100000)
                )
               )
               (br $break|1)
              )
             )
             (block
              (set_local $17
               (i32.div_u
                (get_local $12)
                (i32.const 10000)
               )
              )
              (set_local $12
               (i32.rem_u
                (get_local $12)
                (i32.const 10000)
               )
              )
              (br $break|1)
             )
            )
            (block
             (set_local $17
              (i32.div_u
               (get_local $12)
               (i32.const 1000)
              )
             )
             (set_local $12
              (i32.rem_u
               (get_local $12)
               (i32.const 1000)
              )
             )
             (br $break|1)
            )
           )
           (block
            (set_local $17
             (i32.div_u
              (get_local $12)
              (i32.const 100)
             )
            )
            (set_local $12
             (i32.rem_u
              (get_local $12)
              (i32.const 100)
             )
            )
            (br $break|1)
           )
          )
          (block
           (set_local $17
            (i32.div_u
             (get_local $12)
             (i32.const 10)
            )
           )
           (set_local $12
            (i32.rem_u
             (get_local $12)
             (i32.const 10)
            )
           )
           (br $break|1)
          )
         )
         (block
          (set_local $17
           (get_local $12)
          )
          (set_local $12
           (i32.const 0)
          )
          (br $break|1)
         )
        )
        (block
         (set_local $17
          (i32.const 0)
         )
         (br $break|1)
        )
       )
       (if
        (i32.or
         (get_local $17)
         (get_local $15)
        )
        (i32.store16 offset=4
         (i32.add
          (get_local $0)
          (i32.shl
           (block (result i32)
            (set_local $18
             (get_local $15)
            )
            (set_local $15
             (i32.add
              (get_local $18)
              (i32.const 1)
             )
            )
            (get_local $18)
           )
           (i32.const 1)
          )
         )
         (i32.add
          (get_global $~lib/internal/string/CharCode._0)
          (i32.and
           (get_local $17)
           (i32.const 65535)
          )
         )
        )
       )
       (set_local $14
        (i32.sub
         (get_local $14)
         (i32.const 1)
        )
       )
       (set_local $19
        (i64.add
         (i64.shl
          (i64.extend_u/i32
           (get_local $12)
          )
          (i64.extend_s/i32
           (get_local $7)
          )
         )
         (get_local $13)
        )
       )
       (if
        (i64.le_u
         (get_local $19)
         (get_local $5)
        )
        (block
         (set_global $~lib/internal/number/_K
          (i32.add
           (get_global $~lib/internal/number/_K)
           (get_local $14)
          )
         )
         (block $~lib/internal/number/grisuRound|inlined.0
          (set_local $20
           (i64.shl
            (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.2 (result i64)
             (i64.load32_u offset=8
              (i32.add
               (get_local $16)
               (i32.shl
                (get_local $14)
                (i32.const 2)
               )
              )
             )
            )
            (i64.extend_s/i32
             (get_local $7)
            )
           )
          )
          (set_local $18
           (i32.add
            (get_local $0)
            (i32.shl
             (i32.sub
              (get_local $15)
              (i32.const 1)
             )
             (i32.const 1)
            )
           )
          )
          (set_local $21
           (i32.load16_u offset=4
            (get_local $18)
           )
          )
          (block $break|2
           (loop $continue|2
            (if
             (if (result i32)
              (tee_local $22
               (if (result i32)
                (tee_local $22
                 (i64.lt_u
                  (get_local $19)
                  (get_local $10)
                 )
                )
                (i64.ge_u
                 (i64.sub
                  (get_local $5)
                  (get_local $19)
                 )
                 (get_local $20)
                )
                (get_local $22)
               )
              )
              (if (result i32)
               (tee_local $22
                (i64.lt_u
                 (i64.add
                  (get_local $19)
                  (get_local $20)
                 )
                 (get_local $10)
                )
               )
               (get_local $22)
               (i64.gt_u
                (i64.sub
                 (get_local $10)
                 (get_local $19)
                )
                (i64.sub
                 (i64.add
                  (get_local $19)
                  (get_local $20)
                 )
                 (get_local $10)
                )
               )
              )
              (get_local $22)
             )
             (block
              (block
               (set_local $21
                (i32.sub
                 (get_local $21)
                 (i32.const 1)
                )
               )
               (set_local $19
                (i64.add
                 (get_local $19)
                 (get_local $20)
                )
               )
              )
              (br $continue|2)
             )
            )
           )
          )
          (i32.store16 offset=4
           (get_local $18)
           (get_local $21)
          )
         )
         (return
          (get_local $15)
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (block $break|3
   (loop $continue|3
    (if
     (i32.const 1)
     (block
      (block
       (set_local $13
        (i64.mul
         (get_local $13)
         (i64.const 10)
        )
       )
       (set_local $5
        (i64.mul
         (get_local $5)
         (i64.const 10)
        )
       )
       (set_local $19
        (i64.shr_u
         (get_local $13)
         (i64.extend_s/i32
          (get_local $7)
         )
        )
       )
       (if
        (i64.ne
         (i64.or
          (get_local $19)
          (i64.extend_s/i32
           (get_local $15)
          )
         )
         (i64.const 0)
        )
        (i32.store16 offset=4
         (i32.add
          (get_local $0)
          (i32.shl
           (block (result i32)
            (set_local $17
             (get_local $15)
            )
            (set_local $15
             (i32.add
              (get_local $17)
              (i32.const 1)
             )
            )
            (get_local $17)
           )
           (i32.const 1)
          )
         )
         (i32.add
          (get_global $~lib/internal/string/CharCode._0)
          (i32.and
           (i32.wrap/i64
            (get_local $19)
           )
           (i32.const 65535)
          )
         )
        )
       )
       (set_local $13
        (i64.and
         (get_local $13)
         (get_local $9)
        )
       )
       (set_local $14
        (i32.sub
         (get_local $14)
         (i32.const 1)
        )
       )
       (if
        (i64.lt_u
         (get_local $13)
         (get_local $5)
        )
        (block
         (set_global $~lib/internal/number/_K
          (i32.add
           (get_global $~lib/internal/number/_K)
           (get_local $14)
          )
         )
         (set_local $10
          (i64.mul
           (get_local $10)
           (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.3 (result i64)
            (set_local $17
             (i32.sub
              (i32.const 0)
              (get_local $14)
             )
            )
            (i64.load32_u offset=8
             (i32.add
              (get_local $16)
              (i32.shl
               (get_local $17)
               (i32.const 2)
              )
             )
            )
           )
          )
         )
         (block $~lib/internal/number/grisuRound|inlined.1
          (set_local $17
           (i32.add
            (get_local $0)
            (i32.shl
             (i32.sub
              (get_local $15)
              (i32.const 1)
             )
             (i32.const 1)
            )
           )
          )
          (set_local $21
           (i32.load16_u offset=4
            (get_local $17)
           )
          )
          (block $break|4
           (loop $continue|4
            (if
             (if (result i32)
              (tee_local $18
               (if (result i32)
                (tee_local $18
                 (i64.lt_u
                  (get_local $13)
                  (get_local $10)
                 )
                )
                (i64.ge_u
                 (i64.sub
                  (get_local $5)
                  (get_local $13)
                 )
                 (get_local $8)
                )
                (get_local $18)
               )
              )
              (if (result i32)
               (tee_local $18
                (i64.lt_u
                 (i64.add
                  (get_local $13)
                  (get_local $8)
                 )
                 (get_local $10)
                )
               )
               (get_local $18)
               (i64.gt_u
                (i64.sub
                 (get_local $10)
                 (get_local $13)
                )
                (i64.sub
                 (i64.add
                  (get_local $13)
                  (get_local $8)
                 )
                 (get_local $10)
                )
               )
              )
              (get_local $18)
             )
             (block
              (block
               (set_local $21
                (i32.sub
                 (get_local $21)
                 (i32.const 1)
                )
               )
               (set_local $13
                (i64.add
                 (get_local $13)
                 (get_local $8)
                )
               )
              )
              (br $continue|4)
             )
            )
           )
          )
          (i32.store16 offset=4
           (get_local $17)
           (get_local $21)
          )
         )
         (return
          (get_local $15)
         )
        )
       )
      )
      (br $continue|3)
     )
    )
   )
  )
  (get_local $15)
 )
 (func $~lib/internal/number/prettify (; 179 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
     (i32.or
      (get_global $~lib/internal/string/CharCode.DOT)
      (i32.shl
       (get_global $~lib/internal/string/CharCode._0)
       (i32.const 16)
      )
     )
    )
    (return
     (i32.add
      (get_local $1)
      (i32.const 2)
     )
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.le_s
      (get_local $1)
      (get_local $3)
     )
    )
    (i32.le_s
     (get_local $3)
     (i32.const 21)
    )
    (get_local $4)
   )
   (block
    (block $break|0
     (set_local $4
      (get_local $1)
     )
     (loop $repeat|0
      (br_if $break|0
       (i32.eqz
        (i32.lt_s
         (get_local $4)
         (get_local $3)
        )
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
       (get_global $~lib/internal/string/CharCode._0)
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
    (i32.store offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $3)
       (i32.const 1)
      )
     )
     (i32.or
      (get_global $~lib/internal/string/CharCode.DOT)
      (i32.shl
       (get_global $~lib/internal/string/CharCode._0)
       (i32.const 16)
      )
     )
    )
    (return
     (i32.add
      (get_local $3)
      (i32.const 2)
     )
    )
   )
   (if
    (if (result i32)
     (tee_local $4
      (i32.gt_s
       (get_local $3)
       (i32.const 0)
      )
     )
     (i32.le_s
      (get_local $3)
      (i32.const 21)
     )
     (get_local $4)
    )
    (block
     (set_local $4
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
     )
     (block $~lib/memory/memory.copy|inlined.5
      (set_local $5
       (i32.add
        (i32.add
         (get_local $4)
         (get_global $~lib/internal/string/HEADER_SIZE)
        )
        (i32.const 2)
       )
      )
      (set_local $6
       (i32.add
        (get_local $4)
        (get_global $~lib/internal/string/HEADER_SIZE)
       )
      )
      (set_local $7
       (i32.shl
        (i32.sub
         (i32.const 0)
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (call $~lib/internal/memory/memmove
       (get_local $5)
       (get_local $6)
       (get_local $7)
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
      (get_global $~lib/internal/string/CharCode.DOT)
     )
     (return
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (if
     (if (result i32)
      (tee_local $4
       (i32.lt_s
        (i32.const -6)
        (get_local $3)
       )
      )
      (i32.le_s
       (get_local $3)
       (i32.const 0)
      )
      (get_local $4)
     )
     (block
      (set_local $4
       (i32.sub
        (i32.const 2)
        (get_local $3)
       )
      )
      (block $~lib/memory/memory.copy|inlined.6
       (set_local $7
        (i32.add
         (i32.add
          (get_local $0)
          (get_global $~lib/internal/string/HEADER_SIZE)
         )
         (i32.shl
          (get_local $4)
          (i32.const 1)
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $0)
         (get_global $~lib/internal/string/HEADER_SIZE)
        )
       )
       (set_local $5
        (i32.shl
         (get_local $1)
         (i32.const 1)
        )
       )
       (call $~lib/internal/memory/memmove
        (get_local $7)
        (get_local $6)
        (get_local $5)
       )
      )
      (i32.store offset=4
       (get_local $0)
       (i32.or
        (get_global $~lib/internal/string/CharCode._0)
        (i32.shl
         (get_global $~lib/internal/string/CharCode.DOT)
         (i32.const 16)
        )
       )
      )
      (block $break|1
       (set_local $5
        (i32.const 2)
       )
       (loop $repeat|1
        (br_if $break|1
         (i32.eqz
          (i32.lt_s
           (get_local $5)
           (get_local $4)
          )
         )
        )
        (i32.store16 offset=4
         (i32.add
          (get_local $0)
          (i32.shl
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_global $~lib/internal/string/CharCode._0)
        )
        (set_local $5
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (br $repeat|1)
       )
      )
      (return
       (i32.add
        (get_local $1)
        (get_local $4)
       )
      )
     )
     (if
      (i32.eq
       (get_local $1)
       (i32.const 1)
      )
      (block
       (i32.store16 offset=6
        (get_local $0)
        (get_global $~lib/internal/string/CharCode.e)
       )
       (set_local $1
        (block $~lib/internal/number/genExponent|inlined.0 (result i32)
         (set_local $4
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
         )
         (set_local $5
          (i32.sub
           (get_local $3)
           (i32.const 1)
          )
         )
         (set_local $6
          (i32.lt_s
           (get_local $5)
           (i32.const 0)
          )
         )
         (if
          (get_local $6)
          (set_local $5
           (i32.sub
            (i32.const 0)
            (get_local $5)
           )
          )
         )
         (set_local $7
          (i32.add
           (call $~lib/internal/number/decimalCount32
            (get_local $5)
           )
           (i32.const 1)
          )
         )
         (block $~lib/internal/number/utoa32_core|inlined.4
          (call $~lib/internal/number/utoa32_lut
           (get_local $4)
           (get_local $5)
           (get_local $7)
          )
         )
         (i32.store16 offset=4
          (get_local $4)
          (select
           (get_global $~lib/internal/string/CharCode.MINUS)
           (get_global $~lib/internal/string/CharCode.PLUS)
           (get_local $6)
          )
         )
         (get_local $7)
        )
       )
       (return
        (i32.add
         (get_local $1)
         (i32.const 2)
        )
       )
      )
      (block
       (set_local $7
        (i32.shl
         (get_local $1)
         (i32.const 1)
        )
       )
       (block $~lib/memory/memory.copy|inlined.7
        (set_local $6
         (i32.add
          (i32.add
           (get_local $0)
           (get_global $~lib/internal/string/HEADER_SIZE)
          )
          (i32.const 4)
         )
        )
        (set_local $5
         (i32.add
          (i32.add
           (get_local $0)
           (get_global $~lib/internal/string/HEADER_SIZE)
          )
          (i32.const 2)
         )
        )
        (set_local $4
         (i32.sub
          (get_local $7)
          (i32.const 2)
         )
        )
        (call $~lib/internal/memory/memmove
         (get_local $6)
         (get_local $5)
         (get_local $4)
        )
       )
       (i32.store16 offset=6
        (get_local $0)
        (get_global $~lib/internal/string/CharCode.DOT)
       )
       (i32.store16 offset=6
        (i32.add
         (get_local $0)
         (get_local $7)
        )
        (get_global $~lib/internal/string/CharCode.e)
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (block $~lib/internal/number/genExponent|inlined.1 (result i32)
          (set_local $4
           (i32.add
            (i32.add
             (get_local $0)
             (get_local $7)
            )
            (i32.const 4)
           )
          )
          (set_local $5
           (i32.sub
            (get_local $3)
            (i32.const 1)
           )
          )
          (set_local $6
           (i32.lt_s
            (get_local $5)
            (i32.const 0)
           )
          )
          (if
           (get_local $6)
           (set_local $5
            (i32.sub
             (i32.const 0)
             (get_local $5)
            )
           )
          )
          (set_local $8
           (i32.add
            (call $~lib/internal/number/decimalCount32
             (get_local $5)
            )
            (i32.const 1)
           )
          )
          (block $~lib/internal/number/utoa32_core|inlined.5
           (call $~lib/internal/number/utoa32_lut
            (get_local $4)
            (get_local $5)
            (get_local $8)
           )
          )
          (i32.store16 offset=4
           (get_local $4)
           (select
            (get_global $~lib/internal/string/CharCode.MINUS)
            (get_global $~lib/internal/string/CharCode.PLUS)
            (get_local $6)
           )
          )
          (get_local $8)
         )
        )
       )
       (return
        (i32.add
         (get_local $1)
         (i32.const 2)
        )
       )
      )
     )
    )
   )
  )
  (unreachable)
 )
 (func $~lib/internal/number/dtoa_core (; 180 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i32)
  (set_local $2
   (f64.lt
    (get_local $1)
    (f64.const 0)
   )
  )
  (if
   (get_local $2)
   (block
    (set_local $1
     (f64.neg
      (get_local $1)
     )
    )
    (i32.store16 offset=4
     (get_local $0)
     (get_global $~lib/internal/string/CharCode.MINUS)
    )
   )
  )
  (set_local $24
   (block $~lib/internal/number/grisu2|inlined.0 (result i32)
    (set_local $3
     (i64.reinterpret/f64
      (get_local $1)
     )
    )
    (set_local $4
     (i32.wrap/i64
      (i64.shr_u
       (i64.and
        (get_local $3)
        (i64.const 9218868437227405312)
       )
       (i64.const 52)
      )
     )
    )
    (set_local $5
     (i64.and
      (get_local $3)
      (i64.const 4503599627370495)
     )
    )
    (set_local $6
     (i64.add
      (i64.shl
       (i64.extend_u/i32
        (i32.ne
         (get_local $4)
         (i32.const 0)
        )
       )
       (i64.const 52)
      )
      (get_local $5)
     )
    )
    (set_local $4
     (i32.sub
      (select
       (get_local $4)
       (i32.const 1)
       (i32.ne
        (get_local $4)
        (i32.const 0)
       )
      )
      (i32.add
       (i32.const 1023)
       (i32.const 52)
      )
     )
    )
    (block $~lib/internal/number/normalizedBoundaries|inlined.0
     (set_local $7
      (i64.add
       (i64.shl
        (get_local $6)
        (i64.const 1)
       )
       (i64.const 1)
      )
     )
     (set_local $8
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (set_local $9
      (i32.wrap/i64
       (i64.clz
        (get_local $7)
       )
      )
     )
     (set_local $7
      (i64.shl
       (get_local $7)
       (i64.extend_s/i32
        (get_local $9)
       )
      )
     )
     (set_local $8
      (i32.sub
       (get_local $8)
       (get_local $9)
      )
     )
     (set_local $10
      (i32.add
       (i32.const 1)
       (i64.eq
        (get_local $6)
        (i64.const 4503599627370496)
       )
      )
     )
     (set_global $~lib/internal/number/_frc_plus
      (get_local $7)
     )
     (set_global $~lib/internal/number/_frc_minus
      (i64.shl
       (i64.sub
        (i64.shl
         (get_local $6)
         (i64.extend_s/i32
          (get_local $10)
         )
        )
        (i64.const 1)
       )
       (i64.extend_s/i32
        (i32.sub
         (i32.sub
          (get_local $4)
          (get_local $10)
         )
         (get_local $8)
        )
       )
      )
     )
     (set_global $~lib/internal/number/_exp
      (get_local $8)
     )
    )
    (block $~lib/internal/number/getCachedPower|inlined.0
     (set_local $10
      (get_global $~lib/internal/number/_exp)
     )
     (set_local $11
      (f64.add
       (f64.mul
        (f64.convert_s/i32
         (i32.sub
          (i32.const -61)
          (get_local $10)
         )
        )
        (f64.const 0.30102999566398114)
       )
       (f64.const 347)
      )
     )
     (set_local $9
      (i32.trunc_s/f64
       (get_local $11)
      )
     )
     (set_local $9
      (i32.add
       (get_local $9)
       (f64.ne
        (f64.convert_s/i32
         (get_local $9)
        )
        (get_local $11)
       )
      )
     )
     (set_local $8
      (i32.add
       (i32.shr_s
        (get_local $9)
        (i32.const 3)
       )
       (i32.const 1)
      )
     )
     (set_global $~lib/internal/number/_K
      (i32.sub
       (i32.const 348)
       (i32.shl
        (get_local $8)
        (i32.const 3)
       )
      )
     )
     (set_local $12
      (i32.load
       (block $~lib/internal/number/FRC_POWERS|inlined.0 (result i32)
        (i32.const 3840)
       )
      )
     )
     (set_local $13
      (i32.load
       (block $~lib/internal/number/EXP_POWERS|inlined.0 (result i32)
        (i32.const 4104)
       )
      )
     )
     (set_global $~lib/internal/number/_frc_pow
      (block $~lib/internal/arraybuffer/loadUnsafe<u64,u64>|inlined.0 (result i64)
       (i64.load offset=8
        (i32.add
         (get_local $12)
         (i32.shl
          (get_local $8)
          (i32.const 3)
         )
        )
       )
      )
     )
     (set_global $~lib/internal/number/_exp_pow
      (block $~lib/internal/arraybuffer/loadUnsafe<i16,i32>|inlined.0 (result i32)
       (i32.load16_s offset=8
        (i32.add
         (get_local $13)
         (i32.shl
          (get_local $8)
          (i32.const 1)
         )
        )
       )
      )
     )
    )
    (set_local $13
     (i32.wrap/i64
      (i64.clz
       (get_local $6)
      )
     )
    )
    (set_local $6
     (i64.shl
      (get_local $6)
      (i64.extend_s/i32
       (get_local $13)
      )
     )
    )
    (set_local $4
     (i32.sub
      (get_local $4)
      (get_local $13)
     )
    )
    (set_local $7
     (get_global $~lib/internal/number/_frc_pow)
    )
    (set_local $12
     (get_global $~lib/internal/number/_exp_pow)
    )
    (set_local $20
     (block $~lib/internal/number/umul64f|inlined.0 (result i64)
      (set_local $14
       (i64.and
        (get_local $6)
        (i64.const 4294967295)
       )
      )
      (set_local $15
       (i64.and
        (get_local $7)
        (i64.const 4294967295)
       )
      )
      (set_local $16
       (i64.shr_u
        (get_local $6)
        (i64.const 32)
       )
      )
      (set_local $17
       (i64.shr_u
        (get_local $7)
        (i64.const 32)
       )
      )
      (set_local $18
       (i64.mul
        (get_local $14)
        (get_local $15)
       )
      )
      (set_local $19
       (i64.add
        (i64.mul
         (get_local $16)
         (get_local $15)
        )
        (i64.shr_u
         (get_local $18)
         (i64.const 32)
        )
       )
      )
      (set_local $20
       (i64.add
        (i64.mul
         (get_local $14)
         (get_local $17)
        )
        (i64.and
         (get_local $19)
         (i64.const 4294967295)
        )
       )
      )
      (set_local $20
       (i64.add
        (get_local $20)
        (i64.const 2147483647)
       )
      )
      (set_local $19
       (i64.shr_u
        (get_local $19)
        (i64.const 32)
       )
      )
      (set_local $20
       (i64.shr_u
        (get_local $20)
        (i64.const 32)
       )
      )
      (i64.add
       (i64.add
        (i64.mul
         (get_local $16)
         (get_local $17)
        )
        (get_local $19)
       )
       (get_local $20)
      )
     )
    )
    (set_local $8
     (block $~lib/internal/number/umul64e|inlined.0 (result i32)
      (i32.add
       (i32.add
        (get_local $4)
        (get_local $12)
       )
       (i32.const 64)
      )
     )
    )
    (set_local $22
     (i64.sub
      (block $~lib/internal/number/umul64f|inlined.1 (result i64)
       (set_local $19
        (get_global $~lib/internal/number/_frc_plus)
       )
       (set_local $18
        (i64.and
         (get_local $19)
         (i64.const 4294967295)
        )
       )
       (set_local $17
        (i64.and
         (get_local $7)
         (i64.const 4294967295)
        )
       )
       (set_local $16
        (i64.shr_u
         (get_local $19)
         (i64.const 32)
        )
       )
       (set_local $15
        (i64.shr_u
         (get_local $7)
         (i64.const 32)
        )
       )
       (set_local $14
        (i64.mul
         (get_local $18)
         (get_local $17)
        )
       )
       (set_local $21
        (i64.add
         (i64.mul
          (get_local $16)
          (get_local $17)
         )
         (i64.shr_u
          (get_local $14)
          (i64.const 32)
         )
        )
       )
       (set_local $22
        (i64.add
         (i64.mul
          (get_local $18)
          (get_local $15)
         )
         (i64.and
          (get_local $21)
          (i64.const 4294967295)
         )
        )
       )
       (set_local $22
        (i64.add
         (get_local $22)
         (i64.const 2147483647)
        )
       )
       (set_local $21
        (i64.shr_u
         (get_local $21)
         (i64.const 32)
        )
       )
       (set_local $22
        (i64.shr_u
         (get_local $22)
         (i64.const 32)
        )
       )
       (i64.add
        (i64.add
         (i64.mul
          (get_local $16)
          (get_local $15)
         )
         (get_local $21)
        )
        (get_local $22)
       )
      )
      (i64.const 1)
     )
    )
    (set_local $9
     (block $~lib/internal/number/umul64e|inlined.1 (result i32)
      (set_local $9
       (get_global $~lib/internal/number/_exp)
      )
      (i32.add
       (i32.add
        (get_local $9)
        (get_local $12)
       )
       (i32.const 64)
      )
     )
    )
    (set_local $23
     (i64.add
      (block $~lib/internal/number/umul64f|inlined.2 (result i64)
       (set_local $21
        (get_global $~lib/internal/number/_frc_minus)
       )
       (set_local $14
        (i64.and
         (get_local $21)
         (i64.const 4294967295)
        )
       )
       (set_local $15
        (i64.and
         (get_local $7)
         (i64.const 4294967295)
        )
       )
       (set_local $16
        (i64.shr_u
         (get_local $21)
         (i64.const 32)
        )
       )
       (set_local $17
        (i64.shr_u
         (get_local $7)
         (i64.const 32)
        )
       )
       (set_local $18
        (i64.mul
         (get_local $14)
         (get_local $15)
        )
       )
       (set_local $19
        (i64.add
         (i64.mul
          (get_local $16)
          (get_local $15)
         )
         (i64.shr_u
          (get_local $18)
          (i64.const 32)
         )
        )
       )
       (set_local $23
        (i64.add
         (i64.mul
          (get_local $14)
          (get_local $17)
         )
         (i64.and
          (get_local $19)
          (i64.const 4294967295)
         )
        )
       )
       (set_local $23
        (i64.add
         (get_local $23)
         (i64.const 2147483647)
        )
       )
       (set_local $19
        (i64.shr_u
         (get_local $19)
         (i64.const 32)
        )
       )
       (set_local $23
        (i64.shr_u
         (get_local $23)
         (i64.const 32)
        )
       )
       (i64.add
        (i64.add
         (i64.mul
          (get_local $16)
          (get_local $17)
         )
         (get_local $19)
        )
        (get_local $23)
       )
      )
      (i64.const 1)
     )
    )
    (set_local $19
     (i64.sub
      (get_local $22)
      (get_local $23)
     )
    )
    (call $~lib/internal/number/genDigits
     (get_local $0)
     (get_local $20)
     (get_local $8)
     (get_local $22)
     (get_local $9)
     (get_local $19)
     (get_local $2)
    )
   )
  )
  (set_local $24
   (call $~lib/internal/number/prettify
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $2)
      (i32.const 1)
     )
    )
    (i32.sub
     (get_local $24)
     (get_local $2)
    )
    (get_global $~lib/internal/number/_K)
   )
  )
  (i32.add
   (get_local $24)
   (get_local $2)
  )
 )
 (func $~lib/internal/number/dtoa (; 181 ;) (type $Fi) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (f64.eq
    (get_local $0)
    (f64.const 0)
   )
   (return
    (i32.const 2736)
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
      (i32.const 2752)
     )
    )
    (return
     (select
      (i32.const 2768)
      (i32.const 2792)
      (f64.lt
       (get_local $0)
       (f64.const 0)
      )
     )
    )
   )
  )
  (set_local $1
   (call $~lib/internal/string/allocateUnsafe
    (i32.const 30)
   )
  )
  (set_local $2
   (call $~lib/internal/number/dtoa_core
    (get_local $1)
    (get_local $0)
   )
  )
  (set_local $3
   (call $~lib/string/String#substring
    (get_local $1)
    (i32.const 0)
    (get_local $2)
   )
  )
  (block $~lib/internal/string/freeUnsafe|inlined.3
   (block
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
    (block $~lib/memory/memory.free|inlined.7
     (block
      (call $~lib/allocator/arena/__memory_free
       (get_local $1)
      )
      (br $~lib/memory/memory.free|inlined.7)
     )
    )
   )
  )
  (get_local $3)
 )
 (func $~lib/internal/number/dtoa_stream (; 182 ;) (type $iiFi) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (f64.eq
    (get_local $2)
    (f64.const 0)
   )
   (block
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (i32.store16 offset=4
     (get_local $0)
     (get_global $~lib/internal/string/CharCode._0)
    )
    (i32.store16 offset=6
     (get_local $0)
     (get_global $~lib/internal/string/CharCode.DOT)
    )
    (i32.store16 offset=8
     (get_local $0)
     (get_global $~lib/internal/string/CharCode._0)
    )
    (return
     (i32.const 3)
    )
   )
  )
  (if
   (i32.eqz
    (call $~lib/builtins/isFinite<f64>
     (get_local $2)
    )
   )
   (block
    (if
     (call $~lib/builtins/isNaN<f64>
      (get_local $2)
     )
     (block
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (i32.store16 offset=4
       (get_local $0)
       (get_global $~lib/internal/string/CharCode.N)
      )
      (i32.store16 offset=6
       (get_local $0)
       (get_global $~lib/internal/string/CharCode.a)
      )
      (i32.store16 offset=8
       (get_local $0)
       (get_global $~lib/internal/string/CharCode.N)
      )
      (return
       (i32.const 3)
      )
     )
     (block
      (set_local $3
       (f64.lt
        (get_local $2)
        (f64.const 0)
       )
      )
      (set_local $4
       (i32.add
        (i32.const 8)
        (get_local $3)
       )
      )
      (set_local $5
       (select
        (i32.const 2768)
        (i32.const 2792)
        (get_local $3)
       )
      )
      (block $~lib/memory/memory.copy|inlined.8
       (set_local $6
        (i32.add
         (i32.add
          (get_local $0)
          (i32.shl
           (get_local $1)
           (i32.const 1)
          )
         )
         (get_global $~lib/internal/string/HEADER_SIZE)
        )
       )
       (set_local $7
        (i32.shl
         (get_local $4)
         (i32.const 1)
        )
       )
       (call $~lib/internal/memory/memmove
        (get_local $6)
        (get_local $5)
        (get_local $7)
       )
      )
      (return
       (get_local $4)
      )
     )
    )
    (unreachable)
   )
  )
  (call $~lib/internal/number/dtoa_core
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
   (get_local $2)
  )
 )
 (func $~lib/array/Array<f64>#join (; 183 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (call $~lib/internal/number/dtoa
     (block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.3 (result f64)
      (set_local $8
       (i32.const 0)
      )
      (f64.load offset=8
       (i32.add
        (get_local $5)
        (i32.shl
         (get_local $8)
         (i32.const 3)
        )
       )
      )
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (i32.mul
     (i32.add
      (i32.const 30)
      (get_local $6)
     )
     (get_local $2)
    )
    (i32.const 30)
   )
  )
  (set_local $9
   (call $~lib/internal/string/allocateUnsafe
    (get_local $8)
   )
  )
  (set_local $10
   (i32.const 0)
  )
  (block $break|0
   (set_local $11
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $11)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.4 (result f64)
       (f64.load offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $11)
          (i32.const 3)
         )
        )
       )
      )
     )
     (set_local $10
      (i32.add
       (get_local $10)
       (call $~lib/internal/number/dtoa_stream
        (get_local $9)
        (get_local $10)
        (get_local $4)
       )
      )
     )
     (if
      (get_local $7)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $9)
        (get_local $10)
        (get_local $1)
        (i32.const 0)
        (get_local $6)
       )
       (set_local $10
        (i32.add
         (get_local $10)
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $11
     (i32.add
      (get_local $11)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.5 (result f64)
    (f64.load offset=8
     (i32.add
      (get_local $5)
      (i32.shl
       (get_local $2)
       (i32.const 3)
      )
     )
    )
   )
  )
  (set_local $10
   (i32.add
    (get_local $10)
    (call $~lib/internal/number/dtoa_stream
     (get_local $9)
     (get_local $10)
     (get_local $4)
    )
   )
  )
  (set_local $11
   (get_local $9)
  )
  (if
   (i32.gt_s
    (get_local $8)
    (get_local $10)
   )
   (block
    (set_local $11
     (call $~lib/string/String#substring
      (get_local $9)
      (i32.const 0)
      (get_local $10)
     )
    )
    (block $~lib/internal/string/freeUnsafe|inlined.4
     (block
      (if
       (i32.eqz
        (get_local $9)
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
      (block $~lib/memory/memory.free|inlined.8
       (block
        (call $~lib/allocator/arena/__memory_free
         (get_local $9)
        )
        (br $~lib/memory/memory.free|inlined.8)
       )
      )
     )
    )
   )
  )
  (return
   (get_local $11)
  )
 )
 (func $~lib/array/Array<String>#join (; 184 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.3 (result i32)
     (set_local $8
      (i32.const 0)
     )
     (i32.load offset=8
      (i32.add
       (get_local $5)
       (i32.shl
        (get_local $8)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (set_local $8
   (i32.const 0)
  )
  (block $break|0
   (block
    (set_local $9
     (i32.const 0)
    )
    (set_local $10
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $9)
       (get_local $10)
      )
     )
    )
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.load
       (block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.4 (result i32)
        (i32.load offset=8
         (i32.add
          (get_local $5)
          (i32.shl
           (get_local $9)
           (i32.const 2)
          )
         )
        )
       )
      )
     )
    )
    (set_local $9
     (i32.add
      (get_local $9)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $10
   (i32.const 0)
  )
  (set_local $9
   (call $~lib/internal/string/allocateUnsafe
    (i32.add
     (get_local $8)
     (i32.mul
      (get_local $6)
      (get_local $2)
     )
    )
   )
  )
  (block $break|1
   (set_local $11
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.lt_s
       (get_local $11)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.5 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $11)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (get_local $4)
      (block
       (set_local $12
        (i32.load
         (get_local $4)
        )
       )
       (call $~lib/internal/string/copyUnsafe
        (get_local $9)
        (get_local $10)
        (get_local $4)
        (i32.const 0)
        (get_local $12)
       )
       (set_local $10
        (i32.add
         (get_local $10)
         (get_local $12)
        )
       )
      )
     )
     (if
      (get_local $7)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $9)
        (get_local $10)
        (get_local $1)
        (i32.const 0)
        (get_local $6)
       )
       (set_local $10
        (i32.add
         (get_local $10)
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $11
     (i32.add
      (get_local $11)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.6 (result i32)
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
  )
  (if
   (get_local $4)
   (block
    (set_local $11
     (i32.load
      (get_local $4)
     )
    )
    (call $~lib/internal/string/copyUnsafe
     (get_local $9)
     (get_local $10)
     (get_local $4)
     (i32.const 0)
     (get_local $11)
    )
   )
  )
  (return
   (get_local $9)
  )
 )
 (func $std/array/Ref#constructor (; 185 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $1
       (call $~lib/memory/memory.allocate
        (i32.const 0)
       )
      )
      (get_local $1)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<Ref>#constructor (; 186 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 37)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.12
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Ref>#__unchecked_set (; 187 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (block $~lib/internal/arraybuffer/storeUnsafe<Ref,Ref>|inlined.0
   (set_local $3
    (i32.load
     (get_local $0)
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
 )
 (func $~lib/array/Array<Ref>#join (; 188 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 4432)
   )
  )
  (set_local $8
   (i32.add
    (i32.mul
     (i32.add
      (i32.const 15)
      (get_local $6)
     )
     (get_local $2)
    )
    (i32.const 15)
   )
  )
  (set_local $9
   (call $~lib/internal/string/allocateUnsafe
    (get_local $8)
   )
  )
  (set_local $10
   (i32.const 0)
  )
  (block $break|0
   (set_local $11
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $11)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<Ref,Ref>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $11)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (get_local $4)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $9)
        (get_local $10)
        (i32.const 4432)
        (i32.const 0)
        (i32.const 15)
       )
       (set_local $10
        (i32.add
         (get_local $10)
         (i32.const 15)
        )
       )
      )
     )
     (if
      (get_local $7)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $9)
        (get_local $10)
        (get_local $1)
        (i32.const 0)
        (get_local $6)
       )
       (set_local $10
        (i32.add
         (get_local $10)
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $11
     (i32.add
      (get_local $11)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (block $~lib/internal/arraybuffer/loadUnsafe<Ref,Ref>|inlined.2 (result i32)
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
   (block
    (call $~lib/internal/string/copyUnsafe
     (get_local $9)
     (get_local $10)
     (i32.const 4432)
     (i32.const 0)
     (i32.const 15)
    )
    (set_local $10
     (i32.add
      (get_local $10)
      (i32.const 15)
     )
    )
   )
  )
  (set_local $11
   (get_local $9)
  )
  (if
   (i32.gt_s
    (get_local $8)
    (get_local $10)
   )
   (block
    (set_local $11
     (call $~lib/string/String#substring
      (get_local $9)
      (i32.const 0)
      (get_local $10)
     )
    )
    (block $~lib/internal/string/freeUnsafe|inlined.5
     (block
      (if
       (i32.eqz
        (get_local $9)
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
      (block $~lib/memory/memory.free|inlined.9
       (block
        (call $~lib/allocator/arena/__memory_free
         (get_local $9)
        )
        (br $~lib/memory/memory.free|inlined.9)
       )
      )
     )
    )
   )
  )
  (return
   (get_local $11)
  )
 )
 (func $~lib/internal/number/itoa<i8> (; 189 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/number/itoa32
    (i32.shr_s
     (i32.shl
      (get_local $0)
      (i32.const 24)
     )
     (i32.const 24)
    )
   )
  )
 )
 (func $~lib/internal/number/itoa_stream<i8> (; 190 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (i32.shr_s
     (i32.shl
      (get_local $2)
      (i32.const 24)
     )
     (i32.const 24)
    )
   )
   (block
    (i32.store16 offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/CharCode._0)
    )
    (return
     (i32.const 1)
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (set_local $4
   (i32.lt_s
    (i32.shr_s
     (i32.shl
      (get_local $2)
      (i32.const 24)
     )
     (i32.const 24)
    )
    (i32.const 0)
   )
  )
  (if
   (get_local $4)
   (set_local $2
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
  )
  (set_local $3
   (i32.add
    (call $~lib/internal/number/decimalCount32
     (i32.shr_s
      (i32.shl
       (get_local $2)
       (i32.const 24)
      )
      (i32.const 24)
     )
    )
    (get_local $4)
   )
  )
  (block $~lib/internal/number/utoa32_core|inlined.6
   (set_local $5
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i32.shr_s
     (i32.shl
      (get_local $2)
      (i32.const 24)
     )
     (i32.const 24)
    )
   )
   (call $~lib/internal/number/utoa32_lut
    (get_local $5)
    (get_local $6)
    (get_local $3)
   )
  )
  (if
   (get_local $4)
   (i32.store16 offset=4
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
  )
  (get_local $3)
 )
 (func $~lib/array/Array<i8>#join (; 191 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (call $~lib/internal/number/itoa<i8>
     (block $~lib/internal/arraybuffer/loadUnsafe<i8,i8>|inlined.0 (result i32)
      (set_local $8
       (i32.const 0)
      )
      (i32.load8_s offset=8
       (i32.add
        (get_local $5)
        (i32.shl
         (get_local $8)
         (i32.const 0)
        )
       )
      )
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (i32.const 10)
    (i32.const 1)
   )
  )
  (set_local $9
   (i32.add
    (i32.mul
     (i32.add
      (get_local $8)
      (get_local $6)
     )
     (get_local $2)
    )
    (get_local $8)
   )
  )
  (set_local $10
   (call $~lib/internal/string/allocateUnsafe
    (get_local $9)
   )
  )
  (set_local $11
   (i32.const 0)
  )
  (block $break|0
   (set_local $12
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $12)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<i8,i8>|inlined.1 (result i32)
       (i32.load8_s offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $12)
          (i32.const 0)
         )
        )
       )
      )
     )
     (set_local $11
      (i32.add
       (get_local $11)
       (call $~lib/internal/number/itoa_stream<i8>
        (get_local $10)
        (get_local $11)
        (get_local $4)
       )
      )
     )
     (if
      (get_local $7)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $10)
        (get_local $11)
        (get_local $1)
        (i32.const 0)
        (get_local $6)
       )
       (set_local $11
        (i32.add
         (get_local $11)
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $12
     (i32.add
      (get_local $12)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<i8,i8>|inlined.2 (result i32)
    (i32.load8_s offset=8
     (i32.add
      (get_local $5)
      (i32.shl
       (get_local $2)
       (i32.const 0)
      )
     )
    )
   )
  )
  (set_local $11
   (i32.add
    (get_local $11)
    (call $~lib/internal/number/itoa_stream<i8>
     (get_local $10)
     (get_local $11)
     (get_local $4)
    )
   )
  )
  (set_local $12
   (get_local $10)
  )
  (if
   (i32.gt_s
    (get_local $9)
    (get_local $11)
   )
   (block
    (set_local $12
     (call $~lib/string/String#substring
      (get_local $10)
      (i32.const 0)
      (get_local $11)
     )
    )
    (block $~lib/internal/string/freeUnsafe|inlined.6
     (block
      (if
       (i32.eqz
        (get_local $10)
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
      (block $~lib/memory/memory.free|inlined.10
       (block
        (call $~lib/allocator/arena/__memory_free
         (get_local $10)
        )
        (br $~lib/memory/memory.free|inlined.10)
       )
      )
     )
    )
   )
  )
  (return
   (get_local $12)
  )
 )
 (func $~lib/internal/number/itoa<u16> (; 192 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/number/utoa32
    (i32.and
     (get_local $0)
     (i32.const 65535)
    )
   )
  )
 )
 (func $~lib/internal/number/itoa_stream<u16> (; 193 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (i32.and
     (get_local $2)
     (i32.const 65535)
    )
   )
   (block
    (i32.store16 offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/CharCode._0)
    )
    (return
     (i32.const 1)
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (set_local $3
   (call $~lib/internal/number/decimalCount32
    (i32.and
     (get_local $2)
     (i32.const 65535)
    )
   )
  )
  (block $~lib/internal/number/utoa32_core|inlined.7
   (set_local $4
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
   )
   (set_local $5
    (i32.and
     (get_local $2)
     (i32.const 65535)
    )
   )
   (call $~lib/internal/number/utoa32_lut
    (get_local $4)
    (get_local $5)
    (get_local $3)
   )
  )
  (get_local $3)
 )
 (func $~lib/array/Array<u16>#join (; 194 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (call $~lib/internal/number/itoa<u16>
     (block $~lib/internal/arraybuffer/loadUnsafe<u16,u16>|inlined.0 (result i32)
      (set_local $8
       (i32.const 0)
      )
      (i32.load16_u offset=8
       (i32.add
        (get_local $5)
        (i32.shl
         (get_local $8)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (i32.const 10)
    (i32.const 0)
   )
  )
  (set_local $9
   (i32.add
    (i32.mul
     (i32.add
      (get_local $8)
      (get_local $6)
     )
     (get_local $2)
    )
    (get_local $8)
   )
  )
  (set_local $10
   (call $~lib/internal/string/allocateUnsafe
    (get_local $9)
   )
  )
  (set_local $11
   (i32.const 0)
  )
  (block $break|0
   (set_local $12
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $12)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<u16,u16>|inlined.1 (result i32)
       (i32.load16_u offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $12)
          (i32.const 1)
         )
        )
       )
      )
     )
     (set_local $11
      (i32.add
       (get_local $11)
       (call $~lib/internal/number/itoa_stream<u16>
        (get_local $10)
        (get_local $11)
        (get_local $4)
       )
      )
     )
     (if
      (get_local $7)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $10)
        (get_local $11)
        (get_local $1)
        (i32.const 0)
        (get_local $6)
       )
       (set_local $11
        (i32.add
         (get_local $11)
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $12
     (i32.add
      (get_local $12)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<u16,u16>|inlined.2 (result i32)
    (i32.load16_u offset=8
     (i32.add
      (get_local $5)
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
    )
   )
  )
  (set_local $11
   (i32.add
    (get_local $11)
    (call $~lib/internal/number/itoa_stream<u16>
     (get_local $10)
     (get_local $11)
     (get_local $4)
    )
   )
  )
  (set_local $12
   (get_local $10)
  )
  (if
   (i32.gt_s
    (get_local $9)
    (get_local $11)
   )
   (block
    (set_local $12
     (call $~lib/string/String#substring
      (get_local $10)
      (i32.const 0)
      (get_local $11)
     )
    )
    (block $~lib/internal/string/freeUnsafe|inlined.7
     (block
      (if
       (i32.eqz
        (get_local $10)
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
      (block $~lib/memory/memory.free|inlined.11
       (block
        (call $~lib/allocator/arena/__memory_free
         (get_local $10)
        )
        (br $~lib/memory/memory.free|inlined.11)
       )
      )
     )
    )
   )
  )
  (return
   (get_local $12)
  )
 )
 (func $~lib/internal/number/decimalCount64 (; 195 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (if
   (i64.lt_u
    (get_local $0)
    (i64.const 1000000000000000)
   )
   (block
    (if
     (i64.lt_u
      (get_local $0)
      (i64.const 1000000000000)
     )
     (return
      (select
       (i32.const 11)
       (i32.const 12)
       (i64.lt_u
        (get_local $0)
        (i64.const 100000000000)
       )
      )
     )
     (block
      (set_local $1
       (select
        (i32.const 14)
        (i32.const 15)
        (i64.lt_u
         (get_local $0)
         (i64.const 100000000000000)
        )
       )
      )
      (return
       (select
        (i32.const 13)
        (get_local $1)
        (i64.lt_u
         (get_local $0)
         (i64.const 10000000000000)
        )
       )
      )
     )
    )
    (unreachable)
   )
   (block
    (if
     (i64.lt_u
      (get_local $0)
      (i64.const 100000000000000000)
     )
     (return
      (select
       (i32.const 16)
       (i32.const 17)
       (i64.lt_u
        (get_local $0)
        (i64.const 10000000000000000)
       )
      )
     )
     (block
      (set_local $1
       (select
        (i32.const 19)
        (i32.const 20)
        (i64.lt_u
         (get_local $0)
         (i64.const -8446744073709551616)
        )
       )
      )
      (return
       (select
        (i32.const 18)
        (get_local $1)
        (i64.lt_u
         (get_local $0)
         (i64.const 1000000000000000000)
        )
       )
      )
     )
    )
    (unreachable)
   )
  )
  (unreachable)
 )
 (func $~lib/internal/number/utoa64_lut (; 196 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
  (set_local $3
   (i32.load
    (block $~lib/internal/number/DIGITS|inlined.1 (result i32)
     (i32.const 5272)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i64.ge_u
      (get_local $1)
      (i64.const 100000000)
     )
     (block
      (block
       (set_local $4
        (i64.div_u
         (get_local $1)
         (i64.const 100000000)
        )
       )
       (set_local $5
        (i32.wrap/i64
         (i64.sub
          (get_local $1)
          (i64.mul
           (get_local $4)
           (i64.const 100000000)
          )
         )
        )
       )
       (set_local $1
        (get_local $4)
       )
       (set_local $6
        (i32.div_u
         (get_local $5)
         (i32.const 10000)
        )
       )
       (set_local $7
        (i32.rem_u
         (get_local $5)
         (i32.const 10000)
        )
       )
       (set_local $8
        (i32.div_u
         (get_local $6)
         (i32.const 100)
        )
       )
       (set_local $9
        (i32.rem_u
         (get_local $6)
         (i32.const 100)
        )
       )
       (set_local $10
        (i32.div_u
         (get_local $7)
         (i32.const 100)
        )
       )
       (set_local $11
        (i32.rem_u
         (get_local $7)
         (i32.const 100)
        )
       )
       (set_local $12
        (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.4 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $10)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $13
        (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.5 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $11)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 4)
        )
       )
       (i64.store offset=4
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $2)
          (i32.const 1)
         )
        )
        (i64.or
         (get_local $12)
         (i64.shl
          (get_local $13)
          (i64.const 32)
         )
        )
       )
       (set_local $12
        (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.6 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $8)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $13
        (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.7 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $9)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 4)
        )
       )
       (i64.store offset=4
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $2)
          (i32.const 1)
         )
        )
        (i64.or
         (get_local $12)
         (i64.shl
          (get_local $13)
          (i64.const 32)
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (call $~lib/internal/number/utoa32_lut
   (get_local $0)
   (i32.wrap/i64
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $~lib/internal/number/utoa64 (; 197 ;) (type $Ii) (param $0 i64) (result i32)
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
    (i64.extend_u/i32
     (get_global $~lib/builtins/u32.MAX_VALUE)
    )
   )
   (block
    (set_local $2
     (i32.wrap/i64
      (get_local $0)
     )
    )
    (set_local $3
     (call $~lib/internal/number/decimalCount32
      (get_local $2)
     )
    )
    (set_local $1
     (call $~lib/internal/string/allocateUnsafe
      (get_local $3)
     )
    )
    (block $~lib/internal/number/utoa32_core|inlined.8
     (call $~lib/internal/number/utoa32_lut
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (block
    (set_local $3
     (call $~lib/internal/number/decimalCount64
      (get_local $0)
     )
    )
    (set_local $1
     (call $~lib/internal/string/allocateUnsafe
      (get_local $3)
     )
    )
    (block $~lib/internal/number/utoa64_core|inlined.0
     (call $~lib/internal/number/utoa64_lut
      (get_local $1)
      (get_local $0)
      (get_local $3)
     )
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/internal/number/itoa<u64> (; 198 ;) (type $Ii) (param $0 i64) (result i32)
  (return
   (call $~lib/internal/number/utoa64
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/number/itoa_stream<u64> (; 199 ;) (type $iiIi) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i64.eqz
    (get_local $2)
   )
   (block
    (i32.store16 offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/CharCode._0)
    )
    (return
     (i32.const 1)
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (if
   (i64.le_u
    (get_local $2)
    (i64.extend_u/i32
     (get_global $~lib/builtins/u32.MAX_VALUE)
    )
   )
   (block
    (set_local $4
     (i32.wrap/i64
      (get_local $2)
     )
    )
    (set_local $3
     (call $~lib/internal/number/decimalCount32
      (get_local $4)
     )
    )
    (block $~lib/internal/number/utoa32_core|inlined.9
     (set_local $5
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $1)
        (i32.const 1)
       )
      )
     )
     (call $~lib/internal/number/utoa32_lut
      (get_local $5)
      (get_local $4)
      (get_local $3)
     )
    )
   )
   (block
    (set_local $3
     (call $~lib/internal/number/decimalCount64
      (get_local $2)
     )
    )
    (block $~lib/internal/number/utoa64_core|inlined.1
     (set_local $4
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $1)
        (i32.const 1)
       )
      )
     )
     (call $~lib/internal/number/utoa64_lut
      (get_local $4)
      (get_local $2)
      (get_local $3)
     )
    )
   )
  )
  (get_local $3)
 )
 (func $~lib/array/Array<u64>#join (; 200 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (call $~lib/internal/number/itoa<u64>
     (block $~lib/internal/arraybuffer/loadUnsafe<u64,u64>|inlined.1 (result i64)
      (set_local $8
       (i32.const 0)
      )
      (i64.load offset=8
       (i32.add
        (get_local $5)
        (i32.shl
         (get_local $8)
         (i32.const 3)
        )
       )
      )
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (i32.const 20)
    (i32.const 0)
   )
  )
  (set_local $9
   (i32.add
    (i32.mul
     (i32.add
      (get_local $8)
      (get_local $6)
     )
     (get_local $2)
    )
    (get_local $8)
   )
  )
  (set_local $10
   (call $~lib/internal/string/allocateUnsafe
    (get_local $9)
   )
  )
  (set_local $11
   (i32.const 0)
  )
  (block $break|0
   (set_local $12
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $12)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<u64,u64>|inlined.2 (result i64)
       (i64.load offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $12)
          (i32.const 3)
         )
        )
       )
      )
     )
     (set_local $11
      (i32.add
       (get_local $11)
       (call $~lib/internal/number/itoa_stream<u64>
        (get_local $10)
        (get_local $11)
        (get_local $4)
       )
      )
     )
     (if
      (get_local $7)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $10)
        (get_local $11)
        (get_local $1)
        (i32.const 0)
        (get_local $6)
       )
       (set_local $11
        (i32.add
         (get_local $11)
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $12
     (i32.add
      (get_local $12)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<u64,u64>|inlined.3 (result i64)
    (i64.load offset=8
     (i32.add
      (get_local $5)
      (i32.shl
       (get_local $2)
       (i32.const 3)
      )
     )
    )
   )
  )
  (set_local $11
   (i32.add
    (get_local $11)
    (call $~lib/internal/number/itoa_stream<u64>
     (get_local $10)
     (get_local $11)
     (get_local $4)
    )
   )
  )
  (set_local $12
   (get_local $10)
  )
  (if
   (i32.gt_s
    (get_local $9)
    (get_local $11)
   )
   (block
    (set_local $12
     (call $~lib/string/String#substring
      (get_local $10)
      (i32.const 0)
      (get_local $11)
     )
    )
    (block $~lib/internal/string/freeUnsafe|inlined.8
     (block
      (if
       (i32.eqz
        (get_local $10)
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
      (block $~lib/memory/memory.free|inlined.12
       (block
        (call $~lib/allocator/arena/__memory_free
         (get_local $10)
        )
        (br $~lib/memory/memory.free|inlined.12)
       )
      )
     )
    )
   )
  )
  (return
   (get_local $12)
  )
 )
 (func $~lib/internal/number/itoa64 (; 201 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i64.eqz
    (get_local $0)
   )
   (return
    (i32.const 1872)
   )
  )
  (set_local $1
   (i64.lt_s
    (get_local $0)
    (i64.const 0)
   )
  )
  (if
   (get_local $1)
   (set_local $0
    (i64.sub
     (i64.const 0)
     (get_local $0)
    )
   )
  )
  (if
   (i64.le_u
    (get_local $0)
    (i64.extend_u/i32
     (get_global $~lib/builtins/u32.MAX_VALUE)
    )
   )
   (block
    (set_local $3
     (i32.wrap/i64
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (call $~lib/internal/number/decimalCount32
       (get_local $3)
      )
      (get_local $1)
     )
    )
    (set_local $2
     (call $~lib/internal/string/allocateUnsafe
      (get_local $4)
     )
    )
    (block $~lib/internal/number/utoa32_core|inlined.10
     (call $~lib/internal/number/utoa32_lut
      (get_local $2)
      (get_local $3)
      (get_local $4)
     )
    )
   )
   (block
    (set_local $4
     (i32.add
      (call $~lib/internal/number/decimalCount64
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (set_local $2
     (call $~lib/internal/string/allocateUnsafe
      (get_local $4)
     )
    )
    (block $~lib/internal/number/utoa64_core|inlined.2
     (call $~lib/internal/number/utoa64_lut
      (get_local $2)
      (get_local $0)
      (get_local $4)
     )
    )
   )
  )
  (if
   (get_local $1)
   (i32.store16 offset=4
    (get_local $2)
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/number/itoa<i64> (; 202 ;) (type $Ii) (param $0 i64) (result i32)
  (return
   (call $~lib/internal/number/itoa64
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/number/itoa_stream<i64> (; 203 ;) (type $iiIi) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i64.eqz
    (get_local $2)
   )
   (block
    (i32.store16 offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/CharCode._0)
    )
    (return
     (i32.const 1)
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (set_local $4
   (i64.lt_s
    (get_local $2)
    (i64.const 0)
   )
  )
  (if
   (get_local $4)
   (set_local $2
    (i64.sub
     (i64.const 0)
     (get_local $2)
    )
   )
  )
  (if
   (i64.le_u
    (get_local $2)
    (i64.extend_u/i32
     (get_global $~lib/builtins/u32.MAX_VALUE)
    )
   )
   (block
    (set_local $5
     (i32.wrap/i64
      (get_local $2)
     )
    )
    (set_local $3
     (i32.add
      (call $~lib/internal/number/decimalCount32
       (get_local $5)
      )
      (get_local $4)
     )
    )
    (block $~lib/internal/number/utoa32_core|inlined.11
     (set_local $6
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $1)
        (i32.const 1)
       )
      )
     )
     (call $~lib/internal/number/utoa32_lut
      (get_local $6)
      (get_local $5)
      (get_local $3)
     )
    )
   )
   (block
    (set_local $3
     (i32.add
      (call $~lib/internal/number/decimalCount64
       (get_local $2)
      )
      (get_local $4)
     )
    )
    (block $~lib/internal/number/utoa64_core|inlined.3
     (set_local $5
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $1)
        (i32.const 1)
       )
      )
     )
     (call $~lib/internal/number/utoa64_lut
      (get_local $5)
      (get_local $2)
      (get_local $3)
     )
    )
   )
  )
  (if
   (get_local $4)
   (i32.store16 offset=4
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
  )
  (get_local $3)
 )
 (func $~lib/array/Array<i64>#join (; 204 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (call $~lib/internal/number/itoa<i64>
     (block $~lib/internal/arraybuffer/loadUnsafe<i64,i64>|inlined.0 (result i64)
      (set_local $8
       (i32.const 0)
      )
      (i64.load offset=8
       (i32.add
        (get_local $5)
        (i32.shl
         (get_local $8)
         (i32.const 3)
        )
       )
      )
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (i32.const 20)
    (i32.const 1)
   )
  )
  (set_local $9
   (i32.add
    (i32.mul
     (i32.add
      (get_local $8)
      (get_local $6)
     )
     (get_local $2)
    )
    (get_local $8)
   )
  )
  (set_local $10
   (call $~lib/internal/string/allocateUnsafe
    (get_local $9)
   )
  )
  (set_local $11
   (i32.const 0)
  )
  (block $break|0
   (set_local $12
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $12)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<i64,i64>|inlined.1 (result i64)
       (i64.load offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $12)
          (i32.const 3)
         )
        )
       )
      )
     )
     (set_local $11
      (i32.add
       (get_local $11)
       (call $~lib/internal/number/itoa_stream<i64>
        (get_local $10)
        (get_local $11)
        (get_local $4)
       )
      )
     )
     (if
      (get_local $7)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $10)
        (get_local $11)
        (get_local $1)
        (i32.const 0)
        (get_local $6)
       )
       (set_local $11
        (i32.add
         (get_local $11)
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $12
     (i32.add
      (get_local $12)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<i64,i64>|inlined.2 (result i64)
    (i64.load offset=8
     (i32.add
      (get_local $5)
      (i32.shl
       (get_local $2)
       (i32.const 3)
      )
     )
    )
   )
  )
  (set_local $11
   (i32.add
    (get_local $11)
    (call $~lib/internal/number/itoa_stream<i64>
     (get_local $10)
     (get_local $11)
     (get_local $4)
    )
   )
  )
  (set_local $12
   (get_local $10)
  )
  (if
   (i32.gt_s
    (get_local $9)
    (get_local $11)
   )
   (block
    (set_local $12
     (call $~lib/string/String#substring
      (get_local $10)
      (i32.const 0)
      (get_local $11)
     )
    )
    (block $~lib/internal/string/freeUnsafe|inlined.9
     (block
      (if
       (i32.eqz
        (get_local $10)
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
      (block $~lib/memory/memory.free|inlined.13
       (block
        (call $~lib/allocator/arena/__memory_free
         (get_local $10)
        )
        (br $~lib/memory/memory.free|inlined.13)
       )
      )
     )
    )
   )
  )
  (return
   (get_local $12)
  )
 )
 (func $~lib/array/Array<Array<i32>>#join (; 205 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $8
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $8)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.3 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $8)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (get_local $4)
      (set_local $3
       (call $~lib/string/String.__concat
        (get_local $3)
        (call $~lib/array/Array<i32>#join
         (get_local $4)
         (get_local $1)
        )
       )
      )
     )
     (if
      (get_local $7)
      (set_local $3
       (call $~lib/string/String.__concat
        (get_local $3)
        (get_local $1)
       )
      )
     )
    )
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.4 (result i32)
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
  )
  (if
   (get_local $4)
   (set_local $3
    (call $~lib/string/String.__concat
     (get_local $3)
     (call $~lib/array/Array<i32>#join
      (get_local $4)
      (get_local $1)
     )
    )
   )
  )
  (get_local $3)
 )
 (func $~lib/internal/number/itoa<u8> (; 206 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/number/utoa32
    (i32.and
     (get_local $0)
     (i32.const 255)
    )
   )
  )
 )
 (func $~lib/internal/number/itoa_stream<u8> (; 207 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (i32.and
     (get_local $2)
     (i32.const 255)
    )
   )
   (block
    (i32.store16 offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/CharCode._0)
    )
    (return
     (i32.const 1)
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (set_local $3
   (call $~lib/internal/number/decimalCount32
    (i32.and
     (get_local $2)
     (i32.const 255)
    )
   )
  )
  (block $~lib/internal/number/utoa32_core|inlined.12
   (set_local $4
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
   )
   (set_local $5
    (i32.and
     (get_local $2)
     (i32.const 255)
    )
   )
   (call $~lib/internal/number/utoa32_lut
    (get_local $4)
    (get_local $5)
    (get_local $3)
   )
  )
  (get_local $3)
 )
 (func $~lib/array/Array<u8>#join (; 208 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (call $~lib/internal/number/itoa<u8>
     (block $~lib/internal/arraybuffer/loadUnsafe<u8,u8>|inlined.1 (result i32)
      (set_local $8
       (i32.const 0)
      )
      (i32.load8_u offset=8
       (i32.add
        (get_local $5)
        (i32.shl
         (get_local $8)
         (i32.const 0)
        )
       )
      )
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (i32.const 10)
    (i32.const 0)
   )
  )
  (set_local $9
   (i32.add
    (i32.mul
     (i32.add
      (get_local $8)
      (get_local $6)
     )
     (get_local $2)
    )
    (get_local $8)
   )
  )
  (set_local $10
   (call $~lib/internal/string/allocateUnsafe
    (get_local $9)
   )
  )
  (set_local $11
   (i32.const 0)
  )
  (block $break|0
   (set_local $12
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $12)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<u8,u8>|inlined.2 (result i32)
       (i32.load8_u offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $12)
          (i32.const 0)
         )
        )
       )
      )
     )
     (set_local $11
      (i32.add
       (get_local $11)
       (call $~lib/internal/number/itoa_stream<u8>
        (get_local $10)
        (get_local $11)
        (get_local $4)
       )
      )
     )
     (if
      (get_local $7)
      (block
       (call $~lib/internal/string/copyUnsafe
        (get_local $10)
        (get_local $11)
        (get_local $1)
        (i32.const 0)
        (get_local $6)
       )
       (set_local $11
        (i32.add
         (get_local $11)
         (get_local $6)
        )
       )
      )
     )
    )
    (set_local $12
     (i32.add
      (get_local $12)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<u8,u8>|inlined.3 (result i32)
    (i32.load8_u offset=8
     (i32.add
      (get_local $5)
      (i32.shl
       (get_local $2)
       (i32.const 0)
      )
     )
    )
   )
  )
  (set_local $11
   (i32.add
    (get_local $11)
    (call $~lib/internal/number/itoa_stream<u8>
     (get_local $10)
     (get_local $11)
     (get_local $4)
    )
   )
  )
  (set_local $12
   (get_local $10)
  )
  (if
   (i32.gt_s
    (get_local $9)
    (get_local $11)
   )
   (block
    (set_local $12
     (call $~lib/string/String#substring
      (get_local $10)
      (i32.const 0)
      (get_local $11)
     )
    )
    (block $~lib/internal/string/freeUnsafe|inlined.10
     (block
      (if
       (i32.eqz
        (get_local $10)
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
      (block $~lib/memory/memory.free|inlined.14
       (block
        (call $~lib/allocator/arena/__memory_free
         (get_local $10)
        )
        (br $~lib/memory/memory.free|inlined.14)
       )
      )
     )
    )
   )
  )
  (return
   (get_local $12)
  )
 )
 (func $~lib/array/Array<Array<u8>>#join (; 209 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $2
   (i32.sub
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (return
    (i32.const 1464)
   )
  )
  (set_local $3
   (i32.const 1464)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $8
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $8)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<Array<u8>,Array<u8>>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $5)
         (i32.shl
          (get_local $8)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (get_local $4)
      (set_local $3
       (call $~lib/string/String.__concat
        (get_local $3)
        (call $~lib/array/Array<u8>#join
         (get_local $4)
         (get_local $1)
        )
       )
      )
     )
     (if
      (get_local $7)
      (set_local $3
       (call $~lib/string/String.__concat
        (get_local $3)
        (get_local $1)
       )
      )
     )
    )
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<Array<u8>,Array<u8>>|inlined.1 (result i32)
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
  )
  (if
   (get_local $4)
   (set_local $3
    (call $~lib/string/String.__concat
     (get_local $3)
     (call $~lib/array/Array<u8>#join
      (get_local $4)
      (get_local $1)
     )
    )
   )
  )
  (get_local $3)
 )
 (func $start (; 210 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $std/array/arr
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
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
     (i32.const 0)
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
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 1)
    )
    (call $~lib/array/Array<u8>#fill|trampoline
     (get_global $std/array/arr8)
     (i32.const 0)
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u8>
     (get_global $std/array/arr8)
     (i32.const 200)
     (i32.const 0)
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
     (i32.const 0)
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
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 2)
    )
    (call $~lib/array/Array<u8>#fill|trampoline
     (get_global $std/array/arr8)
     (i32.const 2)
     (i32.const -2)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u8>
     (get_global $std/array/arr8)
     (i32.const 248)
     (i32.const 0)
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
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 1)
    )
    (call $~lib/array/Array<u32>#fill|trampoline
     (get_global $std/array/arr32)
     (i32.const 0)
     (i32.const 0)
     (i32.const 0)
    )
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
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 2)
    )
    (call $~lib/array/Array<u32>#fill|trampoline
     (get_global $std/array/arr32)
     (i32.const 2)
     (i32.const -2)
     (i32.const 0)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.0 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 0)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 0)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.1 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.2 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 0)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.3 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 43)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.4 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 43)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 44)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.5 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 3)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 3)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 43)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 44)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 45)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.6 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 4)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 4)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 44)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 3)
     )
     (i32.const 45)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.7 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 5)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 41)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 43)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 3)
     )
     (i32.const 44)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 4)
     )
     (i32.const 45)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 41)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.8 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 4)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 44)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 3)
     )
     (i32.const 45)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 45)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.9 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 3)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 44)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.10 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 3)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 44)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 0)
    )
   )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 3)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 3)
    )
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
   (i32.and
    (block $~lib/array/Array<i32>#includes|inlined.0 (result i32)
     (set_local $0
      (get_global $std/array/arr)
     )
     (set_local $1
      (i32.const 44)
     )
     (set_local $2
      (i32.const 0)
     )
     (i32.ge_s
      (call $~lib/array/Array<i32>#indexOf
       (get_local $0)
       (get_local $1)
       (get_local $2)
      )
      (i32.const 0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
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
   (i32.and
    (block $~lib/array/Array<i32>#includes|inlined.1 (result i32)
     (set_local $2
      (get_global $std/array/arr)
     )
     (set_local $1
      (i32.const 42)
     )
     (set_local $0
      (i32.const 0)
     )
     (i32.ge_s
      (call $~lib/array/Array<i32>#indexOf
       (get_local $2)
       (get_local $1)
       (get_local $0)
      )
      (i32.const 0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
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
   (i32.and
    (block $~lib/array/Array<i32>#includes|inlined.2 (result i32)
     (set_local $0
      (get_global $std/array/arr)
     )
     (set_local $1
      (i32.const 45)
     )
     (set_local $2
      (i32.const 0)
     )
     (i32.ge_s
      (call $~lib/array/Array<i32>#indexOf
       (get_local $0)
       (get_local $1)
       (get_local $2)
      )
      (i32.const 0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 0)
    )
   )
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
   (i32.and
    (block $~lib/array/Array<i32>#includes|inlined.3 (result i32)
     (set_local $2
      (get_global $std/array/arr)
     )
     (set_local $1
      (i32.const 43)
     )
     (set_local $0
      (i32.const 100)
     )
     (i32.ge_s
      (call $~lib/array/Array<i32>#indexOf
       (get_local $2)
       (get_local $1)
       (get_local $0)
      )
      (i32.const 0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 0)
    )
   )
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
   (i32.and
    (block $~lib/array/Array<i32>#includes|inlined.4 (result i32)
     (set_local $0
      (get_global $std/array/arr)
     )
     (set_local $1
      (i32.const 43)
     )
     (set_local $2
      (i32.const -100)
     )
     (i32.ge_s
      (call $~lib/array/Array<i32>#indexOf
       (get_local $0)
       (get_local $1)
       (get_local $2)
      )
      (i32.const 0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
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
   (i32.and
    (block $~lib/array/Array<i32>#includes|inlined.5 (result i32)
     (set_local $2
      (get_global $std/array/arr)
     )
     (set_local $1
      (i32.const 43)
     )
     (set_local $0
      (i32.const -2)
     )
     (i32.ge_s
      (call $~lib/array/Array<i32>#indexOf
       (get_local $2)
       (get_local $1)
       (get_local $0)
      )
      (i32.const 0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
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
   (i32.and
    (block $~lib/array/Array<i32>#includes|inlined.6 (result i32)
     (set_local $0
      (get_global $std/array/arr)
     )
     (set_local $1
      (i32.const 43)
     )
     (set_local $2
      (i32.const -4)
     )
     (i32.ge_s
      (call $~lib/array/Array<i32>#indexOf
       (get_local $0)
       (get_local $1)
       (get_local $2)
      )
      (i32.const 0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
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
   (i32.and
    (block $~lib/array/Array<i32>#includes|inlined.7 (result i32)
     (set_local $2
      (get_global $std/array/arr)
     )
     (set_local $1
      (i32.const 43)
     )
     (set_local $0
      (i32.const 0)
     )
     (i32.ge_s
      (call $~lib/array/Array<i32>#indexOf
       (get_local $2)
       (get_local $1)
       (get_local $0)
      )
      (i32.const 0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
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
   (i32.and
    (block $~lib/array/Array<i32>#includes|inlined.8 (result i32)
     (set_local $0
      (get_global $std/array/arr)
     )
     (set_local $1
      (i32.const 43)
     )
     (set_local $2
      (i32.const 1)
     )
     (i32.ge_s
      (call $~lib/array/Array<i32>#indexOf
       (get_local $0)
       (get_local $1)
       (get_local $2)
      )
      (i32.const 0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
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
   (i32.and
    (block $~lib/array/Array<i32>#includes|inlined.9 (result i32)
     (set_local $2
      (get_global $std/array/arr)
     )
     (set_local $1
      (i32.const 43)
     )
     (set_local $0
      (i32.const 2)
     )
     (i32.ge_s
      (call $~lib/array/Array<i32>#indexOf
       (get_local $2)
       (get_local $1)
       (get_local $0)
      )
      (i32.const 0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
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
   (i32.const 1)
   (i32.const 1)
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.11 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 4)
    )
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
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 44)
    )
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
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 0)
    )
   )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.12 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
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
   (i32.eqz
    (i32.ne
     (get_global $std/array/i)
     (i32.const -1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.13 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 0)
    )
   )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.14 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 0)
    )
   )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.15 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 0)
    )
   )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 0)
    )
   )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.16 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 0)
    )
   )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.17 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.18 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 406)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.19 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
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
    (i32.const 21)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<f32>#get:length|inlined.0 (result i32)
      (set_local $0
       (get_global $std/array/newArr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 4)
    )
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
   (i32.eqz
    (f32.eq
     (call $~lib/array/Array<f32>#__get
      (get_global $std/array/newArr)
      (i32.const 0)
     )
     (f32.convert_s/i32
      (call $~lib/array/Array<i32>#__get
       (get_global $std/array/arr)
       (i32.const 0)
      )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.20 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 406)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.21 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.22 (result i32)
      (set_local $0
       (get_global $std/array/filteredArr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.23 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 406)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.24 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 10)
    )
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
    (call $~lib/array/Array<i32>#reduce<bool>
     (get_global $std/array/arr)
     (i32.const 31)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/boolVal)
     (i32.const 1)
    )
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
    (call $~lib/array/Array<i32>#reduce<bool>
     (get_global $std/array/arr)
     (i32.const 32)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/boolVal)
     (i32.const 0)
    )
   )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.25 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 10)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.26 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 10)
    )
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
    (call $~lib/array/Array<i32>#reduceRight<bool>
     (get_global $std/array/arr)
     (i32.const 38)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/boolVal)
     (i32.const 1)
    )
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
    (call $~lib/array/Array<i32>#reduceRight<bool>
     (get_global $std/array/arr)
     (i32.const 39)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/boolVal)
     (i32.const 0)
    )
   )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.27 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 10)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
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
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.28 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 0)
    )
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
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $~lib/array/Array<f32>#sort|trampoline
     (get_global $std/array/f32ArrayTyped)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<f32>
     (get_global $std/array/f32ArrayTyped)
     (i32.const 800)
     (i32.const 0)
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
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $~lib/array/Array<f64>#sort|trampoline
     (get_global $std/array/f64ArrayTyped)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<f64>
     (get_global $std/array/f64ArrayTyped)
     (i32.const 1072)
     (i32.const 0)
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
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $~lib/array/Array<i32>#sort|trampoline
     (get_global $std/array/i32ArrayTyped)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
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
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $~lib/array/Array<u32>#sort|trampoline
     (get_global $std/array/u32ArrayTyped)
     (i32.const 0)
    )
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
    (call $std/array/isArraysEqual<i32>
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
    (call $std/array/isArraysEqual<i32>
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
    (call $std/array/isArraysEqual<i32>
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
    (call $std/array/isArraysEqual<i32>
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
    (call $std/array/isArraysEqual<i32>
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
    (call $std/array/isArraysEqual<i32>
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
    (call $std/array/isArraysEqual<i32>
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
   (call $std/array/createReverseOrderedNestedArray
    (i32.const 512)
   )
  )
  (call $std/array/assertSorted<Array<i32>>
   (get_global $std/array/reversedNested512)
   (i32.const 52)
  )
  (set_global $std/array/reversedElements512
   (call $std/array/createReverseOrderedElementsArray
    (i32.const 512)
   )
  )
  (call $std/array/assertSorted<Proxy<i32>>
   (get_global $std/array/reversedElements512)
   (i32.const 53)
  )
  (call $std/array/assertSorted<String>
   (get_global $std/array/randomStringsActual)
   (i32.const 54)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<String>
     (get_global $std/array/randomStringsActual)
     (get_global $std/array/randomStringsExpected)
     (i32.const 0)
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
   (call $std/array/createRandomStringArray
    (i32.const 400)
   )
  )
  (call $std/array/assertSorted<String>
   (get_global $std/array/randomStrings400)
   (i32.const 55)
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<bool>#join
      (i32.const 1800)
      (i32.const 1776)
     )
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
     (call $~lib/array/Array<u32>#join
      (i32.const 2536)
      (i32.const 2496)
     )
     (i32.const 2440)
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
     (call $~lib/array/Array<i32>#join
      (i32.const 2592)
      (i32.const 2568)
     )
     (i32.const 2600)
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
     (call $~lib/array/Array<f64>#join
      (i32.const 4248)
      (i32.const 2728)
     )
     (i32.const 4256)
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
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<String>#join
      (i32.const 4424)
      (i32.const 1464)
     )
     (i32.const 4344)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 743)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/refArr
   (block (result i32)
    (set_local $0
     (call $~lib/array/Array<Ref>#constructor
      (i32.const 0)
      (i32.const 3)
     )
    )
    (call $~lib/array/Array<Ref>#__unchecked_set
     (get_local $0)
     (i32.const 0)
     (call $std/array/Ref#constructor
      (i32.const 0)
     )
    )
    (call $~lib/array/Array<Ref>#__unchecked_set
     (get_local $0)
     (i32.const 1)
     (i32.const 0)
    )
    (call $~lib/array/Array<Ref>#__unchecked_set
     (get_local $0)
     (i32.const 2)
     (call $std/array/Ref#constructor
      (i32.const 0)
     )
    )
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/array/Array<Ref>#join
      (get_global $std/array/refArr)
      (i32.const 1776)
     )
     (i32.const 4472)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 745)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block $~lib/array/Array<i32>#toString|inlined.1 (result i32)
      (set_local $0
       (get_global $std/array/reversed0)
      )
      (call $~lib/array/Array<i32>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 1464)
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
     (block $~lib/array/Array<i32>#toString|inlined.3 (result i32)
      (set_local $0
       (get_global $std/array/reversed1)
      )
      (call $~lib/array/Array<i32>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 4344)
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
     (block $~lib/array/Array<i32>#toString|inlined.5 (result i32)
      (set_local $0
       (get_global $std/array/reversed2)
      )
      (call $~lib/array/Array<i32>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 4544)
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
     (block $~lib/array/Array<i32>#toString|inlined.7 (result i32)
      (set_local $0
       (get_global $std/array/reversed4)
      )
      (call $~lib/array/Array<i32>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 4560)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 752)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block $~lib/array/Array<i8>#toString|inlined.1 (result i32)
      (set_local $0
       (i32.const 4624)
      )
      (call $~lib/array/Array<i8>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 4632)
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
     (block $~lib/array/Array<u16>#toString|inlined.1 (result i32)
      (set_local $0
       (i32.const 4688)
      )
      (call $~lib/array/Array<u16>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 4696)
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
     (block $~lib/array/Array<u64>#toString|inlined.1 (result i32)
      (set_local $0
       (i32.const 5312)
      )
      (call $~lib/array/Array<u64>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 5320)
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
     (block $~lib/array/Array<i64>#toString|inlined.1 (result i32)
      (set_local $0
       (i32.const 5512)
      )
      (call $~lib/array/Array<i64>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 5520)
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
     (block $~lib/array/Array<String>#toString|inlined.1 (result i32)
      (set_local $0
       (get_global $std/array/randomStringsExpected)
      )
      (call $~lib/array/Array<String>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 5608)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 758)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block $~lib/array/Array<String>#toString|inlined.3 (result i32)
      (set_local $0
       (i32.const 5728)
      )
      (call $~lib/array/Array<String>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 5736)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 759)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block $~lib/array/Array<Array<i32>>#toString|inlined.1 (result i32)
      (set_local $0
       (get_global $std/array/subarr32)
      )
      (call $~lib/array/Array<Array<i32>>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 5824)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 762)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block $~lib/array/Array<Array<u8>>#toString|inlined.1 (result i32)
      (set_local $0
       (get_global $std/array/subarr8)
      )
      (call $~lib/array/Array<Array<u8>>#join
       (get_local $0)
       (i32.const 1776)
      )
     )
     (i32.const 5824)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 152)
     (i32.const 765)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
 (func $null (; 211 ;) (type $v)
 )
)
