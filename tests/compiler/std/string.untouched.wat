(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iF (func (param i32) (result f64)))
 (type $iI (func (param i32) (result i64)))
 (type $iv (func (param i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $std/string/str (mut i32) (i32.const 8))
 (global $std/string/nullStr (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $NaN f64 (f64.const nan:0x8000000000000))
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
 (global $~lib/internal/string/CharCode.O i32 (i32.const 79))
 (global $~lib/internal/string/CharCode.X i32 (i32.const 88))
 (global $~lib/internal/string/CharCode.Z i32 (i32.const 90))
 (global $~lib/internal/string/CharCode.a i32 (i32.const 97))
 (global $~lib/internal/string/CharCode.b i32 (i32.const 98))
 (global $~lib/internal/string/CharCode.e i32 (i32.const 101))
 (global $~lib/internal/string/CharCode.o i32 (i32.const 111))
 (global $~lib/internal/string/CharCode.x i32 (i32.const 120))
 (global $~lib/internal/string/CharCode.z i32 (i32.const 122))
 (global $std/string/c (mut i32) (i32.const 0))
 (global $std/string/a (mut i32) (i32.const 0))
 (global $std/string/b (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $~lib/builtins/i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $HEAP_BASE i32 (i32.const 4620))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 48) "\0d\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 80) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 112) "\01\00\00\00\00\00")
 (data (i32.const 120) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 176) "\01\00\00\006\00")
 (data (i32.const 184) "\02\00\00\004\d8\06\df")
 (data (i32.const 192) "\02\00\00\00h\00i\00")
 (data (i32.const 200) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 216) "\06\00\00\00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 232) "\03\00\00\00I\00\'\00m\00")
 (data (i32.const 248) "\01\00\00\00 \00")
 (data (i32.const 256) "\00\00\00\00")
 (data (i32.const 264) "\03\00\00\00 \00 \00 \00")
 (data (i32.const 280) "\01\00\00\00a\00")
 (data (i32.const 288) "\03\00\00\00a\00b\00c\00")
 (data (i32.const 304) "\05\00\00\00 \00 \00a\00b\00c\00")
 (data (i32.const 320) "\03\00\00\001\002\003\00")
 (data (i32.const 336) "\06\00\00\001\002\003\00a\00b\00c\00")
 (data (i32.const 352) "\08\00\00\001\002\003\001\002\00a\00b\00c\00")
 (data (i32.const 376) "\05\00\00\00a\00b\00c\00 \00 \00")
 (data (i32.const 392) "\06\00\00\00a\00b\00c\00a\00b\00c\00")
 (data (i32.const 408) "\08\00\00\00a\00b\00c\00a\00b\00c\00a\00b\00")
 (data (i32.const 432) "\01\00\00\00,\00")
 (data (i32.const 440) "\01\00\00\00x\00")
 (data (i32.const 448) "\03\00\00\00,\00 \00I\00")
 (data (i32.const 464) "\01\00\00\00g\00")
 (data (i32.const 472) "\01\00\00\00i\00")
 (data (i32.const 480) "\01\00\00\000\00")
 (data (i32.const 488) "\01\00\00\001\00")
 (data (i32.const 496) "\05\00\00\000\00b\001\000\001\00")
 (data (i32.const 512) "\05\00\00\000\00o\007\000\007\00")
 (data (i32.const 528) "\05\00\00\000\00x\00f\000\00f\00")
 (data (i32.const 544) "\05\00\00\000\00x\00F\000\00F\00")
 (data (i32.const 560) "\03\00\00\000\001\001\00")
 (data (i32.const 576) "\04\00\00\000\00x\001\00g\00")
 (data (i32.const 592) "\03\00\00\000\00.\001\00")
 (data (i32.const 608) "\03\00\00\00.\002\005\00")
 (data (i32.const 624) "\08\00\00\00.\001\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 648) "\01\00\00\00b\00")
 (data (i32.const 656) "\02\00\00\00a\00b\00")
 (data (i32.const 664) "\02\00\00\00b\00a\00")
 (data (i32.const 672) "\02\00\00\00a\00a\00")
 (data (i32.const 680) "\03\00\00\00a\00a\00a\00")
 (data (i32.const 696) "\08\00\00\00a\00b\00a\00b\00a\00b\00a\00b\00")
 (data (i32.const 720) "\05\00\00\00a\00a\00a\00a\00a\00")
 (data (i32.const 736) "\06\00\00\00a\00a\00a\00a\00a\00a\00")
 (data (i32.const 752) "\07\00\00\00a\00a\00a\00a\00a\00a\00a\00")
 (data (i32.const 776) "\n\00\00\000\009\00_\00A\00Z\00 \00a\00z\00.\00!\00")
 (data (i32.const 800) "\n\00\00\000\009\00_\00A\00Z\00 \00A\00Z\00.\00!\00")
 (data (i32.const 824) "\n\00\00\000\009\00_\00a\00z\00 \00a\00z\00.\00!\00")
 (data (i32.const 848) "%\00\00\00D\00e\00r\00 \00W\00e\00c\00h\00s\00e\00l\00 \00a\00l\00l\00e\00i\00n\00 \00i\00s\00t\00 \00d\00a\00s\00 \00B\00e\00s\00t\00\e4\00n\00d\00i\00g\00e\00")
 (data (i32.const 928) "%\00\00\00D\00E\00R\00 \00W\00E\00C\00H\00S\00E\00L\00 \00A\00L\00L\00E\00I\00N\00 \00I\00S\00T\00 \00D\00A\00S\00 \00B\00E\00S\00T\00\c4\00N\00D\00I\00G\00E\00")
 (data (i32.const 1008) "%\00\00\00d\00e\00r\00 \00w\00e\00c\00h\00s\00e\00l\00 \00a\00l\00l\00e\00i\00n\00 \00i\00s\00t\00 \00d\00a\00s\00 \00b\00e\00s\00t\00\e4\00n\00d\00i\00g\00e\00")
 (data (i32.const 1088) "\12\00\00\00@\00 \00\14  \00\14\04@\04C\043\04 \00G\045\04;\04>\042\045\04:\040\04!\00")
 (data (i32.const 1128) "\12\00\00\00@\00 \00\14  \00\14\04 \04#\04\13\04 \00\'\04\15\04\1b\04\1e\04\12\04\15\04\1a\04\10\04!\00")
 (data (i32.const 1168) "\12\00\00\00@\00 \00\14  \004\04@\04C\043\04 \00G\045\04;\04>\042\045\04:\040\04!\00")
 (data (i32.const 1208) "\"\00\00\00.\" \00E\00\c5\"d\00a\00 \00=\00 \00Q\00,\00 \00n\00 \00\92! \00\1e\",\00 \00\11\" \00f\00(\00i\00)\00 \00=\00 \00\0f\" \00g\00(\00i\00)\00")
 (data (i32.const 1280) "\"\00\00\00.\" \00E\00\c5\"D\00A\00 \00=\00 \00Q\00,\00 \00N\00 \00\92! \00\1e\",\00 \00\11\" \00F\00(\00I\00)\00 \00=\00 \00\0f\" \00G\00(\00I\00)\00")
 (data (i32.const 1352) "\"\00\00\00.\" \00e\00\c5\"d\00a\00 \00=\00 \00q\00,\00 \00n\00 \00\92! \00\1e\",\00 \00\11\" \00f\00(\00i\00)\00 \00=\00 \00\0f\" \00g\00(\00i\00)\00")
 (data (i32.const 1424) "$\00\00\00\f0\00i\00 \001\01n\00t\00Y\02\c8\02n\00\e6\00\83\02Y\02n\00Y\02l\00 \00f\00Y\02\c8\02n\00[\02t\001\01k\00 \00Y\02s\00o\00\8a\02s\00i\00\c8\02e\001\01\83\02n\00")
 (data (i32.const 1504) "$\00\00\00\d0\00I\00 \00I\00N\00T\00\8f\01\c8\02N\00\c6\00\a9\01\8f\01N\00\8f\01L\00 \00F\00\8f\01\c8\02N\00\90\01T\00I\00K\00 \00\8f\01S\00O\00\b1\01S\00I\00\c8\02E\00I\00\a9\01N\00")
 (data (i32.const 1584) "$\00\00\00\f0\00i\00 \00i\00n\00t\00Y\02\c8\02n\00\e6\00\83\02Y\02n\00Y\02l\00 \00f\00Y\02\c8\02n\00[\02t\00i\00k\00 \00Y\02s\00o\00\8a\02s\00i\00\c8\02e\00i\00\83\02n\00")
 (data (i32.const 1664) "\17\00\00\00\a3\03r\1f \00\b3\03\bd\03\c9\03\c1\03\af\03\b6\03\c9\03 \00\00\1f\c0\03x\1f \00\c4\03t\1f\bd\03 \00\ba\03\cc\03\c8\03\b7\03")
 (data (i32.const 1720) "\17\00\00\00\a3\03\c8\1f \00\93\03\9d\03\a9\03\a1\03\8a\03\96\03\a9\03 \00\08\1f\a0\03\f8\1f \00\a4\03\ca\1f\9d\03 \00\9a\03\8c\03\a8\03\97\03")
 (data (i32.const 1776) "\16\00\00\00\c3\03r\1f \00\b3\03\bd\03\c9\03\c1\03\af\03\b6\03\c9\03 \00\00\1f\c0\03x\1f \00\c4\03t\1f\bd\03 \00D\1f\c8\03\b7\03")
 (data (i32.const 1824) "\16\00\00\00\a3\03\c8\1f \00\93\03\9d\03\a9\03\a1\03\8a\03\96\03\a9\03 \00\08\1f\a0\03\f8\1f \00\a4\03\ca\1f\9d\03 \00L\1f\a8\03\97\03")
 (data (i32.const 1872) "\17\00\00\00\91\03\c0\03\bf\1f \00\c4\03p\1f \00\ba\03\cc\03\ba\03\ba\03\b1\03\bb\03\b1\03 \00\b2\03\b3\03\b1\03\bb\03\bc\03\ad\03\bd\03\b7\03")
 (data (i32.const 1928) "\17\00\00\00\91\03\a0\03\bf\1f \00\a4\03\ba\1f \00\9a\03\8c\03\9a\03\9a\03\91\03\9b\03\91\03 \00\92\03\93\03\91\03\9b\03\9c\03\88\03\9d\03\97\03")
 (data (i32.const 1984) "@\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00 \00/\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00")
 (data (i32.const 2120) "@\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00 \00/\000\001\002\003\004\005\006\007\008\009\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00")
 (data (i32.const 2256) "@\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00 \00/\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00")
 (data (i32.const 2392) "\01\00\00\00\df\00")
 (data (i32.const 2400) "\01\00\00\00\01\fb")
 (data (i32.const 2408) "\\\00\00\00A\d8\0e\df \00A\d81\df \00A\d8y\df \00C\d8S\dc \00C\d8x\dc \00C\d8\96\dc \00C\d8\cf\dc \00C\d8\d5\dc \00C\d8\15\dd \00C\d8|\dd \00C\d8\7f\dd \00C\d8\0e\de \00C\d8\0f\de \00C\d8w\de \00C\d8\9d\de \00C\d8\a2\de \00C\d8\d7\de \00C\d8\f9\de \00C\d8\fa\de \00C\d8-\df \00C\d8.\df \00C\d8L\df \00C\d8\b4\df \00C\d8\bc\df \00C\d8\ea\df \00D\d8\\\dc \00D\d8o\dc \00D\d8u\dc \00D\d8v\dc \00D\d8{\dc \00D\d8\c1\dc")
 (data (i32.const 2600) "(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2664) "(\n\00\00\n\00\00\00")
 (data (i32.const 2672) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3184) "p\n\00\00d\00\00\00")
 (data (i32.const 3192) "\01\00\00\008\00")
 (data (i32.const 3200) "\05\00\00\00-\001\000\000\000\00")
 (data (i32.const 3216) "\04\00\00\001\002\003\004\00")
 (data (i32.const 3232) "\05\00\00\001\002\003\004\005\00")
 (data (i32.const 3248) "\06\00\00\001\002\003\004\005\006\00")
 (data (i32.const 3264) "\07\00\00\001\001\001\001\001\001\001\00")
 (data (i32.const 3288) "\07\00\00\001\002\003\004\005\006\007\00")
 (data (i32.const 3312) "\n\00\00\002\001\004\007\004\008\003\006\004\006\00")
 (data (i32.const 3336) "\n\00\00\002\001\004\007\004\008\003\006\004\007\00")
 (data (i32.const 3360) "\0b\00\00\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 3392) "\02\00\00\00-\001\00")
 (data (i32.const 3400) "\04\00\00\001\000\000\000\00")
 (data (i32.const 3416) "\n\00\00\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 3440) "\n\00\00\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 3464) "(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3528) "\88\0d\00\00\n\00\00\00")
 (data (i32.const 3536) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4048) "\d0\0d\00\00d\00\00\00")
 (data (i32.const 4056) "\08\00\00\009\009\009\009\009\009\009\009\00")
 (data (i32.const 4080) "\t\00\00\001\000\000\000\000\000\000\000\000\00")
 (data (i32.const 4104) "\0b\00\00\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4136) "\0c\00\00\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4168) "\0f\00\00\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4208) "\10\00\00\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4248) "\11\00\00\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4288) "\14\00\00\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00")
 (data (i32.const 4336) "\05\00\00\00-\001\002\003\004\00")
 (data (i32.const 4352) "\0b\00\00\00-\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 4384) "\0c\00\00\00-\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4416) "\0d\00\00\00-\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4448) "\10\00\00\00-\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4488) "\12\00\00\00-\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 4528) "\13\00\00\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 4576) "\14\00\00\00-\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\008\00")
 (export "memory" (memory $0))
 (export "getString" (func $std/string/getString))
 (start $start)
 (func $~lib/string/String#charCodeAt (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
     (i32.const 80)
     (i32.const 76)
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
    (i32.const -1)
   )
  )
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
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/string/allocateUnsafe (; 3 ;) (type $ii) (param $0 i32) (result i32)
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
     (i32.const 120)
     (i32.const 14)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $2
   (block $~lib/memory/memory.allocate|inlined.0 (result i32)
    (set_local $1
     (i32.add
      (get_global $~lib/internal/string/HEADER_SIZE)
      (i32.shl
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (br $~lib/memory/memory.allocate|inlined.0
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
 (func $~lib/string/String.fromCharCode (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 112)
   )
  )
  (set_local $1
   (call $~lib/internal/string/allocateUnsafe
    (i32.const 1)
   )
  )
  (i32.store16 offset=4
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/internal/string/compareUnsafe (; 5 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.fromCodePoint (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (i32.const 1114111)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 34)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 112)
   )
  )
  (set_local $1
   (i32.gt_s
    (get_local $0)
    (i32.const 65535)
   )
  )
  (set_local $2
   (call $~lib/internal/string/allocateUnsafe
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (i32.store16 offset=4
    (get_local $2)
    (get_local $0)
   )
   (block
    (set_local $0
     (i32.sub
      (get_local $0)
      (i32.const 65536)
     )
    )
    (set_local $3
     (i32.add
      (i32.shr_u
       (get_local $0)
       (i32.const 10)
      )
      (i32.const 55296)
     )
    )
    (set_local $4
     (i32.add
      (i32.and
       (get_local $0)
       (i32.const 1023)
      )
      (i32.const 56320)
     )
    )
    (i32.store offset=4
     (get_local $2)
     (i32.or
      (i32.shl
       (get_local $3)
       (i32.const 16)
      )
      (get_local $4)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $~lib/string/String#startsWith (; 8 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
     (i32.const 80)
     (i32.const 244)
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
    (i32.const 200)
   )
  )
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $7
   (select
    (tee_local $5
     (select
      (tee_local $5
       (get_local $3)
      )
      (tee_local $6
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $5)
       (get_local $6)
      )
     )
    )
    (tee_local $6
     (get_local $4)
    )
    (i32.lt_s
     (get_local $5)
     (get_local $6)
    )
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.gt_s
    (i32.add
     (get_local $8)
     (get_local $7)
    )
    (get_local $4)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (get_local $7)
    (get_local $1)
    (i32.const 0)
    (get_local $8)
   )
  )
 )
 (func $~lib/string/String#endsWith (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
     (i32.const 80)
     (i32.const 125)
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
   (return
    (i32.const 0)
   )
  )
  (set_local $5
   (select
    (tee_local $3
     (select
      (tee_local $3
       (get_local $2)
      )
      (tee_local $4
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $3)
       (get_local $4)
      )
     )
    )
    (tee_local $4
     (i32.load
      (get_local $0)
     )
    )
    (i32.lt_s
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.sub
    (get_local $5)
    (get_local $6)
   )
  )
  (if
   (i32.lt_s
    (get_local $7)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (get_local $7)
    (get_local $1)
    (i32.const 0)
    (get_local $6)
   )
  )
 )
 (func $~lib/string/String#endsWith|trampoline (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (get_global $~lib/internal/string/MAX_LENGTH)
   )
  )
  (call $~lib/string/String#endsWith
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#indexOf (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
     (i32.const 80)
     (i32.const 213)
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
    (i32.const 200)
   )
  )
  (set_local $3
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
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $4)
   )
   (return
    (i32.const -1)
   )
  )
  (set_local $7
   (select
    (tee_local $5
     (select
      (tee_local $5
       (get_local $2)
      )
      (tee_local $6
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $5)
       (get_local $6)
      )
     )
    )
    (tee_local $6
     (get_local $4)
    )
    (i32.lt_s
     (get_local $5)
     (get_local $6)
    )
   )
  )
  (set_local $4
   (i32.sub
    (get_local $4)
    (get_local $3)
   )
  )
  (block $break|0
   (set_local $5
    (get_local $7)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_s
       (get_local $5)
       (get_local $4)
      )
     )
    )
    (if
     (i32.eqz
      (call $~lib/internal/string/compareUnsafe
       (get_local $0)
       (get_local $5)
       (get_local $1)
       (i32.const 0)
       (get_local $3)
      )
     )
     (return
      (get_local $5)
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
  (i32.const -1)
 )
 (func $~lib/string/String#includes (; 12 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ne
   (call $~lib/string/String#indexOf
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const -1)
  )
 )
 (func $~lib/internal/memory/memcpy (; 13 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/memory/memmove (; 14 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/string/repeatUnsafe (; 15 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (set_local $4
   (i32.load
    (get_local $2)
   )
  )
  (block $break|0
   (block $case5|0
    (block $case4|0
     (block $case3|0
      (block $case2|0
       (block $case1|0
        (block $case0|0
         (set_local $5
          (get_local $4)
         )
         (br_if $case0|0
          (i32.eq
           (get_local $5)
           (i32.const 0)
          )
         )
         (br_if $case1|0
          (i32.eq
           (get_local $5)
           (i32.const 1)
          )
         )
         (br_if $case2|0
          (i32.eq
           (get_local $5)
           (i32.const 2)
          )
         )
         (br_if $case3|0
          (i32.eq
           (get_local $5)
           (i32.const 3)
          )
         )
         (br_if $case4|0
          (i32.eq
           (get_local $5)
           (i32.const 4)
          )
         )
         (br $case5|0)
        )
        (br $break|0)
       )
       (block
        (set_local $5
         (i32.load16_u offset=4
          (get_local $2)
         )
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
        (block $break|1
         (set_local $7
          (i32.const 0)
         )
         (loop $repeat|1
          (br_if $break|1
           (i32.eqz
            (i32.lt_s
             (get_local $7)
             (get_local $3)
            )
           )
          )
          (i32.store16 offset=4
           (i32.add
            (get_local $6)
            (i32.shl
             (get_local $7)
             (i32.const 1)
            )
           )
           (get_local $5)
          )
          (set_local $7
           (i32.add
            (get_local $7)
            (i32.const 1)
           )
          )
          (br $repeat|1)
         )
        )
        (br $break|0)
       )
      )
      (block
       (set_local $6
        (i32.load offset=4
         (get_local $2)
        )
       )
       (set_local $5
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $1)
          (i32.const 1)
         )
        )
       )
       (block $break|2
        (set_local $7
         (i32.const 0)
        )
        (loop $repeat|2
         (br_if $break|2
          (i32.eqz
           (i32.lt_s
            (get_local $7)
            (get_local $3)
           )
          )
         )
         (i32.store offset=4
          (i32.add
           (get_local $5)
           (i32.shl
            (get_local $7)
            (i32.const 2)
           )
          )
          (get_local $6)
         )
         (set_local $7
          (i32.add
           (get_local $7)
           (i32.const 1)
          )
         )
         (br $repeat|2)
        )
       )
       (br $break|0)
      )
     )
     (block
      (set_local $5
       (i32.load offset=4
        (get_local $2)
       )
      )
      (set_local $6
       (i32.load16_u offset=8
        (get_local $2)
       )
      )
      (set_local $7
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (block $break|3
       (set_local $8
        (i32.const 0)
       )
       (loop $repeat|3
        (br_if $break|3
         (i32.eqz
          (i32.lt_s
           (get_local $8)
           (get_local $3)
          )
         )
        )
        (block
         (i32.store offset=4
          (i32.add
           (get_local $7)
           (i32.shl
            (get_local $8)
            (i32.const 2)
           )
          )
          (get_local $5)
         )
         (i32.store16 offset=8
          (i32.add
           (get_local $7)
           (i32.shl
            (get_local $8)
            (i32.const 1)
           )
          )
          (get_local $6)
         )
        )
        (set_local $8
         (i32.add
          (get_local $8)
          (i32.const 1)
         )
        )
        (br $repeat|3)
       )
      )
      (br $break|0)
     )
    )
    (block
     (set_local $9
      (i64.load offset=4
       (get_local $2)
      )
     )
     (set_local $7
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $1)
        (i32.const 1)
       )
      )
     )
     (block $break|4
      (set_local $6
       (i32.const 0)
      )
      (loop $repeat|4
       (br_if $break|4
        (i32.eqz
         (i32.lt_s
          (get_local $6)
          (get_local $3)
         )
        )
       )
       (i64.store offset=4
        (i32.add
         (get_local $7)
         (i32.shl
          (get_local $6)
          (i32.const 3)
         )
        )
        (get_local $9)
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (br $repeat|4)
      )
     )
     (br $break|0)
    )
   )
   (block
    (set_local $7
     (i32.shl
      (get_local $4)
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.add
       (get_local $0)
       (get_global $~lib/internal/string/HEADER_SIZE)
      )
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $2)
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
    )
    (block $break|5
     (block
      (set_local $8
       (i32.const 0)
      )
      (set_local $10
       (i32.mul
        (get_local $7)
        (get_local $3)
       )
      )
     )
     (loop $repeat|5
      (br_if $break|5
       (i32.eqz
        (i32.lt_s
         (get_local $8)
         (get_local $10)
        )
       )
      )
      (block $~lib/memory/memory.copy|inlined.0
       (set_local $11
        (i32.add
         (get_local $6)
         (get_local $8)
        )
       )
       (call $~lib/internal/memory/memmove
        (get_local $11)
        (get_local $5)
        (get_local $7)
       )
      )
      (set_local $8
       (i32.add
        (get_local $8)
        (get_local $7)
       )
      )
      (br $repeat|5)
     )
    )
    (br $break|0)
   )
  )
 )
 (func $~lib/internal/string/copyUnsafe (; 16 ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $~lib/memory/memory.copy|inlined.1
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
 (func $~lib/string/String#padStart (; 17 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
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
     (i32.const 80)
     (i32.const 350)
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
  (set_local $4
   (i32.load
    (get_local $2)
   )
  )
  (if
   (if (result i32)
    (tee_local $5
     (i32.lt_s
      (get_local $1)
      (get_local $3)
     )
    )
    (get_local $5)
    (i32.eqz
     (get_local $4)
    )
   )
   (return
    (get_local $0)
   )
  )
  (set_local $6
   (i32.sub
    (get_local $1)
    (get_local $3)
   )
  )
  (set_local $7
   (call $~lib/internal/string/allocateUnsafe
    (get_local $1)
   )
  )
  (if
   (i32.gt_s
    (get_local $6)
    (get_local $4)
   )
   (block
    (set_local $5
     (i32.div_s
      (i32.sub
       (get_local $6)
       (i32.const 1)
      )
      (get_local $4)
     )
    )
    (set_local $8
     (i32.mul
      (get_local $5)
      (get_local $4)
     )
    )
    (set_local $9
     (i32.sub
      (get_local $6)
      (get_local $8)
     )
    )
    (call $~lib/internal/string/repeatUnsafe
     (get_local $7)
     (i32.const 0)
     (get_local $2)
     (get_local $5)
    )
    (if
     (get_local $9)
     (call $~lib/internal/string/copyUnsafe
      (get_local $7)
      (get_local $8)
      (get_local $2)
      (i32.const 0)
      (get_local $9)
     )
    )
   )
   (call $~lib/internal/string/copyUnsafe
    (get_local $7)
    (i32.const 0)
    (get_local $2)
    (i32.const 0)
    (get_local $6)
   )
  )
  (if
   (get_local $3)
   (call $~lib/internal/string/copyUnsafe
    (get_local $7)
    (get_local $6)
    (get_local $0)
    (i32.const 0)
    (get_local $3)
   )
  )
  (get_local $7)
 )
 (func $~lib/string/String#padStart|trampoline (; 18 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 248)
   )
  )
  (call $~lib/string/String#padStart
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#padEnd (; 19 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
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
     (i32.const 80)
     (i32.const 370)
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
  (set_local $4
   (i32.load
    (get_local $2)
   )
  )
  (if
   (if (result i32)
    (tee_local $5
     (i32.lt_s
      (get_local $1)
      (get_local $3)
     )
    )
    (get_local $5)
    (i32.eqz
     (get_local $4)
    )
   )
   (return
    (get_local $0)
   )
  )
  (set_local $6
   (i32.sub
    (get_local $1)
    (get_local $3)
   )
  )
  (set_local $7
   (call $~lib/internal/string/allocateUnsafe
    (get_local $1)
   )
  )
  (if
   (get_local $3)
   (call $~lib/internal/string/copyUnsafe
    (get_local $7)
    (i32.const 0)
    (get_local $0)
    (i32.const 0)
    (get_local $3)
   )
  )
  (if
   (i32.gt_s
    (get_local $6)
    (get_local $4)
   )
   (block
    (set_local $5
     (i32.div_s
      (i32.sub
       (get_local $6)
       (i32.const 1)
      )
      (get_local $4)
     )
    )
    (set_local $8
     (i32.mul
      (get_local $5)
      (get_local $4)
     )
    )
    (set_local $9
     (i32.sub
      (get_local $6)
      (get_local $8)
     )
    )
    (call $~lib/internal/string/repeatUnsafe
     (get_local $7)
     (get_local $3)
     (get_local $2)
     (get_local $5)
    )
    (if
     (get_local $9)
     (call $~lib/internal/string/copyUnsafe
      (get_local $7)
      (i32.add
       (get_local $8)
       (get_local $3)
      )
      (get_local $2)
      (i32.const 0)
      (get_local $9)
     )
    )
   )
   (call $~lib/internal/string/copyUnsafe
    (get_local $7)
    (get_local $3)
    (get_local $2)
    (i32.const 0)
    (get_local $6)
   )
  )
  (get_local $7)
 )
 (func $~lib/string/String#padEnd|trampoline (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 248)
   )
  )
  (call $~lib/string/String#padEnd
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#lastIndexOf (; 21 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
     (i32.const 80)
     (i32.const 229)
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
    (i32.const 200)
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
    (get_local $3)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const -1)
   )
  )
  (set_local $7
   (select
    (tee_local $5
     (select
      (tee_local $5
       (get_local $2)
      )
      (tee_local $6
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $5)
       (get_local $6)
      )
     )
    )
    (tee_local $6
     (i32.sub
      (get_local $3)
      (get_local $4)
     )
    )
    (i32.lt_s
     (get_local $5)
     (get_local $6)
    )
   )
  )
  (block $break|0
   (set_local $5
    (get_local $7)
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
    (if
     (i32.eqz
      (call $~lib/internal/string/compareUnsafe
       (get_local $0)
       (get_local $5)
       (get_local $1)
       (i32.const 0)
       (get_local $4)
      )
     )
     (return
      (get_local $5)
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
  (i32.const -1)
 )
 (func $~lib/string/String#lastIndexOf|trampoline (; 22 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (get_global $~lib/builtins/i32.MAX_VALUE)
   )
  )
  (call $~lib/string/String#lastIndexOf
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $std/string/getString (; 23 ;) (type $i) (result i32)
  (get_global $std/string/str)
 )
 (func $~lib/internal/string/parse<f64> (; 24 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $3
   (get_local $0)
  )
  (set_local $4
   (i32.load16_u offset=4
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
   (block
    (if
     (i32.eqz
      (tee_local $2
       (i32.sub
        (get_local $2)
        (i32.const 1)
       )
      )
     )
     (return
      (f64.const nan:0x8000000000000)
     )
    )
    (set_local $4
     (i32.load16_u offset=4
      (tee_local $3
       (i32.add
        (get_local $3)
        (i32.const 2)
       )
      )
     )
    )
    (set_local $5
     (f64.const -1)
    )
   )
   (if
    (i32.eq
     (get_local $4)
     (get_global $~lib/internal/string/CharCode.PLUS)
    )
    (block
     (if
      (i32.eqz
       (tee_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (return
       (f64.const nan:0x8000000000000)
      )
     )
     (set_local $4
      (i32.load16_u offset=4
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $5
      (f64.const 1)
     )
    )
    (set_local $5
     (f64.const 1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (if
    (if (result i32)
     (tee_local $6
      (i32.eq
       (get_local $4)
       (get_global $~lib/internal/string/CharCode._0)
      )
     )
     (i32.gt_s
      (get_local $2)
      (i32.const 2)
     )
     (get_local $6)
    )
    (block $break|0
     (block $case6|0
      (block $case5|0
       (block $case4|0
        (block $case3|0
         (block $case2|0
          (block $case1|0
           (block $case0|0
            (set_local $6
             (i32.load16_u offset=4
              (i32.add
               (get_local $3)
               (i32.const 2)
              )
             )
            )
            (br_if $case0|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.B)
             )
            )
            (br_if $case1|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.b)
             )
            )
            (br_if $case2|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.O)
             )
            )
            (br_if $case3|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.o)
             )
            )
            (br_if $case4|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.X)
             )
            )
            (br_if $case5|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.x)
             )
            )
            (br $case6|0)
           )
          )
          (block
           (set_local $3
            (i32.add
             (get_local $3)
             (i32.const 4)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 2)
            )
           )
           (set_local $1
            (i32.const 2)
           )
           (br $break|0)
          )
         )
        )
        (block
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 4)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 2)
          )
         )
         (set_local $1
          (i32.const 8)
         )
         (br $break|0)
        )
       )
      )
      (block
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 4)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 2)
        )
       )
       (set_local $1
        (i32.const 16)
       )
       (br $break|0)
      )
     )
     (set_local $1
      (i32.const 10)
     )
    )
    (set_local $1
     (i32.const 10)
    )
   )
   (if
    (if (result i32)
     (tee_local $6
      (i32.lt_s
       (get_local $1)
       (i32.const 2)
      )
     )
     (get_local $6)
     (i32.gt_s
      (get_local $1)
      (i32.const 36)
     )
    )
    (return
     (f64.const nan:0x8000000000000)
    )
   )
  )
  (set_local $7
   (f64.const 0)
  )
  (block $break|1
   (loop $continue|1
    (if
     (block (result i32)
      (set_local $6
       (get_local $2)
      )
      (set_local $2
       (i32.sub
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (block
      (block
       (set_local $4
        (i32.load16_u offset=4
         (get_local $3)
        )
       )
       (if
        (if (result i32)
         (tee_local $6
          (i32.ge_s
           (get_local $4)
           (get_global $~lib/internal/string/CharCode._0)
          )
         )
         (i32.le_s
          (get_local $4)
          (get_global $~lib/internal/string/CharCode._9)
         )
         (get_local $6)
        )
        (set_local $4
         (i32.sub
          (get_local $4)
          (get_global $~lib/internal/string/CharCode._0)
         )
        )
        (if
         (if (result i32)
          (tee_local $6
           (i32.ge_s
            (get_local $4)
            (get_global $~lib/internal/string/CharCode.A)
           )
          )
          (i32.le_s
           (get_local $4)
           (get_global $~lib/internal/string/CharCode.Z)
          )
          (get_local $6)
         )
         (set_local $4
          (i32.sub
           (get_local $4)
           (i32.sub
            (get_global $~lib/internal/string/CharCode.A)
            (i32.const 10)
           )
          )
         )
         (if
          (if (result i32)
           (tee_local $6
            (i32.ge_s
             (get_local $4)
             (get_global $~lib/internal/string/CharCode.a)
            )
           )
           (i32.le_s
            (get_local $4)
            (get_global $~lib/internal/string/CharCode.z)
           )
           (get_local $6)
          )
          (set_local $4
           (i32.sub
            (get_local $4)
            (i32.sub
             (get_global $~lib/internal/string/CharCode.a)
             (i32.const 10)
            )
           )
          )
          (br $break|1)
         )
        )
       )
       (if
        (i32.ge_s
         (get_local $4)
         (get_local $1)
        )
        (br $break|1)
       )
       (set_local $7
        (f64.add
         (f64.mul
          (get_local $7)
          (f64.convert_s/i32
           (get_local $1)
          )
         )
         (f64.convert_s/i32
          (get_local $4)
         )
        )
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  (f64.mul
   (get_local $5)
   (get_local $7)
  )
 )
 (func $~lib/string/parseInt (; 25 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (call $~lib/internal/string/parse<f64>
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/string/parseFloat (; 26 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $2
   (get_local $0)
  )
  (set_local $3
   (i32.load16_u offset=4
    (get_local $2)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
   (block
    (if
     (i32.eqz
      (tee_local $1
       (i32.sub
        (get_local $1)
        (i32.const 1)
       )
      )
     )
     (return
      (f64.const nan:0x8000000000000)
     )
    )
    (set_local $3
     (i32.load16_u offset=4
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 2)
       )
      )
     )
    )
    (set_local $4
     (f64.const -1)
    )
   )
   (if
    (i32.eq
     (get_local $3)
     (get_global $~lib/internal/string/CharCode.PLUS)
    )
    (block
     (if
      (i32.eqz
       (tee_local $1
        (i32.sub
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (return
       (f64.const nan:0x8000000000000)
      )
     )
     (set_local $3
      (i32.load16_u offset=4
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $4
      (f64.const 1)
     )
    )
    (set_local $4
     (f64.const 1)
    )
   )
  )
  (set_local $5
   (f64.const 0)
  )
  (block $break|0
   (loop $continue|0
    (if
     (block (result i32)
      (set_local $6
       (get_local $1)
      )
      (set_local $1
       (i32.sub
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (block
      (block
       (set_local $3
        (i32.load16_u offset=4
         (get_local $2)
        )
       )
       (if
        (i32.eq
         (get_local $3)
         (get_global $~lib/internal/string/CharCode.DOT)
        )
        (block
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 2)
          )
         )
         (set_local $7
          (f64.const 0.1)
         )
         (block $break|1
          (loop $continue|1
           (if
            (block (result i32)
             (set_local $6
              (get_local $1)
             )
             (set_local $1
              (i32.sub
               (get_local $6)
               (i32.const 1)
              )
             )
             (get_local $6)
            )
            (block
             (block
              (set_local $3
               (i32.load16_u offset=4
                (get_local $2)
               )
              )
              (if
               (if (result i32)
                (tee_local $6
                 (i32.eq
                  (get_local $3)
                  (get_global $~lib/internal/string/CharCode.E)
                 )
                )
                (get_local $6)
                (i32.eq
                 (get_local $3)
                 (get_global $~lib/internal/string/CharCode.e)
                )
               )
               (if
                (i32.eqz
                 (i32.const 0)
                )
                (block
                 (call $~lib/env/abort
                  (i32.const 0)
                  (i32.const 80)
                  (i32.const 567)
                  (i32.const 10)
                 )
                 (unreachable)
                )
               )
              )
              (set_local $3
               (i32.sub
                (get_local $3)
                (get_global $~lib/internal/string/CharCode._0)
               )
              )
              (if
               (i32.gt_u
                (get_local $3)
                (i32.const 9)
               )
               (br $break|1)
              )
              (set_local $5
               (f64.add
                (get_local $5)
                (f64.mul
                 (f64.convert_s/i32
                  (get_local $3)
                 )
                 (get_local $7)
                )
               )
              )
              (set_local $7
               (f64.mul
                (get_local $7)
                (f64.const 0.1)
               )
              )
              (set_local $2
               (i32.add
                (get_local $2)
                (i32.const 2)
               )
              )
             )
             (br $continue|1)
            )
           )
          )
         )
         (br $break|0)
        )
       )
       (set_local $3
        (i32.sub
         (get_local $3)
         (get_global $~lib/internal/string/CharCode._0)
        )
       )
       (if
        (i32.ge_u
         (get_local $3)
         (i32.const 10)
        )
        (br $break|0)
       )
       (set_local $5
        (f64.add
         (f64.mul
          (get_local $5)
          (f64.const 10)
         )
         (f64.convert_s/i32
          (get_local $3)
         )
        )
       )
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 2)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (f64.mul
   (get_local $4)
   (get_local $5)
  )
 )
 (func $~lib/string/String#concat (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
     (i32.const 80)
     (i32.const 111)
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
    (i32.const 200)
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
    (i32.const 256)
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
 (func $~lib/string/String.__concat (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 200)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/string/String.__ne (; 29 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $~lib/string/String.__eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/string/String.__gt (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.__gte (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
    (i32.eqz
     (get_local $4)
    )
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
  (i32.ge_s
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
 (func $~lib/string/String.__lt (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.__lte (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
    (i32.eqz
     (get_local $3)
    )
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
  (i32.le_s
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
 (func $~lib/string/String#repeat (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
     (i32.const 80)
     (i32.const 390)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.lt_s
      (get_local $1)
      (i32.const 0)
     )
    )
    (get_local $3)
    (i32.gt_s
     (i32.mul
      (get_local $2)
      (get_local $1)
     )
     (i32.shl
      (i32.const 1)
      (i32.const 28)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 395)
     (i32.const 6)
    )
    (unreachable)
   )
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.eq
      (get_local $1)
      (i32.const 0)
     )
    )
    (get_local $3)
    (i32.eqz
     (get_local $2)
    )
   )
   (return
    (i32.const 256)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $4
   (call $~lib/internal/string/allocateUnsafe
    (i32.mul
     (get_local $2)
     (get_local $1)
    )
   )
  )
  (call $~lib/internal/string/repeatUnsafe
   (get_local $4)
   (i32.const 0)
   (get_local $0)
   (get_local $1)
  )
  (get_local $4)
 )
 (func $~lib/internal/string/toUpper16 (; 35 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (if
   (i32.lt_u
    (get_local $0)
    (i32.const 256)
   )
   (block
    (if
     (i32.eq
      (get_local $0)
      (i32.const 181)
     )
     (return
      (i64.const 924)
     )
    )
    (if
     (if (result i32)
      (tee_local $1
       (if (result i32)
        (tee_local $1
         (i32.le_u
          (i32.sub
           (get_local $0)
           (i32.const 224)
          )
          (i32.sub
           (i32.const 254)
           (i32.const 224)
          )
         )
        )
        (i32.ne
         (get_local $0)
         (i32.const 247)
        )
        (get_local $1)
       )
      )
      (get_local $1)
      (i32.le_u
       (i32.sub
        (get_local $0)
        (i32.const 97)
       )
       (i32.sub
        (i32.const 122)
        (i32.const 97)
       )
      )
     )
     (return
      (i64.extend_u/i32
       (i32.sub
        (get_local $0)
        (i32.const 32)
       )
      )
     )
    )
    (return
     (i64.extend_u/i32
      (select
       (i32.const 376)
       (get_local $0)
       (i32.eq
        (get_local $0)
        (i32.const 255)
       )
      )
     )
    )
   )
   (if
    (i32.lt_u
     (get_local $0)
     (i32.const 768)
    )
    (block
     (if
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (if (result i32)
           (tee_local $1
            (if (result i32)
             (tee_local $1
              (if (result i32)
               (tee_local $1
                (if (result i32)
                 (tee_local $1
                  (i32.le_u
                   (i32.sub
                    (get_local $0)
                    (i32.const 257)
                   )
                   (i32.sub
                    (i32.const 303)
                    (i32.const 257)
                   )
                  )
                 )
                 (get_local $1)
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 307)
                  )
                  (i32.sub
                   (i32.const 311)
                   (i32.const 307)
                  )
                 )
                )
               )
               (get_local $1)
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 331)
                )
                (i32.sub
                 (i32.const 375)
                 (i32.const 331)
                )
               )
              )
             )
             (get_local $1)
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 479)
              )
              (i32.sub
               (i32.const 495)
               (i32.const 479)
              )
             )
            )
           )
           (get_local $1)
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 505)
            )
            (i32.sub
             (i32.const 543)
             (i32.const 505)
            )
           )
          )
         )
         (get_local $1)
         (i32.le_u
          (i32.sub
           (get_local $0)
           (i32.const 547)
          )
          (i32.sub
           (i32.const 563)
           (i32.const 547)
          )
         )
        )
       )
       (get_local $1)
       (i32.le_u
        (i32.sub
         (get_local $0)
         (i32.const 583)
        )
        (i32.sub
         (i32.const 591)
         (i32.const 583)
        )
       )
      )
      (return
       (i64.extend_u/i32
        (i32.sub
         (get_local $0)
         (i32.and
          (get_local $0)
          (i32.const 1)
         )
        )
       )
      )
     )
     (if
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (if (result i32)
           (tee_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 314)
             )
             (i32.sub
              (i32.const 328)
              (i32.const 314)
             )
            )
           )
           (get_local $1)
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 462)
            )
            (i32.sub
             (i32.const 476)
             (i32.const 462)
            )
           )
          )
         )
         (get_local $1)
         (i32.eq
          (get_local $0)
          (i32.const 572)
         )
        )
       )
       (get_local $1)
       (i32.eq
        (get_local $0)
        (i32.const 578)
       )
      )
      (return
       (i64.extend_u/i32
        (i32.sub
         (get_local $0)
         (i32.eqz
          (i32.and
           (get_local $0)
           (i32.const 1)
          )
         )
        )
       )
      )
     )
     (if
      (i32.eq
       (get_local $0)
       (i32.const 305)
      )
      (return
       (i64.const 73)
      )
     )
     (if
      (i32.eqz
       (i32.and
        (i32.and
         (i32.sub
          (get_local $0)
          (i32.const 378)
         )
         (i32.sub
          (get_local $0)
          (i32.const 380)
         )
        )
        (i32.sub
         (get_local $0)
         (i32.const 382)
        )
       )
      )
      (return
       (i64.extend_u/i32
        (i32.sub
         (get_local $0)
         (i32.const 1)
        )
       )
      )
     )
     (if
      (i32.le_u
       (i32.sub
        (get_local $0)
        (i32.const 383)
       )
       (i32.sub
        (i32.const 658)
        (i32.const 383)
       )
      )
      (block $break|0
       (block $case61|0
        (block $case60|0
         (block $case59|0
          (block $case58|0
           (block $case57|0
            (block $case56|0
             (block $case55|0
              (block $case54|0
               (block $case53|0
                (block $case52|0
                 (block $case51|0
                  (block $case50|0
                   (block $case49|0
                    (block $case48|0
                     (block $case47|0
                      (block $case46|0
                       (block $case45|0
                        (block $case44|0
                         (block $case43|0
                          (block $case42|0
                           (block $case41|0
                            (block $case40|0
                             (block $case39|0
                              (block $case38|0
                               (block $case37|0
                                (block $case36|0
                                 (block $case35|0
                                  (block $case34|0
                                   (block $case33|0
                                    (block $case32|0
                                     (block $case31|0
                                      (block $case30|0
                                       (block $case29|0
                                        (block $case28|0
                                         (block $case27|0
                                          (block $case26|0
                                           (block $case25|0
                                            (block $case24|0
                                             (block $case23|0
                                              (block $case22|0
                                               (block $case21|0
                                                (block $case20|0
                                                 (block $case19|0
                                                  (block $case18|0
                                                   (block $case17|0
                                                    (block $case16|0
                                                     (block $case15|0
                                                      (block $case14|0
                                                       (block $case13|0
                                                        (block $case12|0
                                                         (block $case11|0
                                                          (block $case10|0
                                                           (block $case9|0
                                                            (block $case8|0
                                                             (block $case7|0
                                                              (block $case6|0
                                                               (block $case5|0
                                                                (block $case4|0
                                                                 (block $case3|0
                                                                  (block $case2|0
                                                                   (block $case1|0
                                                                    (block $case0|0
                                                                     (set_local $1
                                                                      (get_local $0)
                                                                     )
                                                                     (br_if $case0|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 383)
                                                                      )
                                                                     )
                                                                     (br_if $case1|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 384)
                                                                      )
                                                                     )
                                                                     (br_if $case2|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 387)
                                                                      )
                                                                     )
                                                                     (br_if $case3|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 389)
                                                                      )
                                                                     )
                                                                     (br_if $case4|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 392)
                                                                      )
                                                                     )
                                                                     (br_if $case5|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 396)
                                                                      )
                                                                     )
                                                                     (br_if $case6|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 402)
                                                                      )
                                                                     )
                                                                     (br_if $case7|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 405)
                                                                      )
                                                                     )
                                                                     (br_if $case8|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 409)
                                                                      )
                                                                     )
                                                                     (br_if $case9|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 410)
                                                                      )
                                                                     )
                                                                     (br_if $case10|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 414)
                                                                      )
                                                                     )
                                                                     (br_if $case11|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 417)
                                                                      )
                                                                     )
                                                                     (br_if $case12|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 419)
                                                                      )
                                                                     )
                                                                     (br_if $case13|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 421)
                                                                      )
                                                                     )
                                                                     (br_if $case14|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 424)
                                                                      )
                                                                     )
                                                                     (br_if $case15|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 429)
                                                                      )
                                                                     )
                                                                     (br_if $case16|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 432)
                                                                      )
                                                                     )
                                                                     (br_if $case17|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 436)
                                                                      )
                                                                     )
                                                                     (br_if $case18|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 438)
                                                                      )
                                                                     )
                                                                     (br_if $case19|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 441)
                                                                      )
                                                                     )
                                                                     (br_if $case20|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 445)
                                                                      )
                                                                     )
                                                                     (br_if $case21|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 453)
                                                                      )
                                                                     )
                                                                     (br_if $case22|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 456)
                                                                      )
                                                                     )
                                                                     (br_if $case23|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 459)
                                                                      )
                                                                     )
                                                                     (br_if $case24|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 498)
                                                                      )
                                                                     )
                                                                     (br_if $case25|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 501)
                                                                      )
                                                                     )
                                                                     (br_if $case26|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 447)
                                                                      )
                                                                     )
                                                                     (br_if $case27|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 454)
                                                                      )
                                                                     )
                                                                     (br_if $case28|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 457)
                                                                      )
                                                                     )
                                                                     (br_if $case29|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 460)
                                                                      )
                                                                     )
                                                                     (br_if $case30|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 477)
                                                                      )
                                                                     )
                                                                     (br_if $case31|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 499)
                                                                      )
                                                                     )
                                                                     (br_if $case32|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 575)
                                                                      )
                                                                     )
                                                                     (br_if $case33|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 576)
                                                                      )
                                                                     )
                                                                     (br_if $case34|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 592)
                                                                      )
                                                                     )
                                                                     (br_if $case35|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 593)
                                                                      )
                                                                     )
                                                                     (br_if $case36|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 594)
                                                                      )
                                                                     )
                                                                     (br_if $case37|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 595)
                                                                      )
                                                                     )
                                                                     (br_if $case38|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 596)
                                                                      )
                                                                     )
                                                                     (br_if $case39|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 598)
                                                                      )
                                                                     )
                                                                     (br_if $case40|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 599)
                                                                      )
                                                                     )
                                                                     (br_if $case41|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 601)
                                                                      )
                                                                     )
                                                                     (br_if $case42|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 603)
                                                                      )
                                                                     )
                                                                     (br_if $case43|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 608)
                                                                      )
                                                                     )
                                                                     (br_if $case44|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 611)
                                                                      )
                                                                     )
                                                                     (br_if $case45|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 616)
                                                                      )
                                                                     )
                                                                     (br_if $case46|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 617)
                                                                      )
                                                                     )
                                                                     (br_if $case47|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 619)
                                                                      )
                                                                     )
                                                                     (br_if $case48|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 623)
                                                                      )
                                                                     )
                                                                     (br_if $case49|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 625)
                                                                      )
                                                                     )
                                                                     (br_if $case50|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 626)
                                                                      )
                                                                     )
                                                                     (br_if $case51|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 629)
                                                                      )
                                                                     )
                                                                     (br_if $case52|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 637)
                                                                      )
                                                                     )
                                                                     (br_if $case53|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 640)
                                                                      )
                                                                     )
                                                                     (br_if $case54|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 643)
                                                                      )
                                                                     )
                                                                     (br_if $case55|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 648)
                                                                      )
                                                                     )
                                                                     (br_if $case56|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 649)
                                                                      )
                                                                     )
                                                                     (br_if $case57|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 650)
                                                                      )
                                                                     )
                                                                     (br_if $case58|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 651)
                                                                      )
                                                                     )
                                                                     (br_if $case59|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 652)
                                                                      )
                                                                     )
                                                                     (br_if $case60|0
                                                                      (i32.eq
                                                                       (get_local $1)
                                                                       (i32.const 658)
                                                                      )
                                                                     )
                                                                     (br $case61|0)
                                                                    )
                                                                    (return
                                                                     (i64.const 83)
                                                                    )
                                                                   )
                                                                   (return
                                                                    (i64.const 579)
                                                                   )
                                                                  )
                                                                  (return
                                                                   (i64.const 386)
                                                                  )
                                                                 )
                                                                 (return
                                                                  (i64.const 388)
                                                                 )
                                                                )
                                                                (return
                                                                 (i64.const 391)
                                                                )
                                                               )
                                                               (return
                                                                (i64.const 395)
                                                               )
                                                              )
                                                              (return
                                                               (i64.const 401)
                                                              )
                                                             )
                                                             (return
                                                              (i64.const 502)
                                                             )
                                                            )
                                                            (return
                                                             (i64.const 408)
                                                            )
                                                           )
                                                           (return
                                                            (i64.const 573)
                                                           )
                                                          )
                                                          (return
                                                           (i64.const 544)
                                                          )
                                                         )
                                                        )
                                                       )
                                                      )
                                                     )
                                                    )
                                                   )
                                                  )
                                                 )
                                                )
                                               )
                                              )
                                             )
                                            )
                                           )
                                           (return
                                            (i64.extend_u/i32
                                             (i32.sub
                                              (get_local $0)
                                              (i32.const 1)
                                             )
                                            )
                                           )
                                          )
                                          (return
                                           (i64.const 503)
                                          )
                                         )
                                        )
                                       )
                                       (return
                                        (i64.extend_u/i32
                                         (i32.sub
                                          (get_local $0)
                                          (i32.const 2)
                                         )
                                        )
                                       )
                                      )
                                      (return
                                       (i64.const 398)
                                      )
                                     )
                                     (return
                                      (i64.const 497)
                                     )
                                    )
                                    (return
                                     (i64.const 11390)
                                    )
                                   )
                                   (return
                                    (i64.const 11391)
                                   )
                                  )
                                  (return
                                   (i64.const 11375)
                                  )
                                 )
                                 (return
                                  (i64.const 11373)
                                 )
                                )
                                (return
                                 (i64.const 11376)
                                )
                               )
                               (return
                                (i64.const 385)
                               )
                              )
                              (return
                               (i64.const 390)
                              )
                             )
                             (return
                              (i64.const 393)
                             )
                            )
                            (return
                             (i64.const 394)
                            )
                           )
                           (return
                            (i64.const 399)
                           )
                          )
                          (return
                           (i64.const 400)
                          )
                         )
                         (return
                          (i64.const 403)
                         )
                        )
                        (return
                         (i64.const 404)
                        )
                       )
                       (return
                        (i64.const 407)
                       )
                      )
                      (return
                       (i64.const 406)
                      )
                     )
                     (return
                      (i64.const 11362)
                     )
                    )
                    (return
                     (i64.const 412)
                    )
                   )
                   (return
                    (i64.const 11374)
                   )
                  )
                  (return
                   (i64.const 413)
                  )
                 )
                 (return
                  (i64.const 415)
                 )
                )
                (return
                 (i64.const 11364)
                )
               )
               (return
                (i64.const 422)
               )
              )
              (return
               (i64.const 425)
              )
             )
             (return
              (i64.const 430)
             )
            )
            (return
             (i64.const 580)
            )
           )
           (return
            (i64.const 433)
           )
          )
          (return
           (i64.const 434)
          )
         )
         (return
          (i64.const 581)
         )
        )
        (return
         (i64.const 439)
        )
       )
       (br $break|0)
      )
     )
    )
    (if
     (i32.lt_u
      (get_local $0)
      (i32.const 1024)
     )
     (block
      (if
       (i32.le_u
        (i32.sub
         (get_local $0)
         (i32.const 941)
        )
        (i32.sub
         (i32.const 943)
         (i32.const 941)
        )
       )
       (return
        (i64.extend_u/i32
         (i32.sub
          (get_local $0)
          (i32.const 37)
         )
        )
       )
      )
      (if
       (if (result i32)
        (tee_local $1
         (i32.ne
          (get_local $0)
          (i32.const 962)
         )
        )
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 945)
         )
         (i32.sub
          (i32.const 971)
          (i32.const 945)
         )
        )
        (get_local $1)
       )
       (return
        (i64.extend_u/i32
         (i32.sub
          (get_local $0)
          (i32.const 32)
         )
        )
       )
      )
      (if
       (if (result i32)
        (tee_local $1
         (i32.and
          (get_local $0)
          (i32.const 1)
         )
        )
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 985)
         )
         (i32.sub
          (i32.const 1007)
          (i32.const 985)
         )
        )
        (get_local $1)
       )
       (return
        (i64.extend_u/i32
         (i32.sub
          (get_local $0)
          (i32.const 1)
         )
        )
       )
      )
      (block $break|1
       (block $case23|1
        (block $case22|1
         (block $case21|1
          (block $case20|1
           (block $case19|1
            (block $case18|1
             (block $case17|1
              (block $case16|1
               (block $case15|1
                (block $case14|1
                 (block $case13|1
                  (block $case12|1
                   (block $case11|1
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
                               (set_local $1
                                (get_local $0)
                               )
                               (br_if $case0|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 837)
                                )
                               )
                               (br_if $case1|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 881)
                                )
                               )
                               (br_if $case2|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 883)
                                )
                               )
                               (br_if $case3|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 887)
                                )
                               )
                               (br_if $case4|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 1016)
                                )
                               )
                               (br_if $case5|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 1019)
                                )
                               )
                               (br_if $case6|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 891)
                                )
                               )
                               (br_if $case7|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 892)
                                )
                               )
                               (br_if $case8|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 893)
                                )
                               )
                               (br_if $case9|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 940)
                                )
                               )
                               (br_if $case10|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 962)
                                )
                               )
                               (br_if $case11|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 972)
                                )
                               )
                               (br_if $case12|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 973)
                                )
                               )
                               (br_if $case13|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 974)
                                )
                               )
                               (br_if $case14|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 976)
                                )
                               )
                               (br_if $case15|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 977)
                                )
                               )
                               (br_if $case16|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 981)
                                )
                               )
                               (br_if $case17|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 982)
                                )
                               )
                               (br_if $case18|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 983)
                                )
                               )
                               (br_if $case19|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 1008)
                                )
                               )
                               (br_if $case20|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 1009)
                                )
                               )
                               (br_if $case21|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 1010)
                                )
                               )
                               (br_if $case22|1
                                (i32.eq
                                 (get_local $1)
                                 (i32.const 1013)
                                )
                               )
                               (br $case23|1)
                              )
                              (return
                               (i64.const 921)
                              )
                             )
                            )
                           )
                          )
                         )
                         (return
                          (i64.extend_u/i32
                           (i32.sub
                            (get_local $0)
                            (i32.const 1)
                           )
                          )
                         )
                        )
                       )
                      )
                      (return
                       (i64.extend_u/i32
                        (i32.add
                         (get_local $0)
                         (i32.const 130)
                        )
                       )
                      )
                     )
                     (return
                      (i64.const 902)
                     )
                    )
                    (return
                     (i64.const 931)
                    )
                   )
                   (return
                    (i64.const 908)
                   )
                  )
                 )
                 (return
                  (i64.extend_u/i32
                   (i32.sub
                    (get_local $0)
                    (i32.const 63)
                   )
                  )
                 )
                )
                (return
                 (i64.const 914)
                )
               )
               (return
                (i64.const 920)
               )
              )
              (return
               (i64.const 934)
              )
             )
             (return
              (i64.const 928)
             )
            )
            (return
             (i64.const 975)
            )
           )
           (return
            (i64.const 922)
           )
          )
          (return
           (i64.const 929)
          )
         )
         (return
          (i64.const 1017)
         )
        )
        (return
         (i64.const 917)
        )
       )
       (br $break|1)
      )
     )
     (if
      (i32.lt_u
       (get_local $0)
       (i32.const 1280)
      )
      (block
       (if
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 1072)
         )
         (i32.sub
          (i32.const 1103)
          (i32.const 1072)
         )
        )
        (return
         (i64.extend_u/i32
          (i32.sub
           (get_local $0)
           (i32.const 32)
          )
         )
        )
       )
       (if
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 1104)
         )
         (i32.sub
          (i32.const 1119)
          (i32.const 1104)
         )
        )
        (return
         (i64.extend_u/i32
          (i32.sub
           (get_local $0)
           (i32.const 80)
          )
         )
        )
       )
       (if
        (if (result i32)
         (tee_local $1
          (if (result i32)
           (tee_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 1121)
             )
             (i32.sub
              (i32.const 1153)
              (i32.const 1121)
             )
            )
           )
           (get_local $1)
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 1163)
            )
            (i32.sub
             (i32.const 1215)
             (i32.const 1163)
            )
           )
          )
         )
         (get_local $1)
         (i32.le_u
          (i32.sub
           (get_local $0)
           (i32.const 1233)
          )
          (i32.sub
           (i32.const 1279)
           (i32.const 1233)
          )
         )
        )
        (return
         (i64.extend_u/i32
          (i32.sub
           (get_local $0)
           (i32.and
            (get_local $0)
            (i32.const 1)
           )
          )
         )
        )
       )
       (if
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 1218)
         )
         (i32.sub
          (i32.const 1230)
          (i32.const 1218)
         )
        )
        (return
         (i64.extend_u/i32
          (i32.sub
           (get_local $0)
           (i32.eqz
            (i32.and
             (get_local $0)
             (i32.const 1)
            )
           )
          )
         )
        )
       )
       (if
        (i32.eq
         (get_local $0)
         (i32.const 1231)
        )
        (return
         (i64.const 1216)
        )
       )
       (if
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 1271)
         )
         (i32.sub
          (i32.const 1273)
          (i32.const 1271)
         )
        )
        (return
         (i64.extend_u/i32
          (i32.sub
           (get_local $0)
           (i32.const 1)
          )
         )
        )
       )
      )
      (if
       (i32.lt_u
        (get_local $0)
        (i32.const 1536)
       )
       (block
        (if
         (if (result i32)
          (tee_local $1
           (i32.and
            (get_local $0)
            (i32.const 1)
           )
          )
          (i32.le_u
           (i32.sub
            (get_local $0)
            (i32.const 1281)
           )
           (i32.sub
            (i32.const 1317)
            (i32.const 1281)
           )
          )
          (get_local $1)
         )
         (return
          (i64.extend_u/i32
           (i32.sub
            (get_local $0)
            (i32.const 1)
           )
          )
         )
        )
        (if
         (i32.le_u
          (i32.sub
           (get_local $0)
           (i32.const 1377)
          )
          (i32.sub
           (i32.const 1414)
           (i32.const 1377)
          )
         )
         (return
          (i64.extend_u/i32
           (i32.sub
            (get_local $0)
            (i32.const 48)
           )
          )
         )
        )
       )
       (if
        (i32.lt_u
         (get_local $0)
         (i32.const 7936)
        )
        (block
         (if
          (i32.eq
           (get_local $0)
           (i32.const 7545)
          )
          (return
           (i64.const 42877)
          )
         )
         (if
          (i32.eq
           (get_local $0)
           (i32.const 7549)
          )
          (return
           (i64.const 11363)
          )
         )
         (if
          (if (result i32)
           (tee_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 7681)
             )
             (i32.sub
              (i32.const 7829)
              (i32.const 7681)
             )
            )
           )
           (get_local $1)
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 7841)
            )
            (i32.sub
             (i32.const 7935)
             (i32.const 7841)
            )
           )
          )
          (return
           (i64.extend_u/i32
            (i32.sub
             (get_local $0)
             (i32.and
              (get_local $0)
              (i32.const 1)
             )
            )
           )
          )
         )
         (if
          (i32.eq
           (get_local $0)
           (i32.const 7835)
          )
          (return
           (i64.const 7776)
          )
         )
        )
        (if
         (i32.lt_u
          (get_local $0)
          (i32.const 8192)
         )
         (block
          (if
           (if (result i32)
            (tee_local $1
             (if (result i32)
              (tee_local $1
               (if (result i32)
                (tee_local $1
                 (if (result i32)
                  (tee_local $1
                   (if (result i32)
                    (tee_local $1
                     (if (result i32)
                      (tee_local $1
                       (if (result i32)
                        (tee_local $1
                         (if (result i32)
                          (tee_local $1
                           (if (result i32)
                            (tee_local $1
                             (i32.le_u
                              (i32.sub
                               (get_local $0)
                               (i32.const 7936)
                              )
                              (i32.sub
                               (i32.const 7943)
                               (i32.const 7936)
                              )
                             )
                            )
                            (get_local $1)
                            (i32.le_u
                             (i32.sub
                              (get_local $0)
                              (i32.const 7952)
                             )
                             (i32.sub
                              (i32.const 7957)
                              (i32.const 7952)
                             )
                            )
                           )
                          )
                          (get_local $1)
                          (i32.le_u
                           (i32.sub
                            (get_local $0)
                            (i32.const 7968)
                           )
                           (i32.sub
                            (i32.const 7975)
                            (i32.const 7968)
                           )
                          )
                         )
                        )
                        (get_local $1)
                        (i32.le_u
                         (i32.sub
                          (get_local $0)
                          (i32.const 7984)
                         )
                         (i32.sub
                          (i32.const 7991)
                          (i32.const 7984)
                         )
                        )
                       )
                      )
                      (get_local $1)
                      (i32.le_u
                       (i32.sub
                        (get_local $0)
                        (i32.const 8000)
                       )
                       (i32.sub
                        (i32.const 8005)
                        (i32.const 8000)
                       )
                      )
                     )
                    )
                    (get_local $1)
                    (i32.le_u
                     (i32.sub
                      (get_local $0)
                      (i32.const 8032)
                     )
                     (i32.sub
                      (i32.const 8039)
                      (i32.const 8032)
                     )
                    )
                   )
                  )
                  (get_local $1)
                  (i32.le_u
                   (i32.sub
                    (get_local $0)
                    (i32.const 8064)
                   )
                   (i32.sub
                    (i32.const 8071)
                    (i32.const 8064)
                   )
                  )
                 )
                )
                (get_local $1)
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 8080)
                 )
                 (i32.sub
                  (i32.const 8087)
                  (i32.const 8080)
                 )
                )
               )
              )
              (get_local $1)
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 8096)
               )
               (i32.sub
                (i32.const 8103)
                (i32.const 8096)
               )
              )
             )
            )
            (get_local $1)
            (if (result i32)
             (tee_local $1
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 8017)
               )
               (i32.sub
                (i32.const 8023)
                (i32.const 8017)
               )
              )
             )
             (i32.and
              (get_local $0)
              (i32.const 1)
             )
             (get_local $1)
            )
           )
           (return
            (i64.extend_u/i32
             (i32.add
              (get_local $0)
              (i32.const 8)
             )
            )
           )
          )
          (if
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 8048)
            )
            (i32.sub
             (i32.const 8179)
             (i32.const 8048)
            )
           )
           (block $break|2
            (block $case25|2
             (block $case24|2
              (block $case23|2
               (block $case22|2
                (block $case21|2
                 (block $case20|2
                  (block $case19|2
                   (block $case18|2
                    (block $case17|2
                     (block $case16|2
                      (block $case15|2
                       (block $case14|2
                        (block $case13|2
                         (block $case12|2
                          (block $case11|2
                           (block $case10|2
                            (block $case9|2
                             (block $case8|2
                              (block $case7|2
                               (block $case6|2
                                (block $case5|2
                                 (block $case4|2
                                  (block $case3|2
                                   (block $case2|2
                                    (block $case1|2
                                     (block $case0|2
                                      (set_local $1
                                       (get_local $0)
                                      )
                                      (br_if $case0|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8112)
                                       )
                                      )
                                      (br_if $case1|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8113)
                                       )
                                      )
                                      (br_if $case2|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8048)
                                       )
                                      )
                                      (br_if $case3|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8049)
                                       )
                                      )
                                      (br_if $case4|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8115)
                                       )
                                      )
                                      (br_if $case5|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8126)
                                       )
                                      )
                                      (br_if $case6|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8050)
                                       )
                                      )
                                      (br_if $case7|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8051)
                                       )
                                      )
                                      (br_if $case8|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8052)
                                       )
                                      )
                                      (br_if $case9|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8053)
                                       )
                                      )
                                      (br_if $case10|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8131)
                                       )
                                      )
                                      (br_if $case11|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8144)
                                       )
                                      )
                                      (br_if $case12|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8145)
                                       )
                                      )
                                      (br_if $case13|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8054)
                                       )
                                      )
                                      (br_if $case14|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8055)
                                       )
                                      )
                                      (br_if $case15|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8160)
                                       )
                                      )
                                      (br_if $case16|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8161)
                                       )
                                      )
                                      (br_if $case17|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8058)
                                       )
                                      )
                                      (br_if $case18|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8059)
                                       )
                                      )
                                      (br_if $case19|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8165)
                                       )
                                      )
                                      (br_if $case20|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8056)
                                       )
                                      )
                                      (br_if $case21|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8057)
                                       )
                                      )
                                      (br_if $case22|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8060)
                                       )
                                      )
                                      (br_if $case23|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8061)
                                       )
                                      )
                                      (br_if $case24|2
                                       (i32.eq
                                        (get_local $1)
                                        (i32.const 8179)
                                       )
                                      )
                                      (br $case25|2)
                                     )
                                     (return
                                      (i64.const 8120)
                                     )
                                    )
                                    (return
                                     (i64.const 8121)
                                    )
                                   )
                                   (return
                                    (i64.const 8122)
                                   )
                                  )
                                  (return
                                   (i64.const 8123)
                                  )
                                 )
                                 (return
                                  (i64.const 8124)
                                 )
                                )
                                (return
                                 (i64.const 921)
                                )
                               )
                               (return
                                (i64.const 8136)
                               )
                              )
                              (return
                               (i64.const 8137)
                              )
                             )
                             (return
                              (i64.const 8138)
                             )
                            )
                            (return
                             (i64.const 8139)
                            )
                           )
                           (return
                            (i64.const 8140)
                           )
                          )
                          (return
                           (i64.const 8152)
                          )
                         )
                         (return
                          (i64.const 8153)
                         )
                        )
                        (return
                         (i64.const 8154)
                        )
                       )
                       (return
                        (i64.const 8155)
                       )
                      )
                      (return
                       (i64.const 8168)
                      )
                     )
                     (return
                      (i64.const 8169)
                     )
                    )
                    (return
                     (i64.const 8170)
                    )
                   )
                   (return
                    (i64.const 8171)
                   )
                  )
                  (return
                   (i64.const 8172)
                  )
                 )
                 (return
                  (i64.const 8184)
                 )
                )
                (return
                 (i64.const 8185)
                )
               )
               (return
                (i64.const 8186)
               )
              )
              (return
               (i64.const 8187)
              )
             )
             (return
              (i64.const 8188)
             )
            )
            (br $break|2)
           )
          )
         )
         (if
          (i32.lt_u
           (get_local $0)
           (i32.const 12288)
          )
          (block
           (if
            (i32.eq
             (get_local $0)
             (i32.const 8526)
            )
            (return
             (i64.const 8498)
            )
           )
           (if
            (i32.eq
             (get_local $0)
             (i32.const 8580)
            )
            (return
             (i64.const 8579)
            )
           )
           (if
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 8560)
             )
             (i32.sub
              (i32.const 8575)
              (i32.const 8560)
             )
            )
            (return
             (i64.extend_u/i32
              (i32.sub
               (get_local $0)
               (i32.const 16)
              )
             )
            )
           )
           (if
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 9424)
             )
             (i32.sub
              (i32.const 9449)
              (i32.const 9424)
             )
            )
            (return
             (i64.extend_u/i32
              (i32.sub
               (get_local $0)
               (i32.const 26)
              )
             )
            )
           )
           (if
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 11312)
             )
             (i32.sub
              (i32.const 11358)
              (i32.const 11312)
             )
            )
            (return
             (i64.extend_u/i32
              (i32.sub
               (get_local $0)
               (i32.const 48)
              )
             )
            )
           )
           (if
            (if (result i32)
             (tee_local $1
              (if (result i32)
               (tee_local $1
                (if (result i32)
                 (tee_local $1
                  (if (result i32)
                   (tee_local $1
                    (i32.eqz
                     (i32.and
                      (get_local $0)
                      (i32.const 1)
                     )
                    )
                   )
                   (i32.le_u
                    (i32.sub
                     (get_local $0)
                     (i32.const 11368)
                    )
                    (i32.sub
                     (i32.const 11372)
                     (i32.const 11368)
                    )
                   )
                   (get_local $1)
                  )
                 )
                 (get_local $1)
                 (if (result i32)
                  (tee_local $1
                   (i32.and
                    (get_local $0)
                    (i32.const 1)
                   )
                  )
                  (i32.le_u
                   (i32.sub
                    (get_local $0)
                    (i32.const 11393)
                   )
                   (i32.sub
                    (i32.const 11491)
                    (i32.const 11393)
                   )
                  )
                  (get_local $1)
                 )
                )
               )
               (get_local $1)
               (i32.eqz
                (i32.and
                 (i32.sub
                  (get_local $0)
                  (i32.const 11379)
                 )
                 (i32.sub
                  (get_local $0)
                  (i32.const 11382)
                 )
                )
               )
              )
             )
             (get_local $1)
             (i32.eqz
              (i32.and
               (i32.sub
                (get_local $0)
                (i32.const 11500)
               )
               (i32.sub
                (get_local $0)
                (i32.const 11502)
               )
              )
             )
            )
            (return
             (i64.extend_u/i32
              (i32.sub
               (get_local $0)
               (i32.const 1)
              )
             )
            )
           )
           (if
            (if (result i32)
             (tee_local $1
              (i32.and
               (get_local $0)
               (i32.const 1)
              )
             )
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 11393)
              )
              (i32.sub
               (i32.const 11491)
               (i32.const 11393)
              )
             )
             (get_local $1)
            )
            (return
             (i64.extend_u/i32
              (i32.sub
               (get_local $0)
               (i32.const 1)
              )
             )
            )
           )
           (if
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 11520)
             )
             (i32.sub
              (i32.const 11557)
              (i32.const 11520)
             )
            )
            (return
             (i64.extend_u/i32
              (i32.sub
               (get_local $0)
               (i32.const 7264)
              )
             )
            )
           )
           (block $break|3
            (block $case3|3
             (block $case2|3
              (block $case1|3
               (block $case0|3
                (set_local $1
                 (get_local $0)
                )
                (br_if $case0|3
                 (i32.eq
                  (get_local $1)
                  (i32.const 11361)
                 )
                )
                (br_if $case1|3
                 (i32.eq
                  (get_local $1)
                  (i32.const 11365)
                 )
                )
                (br_if $case2|3
                 (i32.eq
                  (get_local $1)
                  (i32.const 11366)
                 )
                )
                (br $case3|3)
               )
               (return
                (i64.const 11360)
               )
              )
              (return
               (i64.const 570)
              )
             )
             (return
              (i64.const 574)
             )
            )
            (br $break|3)
           )
          )
          (if
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 40960)
            )
            (i32.sub
             (i32.sub
              (i32.const 45056)
              (i32.const 1)
             )
             (i32.const 40960)
            )
           )
           (block
            (if
             (i32.eqz
              (i32.and
               (i32.and
                (i32.sub
                 (get_local $0)
                 (i32.const 42874)
                )
                (i32.sub
                 (get_local $0)
                 (i32.const 42876)
                )
               )
               (i32.sub
                (get_local $0)
                (i32.const 42892)
               )
              )
             )
             (return
              (i64.extend_u/i32
               (i32.sub
                (get_local $0)
                (i32.const 1)
               )
              )
             )
            )
            (if
             (if (result i32)
              (tee_local $1
               (i32.and
                (get_local $0)
                (i32.const 1)
               )
              )
              (if (result i32)
               (tee_local $1
                (if (result i32)
                 (tee_local $1
                  (if (result i32)
                   (tee_local $1
                    (if (result i32)
                     (tee_local $1
                      (if (result i32)
                       (tee_local $1
                        (i32.le_u
                         (i32.sub
                          (get_local $0)
                          (i32.const 42561)
                         )
                         (i32.sub
                          (i32.const 42591)
                          (i32.const 42561)
                         )
                        )
                       )
                       (get_local $1)
                       (i32.le_u
                        (i32.sub
                         (get_local $0)
                         (i32.const 42595)
                        )
                        (i32.sub
                         (i32.const 42605)
                         (i32.const 42595)
                        )
                       )
                      )
                     )
                     (get_local $1)
                     (i32.le_u
                      (i32.sub
                       (get_local $0)
                       (i32.const 42625)
                      )
                      (i32.sub
                       (i32.const 42647)
                       (i32.const 42625)
                      )
                     )
                    )
                   )
                   (get_local $1)
                   (i32.le_u
                    (i32.sub
                     (get_local $0)
                     (i32.const 42787)
                    )
                    (i32.sub
                     (i32.const 42799)
                     (i32.const 42787)
                    )
                   )
                  )
                 )
                 (get_local $1)
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 42803)
                  )
                  (i32.sub
                   (i32.const 42863)
                   (i32.const 42803)
                  )
                 )
                )
               )
               (get_local $1)
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 42879)
                )
                (i32.sub
                 (i32.const 42887)
                 (i32.const 42879)
                )
               )
              )
              (get_local $1)
             )
             (return
              (i64.extend_u/i32
               (i32.sub
                (get_local $0)
                (i32.const 1)
               )
              )
             )
            )
           )
           (block
            (if
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 65345)
              )
              (i32.sub
               (i32.const 65370)
               (i32.const 65345)
              )
             )
             (return
              (i64.extend_u/i32
               (i32.sub
                (get_local $0)
                (i32.const 32)
               )
              )
             )
            )
            (if
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 66600)
              )
              (i32.sub
               (i32.const 66639)
               (i32.const 66600)
              )
             )
             (return
              (i64.extend_u/i32
               (i32.sub
                (get_local $0)
                (i32.const 40)
               )
              )
             )
            )
           )
          )
         )
        )
       )
      )
     )
    )
   )
  )
  (i64.extend_u/i32
   (get_local $0)
  )
 )
 (func $~lib/allocator/arena/__memory_free (; 36 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/internal/string/reallocateUnsafe (; 37 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $4
      (if (result i32)
       (tee_local $4
        (if (result i32)
         (tee_local $4
          (i32.le_s
           (get_local $3)
           (get_local $1)
          )
         )
         (i32.le_s
          (get_local $1)
          (get_global $~lib/internal/string/MAX_LENGTH)
         )
         (get_local $4)
        )
       )
       (i32.ge_s
        (get_local $2)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
     (i32.le_s
      (get_local $2)
      (get_global $~lib/internal/string/MAX_LENGTH)
     )
     (get_local $4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 120)
     (i32.const 27)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $5
   (block $~lib/memory/memory.allocate|inlined.1 (result i32)
    (set_local $4
     (i32.add
      (get_global $~lib/internal/string/HEADER_SIZE)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (br $~lib/memory/memory.allocate|inlined.1
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $4)
     )
    )
   )
  )
  (i32.store
   (get_local $5)
   (get_local $1)
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const -1)
   )
   (set_local $2
    (get_local $3)
   )
  )
  (if
   (get_local $2)
   (block $~lib/memory/memory.copy|inlined.2
    (set_local $4
     (i32.add
      (get_local $5)
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
    )
    (set_local $6
     (i32.add
      (get_local $0)
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
    )
    (set_local $7
     (i32.shl
      (get_local $2)
      (i32.const 1)
     )
    )
    (call $~lib/internal/memory/memmove
     (get_local $4)
     (get_local $6)
     (get_local $7)
    )
   )
  )
  (block $~lib/memory/memory.free|inlined.0
   (block
    (call $~lib/allocator/arena/__memory_free
     (get_local $0)
    )
    (br $~lib/memory/memory.free|inlined.0)
   )
  )
  (get_local $5)
 )
 (func $~lib/internal/string/reallocateUnsafe|trampoline (; 38 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 2)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const -1)
   )
  )
  (call $~lib/internal/string/reallocateUnsafe
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#toUpperCase (; 39 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
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
     (i32.const 80)
     (i32.const 411)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (return
    (i32.const 256)
   )
  )
  (set_local $2
   (call $~lib/internal/string/allocateUnsafe
    (get_local $1)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (block
     (set_local $5
      (i32.load16_u offset=4
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $3)
         (i32.const 1)
        )
       )
      )
     )
     (set_local $6
      (block $~lib/internal/string/toUpper|inlined.0 (result i64)
       (if (result i64)
        (i32.and
         (block $~lib/internal/string/isAscii|inlined.1 (result i32)
          (i32.eq
           (i32.and
            (get_local $5)
            (i32.const -128)
           )
           (i32.const 0)
          )
         )
         (i32.const 1)
        )
        (i64.extend_u/i32
         (block $~lib/internal/string/toUpper8|inlined.0 (result i32)
          (select
           (i32.add
            (i32.sub
             (get_local $5)
             (get_global $~lib/internal/string/CharCode.a)
            )
            (get_global $~lib/internal/string/CharCode.A)
           )
           (get_local $5)
           (i32.and
            (block $~lib/internal/string/isLower|inlined.0 (result i32)
             (i32.le_u
              (i32.sub
               (get_local $5)
               (get_global $~lib/internal/string/CharCode.a)
              )
              (i32.sub
               (get_global $~lib/internal/string/CharCode.z)
               (get_global $~lib/internal/string/CharCode.a)
              )
             )
            )
            (i32.const 1)
           )
          )
         )
        )
        (call $~lib/internal/string/toUpper16
         (get_local $5)
        )
       )
      )
     )
     (if
      (i64.gt_u
       (get_local $6)
       (i64.const 65535)
      )
      (block
       (if
        (i32.eq
         (get_local $3)
         (get_local $4)
        )
        (set_local $2
         (call $~lib/internal/string/reallocateUnsafe
          (get_local $2)
          (get_local $1)
          (get_local $3)
         )
        )
       )
       (i64.store32 offset=4
        (i32.add
         (get_local $2)
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
        (get_local $6)
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 2)
        )
       )
      )
      (if
       (i64.gt_u
        (get_local $6)
        (i64.const 4294967295)
       )
       (block
        (if
         (i32.eq
          (get_local $3)
          (get_local $4)
         )
         (set_local $2
          (call $~lib/internal/string/reallocateUnsafe
           (get_local $2)
           (i32.shl
            (get_local $1)
            (i32.const 1)
           )
           (i32.shl
            (get_local $3)
            (i32.const 1)
           )
          )
         )
        )
        (i64.store32 offset=4
         (i32.add
          (get_local $2)
          (i32.shl
           (get_local $4)
           (i32.const 2)
          )
         )
         (get_local $6)
        )
        (i64.store16 offset=4
         (i32.add
          (get_local $2)
          (i32.shl
           (i32.add
            (get_local $4)
            (i32.const 2)
           )
           (i32.const 1)
          )
         )
         (get_local $6)
        )
        (set_local $4
         (i32.add
          (get_local $4)
          (i32.const 3)
         )
        )
       )
       (block
        (i64.store16 offset=4
         (i32.add
          (get_local $2)
          (i32.shl
           (get_local $4)
           (i32.const 1)
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
  (if
   (i32.ne
    (get_local $3)
    (get_local $4)
   )
   (return
    (block (result i32)
     (set_global $~argc
      (i32.const 2)
     )
     (call $~lib/internal/string/reallocateUnsafe|trampoline
      (get_local $2)
      (get_local $4)
      (i32.const 0)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/string/toLower16 (; 40 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.lt_u
    (get_local $0)
    (i32.const 256)
   )
   (block
    (if
     (if (result i32)
      (tee_local $1
       (if (result i32)
        (tee_local $1
         (i32.le_u
          (i32.sub
           (get_local $0)
           (i32.const 65)
          )
          (i32.sub
           (i32.const 90)
           (i32.const 65)
          )
         )
        )
        (get_local $1)
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 192)
         )
         (i32.sub
          (i32.const 214)
          (i32.const 192)
         )
        )
       )
      )
      (get_local $1)
      (i32.le_u
       (i32.sub
        (get_local $0)
        (i32.const 216)
       )
       (i32.sub
        (i32.const 222)
        (i32.const 216)
       )
      )
     )
     (return
      (i32.add
       (get_local $0)
       (i32.const 32)
      )
     )
    )
    (return
     (get_local $0)
    )
   )
   (if
    (i32.lt_u
     (get_local $0)
     (i32.const 768)
    )
    (block
     (if
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (if (result i32)
           (tee_local $1
            (if (result i32)
             (tee_local $1
              (if (result i32)
               (tee_local $1
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 256)
                 )
                 (i32.sub
                  (i32.const 302)
                  (i32.const 256)
                 )
                )
               )
               (get_local $1)
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 306)
                )
                (i32.sub
                 (i32.const 310)
                 (i32.const 306)
                )
               )
              )
             )
             (get_local $1)
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 330)
              )
              (i32.sub
               (i32.const 374)
               (i32.const 330)
              )
             )
            )
           )
           (get_local $1)
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 478)
            )
            (i32.sub
             (i32.const 494)
             (i32.const 478)
            )
           )
          )
         )
         (get_local $1)
         (i32.le_u
          (i32.sub
           (get_local $0)
           (i32.const 504)
          )
          (i32.sub
           (i32.const 542)
           (i32.const 504)
          )
         )
        )
       )
       (get_local $1)
       (i32.le_u
        (i32.sub
         (get_local $0)
         (i32.const 546)
        )
        (i32.sub
         (i32.const 562)
         (i32.const 546)
        )
       )
      )
      (return
       (i32.add
        (get_local $0)
        (i32.eqz
         (i32.and
          (get_local $0)
          (i32.const 1)
         )
        )
       )
      )
     )
     (if
      (i32.eq
       (get_local $0)
       (i32.const 304)
      )
      (return
       (i32.const 105)
      )
     )
     (if
      (if (result i32)
       (tee_local $1
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 313)
         )
         (i32.sub
          (i32.const 327)
          (i32.const 313)
         )
        )
       )
       (get_local $1)
       (i32.le_u
        (i32.sub
         (get_local $0)
         (i32.const 461)
        )
        (i32.sub
         (i32.const 475)
         (i32.const 461)
        )
       )
      )
      (return
       (i32.add
        (get_local $0)
        (i32.and
         (get_local $0)
         (i32.const 1)
        )
       )
      )
     )
     (if
      (i32.le_u
       (i32.sub
        (get_local $0)
        (i32.const 376)
       )
       (i32.sub
        (i32.const 503)
        (i32.const 376)
       )
      )
      (block $break|0
       (block $case59|0
        (block $case58|0
         (block $case57|0
          (block $case56|0
           (block $case55|0
            (block $case54|0
             (block $case53|0
              (block $case52|0
               (block $case51|0
                (block $case50|0
                 (block $case49|0
                  (block $case48|0
                   (block $case47|0
                    (block $case46|0
                     (block $case45|0
                      (block $case44|0
                       (block $case43|0
                        (block $case42|0
                         (block $case41|0
                          (block $case40|0
                           (block $case39|0
                            (block $case38|0
                             (block $case37|0
                              (block $case36|0
                               (block $case35|0
                                (block $case34|0
                                 (block $case33|0
                                  (block $case32|0
                                   (block $case31|0
                                    (block $case30|0
                                     (block $case29|0
                                      (block $case28|0
                                       (block $case27|0
                                        (block $case26|0
                                         (block $case25|0
                                          (block $case24|0
                                           (block $case23|0
                                            (block $case22|0
                                             (block $case21|0
                                              (block $case20|0
                                               (block $case19|0
                                                (block $case18|0
                                                 (block $case17|0
                                                  (block $case16|0
                                                   (block $case15|0
                                                    (block $case14|0
                                                     (block $case13|0
                                                      (block $case12|0
                                                       (block $case11|0
                                                        (block $case10|0
                                                         (block $case9|0
                                                          (block $case8|0
                                                           (block $case7|0
                                                            (block $case6|0
                                                             (block $case5|0
                                                              (block $case4|0
                                                               (block $case3|0
                                                                (block $case2|0
                                                                 (block $case1|0
                                                                  (block $case0|0
                                                                   (set_local $1
                                                                    (get_local $0)
                                                                   )
                                                                   (br_if $case0|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 376)
                                                                    )
                                                                   )
                                                                   (br_if $case1|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 377)
                                                                    )
                                                                   )
                                                                   (br_if $case2|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 379)
                                                                    )
                                                                   )
                                                                   (br_if $case3|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 381)
                                                                    )
                                                                   )
                                                                   (br_if $case4|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 386)
                                                                    )
                                                                   )
                                                                   (br_if $case5|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 388)
                                                                    )
                                                                   )
                                                                   (br_if $case6|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 391)
                                                                    )
                                                                   )
                                                                   (br_if $case7|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 395)
                                                                    )
                                                                   )
                                                                   (br_if $case8|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 401)
                                                                    )
                                                                   )
                                                                   (br_if $case9|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 408)
                                                                    )
                                                                   )
                                                                   (br_if $case10|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 416)
                                                                    )
                                                                   )
                                                                   (br_if $case11|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 418)
                                                                    )
                                                                   )
                                                                   (br_if $case12|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 420)
                                                                    )
                                                                   )
                                                                   (br_if $case13|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 423)
                                                                    )
                                                                   )
                                                                   (br_if $case14|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 428)
                                                                    )
                                                                   )
                                                                   (br_if $case15|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 431)
                                                                    )
                                                                   )
                                                                   (br_if $case16|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 435)
                                                                    )
                                                                   )
                                                                   (br_if $case17|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 437)
                                                                    )
                                                                   )
                                                                   (br_if $case18|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 440)
                                                                    )
                                                                   )
                                                                   (br_if $case19|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 444)
                                                                    )
                                                                   )
                                                                   (br_if $case20|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 453)
                                                                    )
                                                                   )
                                                                   (br_if $case21|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 456)
                                                                    )
                                                                   )
                                                                   (br_if $case22|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 459)
                                                                    )
                                                                   )
                                                                   (br_if $case23|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 461)
                                                                    )
                                                                   )
                                                                   (br_if $case24|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 463)
                                                                    )
                                                                   )
                                                                   (br_if $case25|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 465)
                                                                    )
                                                                   )
                                                                   (br_if $case26|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 467)
                                                                    )
                                                                   )
                                                                   (br_if $case27|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 469)
                                                                    )
                                                                   )
                                                                   (br_if $case28|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 471)
                                                                    )
                                                                   )
                                                                   (br_if $case29|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 473)
                                                                    )
                                                                   )
                                                                   (br_if $case30|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 475)
                                                                    )
                                                                   )
                                                                   (br_if $case31|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 498)
                                                                    )
                                                                   )
                                                                   (br_if $case32|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 500)
                                                                    )
                                                                   )
                                                                   (br_if $case33|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 385)
                                                                    )
                                                                   )
                                                                   (br_if $case34|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 390)
                                                                    )
                                                                   )
                                                                   (br_if $case35|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 393)
                                                                    )
                                                                   )
                                                                   (br_if $case36|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 394)
                                                                    )
                                                                   )
                                                                   (br_if $case37|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 398)
                                                                    )
                                                                   )
                                                                   (br_if $case38|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 399)
                                                                    )
                                                                   )
                                                                   (br_if $case39|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 400)
                                                                    )
                                                                   )
                                                                   (br_if $case40|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 403)
                                                                    )
                                                                   )
                                                                   (br_if $case41|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 404)
                                                                    )
                                                                   )
                                                                   (br_if $case42|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 406)
                                                                    )
                                                                   )
                                                                   (br_if $case43|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 407)
                                                                    )
                                                                   )
                                                                   (br_if $case44|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 412)
                                                                    )
                                                                   )
                                                                   (br_if $case45|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 413)
                                                                    )
                                                                   )
                                                                   (br_if $case46|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 415)
                                                                    )
                                                                   )
                                                                   (br_if $case47|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 422)
                                                                    )
                                                                   )
                                                                   (br_if $case48|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 425)
                                                                    )
                                                                   )
                                                                   (br_if $case49|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 430)
                                                                    )
                                                                   )
                                                                   (br_if $case50|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 433)
                                                                    )
                                                                   )
                                                                   (br_if $case51|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 434)
                                                                    )
                                                                   )
                                                                   (br_if $case52|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 439)
                                                                    )
                                                                   )
                                                                   (br_if $case53|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 452)
                                                                    )
                                                                   )
                                                                   (br_if $case54|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 455)
                                                                    )
                                                                   )
                                                                   (br_if $case55|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 458)
                                                                    )
                                                                   )
                                                                   (br_if $case56|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 497)
                                                                    )
                                                                   )
                                                                   (br_if $case57|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 502)
                                                                    )
                                                                   )
                                                                   (br_if $case58|0
                                                                    (i32.eq
                                                                     (get_local $1)
                                                                     (i32.const 503)
                                                                    )
                                                                   )
                                                                   (br $case59|0)
                                                                  )
                                                                  (return
                                                                   (i32.const 255)
                                                                  )
                                                                 )
                                                                )
                                                               )
                                                              )
                                                             )
                                                            )
                                                           )
                                                          )
                                                         )
                                                        )
                                                       )
                                                      )
                                                     )
                                                    )
                                                   )
                                                  )
                                                 )
                                                )
                                               )
                                              )
                                             )
                                            )
                                           )
                                          )
                                         )
                                        )
                                       )
                                      )
                                     )
                                    )
                                   )
                                  )
                                  (return
                                   (i32.add
                                    (get_local $0)
                                    (i32.const 1)
                                   )
                                  )
                                 )
                                 (return
                                  (i32.const 595)
                                 )
                                )
                                (return
                                 (i32.const 596)
                                )
                               )
                               (return
                                (i32.const 598)
                               )
                              )
                              (return
                               (i32.const 599)
                              )
                             )
                             (return
                              (i32.const 477)
                             )
                            )
                            (return
                             (i32.const 601)
                            )
                           )
                           (return
                            (i32.const 603)
                           )
                          )
                          (return
                           (i32.const 608)
                          )
                         )
                         (return
                          (i32.const 611)
                         )
                        )
                        (return
                         (i32.const 617)
                        )
                       )
                       (return
                        (i32.const 616)
                       )
                      )
                      (return
                       (i32.const 623)
                      )
                     )
                     (return
                      (i32.const 626)
                     )
                    )
                    (return
                     (i32.const 629)
                    )
                   )
                   (return
                    (i32.const 640)
                   )
                  )
                  (return
                   (i32.const 643)
                  )
                 )
                 (return
                  (i32.const 648)
                 )
                )
                (return
                 (i32.const 650)
                )
               )
               (return
                (i32.const 651)
               )
              )
              (return
               (i32.const 658)
              )
             )
            )
           )
          )
          (return
           (i32.add
            (get_local $0)
            (i32.const 2)
           )
          )
         )
         (return
          (i32.const 405)
         )
        )
        (return
         (i32.const 447)
        )
       )
       (br $break|0)
      )
      (if
       (i32.eq
        (get_local $0)
        (i32.const 544)
       )
       (return
        (i32.const 414)
       )
       (if
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 570)
         )
         (i32.sub
          (i32.const 590)
          (i32.const 570)
         )
        )
        (block $break|1
         (block $case13|1
          (block $case12|1
           (block $case11|1
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
                       (set_local $1
                        (get_local $0)
                       )
                       (br_if $case0|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 570)
                        )
                       )
                       (br_if $case1|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 571)
                        )
                       )
                       (br_if $case2|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 577)
                        )
                       )
                       (br_if $case3|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 582)
                        )
                       )
                       (br_if $case4|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 584)
                        )
                       )
                       (br_if $case5|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 586)
                        )
                       )
                       (br_if $case6|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 588)
                        )
                       )
                       (br_if $case7|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 590)
                        )
                       )
                       (br_if $case8|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 573)
                        )
                       )
                       (br_if $case9|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 574)
                        )
                       )
                       (br_if $case10|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 579)
                        )
                       )
                       (br_if $case11|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 580)
                        )
                       )
                       (br_if $case12|1
                        (i32.eq
                         (get_local $1)
                         (i32.const 581)
                        )
                       )
                       (br $case13|1)
                      )
                      (return
                       (i32.const 11365)
                      )
                     )
                    )
                   )
                  )
                 )
                )
               )
               (return
                (i32.add
                 (get_local $0)
                 (i32.const 1)
                )
               )
              )
              (return
               (i32.const 410)
              )
             )
             (return
              (i32.const 11366)
             )
            )
            (return
             (i32.const 384)
            )
           )
           (return
            (i32.const 649)
           )
          )
          (return
           (i32.const 652)
          )
         )
         (br $break|1)
        )
       )
      )
     )
    )
    (if
     (i32.lt_u
      (get_local $0)
      (i32.const 1024)
     )
     (block
      (if
       (i32.eqz
        (i32.and
         (i32.and
          (i32.sub
           (get_local $0)
           (i32.const 880)
          )
          (i32.sub
           (get_local $0)
           (i32.const 882)
          )
         )
         (i32.sub
          (get_local $0)
          (i32.const 886)
         )
        )
       )
       (return
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (if
       (if (result i32)
        (tee_local $1
         (i32.ne
          (get_local $0)
          (i32.const 930)
         )
        )
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 913)
         )
         (i32.sub
          (i32.const 939)
          (i32.const 913)
         )
        )
        (get_local $1)
       )
       (return
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
      (if
       (if (result i32)
        (tee_local $1
         (i32.eqz
          (i32.and
           (get_local $0)
           (i32.const 1)
          )
         )
        )
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 984)
         )
         (i32.sub
          (i32.const 1006)
          (i32.const 984)
         )
        )
        (get_local $1)
       )
       (return
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (if
       (i32.le_u
        (i32.sub
         (get_local $0)
         (i32.const 902)
        )
        (i32.sub
         (i32.const 1023)
         (i32.const 902)
        )
       )
       (block $break|2
        (block $case15|2
         (block $case14|2
          (block $case13|2
           (block $case12|2
            (block $case11|2
             (block $case10|2
              (block $case9|2
               (block $case8|2
                (block $case7|2
                 (block $case6|2
                  (block $case5|2
                   (block $case4|2
                    (block $case3|2
                     (block $case2|2
                      (block $case1|2
                       (block $case0|2
                        (set_local $1
                         (get_local $0)
                        )
                        (br_if $case0|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 902)
                         )
                        )
                        (br_if $case1|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 904)
                         )
                        )
                        (br_if $case2|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 905)
                         )
                        )
                        (br_if $case3|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 906)
                         )
                        )
                        (br_if $case4|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 908)
                         )
                        )
                        (br_if $case5|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 910)
                         )
                        )
                        (br_if $case6|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 911)
                         )
                        )
                        (br_if $case7|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 975)
                         )
                        )
                        (br_if $case8|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 1012)
                         )
                        )
                        (br_if $case9|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 1015)
                         )
                        )
                        (br_if $case10|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 1017)
                         )
                        )
                        (br_if $case11|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 1018)
                         )
                        )
                        (br_if $case12|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 1021)
                         )
                        )
                        (br_if $case13|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 1022)
                         )
                        )
                        (br_if $case14|2
                         (i32.eq
                          (get_local $1)
                          (i32.const 1023)
                         )
                        )
                        (br $case15|2)
                       )
                       (return
                        (i32.const 940)
                       )
                      )
                      (return
                       (i32.const 941)
                      )
                     )
                     (return
                      (i32.const 942)
                     )
                    )
                    (return
                     (i32.const 943)
                    )
                   )
                   (return
                    (i32.const 972)
                   )
                  )
                  (return
                   (i32.const 973)
                  )
                 )
                 (return
                  (i32.const 974)
                 )
                )
                (return
                 (i32.const 983)
                )
               )
               (return
                (i32.const 952)
               )
              )
              (return
               (i32.const 1016)
              )
             )
             (return
              (i32.const 1010)
             )
            )
            (return
             (i32.const 1019)
            )
           )
           (return
            (i32.const 891)
           )
          )
          (return
           (i32.const 892)
          )
         )
         (return
          (i32.const 893)
         )
        )
        (br $break|2)
       )
      )
     )
     (if
      (i32.lt_u
       (get_local $0)
       (i32.const 1280)
      )
      (block
       (if
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 1024)
         )
         (i32.sub
          (i32.const 1039)
          (i32.const 1024)
         )
        )
        (return
         (i32.add
          (get_local $0)
          (i32.const 80)
         )
        )
       )
       (if
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 1040)
         )
         (i32.sub
          (i32.const 1071)
          (i32.const 1040)
         )
        )
        (return
         (i32.add
          (get_local $0)
          (i32.const 32)
         )
        )
       )
       (if
        (if (result i32)
         (tee_local $1
          (if (result i32)
           (tee_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 1120)
             )
             (i32.sub
              (i32.const 1152)
              (i32.const 1120)
             )
            )
           )
           (get_local $1)
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 1162)
            )
            (i32.sub
             (i32.const 1214)
             (i32.const 1162)
            )
           )
          )
         )
         (get_local $1)
         (i32.le_u
          (i32.sub
           (get_local $0)
           (i32.const 1232)
          )
          (i32.sub
           (i32.const 1278)
           (i32.const 1232)
          )
         )
        )
        (return
         (i32.add
          (get_local $0)
          (i32.eqz
           (i32.and
            (get_local $0)
            (i32.const 1)
           )
          )
         )
        )
       )
       (if
        (i32.eq
         (get_local $0)
         (i32.const 1216)
        )
        (return
         (i32.const 1231)
        )
       )
       (if
        (i32.le_u
         (i32.sub
          (get_local $0)
          (i32.const 1217)
         )
         (i32.sub
          (i32.const 1229)
          (i32.const 1217)
         )
        )
        (return
         (i32.add
          (get_local $0)
          (i32.and
           (get_local $0)
           (i32.const 1)
          )
         )
        )
       )
      )
      (if
       (i32.lt_u
        (get_local $0)
        (i32.const 7936)
       )
       (block
        (if
         (if (result i32)
          (tee_local $1
           (if (result i32)
            (tee_local $1
             (if (result i32)
              (tee_local $1
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 1280)
                )
                (i32.sub
                 (i32.const 1294)
                 (i32.const 1280)
                )
               )
              )
              (get_local $1)
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 1296)
               )
               (i32.sub
                (i32.const 1316)
                (i32.const 1296)
               )
              )
             )
            )
            (get_local $1)
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 7680)
             )
             (i32.sub
              (i32.const 7828)
              (i32.const 7680)
             )
            )
           )
          )
          (get_local $1)
          (i32.le_u
           (i32.sub
            (get_local $0)
            (i32.const 7840)
           )
           (i32.sub
            (i32.const 7928)
            (i32.const 7840)
           )
          )
         )
         (return
          (i32.add
           (get_local $0)
           (i32.eqz
            (i32.and
             (get_local $0)
             (i32.const 1)
            )
           )
          )
         )
        )
        (if
         (i32.le_u
          (i32.sub
           (get_local $0)
           (i32.const 1329)
          )
          (i32.sub
           (i32.const 1366)
           (i32.const 1329)
          )
         )
         (return
          (i32.add
           (get_local $0)
           (i32.const 48)
          )
         )
        )
        (if
         (i32.le_u
          (i32.sub
           (get_local $0)
           (i32.const 4256)
          )
          (i32.sub
           (i32.const 4293)
           (i32.const 4256)
          )
         )
         (return
          (i32.add
           (get_local $0)
           (i32.const 7264)
          )
         )
        )
        (if
         (i32.eq
          (get_local $0)
          (i32.const 7838)
         )
         (return
          (i32.const 223)
         )
        )
        (if
         (if (result i32)
          (tee_local $1
           (i32.eqz
            (i32.and
             (get_local $0)
             (i32.const 1)
            )
           )
          )
          (i32.le_u
           (i32.sub
            (get_local $0)
            (i32.const 7930)
           )
           (i32.sub
            (i32.const 7934)
            (i32.const 7930)
           )
          )
          (get_local $1)
         )
         (return
          (i32.add
           (get_local $0)
           (i32.const 1)
          )
         )
        )
       )
       (if
        (i32.lt_u
         (get_local $0)
         (i32.const 8192)
        )
        (block
         (if
          (if (result i32)
           (tee_local $1
            (if (result i32)
             (tee_local $1
              (if (result i32)
               (tee_local $1
                (if (result i32)
                 (tee_local $1
                  (if (result i32)
                   (tee_local $1
                    (if (result i32)
                     (tee_local $1
                      (if (result i32)
                       (tee_local $1
                        (if (result i32)
                         (tee_local $1
                          (i32.le_u
                           (i32.sub
                            (get_local $0)
                            (i32.const 7944)
                           )
                           (i32.sub
                            (i32.const 7951)
                            (i32.const 7944)
                           )
                          )
                         )
                         (get_local $1)
                         (i32.le_u
                          (i32.sub
                           (get_local $0)
                           (i32.const 7960)
                          )
                          (i32.sub
                           (i32.const 7965)
                           (i32.const 7960)
                          )
                         )
                        )
                       )
                       (get_local $1)
                       (i32.le_u
                        (i32.sub
                         (get_local $0)
                         (i32.const 7976)
                        )
                        (i32.sub
                         (i32.const 7983)
                         (i32.const 7976)
                        )
                       )
                      )
                     )
                     (get_local $1)
                     (i32.le_u
                      (i32.sub
                       (get_local $0)
                       (i32.const 7992)
                      )
                      (i32.sub
                       (i32.const 7999)
                       (i32.const 7992)
                      )
                     )
                    )
                   )
                   (get_local $1)
                   (i32.le_u
                    (i32.sub
                     (get_local $0)
                     (i32.const 8008)
                    )
                    (i32.sub
                     (i32.const 8013)
                     (i32.const 8008)
                    )
                   )
                  )
                 )
                 (get_local $1)
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 8040)
                  )
                  (i32.sub
                   (i32.const 8047)
                   (i32.const 8040)
                  )
                 )
                )
               )
               (get_local $1)
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 8072)
                )
                (i32.sub
                 (i32.const 8079)
                 (i32.const 8072)
                )
               )
              )
             )
             (get_local $1)
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 8088)
              )
              (i32.sub
               (i32.const 8095)
               (i32.const 8088)
              )
             )
            )
           )
           (get_local $1)
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 8104)
            )
            (i32.sub
             (i32.const 8111)
             (i32.const 8104)
            )
           )
          )
          (return
           (i32.sub
            (get_local $0)
            (i32.const 8)
           )
          )
         )
         (if
          (i32.le_u
           (i32.sub
            (get_local $0)
            (i32.const 8025)
           )
           (i32.sub
            (i32.const 8031)
            (i32.const 8025)
           )
          )
          (return
           (select
            (i32.sub
             (get_local $0)
             (i32.const 8)
            )
            (get_local $0)
            (i32.and
             (get_local $0)
             (i32.const 1)
            )
           )
          )
         )
         (if
          (i32.le_u
           (i32.sub
            (get_local $0)
            (i32.const 8120)
           )
           (i32.sub
            (i32.const 8188)
            (i32.const 8120)
           )
          )
          (block $break|3
           (block $case24|3
            (block $case23|3
             (block $case22|3
              (block $case21|3
               (block $case20|3
                (block $case19|3
                 (block $case18|3
                  (block $case17|3
                   (block $case16|3
                    (block $case15|3
                     (block $case14|3
                      (block $case13|3
                       (block $case12|3
                        (block $case11|3
                         (block $case10|3
                          (block $case9|3
                           (block $case8|3
                            (block $case7|3
                             (block $case6|3
                              (block $case5|3
                               (block $case4|3
                                (block $case3|3
                                 (block $case2|3
                                  (block $case1|3
                                   (block $case0|3
                                    (set_local $1
                                     (get_local $0)
                                    )
                                    (br_if $case0|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8120)
                                     )
                                    )
                                    (br_if $case1|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8121)
                                     )
                                    )
                                    (br_if $case2|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8152)
                                     )
                                    )
                                    (br_if $case3|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8153)
                                     )
                                    )
                                    (br_if $case4|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8168)
                                     )
                                    )
                                    (br_if $case5|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8169)
                                     )
                                    )
                                    (br_if $case6|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8122)
                                     )
                                    )
                                    (br_if $case7|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8123)
                                     )
                                    )
                                    (br_if $case8|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8124)
                                     )
                                    )
                                    (br_if $case9|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8136)
                                     )
                                    )
                                    (br_if $case10|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8137)
                                     )
                                    )
                                    (br_if $case11|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8138)
                                     )
                                    )
                                    (br_if $case12|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8139)
                                     )
                                    )
                                    (br_if $case13|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8140)
                                     )
                                    )
                                    (br_if $case14|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8154)
                                     )
                                    )
                                    (br_if $case15|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8155)
                                     )
                                    )
                                    (br_if $case16|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8170)
                                     )
                                    )
                                    (br_if $case17|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8171)
                                     )
                                    )
                                    (br_if $case18|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8172)
                                     )
                                    )
                                    (br_if $case19|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8184)
                                     )
                                    )
                                    (br_if $case20|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8185)
                                     )
                                    )
                                    (br_if $case21|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8186)
                                     )
                                    )
                                    (br_if $case22|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8187)
                                     )
                                    )
                                    (br_if $case23|3
                                     (i32.eq
                                      (get_local $1)
                                      (i32.const 8188)
                                     )
                                    )
                                    (br $case24|3)
                                   )
                                  )
                                 )
                                )
                               )
                              )
                              (return
                               (i32.sub
                                (get_local $0)
                                (i32.const 8)
                               )
                              )
                             )
                            )
                            (return
                             (i32.sub
                              (get_local $0)
                              (i32.const 74)
                             )
                            )
                           )
                           (return
                            (i32.const 8115)
                           )
                          )
                         )
                        )
                       )
                       (return
                        (i32.sub
                         (get_local $0)
                         (i32.const 86)
                        )
                       )
                      )
                      (return
                       (i32.const 8131)
                      )
                     )
                    )
                    (return
                     (i32.sub
                      (get_local $0)
                      (i32.const 100)
                     )
                    )
                   )
                  )
                  (return
                   (i32.sub
                    (get_local $0)
                    (i32.const 112)
                   )
                  )
                 )
                 (return
                  (i32.const 8165)
                 )
                )
               )
               (return
                (i32.sub
                 (get_local $0)
                 (i32.const 128)
                )
               )
              )
             )
             (return
              (i32.sub
               (get_local $0)
               (i32.const 126)
              )
             )
            )
            (return
             (i32.const 8179)
            )
           )
           (br $break|3)
          )
         )
        )
        (if
         (i32.lt_u
          (get_local $0)
          (i32.const 11264)
         )
         (block
          (if
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 8544)
            )
            (i32.sub
             (i32.const 8559)
             (i32.const 8544)
            )
           )
           (return
            (i32.add
             (get_local $0)
             (i32.const 16)
            )
           )
          )
          (if
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 9398)
            )
            (i32.sub
             (i32.const 9423)
             (i32.const 9398)
            )
           )
           (return
            (i32.add
             (get_local $0)
             (i32.const 26)
            )
           )
          )
          (block $break|4
           (block $case5|4
            (block $case4|4
             (block $case3|4
              (block $case2|4
               (block $case1|4
                (block $case0|4
                 (set_local $1
                  (get_local $0)
                 )
                 (br_if $case0|4
                  (i32.eq
                   (get_local $1)
                   (i32.const 8486)
                  )
                 )
                 (br_if $case1|4
                  (i32.eq
                   (get_local $1)
                   (i32.const 8490)
                  )
                 )
                 (br_if $case2|4
                  (i32.eq
                   (get_local $1)
                   (i32.const 8491)
                  )
                 )
                 (br_if $case3|4
                  (i32.eq
                   (get_local $1)
                   (i32.const 8498)
                  )
                 )
                 (br_if $case4|4
                  (i32.eq
                   (get_local $1)
                   (i32.const 8579)
                  )
                 )
                 (br $case5|4)
                )
                (return
                 (i32.const 969)
                )
               )
               (return
                (i32.const 107)
               )
              )
              (return
               (i32.const 229)
              )
             )
             (return
              (i32.const 8526)
             )
            )
            (return
             (i32.const 8580)
            )
           )
           (br $break|4)
          )
         )
         (if
          (i32.lt_u
           (get_local $0)
           (i32.const 11520)
          )
          (block
           (if
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 11264)
             )
             (i32.sub
              (i32.const 11310)
              (i32.const 11264)
             )
            )
            (return
             (i32.add
              (get_local $0)
              (i32.const 48)
             )
            )
           )
           (if
            (if (result i32)
             (tee_local $1
              (i32.eqz
               (i32.and
                (get_local $0)
                (i32.const 1)
               )
              )
             )
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 11392)
              )
              (i32.sub
               (i32.const 11490)
               (i32.const 11392)
              )
             )
             (get_local $1)
            )
            (return
             (i32.add
              (get_local $0)
              (i32.const 1)
             )
            )
           )
           (block $break|5
            (block $case17|5
             (block $case16|5
              (block $case15|5
               (block $case14|5
                (block $case13|5
                 (block $case12|5
                  (block $case11|5
                   (block $case10|5
                    (block $case9|5
                     (block $case8|5
                      (block $case7|5
                       (block $case6|5
                        (block $case5|5
                         (block $case4|5
                          (block $case3|5
                           (block $case2|5
                            (block $case1|5
                             (block $case0|5
                              (set_local $1
                               (get_local $0)
                              )
                              (br_if $case0|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11360)
                               )
                              )
                              (br_if $case1|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11362)
                               )
                              )
                              (br_if $case2|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11363)
                               )
                              )
                              (br_if $case3|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11364)
                               )
                              )
                              (br_if $case4|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11367)
                               )
                              )
                              (br_if $case5|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11369)
                               )
                              )
                              (br_if $case6|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11371)
                               )
                              )
                              (br_if $case7|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11378)
                               )
                              )
                              (br_if $case8|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11381)
                               )
                              )
                              (br_if $case9|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11499)
                               )
                              )
                              (br_if $case10|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11501)
                               )
                              )
                              (br_if $case11|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11373)
                               )
                              )
                              (br_if $case12|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11374)
                               )
                              )
                              (br_if $case13|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11375)
                               )
                              )
                              (br_if $case14|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11376)
                               )
                              )
                              (br_if $case15|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11390)
                               )
                              )
                              (br_if $case16|5
                               (i32.eq
                                (get_local $1)
                                (i32.const 11391)
                               )
                              )
                              (br $case17|5)
                             )
                             (return
                              (i32.const 11361)
                             )
                            )
                            (return
                             (i32.const 619)
                            )
                           )
                           (return
                            (i32.const 7549)
                           )
                          )
                          (return
                           (i32.const 637)
                          )
                         )
                        )
                       )
                      )
                     )
                    )
                   )
                   (return
                    (i32.add
                     (get_local $0)
                     (i32.const 1)
                    )
                   )
                  )
                  (return
                   (i32.const 593)
                  )
                 )
                 (return
                  (i32.const 625)
                 )
                )
                (return
                 (i32.const 592)
                )
               )
               (return
                (i32.const 594)
               )
              )
              (return
               (i32.const 575)
              )
             )
             (return
              (i32.const 576)
             )
            )
            (br $break|5)
           )
          )
          (if
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 42496)
            )
            (i32.sub
             (i32.sub
              (i32.const 43008)
              (i32.const 1)
             )
             (i32.const 42496)
            )
           )
           (block
            (if
             (if (result i32)
              (tee_local $1
               (if (result i32)
                (tee_local $1
                 (if (result i32)
                  (tee_local $1
                   (if (result i32)
                    (tee_local $1
                     (if (result i32)
                      (tee_local $1
                       (i32.le_u
                        (i32.sub
                         (get_local $0)
                         (i32.const 42560)
                        )
                        (i32.sub
                         (i32.const 42590)
                         (i32.const 42560)
                        )
                       )
                      )
                      (get_local $1)
                      (i32.le_u
                       (i32.sub
                        (get_local $0)
                        (i32.const 42594)
                       )
                       (i32.sub
                        (i32.const 42604)
                        (i32.const 42594)
                       )
                      )
                     )
                    )
                    (get_local $1)
                    (i32.le_u
                     (i32.sub
                      (get_local $0)
                      (i32.const 42624)
                     )
                     (i32.sub
                      (i32.const 42646)
                      (i32.const 42624)
                     )
                    )
                   )
                  )
                  (get_local $1)
                  (i32.le_u
                   (i32.sub
                    (get_local $0)
                    (i32.const 42786)
                   )
                   (i32.sub
                    (i32.const 42798)
                    (i32.const 42786)
                   )
                  )
                 )
                )
                (get_local $1)
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 42802)
                 )
                 (i32.sub
                  (i32.const 42862)
                  (i32.const 42802)
                 )
                )
               )
              )
              (get_local $1)
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 42879)
               )
               (i32.sub
                (i32.const 42886)
                (i32.const 42879)
               )
              )
             )
             (return
              (i32.add
               (get_local $0)
               (i32.eqz
                (i32.and
                 (get_local $0)
                 (i32.const 1)
                )
               )
              )
             )
            )
            (block $break|6
             (block $case5|6
              (block $case4|6
               (block $case3|6
                (block $case2|6
                 (block $case1|6
                  (block $case0|6
                   (set_local $1
                    (get_local $0)
                   )
                   (br_if $case0|6
                    (i32.eq
                     (get_local $1)
                     (i32.const 42873)
                    )
                   )
                   (br_if $case1|6
                    (i32.eq
                     (get_local $1)
                     (i32.const 42875)
                    )
                   )
                   (br_if $case2|6
                    (i32.eq
                     (get_local $1)
                     (i32.const 42878)
                    )
                   )
                   (br_if $case3|6
                    (i32.eq
                     (get_local $1)
                     (i32.const 42891)
                    )
                   )
                   (br_if $case4|6
                    (i32.eq
                     (get_local $1)
                     (i32.const 42877)
                    )
                   )
                   (br $case5|6)
                  )
                 )
                )
               )
               (return
                (i32.add
                 (get_local $0)
                 (i32.const 1)
                )
               )
              )
              (return
               (i32.const 7545)
              )
             )
             (br $break|6)
            )
           )
           (block
            (if
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 65313)
              )
              (i32.sub
               (i32.const 65338)
               (i32.const 65313)
              )
             )
             (return
              (i32.add
               (get_local $0)
               (i32.const 32)
              )
             )
            )
            (if
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 66560)
              )
              (i32.sub
               (i32.const 66599)
               (i32.const 66560)
              )
             )
             (return
              (i32.add
               (get_local $0)
               (i32.const 40)
              )
             )
            )
           )
          )
         )
        )
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/string/String#toLowerCase (; 41 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
     (i32.const 80)
     (i32.const 438)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (return
    (i32.const 256)
   )
  )
  (set_local $2
   (call $~lib/internal/string/allocateUnsafe
    (get_local $1)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (block
     (set_local $5
      (i32.load16_u offset=4
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $3)
         (i32.const 1)
        )
       )
      )
     )
     (set_local $6
      (block $~lib/internal/string/toLower|inlined.0 (result i32)
       (if (result i32)
        (i32.and
         (block $~lib/internal/string/isAscii|inlined.3 (result i32)
          (i32.eq
           (i32.and
            (get_local $5)
            (i32.const -128)
           )
           (i32.const 0)
          )
         )
         (i32.const 1)
        )
        (block $~lib/internal/string/toLower8|inlined.0 (result i32)
         (select
          (i32.add
           (i32.sub
            (get_local $5)
            (get_global $~lib/internal/string/CharCode.A)
           )
           (get_global $~lib/internal/string/CharCode.a)
          )
          (get_local $5)
          (i32.and
           (block $~lib/internal/string/isUpper|inlined.0 (result i32)
            (i32.le_u
             (i32.sub
              (get_local $5)
              (get_global $~lib/internal/string/CharCode.A)
             )
             (i32.sub
              (get_global $~lib/internal/string/CharCode.Z)
              (get_global $~lib/internal/string/CharCode.A)
             )
            )
           )
           (i32.const 1)
          )
         )
        )
        (call $~lib/internal/string/toLower16
         (get_local $5)
        )
       )
      )
     )
     (if
      (i32.gt_u
       (get_local $6)
       (i32.const 65535)
      )
      (block
       (if
        (i32.eq
         (get_local $3)
         (get_local $4)
        )
        (set_local $2
         (call $~lib/internal/string/reallocateUnsafe
          (get_local $2)
          (get_local $1)
          (get_local $3)
         )
        )
       )
       (i32.store offset=4
        (i32.add
         (get_local $2)
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
        (get_local $6)
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 2)
        )
       )
      )
      (block
       (i32.store16 offset=4
        (i32.add
         (get_local $2)
         (i32.shl
          (get_local $4)
          (i32.const 1)
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
  (if
   (i32.ne
    (get_local $3)
    (get_local $4)
   )
   (return
    (block (result i32)
     (set_global $~argc
      (i32.const 2)
     )
     (call $~lib/internal/string/reallocateUnsafe|trampoline
      (get_local $2)
      (get_local $4)
      (i32.const 0)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/itoa/decimalCountU32 (; 42 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (i32.sub
    (i32.const 32)
    (i32.clz
     (get_local $0)
    )
   )
  )
  (set_local $2
   (i32.shr_u
    (i32.mul
     (get_local $1)
     (i32.const 1233)
    )
    (i32.const 12)
   )
  )
  (set_local $3
   (i32.load
    (block $~lib/internal/itoa/POWERS10|inlined.0 (result i32)
     (i32.const 2664)
    )
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.0 (result i32)
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
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (i32.lt_u
     (get_local $0)
     (get_local $4)
    )
   )
  )
  (i32.add
   (get_local $2)
   (i32.const 1)
  )
 )
 (func $~lib/internal/itoa/utoa32_lut (; 43 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (set_local $3
   (i32.load
    (block $~lib/internal/itoa/DIGITS|inlined.0 (result i32)
     (i32.const 3184)
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
     (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.1 (result i32)
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
     (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.2 (result i32)
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
 (func $~lib/internal/itoa/itoa32 (; 44 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 480)
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
    (call $~lib/internal/itoa/decimalCountU32
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
  (block $~lib/internal/itoa/utoa32_core|inlined.0
   (call $~lib/internal/itoa/utoa32_lut
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
 (func $~lib/internal/itoa/utoa32 (; 45 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 480)
   )
  )
  (set_local $1
   (call $~lib/internal/itoa/decimalCountU32
    (get_local $0)
   )
  )
  (set_local $2
   (call $~lib/internal/string/allocateUnsafe
    (get_local $1)
   )
  )
  (block $~lib/internal/itoa/utoa32_core|inlined.1
   (call $~lib/internal/itoa/utoa32_lut
    (get_local $2)
    (get_local $0)
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/itoa/decimalCountU64 (; 46 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (set_local $1
   (i32.sub
    (i32.const 64)
    (i32.wrap/i64
     (i64.clz
      (get_local $0)
     )
    )
   )
  )
  (set_local $2
   (i32.shr_u
    (i32.mul
     (get_local $1)
     (i32.const 1233)
    )
    (i32.const 12)
   )
  )
  (set_local $3
   (i32.load
    (block $~lib/internal/itoa/POWERS10|inlined.1 (result i32)
     (i32.const 3528)
    )
   )
  )
  (set_local $5
   (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.2 (result i64)
    (set_local $4
     (i32.sub
      (get_local $2)
      (i32.const 10)
     )
    )
    (i64.load32_u offset=8
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
  (set_local $2
   (i32.sub
    (get_local $2)
    (i64.lt_u
     (get_local $0)
     (i64.mul
      (i64.const 10000000000)
      (get_local $5)
     )
    )
   )
  )
  (i32.add
   (get_local $2)
   (i32.const 1)
  )
 )
 (func $~lib/internal/itoa/utoa64_lut (; 47 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
    (block $~lib/internal/itoa/DIGITS|inlined.1 (result i32)
     (i32.const 4048)
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
        (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.3 (result i64)
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
        (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.4 (result i64)
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
        (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.5 (result i64)
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
        (block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.6 (result i64)
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
  (call $~lib/internal/itoa/utoa32_lut
   (get_local $0)
   (i32.wrap/i64
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $~lib/internal/itoa/utoa64 (; 48 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i64.eqz
    (get_local $0)
   )
   (return
    (i32.const 480)
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
     (call $~lib/internal/itoa/decimalCountU32
      (get_local $2)
     )
    )
    (set_local $1
     (call $~lib/internal/string/allocateUnsafe
      (get_local $3)
     )
    )
    (block $~lib/internal/itoa/utoa32_core|inlined.2
     (call $~lib/internal/itoa/utoa32_lut
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (block
    (set_local $3
     (call $~lib/internal/itoa/decimalCountU64
      (get_local $0)
     )
    )
    (set_local $1
     (call $~lib/internal/string/allocateUnsafe
      (get_local $3)
     )
    )
    (block $~lib/internal/itoa/utoa64_core|inlined.0
     (call $~lib/internal/itoa/utoa64_lut
      (get_local $1)
      (get_local $0)
      (get_local $3)
     )
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/internal/itoa/itoa64 (; 49 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i64.eqz
    (get_local $0)
   )
   (return
    (i32.const 480)
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
      (call $~lib/internal/itoa/decimalCountU32
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
    (block $~lib/internal/itoa/utoa32_core|inlined.3
     (call $~lib/internal/itoa/utoa32_lut
      (get_local $2)
      (get_local $3)
      (get_local $4)
     )
    )
   )
   (block
    (set_local $4
     (i32.add
      (call $~lib/internal/itoa/decimalCountU64
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
    (block $~lib/internal/itoa/utoa64_core|inlined.1
     (call $~lib/internal/itoa/utoa64_lut
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
 (func $start (; 50 ;) (type $v)
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
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/string/str)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (get_global $std/string/str)
     )
     (i32.const 16)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#charCodeAt
      (get_global $std/string/str)
      (i32.const 0)
     )
     (i32.const 104)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 14)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCharCode
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCharCode
      (i32.const 54)
     )
     (i32.const 176)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCharCode
      (i32.add
       (i32.const 65536)
       (i32.const 54)
      )
     )
     (i32.const 176)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCodePoint
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCodePoint
      (i32.const 54)
     )
     (i32.const 176)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.fromCodePoint
     (i32.const 119558)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 184)
     (i32.const 48)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String#startsWith
     (get_global $std/string/str)
     (i32.const 192)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 24)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (block (result i32)
     (set_global $~argc
      (i32.const 1)
     )
     (call $~lib/string/String#endsWith|trampoline
      (get_global $std/string/str)
      (i32.const 216)
      (i32.const 0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String#includes
     (get_global $std/string/str)
     (i32.const 232)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padStart|trampoline
       (get_global $std/string/str)
       (i32.const 0)
       (i32.const 0)
      )
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padStart|trampoline
       (get_global $std/string/str)
       (i32.const 15)
       (i32.const 0)
      )
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 29)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padStart|trampoline
       (i32.const 256)
       (i32.const 3)
       (i32.const 0)
      )
     )
     (i32.const 264)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 30)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 256)
      (i32.const 10)
      (i32.const 256)
     )
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 31)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 280)
      (i32.const 100)
      (i32.const 256)
     )
     (i32.const 280)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 32)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padStart|trampoline
       (i32.const 288)
       (i32.const 5)
       (i32.const 0)
      )
     )
     (i32.const 304)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 33)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 288)
      (i32.const 6)
      (i32.const 320)
     )
     (i32.const 336)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 34)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 288)
      (i32.const 8)
      (i32.const 320)
     )
     (i32.const 352)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 35)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padEnd|trampoline
       (get_global $std/string/str)
       (i32.const 0)
       (i32.const 0)
      )
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 37)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padEnd|trampoline
       (get_global $std/string/str)
       (i32.const 15)
       (i32.const 0)
      )
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 38)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padEnd|trampoline
       (i32.const 256)
       (i32.const 3)
       (i32.const 0)
      )
     )
     (i32.const 264)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 39)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 256)
      (i32.const 10)
      (i32.const 256)
     )
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 40)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 280)
      (i32.const 100)
      (i32.const 256)
     )
     (i32.const 280)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 41)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padEnd|trampoline
       (i32.const 288)
       (i32.const 5)
       (i32.const 0)
      )
     )
     (i32.const 376)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 42)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 288)
      (i32.const 6)
      (i32.const 288)
     )
     (i32.const 392)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 43)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 288)
      (i32.const 8)
      (i32.const 288)
     )
     (i32.const 408)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 44)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#indexOf
      (i32.const 256)
      (i32.const 256)
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 46)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#indexOf
      (i32.const 256)
      (i32.const 192)
      (i32.const 0)
     )
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 47)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 256)
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 48)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 432)
      (i32.const 0)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 49)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 440)
      (i32.const 0)
     )
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 50)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 432)
      (i32.const 2)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 51)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 432)
      (i32.const 3)
     )
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 52)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 448)
      (i32.const -1)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 53)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (i32.const 256)
       (i32.const 256)
       (i32.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 55)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (i32.const 256)
       (i32.const 192)
       (i32.const 0)
      )
     )
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 56)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (get_global $std/string/str)
       (i32.const 256)
       (i32.const 0)
      )
     )
     (i32.load
      (get_global $std/string/str)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 57)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (get_global $std/string/str)
       (i32.const 432)
       (i32.const 0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 58)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (get_global $std/string/str)
       (i32.const 440)
       (i32.const 0)
      )
     )
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 59)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (get_global $std/string/str)
       (i32.const 464)
       (i32.const 0)
      )
     )
     (i32.const 15)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 60)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#lastIndexOf
      (get_global $std/string/str)
      (i32.const 432)
      (i32.const 2)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 61)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#lastIndexOf
      (get_global $std/string/str)
      (i32.const 432)
      (i32.const 3)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 62)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#lastIndexOf
      (get_global $std/string/str)
      (i32.const 448)
      (i32.const -1)
     )
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 63)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#lastIndexOf
      (get_global $std/string/str)
      (i32.const 472)
      (i32.const 0)
     )
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 64)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#lastIndexOf
      (get_global $std/string/str)
      (i32.const 192)
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 65)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 480)
      (i32.const 0)
     )
     (f64.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 71)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 488)
      (i32.const 0)
     )
     (f64.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 72)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 496)
      (i32.const 0)
     )
     (f64.const 5)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 73)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 512)
      (i32.const 0)
     )
     (f64.const 455)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 74)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 528)
      (i32.const 0)
     )
     (f64.const 3855)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 75)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 544)
      (i32.const 0)
     )
     (f64.const 3855)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 76)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 560)
      (i32.const 0)
     )
     (f64.const 11)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 77)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 576)
      (i32.const 0)
     )
     (f64.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 78)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 480)
     )
     (f64.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 488)
     )
     (f64.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 81)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 592)
     )
     (f64.const 0.1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 82)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 608)
     )
     (f64.const 0.25)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 83)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 624)
     )
     (f64.const 0.1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 84)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/string/c
   (call $~lib/string/String.__concat
    (i32.const 280)
    (i32.const 648)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (get_global $std/string/c)
     (i32.const 656)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 87)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (get_global $std/string/c)
     (i32.const 280)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 88)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (i32.const 256)
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 89)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (i32.const 256)
     (get_global $std/string/nullStr)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 90)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 648)
     (i32.const 280)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 92)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 664)
     (i32.const 280)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 93)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 664)
     (i32.const 672)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 94)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 664)
     (i32.const 656)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 95)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 664)
      (i32.const 656)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 96)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 648)
      (get_global $std/string/nullStr)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 98)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (get_global $std/string/nullStr)
      (i32.const 648)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 99)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 288)
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 101)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lt
     (i32.const 256)
     (i32.const 288)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 102)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 288)
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 103)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lte
     (i32.const 256)
     (i32.const 288)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 104)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 288)
      (i32.const 256)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 105)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__gt
      (i32.const 256)
      (i32.const 288)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 106)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 256)
      (i32.const 256)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 107)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__gt
      (i32.const 256)
      (i32.const 256)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 108)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 256)
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 109)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lte
     (i32.const 256)
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 110)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/string/a
   (call $~lib/string/String.fromCodePoint
    (i32.const 65377)
   )
  )
  (set_global $std/string/b
   (call $~lib/string/String.__concat
    (call $~lib/string/String.fromCodePoint
     (i32.const 55296)
    )
    (call $~lib/string/String.fromCodePoint
     (i32.const 56322)
    )
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (get_global $std/string/a)
     (get_global $std/string/b)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 114)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (i32.const 320)
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 256)
      (i32.const 100)
     )
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 118)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 280)
      (i32.const 0)
     )
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 119)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 280)
      (i32.const 1)
     )
     (i32.const 280)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 120)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 280)
      (i32.const 2)
     )
     (i32.const 672)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 121)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 280)
      (i32.const 3)
     )
     (i32.const 680)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 122)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 656)
      (i32.const 4)
     )
     (i32.const 696)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 123)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 280)
      (i32.const 5)
     )
     (i32.const 720)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 124)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 280)
      (i32.const 6)
     )
     (i32.const 736)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 125)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 280)
      (i32.const 7)
     )
     (i32.const 752)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 126)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 256)
     )
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 128)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 256)
     )
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 129)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 776)
     )
     (i32.const 800)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 130)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 776)
     )
     (i32.const 824)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 131)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 848)
     )
     (i32.const 928)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 132)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 928)
     )
     (i32.const 1008)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 133)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 1088)
     )
     (i32.const 1128)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 134)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 1128)
     )
     (i32.const 1168)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 135)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 1208)
     )
     (i32.const 1280)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 136)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 1280)
     )
     (i32.const 1352)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 137)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 1424)
     )
     (i32.const 1504)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 138)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 1504)
     )
     (i32.const 1584)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 139)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 1664)
     )
     (i32.const 1720)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 141)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 1776)
     )
     (i32.const 1824)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 143)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 1872)
     )
     (i32.const 1928)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 145)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 1984)
     )
     (i32.const 2120)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 151)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 1984)
     )
     (i32.const 2256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 155)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (call $~lib/string/String#toUpperCase
       (i32.const 2392)
      )
     )
     (i32.const 2392)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 166)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (call $~lib/string/String#toUpperCase
       (i32.const 2400)
      )
     )
     (i32.const 2400)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 167)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (call $~lib/string/String#toUpperCase
       (i32.const 2408)
      )
     )
     (i32.const 2408)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 173)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 0)
     )
     (i32.const 480)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 179)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1)
     )
     (i32.const 488)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 180)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 8)
     )
     (i32.const 3192)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 181)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 123)
     )
     (i32.const 320)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 182)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const -1000)
     )
     (i32.const 3200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 183)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1234)
     )
     (i32.const 3216)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 184)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 12345)
     )
     (i32.const 3232)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 185)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 123456)
     )
     (i32.const 3248)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 186)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1111111)
     )
     (i32.const 3264)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 187)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1234567)
     )
     (i32.const 3288)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 188)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 2147483646)
     )
     (i32.const 3312)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 189)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 2147483647)
     )
     (i32.const 3336)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 190)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const -2147483648)
     )
     (i32.const 3360)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 191)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const -1)
     )
     (i32.const 3392)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 192)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const 0)
     )
     (i32.const 480)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 194)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const 1000)
     )
     (i32.const 3400)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 195)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const 2147483647)
     )
     (i32.const 3336)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 196)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const -2147483648)
     )
     (i32.const 3416)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 197)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (get_global $~lib/builtins/u32.MAX_VALUE)
     )
     (i32.const 3440)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 198)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 0)
     )
     (i32.const 480)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 200)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 1234)
     )
     (i32.const 3216)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 201)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 99999999)
     )
     (i32.const 4056)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 202)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 100000000)
     )
     (i32.const 4080)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 203)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 4294967295)
     )
     (i32.const 3440)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 204)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 68719476735)
     )
     (i32.const 4104)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 205)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 868719476735)
     )
     (i32.const 4136)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 206)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 999868719476735)
     )
     (i32.const 4168)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 207)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 9999868719476735)
     )
     (i32.const 4208)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 208)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 19999868719476735)
     )
     (i32.const 4248)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 209)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (get_global $~lib/builtins/u64.MAX_VALUE)
     )
     (i32.const 4288)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 210)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const 0)
     )
     (i32.const 480)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 212)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -1234)
     )
     (i32.const 4336)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 213)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const 4294967295)
     )
     (i32.const 3440)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 214)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -4294967295)
     )
     (i32.const 4352)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 215)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const 68719476735)
     )
     (i32.const 4104)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 216)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -68719476735)
     )
     (i32.const 4384)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 217)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -868719476735)
     )
     (i32.const 4416)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 218)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -999868719476735)
     )
     (i32.const 4448)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 219)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -19999868719476735)
     )
     (i32.const 4488)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 220)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (get_global $~lib/builtins/i64.MAX_VALUE)
     )
     (i32.const 4528)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 221)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (get_global $~lib/builtins/i64.MIN_VALUE)
     )
     (i32.const 4576)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 222)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
