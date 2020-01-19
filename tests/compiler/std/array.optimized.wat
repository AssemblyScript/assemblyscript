(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i64_=>_i32 (func (param i32 i32 i64) (result i32)))
 (type $none_=>_f64 (func (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_f64_=>_i32 (func (param i32 i32 f64) (result i32)))
 (type $i32_i64_i32_i64_i32_i64_i32_=>_i32 (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $f32_f32_=>_i32 (func (param f32 f32) (result i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_i32_i32_=>_f32 (func (param i32 i32 i32) (result f32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (memory $0 1)
 (data (i32.const 16) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 64) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 176) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 240) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 288) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 352) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 400) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 448) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 480) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\02\03\04\05")
 (data (i32.const 512) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 544) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 592) "\05\00\00\00\01\00\00\00\00\00\00\00\05")
 (data (i32.const 624) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01")
 (data (i32.const 656) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 688) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 720) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 768) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 816) "\14\00\00\00\01\00\00\00\00\00\00\00\14")
 (data (i32.const 864) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01")
 (data (i32.const 912) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 960) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 1008) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 1060) "\01")
 (data (i32.const 1076) "\01")
 (data (i32.const 1088) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1136) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1184) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1232) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05")
 (data (i32.const 1280) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1328) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 1376) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1424) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1472) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1520) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1568) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1616) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1664) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1712) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 1760) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1808) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1856) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1904) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1952) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2000) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2048) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2096) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 2144) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2192) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 2240) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\00\00\c0\7f")
 (data (i32.const 2272) "\08\00\00\00\01\00\00\00\00\00\00\00\08")
 (data (i32.const 2294) "\f8\7f")
 (data (i32.const 2304) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\00\00\c0\7f")
 (data (i32.const 2336) "\08\00\00\00\01\00\00\00\00\00\00\00\08")
 (data (i32.const 2358) "\f8\7f")
 (data (i32.const 2368) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2416) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2468) "\01")
 (data (i32.const 2480) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2532) "\01")
 (data (i32.const 2544) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2592) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2640) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2672) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 2704) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2752) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\03\00\00\00\04")
 (data (i32.const 2784) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\05")
 (data (i32.const 2816) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2864) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 2896) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2928) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2976) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\05")
 (data (i32.const 3008) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04")
 (data (i32.const 3040) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3088) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\05")
 (data (i32.const 3120) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 3152) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3200) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\04")
 (data (i32.const 3232) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05")
 (data (i32.const 3264) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3312) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 3344) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3376) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3428) "\01")
 (data (i32.const 3440) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3488) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3540) "\01")
 (data (i32.const 3552) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3600) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3652) "\01")
 (data (i32.const 3664) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3712) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3764) "\01")
 (data (i32.const 3776) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3824) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3876) "\01")
 (data (i32.const 3888) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3940) "\01")
 (data (i32.const 3952) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 4064) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 4112) "\ac\00\00\00\01\00\00\00\01\00\00\00\ac\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?")
 (data (i32.const 4304) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 4352) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 4400) "@\00\00\00\01\00\00\00\00\00\00\00@")
 (data (i32.const 4422) "\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?")
 (data (i32.const 4462) "\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 4480) "@\00\00\00\01\00\00\00\00\00\00\00@")
 (data (i32.const 4502) "\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf")
 (data (i32.const 4534) "\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 4560) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 4608) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02")
 (data (i32.const 4656) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 4704) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 4756) "\01")
 (data (i32.const 4768) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 4800) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\02\00\00\00\01")
 (data (i32.const 4832) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\03\00\00\00\02\00\00\00\01")
 (data (i32.const 4864) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4896) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00P\00R\00N\00G\00 \00m\00u\00s\00t\00 \00b\00e\00 \00s\00e\00e\00d\00e\00d\00.")
 (data (i32.const 4960) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 4992) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 5024) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 5056) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b")
 (data (i32.const 5088) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 5120) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00b\00a")
 (data (i32.const 5156) "\01\00\00\00\01")
 (data (i32.const 5168) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\00\b0\13\00\00\d0\13\00\00\b0\13\00\00\f0\13\00\00\10\14\00\000\14")
 (data (i32.const 5216) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\000\14\00\00\b0\13\00\00\b0\13\00\00\f0\13\00\00\d0\13\00\00\10\14")
 (data (i32.const 5264) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 5296) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\01")
 (data (i32.const 5328) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 5360) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 5392) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,")
 (data (i32.const 5424) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e")
 (data (i32.const 5472) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 5504) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 5536) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\001\00-\002\00-\003")
 (data (i32.const 5568) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 5600) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-")
 (data (i32.const 5632) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 5664) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00_\00_")
 (data (i32.const 5696) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 5760) "0\00\00\00\01\00\00\00\00\00\00\000")
 (data (i32.const 5790) "\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 5824) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00,\00 ")
 (data (i32.const 5856) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 5888) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 5920) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 5968) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 6000) "\b8\02\00\00\01\00\00\00\00\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 6720) "\10\00\00\00\01\00\00\00\12\00\00\00\10\00\00\00\80\17\00\00\80\17\00\00\b8\02\00\00W")
 (data (i32.const 6752) "\ae\00\00\00\01\00\00\00\00\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 6944) "\10\00\00\00\01\00\00\00\13\00\00\00\10\00\00\00p\1a\00\00p\1a\00\00\ae\00\00\00W")
 (data (i32.const 6976) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 7040) "\10\00\00\00\01\00\00\00\07\00\00\00\10\00\00\00P\1b\00\00P\1b\00\00(\00\00\00\n")
 (data (i32.const 7072) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 7168) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001")
 (data (i32.const 7200) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\000\14\00\00\10\1c")
 (data (i32.const 7232) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 7280) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 7360) ">\00\00\00\01\00\00\00\01\00\00\00>\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 7444) "\01")
 (data (i32.const 7456) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 7488) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 7520) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 7552) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\00,\002")
 (data (i32.const 7584) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\000\00,\001\00,\002\00,\003")
 (data (i32.const 7616) "\03\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\01\ff")
 (data (i32.const 7648) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00,\00-\001\00,\000")
 (data (i32.const 7680) "\06\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\01\00\ff\ff")
 (data (i32.const 7712) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\00,\006\005\005\003\005\00,\000")
 (data (i32.const 7760) "\18\00\00\00\01\00\00\00\00\00\00\00\18\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 7808) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000")
 (data (i32.const 7872) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff")
 (data (i32.const 7912) "\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7920) "T\00\00\00\01\00\00\00\01\00\00\00T\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007")
 (data (i32.const 8032) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\000\14\00\00\b0\13\00\00\b0\13\00\00\f0\13\00\00\d0\13\00\00\10\14")
 (data (i32.const 8080) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,")
 (data (i32.const 8128) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\002")
 (data (i32.const 8160) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\004")
 (data (i32.const 8192) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\10\1c\00\00\d0\1f\00\00\00\00\00\00\f0\1f")
 (data (i32.const 8224) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00,\002\00,\00,\004")
 (data (i32.const 8256) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 8288) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\03\00\00\00\04")
 (data (i32.const 8320) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\001\00,\002\00,\003\00,\004")
 (data (i32.const 8352) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\01\02")
 (data (i32.const 8384) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\03\04")
 (data (i32.const 8416) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 8448) "\1a\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\003\00\00\00\02\00\00\00\93\00\00\00\02\00\00\00\93 \00\00\02\00\00\00\93\0c\00\00\02\00\00\00\13\0d\00\00\02\00\00\00\930\00\00\02\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\930\00\00\02\00\00\00\93 \00\00\02\00\00\003\00\00\00\02\00\00\00\13\01\00\00\02\00\00\00S\04\00\00\02\00\00\003\04\00\00\02\00\00\00S\00\00\00\02\00\00\00\13\05\00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02")
 (table $0 57 funcref)
 (elem (i32.const 1) $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|2 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|16 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $start:std/array~anonymous|47 $start:std/array~anonymous|48 $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "__argumentsLength" (global $~argumentsLength))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~lib/rt/tlsf/removeBlock (; 6 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 279
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
   i32.const 0
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 292
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $4
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=20
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $3
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 7 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 205
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 207
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    local.get $3
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $7
    local.get $6
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 16
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 144
   i32.const 244
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $4
   i32.const 0
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $4
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $4
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $4
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $2
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $2
  i32.store offset=20
  local.get $2
  if
   local.get $2
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $4
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $4
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 8 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 386
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 144
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 144
    i32.const 408
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/maybeInitialize (; 9 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $0
  i32.eqz
  if
   i32.const 1
   memory.size
   local.tee $0
   i32.gt_s
   if (result i32)
    i32.const 1
    local.get $0
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   i32.const 8672
   local.tee $0
   i32.const 0
   i32.store
   i32.const 10240
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $1
    i32.const 23
    i32.lt_u
    if
     local.get $1
     i32.const 2
     i32.shl
     i32.const 8672
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $1
       i32.const 4
       i32.shl
       local.get $2
       i32.add
       i32.const 2
       i32.shl
       i32.const 8672
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   i32.const 8672
   i32.const 10256
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 8672
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (; 10 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 192
   i32.const 144
   i32.const 457
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 11 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
   i32.const 0
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if
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
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 338
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 144
     i32.const 351
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/pure/markGray (; 12 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const -1879048193
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 2
   call $~lib/rt/__visit_members
  end
 )
 (func $~lib/rt/tlsf/freeBlock (; 13 ;) (param $0 i32) (param $1 i32)
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
 )
 (func $~lib/rt/pure/scanBlack (; 14 ;) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const -1879048193
  i32.and
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (; 15 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
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
    call $~lib/rt/pure/scanBlack
   else
    local.get $0
    local.get $1
    i32.const -1879048193
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 16
    i32.add
    i32.const 3
    call $~lib/rt/__visit_members
   end
  end
 )
 (func $~lib/rt/pure/collectWhite (; 16 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
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
   local.get $1
   i32.const -1879048193
   i32.and
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  end
 )
 (func $~lib/rt/pure/__collect (; 17 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.tee $5
  local.tee $2
  local.set $3
  global.get $~lib/rt/pure/CUR
  local.set $0
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.lt_u
   if
    local.get $3
    i32.load
    local.tee $4
    i32.load offset=4
    local.tee $1
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $1
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else
     i32.const 0
    end
    if
     local.get $4
     call $~lib/rt/pure/markGray
     local.get $2
     local.get $4
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
    else
     i32.const 0
     local.get $1
     i32.const 268435455
     i32.and
     i32.eqz
     local.get $1
     i32.const 1879048192
     i32.and
     select
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      call $~lib/rt/tlsf/freeBlock
     else
      local.get $4
      local.get $1
      i32.const 2147483647
      i32.and
      i32.store offset=4
     end
    end
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load
    call $~lib/rt/pure/scan
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $5
  local.set $0
  loop $for-loop|2
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load
    local.tee $1
    local.get $1
    i32.load offset=4
    i32.const 2147483647
    i32.and
    i32.store offset=4
    local.get $1
    call $~lib/rt/pure/collectWhite
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $for-loop|2
   end
  end
  local.get $5
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/tlsf/growMemory (; 18 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  memory.size
  local.tee $2
  i32.const 16
  local.get $0
  i32.load offset=1568
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  i32.ne
  i32.shl
  local.get $1
  i32.const 1
  i32.const 27
  local.get $1
  i32.clz
  i32.sub
  i32.shl
  i32.const 1
  i32.sub
  i32.add
  local.get $1
  local.get $1
  i32.const 536870904
  i32.lt_u
  select
  i32.add
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  i32.const 16
  i32.shr_u
  local.tee $1
  local.get $2
  local.get $1
  i32.gt_s
  select
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $1
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
 )
 (func $~lib/rt/tlsf/prepareBlock (; 19 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 144
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
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
   local.get $2
   local.get $1
   i32.const 16
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $1
   i32.const 16
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 20 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 144
   i32.const 490
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $4
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   call $~lib/rt/pure/__collect
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/searchBlock
    local.tee $3
    i32.eqz
    if
     i32.const 0
     i32.const 144
     i32.const 502
     i32.const 19
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $4
  i32.lt_u
  if
   i32.const 0
   i32.const 144
   i32.const 510
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $4
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
  call $~lib/rt/rtrace/onalloc
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 21 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.fill (; 22 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
   local.tee $2
   local.get $1
   i32.const 255
   i32.and
   i32.const 16843009
   i32.mul
   local.tee $0
   i32.store
   local.get $2
   local.get $3
   i32.const -4
   i32.and
   local.tee $3
   i32.add
   i32.const 4
   i32.sub
   local.get $0
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 4
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 8
   i32.add
   local.get $0
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 12
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   local.get $0
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 12
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 16
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 20
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 24
   i32.add
   local.get $0
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 28
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 24
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 16
   i32.sub
   local.get $0
   i32.store
   local.get $2
   local.get $2
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   i32.add
   local.set $1
   local.get $3
   local.get $2
   i32.sub
   local.set $2
   local.get $0
   i64.extend_i32_u
   local.get $0
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $4
   loop $while-continue|0
    local.get $2
    i32.const 32
    i32.ge_u
    if
     local.get $1
     local.get $4
     i64.store
     local.get $1
     i32.const 8
     i32.add
     local.get $4
     i64.store
     local.get $1
     i32.const 16
     i32.add
     local.get $4
     i64.store
     local.get $1
     i32.const 24
     i32.add
     local.get $4
     i64.store
     local.get $2
     i32.const 32
     i32.sub
     local.set $2
     local.get $1
     i32.const 32
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/pure/increment (; 23 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 256
   i32.const 104
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
  call $~lib/rt/rtrace/onincrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 256
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 24 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8660
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/__typeinfo (; 25 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 8448
  i32.load
  i32.gt_u
  if
   i32.const 304
   i32.const 368
   i32.const 22
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.shl
  i32.const 8452
  i32.add
  i32.load
 )
 (func $~lib/memory/memory.copy (; 26 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
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
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
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
     loop $while-continue|3
      local.get $0
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       local.get $0
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       local.get $0
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     if
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      local.get $0
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/checkUsedBlock (; 27 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 16
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const -268435456
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/__free (; 28 ;) (param $0 i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots (; 29 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/pure/CUR
  global.get $~lib/rt/pure/ROOTS
  local.tee $1
  i32.sub
  local.tee $2
  i32.const 1
  i32.shl
  local.tee $0
  i32.const 256
  local.get $0
  i32.const 256
  i32.gt_u
  select
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  i32.const 16
  i32.sub
  call $~lib/rt/rtrace/onfree
  local.get $0
  local.get $1
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  if
   local.get $1
   i32.const 16
   i32.sub
   call $~lib/rt/rtrace/onalloc
   local.get $1
   call $~lib/rt/tlsf/__free
  end
  local.get $0
  global.set $~lib/rt/pure/ROOTS
  local.get $0
  local.get $2
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $0
  local.get $3
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 30 ;) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.tee $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
   global.get $~lib/rt/pure/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (; 31 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 256
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $2
   i32.const -2147483648
   i32.and
   if
    local.get $0
    i32.const -2147483648
    i32.store offset=4
   else
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   end
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 256
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.and
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $2
    i32.const -268435456
    i32.and
    i32.or
    i32.store offset=4
   else
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    i32.const -1342177280
    i32.or
    i32.store offset=4
    local.get $2
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   end
  end
 )
 (func $~lib/rt/pure/__release (; 32 ;) (param $0 i32)
  local.get $0
  i32.const 8660
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 33 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 80
   i32.const 23
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
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
  local.get $2
  local.set $1
  local.get $2
  local.get $0
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (; 34 ;) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 16
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $1
  i32.const 0
  i32.store offset=12
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/array/Array.isArray<~lib/array/Array<i32> | null> (; 35 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
 )
 (func $std/array/Ref#constructor (; 36 ;) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/rt/__allocArray (; 37 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $4
   local.get $3
   local.get $1
   call $~lib/memory/memory.copy
  end
  local.get $2
 )
 (func $~lib/array/Array<u8>#fill (; 38 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  local.tee $2
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
  local.tee $3
  i32.lt_s
  if
   local.get $2
   local.get $5
   i32.add
   local.get $1
   local.get $3
   local.get $2
   i32.sub
   call $~lib/memory/memory.fill
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<u8>#__get (; 39 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 560
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $std/array/isArraysEqual<u8> (; 40 ;) (param $0 i32) (param $1 i32) (result i32)
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
  loop $for-loop|0
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
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $~lib/array/Array<u32>#fill (; 41 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $5
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
    br $for-loop|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<u32>#__get (; 42 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 560
   i32.const 93
   i32.const 41
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
 (func $std/array/isArraysEqual<u32> (; 43 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  loop $for-loop|0
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
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $std/array/internalCapacity<i32> (; 44 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 2
  i32.shr_s
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 45 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.tee $3
  local.get $1
  i32.load
  local.tee $5
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
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $6
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $5
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $5
    i32.const 3
    i32.and
    local.get $4
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
  local.get $1
  i32.load offset=8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $3
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $3
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 8660
  i32.ge_u
  if
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $3
 )
 (func $~lib/array/ensureSize (; 46 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435452
   i32.gt_u
   if
    i32.const 32
    i32.const 560
    i32.const 14
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $3
   local.get $2
   call $~lib/rt/tlsf/maybeInitialize
   local.get $3
   call $~lib/rt/tlsf/checkUsedBlock
   local.get $1
   i32.const 2
   i32.shl
   local.tee $4
   call $~lib/rt/tlsf/reallocateBlock
   i32.const 16
   i32.add
   local.tee $1
   i32.add
   i32.const 0
   local.get $4
   local.get $2
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $3
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $4
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i32>#push (; 47 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
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
 )
 (func $~lib/array/Array<i32>#pop (; 48 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 1024
   i32.const 560
   i32.const 288
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
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<std/array/Ref>#set:length (; 49 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 0
  i32.gt_s
  if
   local.get $0
   i32.load offset=4
   local.tee $2
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.set $1
   loop $do-continue|0
    local.get $2
    i32.load
    call $~lib/rt/pure/__release
    local.get $2
    i32.const 4
    i32.add
    local.tee $2
    local.get $1
    i32.lt_u
    br_if $do-continue|0
   end
  else
   local.get $0
   i32.const 0
   call $~lib/array/ensureSize
  end
  local.get $0
  i32.const 0
  i32.store offset=12
 )
 (func $~lib/array/Array<i32>#concat (; 50 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 32
   i32.const 560
   i32.const 218
   i32.const 59
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
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
 (func $~lib/array/Array<i32>#copyWithin (; 51 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  local.get $3
  local.get $0
  i32.load offset=12
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $3
  local.get $0
  i32.load offset=4
  local.tee $5
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
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  local.get $5
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
  local.tee $2
  i32.const 2
  i32.shl
  i32.add
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
  local.tee $2
  local.get $4
  local.get $1
  i32.sub
  local.tee $1
  local.get $2
  local.get $1
  i32.lt_s
  select
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<i32>#unshift (; 52 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.add
  local.tee $2
  call $~lib/array/ensureSize
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
 (func $~lib/array/Array<i32>#shift (; 53 ;) (param $0 i32) (result i32)
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
   i32.const 1024
   i32.const 560
   i32.const 349
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.load
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
 )
 (func $~lib/array/Array<i32>#reverse (; 54 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
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
   local.set $1
   loop $while-continue|0
    local.get $2
    local.get $1
    i32.lt_u
    if
     local.get $2
     i32.load
     local.set $3
     local.get $2
     local.get $1
     i32.load
     i32.store
     local.get $1
     local.get $3
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
     local.get $1
     i32.const 4
     i32.sub
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<i32>#indexOf (; 55 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.tee $3
  if (result i32)
   local.get $2
   local.get $3
   i32.ge_s
  else
   i32.const 1
  end
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
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.eq
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const -1
 )
 (func $~lib/array/Array<f32>#indexOf (; 56 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $2
  if (result i32)
   i32.const 0
   local.get $2
   i32.ge_s
  else
   i32.const 1
  end
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  local.set $0
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    f32.load
    f32.const nan:0x400000
    f32.eq
    if
     local.get $1
     return
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  i32.const -1
 )
 (func $~lib/array/Array<f64>#indexOf (; 57 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $2
  if (result i32)
   i32.const 0
   local.get $2
   i32.ge_s
  else
   i32.const 1
  end
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  local.set $0
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    f64.const nan:0x8000000000000
    f64.eq
    if
     local.get $1
     return
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  i32.const -1
 )
 (func $~lib/array/Array<i32>#includes (; 58 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<f32>#includes (; 59 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  local.get $0
  i32.load offset=12
  local.tee $2
  if (result i32)
   i32.const 0
   local.get $2
   i32.ge_s
  else
   i32.const 1
  end
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.set $0
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $3
    f32.const nan:0x400000
    f32.eq
    if (result i32)
     i32.const 1
    else
     local.get $3
     local.get $3
     f32.ne
    end
    if
     i32.const 1
     return
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/array/Array<f64>#includes (; 60 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  local.get $0
  i32.load offset=12
  local.tee $2
  if (result i32)
   i32.const 0
   local.get $2
   i32.ge_s
  else
   i32.const 1
  end
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.set $0
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $3
    f64.const nan:0x8000000000000
    f64.eq
    if (result i32)
     i32.const 1
    else
     local.get $3
     local.get $3
     f64.ne
    end
    if
     i32.const 1
     return
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/array/Array<i32>#splice (; 61 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
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
  local.get $3
  local.get $1
  local.get $2
  i32.add
  local.tee $1
  i32.ne
  if
   local.get $6
   local.get $5
   local.get $1
   i32.const 2
   i32.shl
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
 (func $~lib/array/Array<std/array/Ref>#splice (; 62 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 2
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
  local.tee $2
  i32.const 2
  local.get $2
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
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
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
  local.get $3
  local.get $1
  local.get $2
  i32.add
  local.tee $1
  i32.ne
  if
   local.get $6
   local.get $5
   local.get $1
   i32.const 2
   i32.shl
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
 (func $~lib/array/Array<std/array/Ref>#__unchecked_get (; 63 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<std/array/Ref>#__get (; 64 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 560
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Ref>#__unchecked_get
  local.tee $0
  i32.eqz
  if
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 3968
   i32.const 560
   i32.const 97
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<std/array/Ref | null>#splice (; 65 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 0
  local.get $3
  i32.lt_s
  select
  local.set $2
  i32.const 1
  local.get $3
  local.get $2
  i32.sub
  local.tee $1
  i32.const 1
  local.get $1
  i32.lt_s
  select
  local.tee $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.tee $5
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.tee $6
  local.get $1
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $3
  local.get $1
  local.get $2
  i32.add
  local.tee $2
  i32.ne
  if
   local.get $6
   local.get $5
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   local.get $2
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $1
  i32.sub
  i32.store offset=12
  local.get $4
 )
 (func $~lib/array/Array<std/array/Ref | null>#__get (; 66 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 560
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Ref>#__unchecked_get
 )
 (func $~lib/array/Array<i32>#__set (; 67 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 560
    i32.const 109
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $start:std/array~anonymous|0 (; 68 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
 )
 (func $~lib/array/Array<i32>#findIndex (; 69 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $3
   local.get $4
   i32.lt_s
   select
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
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
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const -1
 )
 (func $start:std/array~anonymous|1 (; 70 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.eq
 )
 (func $start:std/array~anonymous|2 (; 71 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|3 (; 72 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|5 (; 73 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|6 (; 74 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#every (; 75 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $3
   local.get $4
   i32.lt_s
   select
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
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
    call_indirect (type $i32_i32_i32_=>_i32)
    i32.eqz
    if
     i32.const 0
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $start:std/array~anonymous|7 (; 76 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.le_s
 )
 (func $start:std/array~anonymous|8 (; 77 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|9 (; 78 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|10 (; 79 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.lt_s
 )
 (func $start:std/array~anonymous|11 (; 80 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 3
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#some (; 81 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $3
   local.get $4
   i32.lt_s
   select
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
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
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     i32.const 1
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
 )
 (func $start:std/array~anonymous|12 (; 82 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const -1
  i32.le_s
 )
 (func $start:std/array~anonymous|13 (; 83 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|14 (; 84 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|15 (; 85 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.gt_s
 )
 (func $start:std/array~anonymous|16 (; 86 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
 )
 (func $~lib/array/Array<i32>#forEach (; 87 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $3
   local.get $4
   i32.lt_s
   select
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
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
    call_indirect (type $i32_i32_i32_=>_none)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $start:std/array~anonymous|17 (; 88 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|19 (; 89 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|20 (; 90 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   loop $for-loop|0
    local.get $3
    i32.const 4
    i32.lt_s
    if
     local.get $2
     call $~lib/array/Array<i32>#pop
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   i32.const 0
   local.set $3
   loop $for-loop|1
    local.get $3
    i32.const 100
    i32.lt_s
    if
     local.get $2
     local.get $3
     i32.const 100
     i32.add
     call $~lib/array/Array<i32>#push
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|1
    end
   end
   i32.const 0
   local.set $3
   loop $for-loop|2
    local.get $3
    i32.const 100
    i32.lt_s
    if
     local.get $2
     call $~lib/array/Array<i32>#pop
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
   i32.const 0
   local.set $3
   loop $for-loop|3
    local.get $3
    i32.const 100
    i32.lt_s
    if
     local.get $2
     local.get $3
     i32.const 200
     i32.add
     call $~lib/array/Array<i32>#push
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|3
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
    i32.const 416
    i32.const 619
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $start:std/array~anonymous|21 (; 91 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  f32.convert_i32_s
 )
 (func $~lib/array/Array<i32>#map<f32> (; 92 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 2
  i32.const 9
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=4
  local.set $5
  loop $for-loop|0
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
    i32.const 3
    global.set $~argumentsLength
    local.get $1
    i32.const 2
    i32.shl
    local.tee $2
    local.get $0
    i32.load offset=4
    i32.add
    i32.load
    f32.convert_i32_s
    local.set $6
    local.get $2
    local.get $5
    i32.add
    local.get $6
    f32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $4
 )
 (func $~lib/array/Array<f32>#__get (; 93 ;) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 560
   i32.const 93
   i32.const 41
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
 (func $start:std/array~anonymous|22 (; 94 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $~lib/array/Array<i32>#map<i32> (; 95 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  local.tee $4
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.load offset=4
  local.set $6
  loop $for-loop|0
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
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    i32.const 2
    i32.shl
    local.tee $3
    local.get $0
    i32.load offset=4
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i32_i32_i32_=>_i32)
    local.set $7
    local.get $3
    local.get $6
    i32.add
    local.get $7
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $5
 )
 (func $start:std/array~anonymous|23 (; 96 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|24 (; 97 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|25 (; 98 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#filter (; 99 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $2
   local.get $5
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $5
   local.get $3
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $3
    i32.const 3
    global.set $~argumentsLength
    local.get $3
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $4
     local.get $3
     call $~lib/array/Array<i32>#push
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
 )
 (func $start:std/array~anonymous|26 (; 100 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|27 (; 101 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|28 (; 102 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|29 (; 103 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 104 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $4
   local.get $0
   i32.load offset=12
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
   i32.lt_s
   if
    i32.const 4
    global.set $~argumentsLength
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
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $2
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $start:std/array~anonymous|31 (; 105 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 1
  local.get $1
  i32.const 2
  i32.gt_s
  local.get $0
  select
 )
 (func $start:std/array~anonymous|32 (; 106 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 1
  local.get $1
  i32.const 100
  i32.gt_s
  local.get $0
  select
 )
 (func $start:std/array~anonymous|33 (; 107 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|35 (; 108 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 109 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~argumentsLength
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
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $2
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/math/murmurHash3 (; 110 ;) (param $0 i64) (result i64)
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -49064778989728563
  i64.mul
  local.tee $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -4265267296055464877
  i64.mul
  local.tee $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
 )
 (func $~lib/math/splitMix32 (; 111 ;) (param $0 i32) (result i32)
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
  local.get $0
  i32.const 61
  i32.or
  local.get $0
  local.get $0
  i32.const 7
  i32.shr_u
  i32.xor
  i32.mul
  i32.add
  i32.xor
  local.tee $0
  local.get $0
  i32.const 14
  i32.shr_u
  i32.xor
 )
 (func $~lib/math/NativeMath.seedRandom (; 112 ;) (param $0 i64)
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
  global.get $~lib/math/random_state1_32
  i32.const 0
  i32.ne
  i32.const 0
  global.get $~lib/math/random_state0_32
  i32.const 0
  global.get $~lib/math/random_state1_64
  i64.const 0
  i64.ne
  i32.const 0
  global.get $~lib/math/random_state0_64
  i64.const 0
  i64.ne
  select
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 4080
   i32.const 1406
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/util/sort/insertionSort<f32> (; 113 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 i32)
  loop $for-loop|0
   local.get $3
   local.get $1
   i32.lt_s
   if
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
    local.set $2
    loop $while-continue|1
     local.get $2
     i32.const 0
     i32.ge_s
     if
      block $while-break|1
       local.get $0
       local.get $2
       i32.const 2
       i32.shl
       i32.add
       f32.load
       local.set $5
       i32.const 2
       global.set $~argumentsLength
       local.get $4
       local.get $5
       call $~lib/util/sort/COMPARATOR<f32>~anonymous|0
       i32.const 0
       i32.ge_s
       br_if $while-break|1
       local.get $2
       local.tee $6
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.get $6
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $5
       f32.store
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $2
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
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/weakHeapSort<f32> (; 114 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $5
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 1
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const 0
   i32.gt_s
   if
    local.get $3
    local.set $2
    loop $while-continue|1
     local.get $2
     i32.const 1
     i32.and
     local.get $5
     local.get $2
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $2
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.eq
     if
      local.get $2
      i32.const 1
      i32.shr_s
      local.set $2
      br $while-continue|1
     end
    end
    local.get $0
    local.get $2
    i32.const 1
    i32.shr_s
    local.tee $2
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $4
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $6
    i32.const 2
    global.set $~argumentsLength
    local.get $4
    local.get $6
    call $~lib/util/sort/COMPARATOR<f32>~anonymous|0
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $3
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
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
     local.get $0
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     local.get $4
     f32.store
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     f32.store
    end
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|0
   end
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $3
  loop $for-loop|2
   local.get $3
   i32.const 2
   i32.ge_s
   if
    local.get $0
    f32.load
    local.set $4
    local.get $0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    f32.load
    f32.store
    local.get $1
    local.get $4
    f32.store
    i32.const 1
    local.set $1
    loop $while-continue|3
     local.get $5
     local.get $1
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
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
     local.tee $2
     local.get $3
     i32.lt_s
     if
      local.get $2
      local.set $1
      br $while-continue|3
     end
    end
    loop $while-continue|4
     local.get $1
     i32.const 0
     i32.gt_s
     if
      local.get $0
      f32.load
      local.set $4
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      f32.load
      local.set $6
      i32.const 2
      global.set $~argumentsLength
      local.get $4
      local.get $6
      call $~lib/util/sort/COMPARATOR<f32>~anonymous|0
      i32.const 0
      i32.lt_s
      if
       local.get $5
       local.get $1
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.tee $2
       local.get $2
       i32.load
       i32.const 1
       local.get $1
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $1
       i32.const 2
       i32.shl
       i32.add
       local.get $4
       f32.store
       local.get $0
       local.get $6
       f32.store
      end
      local.get $1
      i32.const 1
      i32.shr_s
      local.set $1
      br $while-continue|4
     end
    end
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|2
   end
  end
  local.get $5
  call $~lib/rt/tlsf/__free
  local.get $0
  f32.load offset=4
  local.set $4
  local.get $0
  local.get $0
  f32.load
  f32.store offset=4
  local.get $0
  local.get $4
  f32.store
 )
 (func $~lib/array/Array<f32>#sort (; 115 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $1
   f32.load offset=4
   local.set $3
   local.get $1
   f32.load
   local.set $4
   i32.const 2
   global.set $~argumentsLength
   local.get $3
   local.get $4
   call $~lib/util/sort/COMPARATOR<f32>~anonymous|0
   i32.const 0
   i32.lt_s
   if
    local.get $1
    local.get $4
    f32.store offset=4
    local.get $1
    local.get $3
    f32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $2
  i32.const 256
  i32.lt_s
  if
   local.get $1
   local.get $2
   call $~lib/util/sort/insertionSort<f32>
  else
   local.get $1
   local.get $2
   call $~lib/util/sort/weakHeapSort<f32>
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<f32>~anonymous|0 (; 116 ;) (param $0 f32) (param $1 f32) (result i32)
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
 (func $std/array/isArraysEqual<f32> (; 117 ;) (param $0 i32) (param $1 i32) (result i32)
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
  loop $for-loop|0
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
    if (result i32)
     local.get $1
     local.get $2
     call $~lib/array/Array<f32>#__get
     local.tee $3
     local.get $3
     f32.ne
    else
     i32.const 0
    end
    i32.eqz
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
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $~lib/util/sort/insertionSort<f64> (; 118 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  loop $for-loop|0
   local.get $3
   local.get $1
   i32.lt_s
   if
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
    local.set $2
    loop $while-continue|1
     local.get $2
     i32.const 0
     i32.ge_s
     if
      block $while-break|1
       local.get $0
       local.get $2
       i32.const 3
       i32.shl
       i32.add
       f64.load
       local.set $5
       i32.const 2
       global.set $~argumentsLength
       local.get $4
       local.get $5
       call $~lib/util/sort/COMPARATOR<f64>~anonymous|0
       i32.const 0
       i32.ge_s
       br_if $while-break|1
       local.get $2
       local.tee $6
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.get $6
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       i32.add
       local.get $5
       f64.store
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $2
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
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/weakHeapSort<f64> (; 119 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $5
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 1
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const 0
   i32.gt_s
   if
    local.get $3
    local.set $2
    loop $while-continue|1
     local.get $2
     i32.const 1
     i32.and
     local.get $5
     local.get $2
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $2
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.eq
     if
      local.get $2
      i32.const 1
      i32.shr_s
      local.set $2
      br $while-continue|1
     end
    end
    local.get $0
    local.get $2
    i32.const 1
    i32.shr_s
    local.tee $2
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $4
    local.get $0
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $6
    i32.const 2
    global.set $~argumentsLength
    local.get $4
    local.get $6
    call $~lib/util/sort/COMPARATOR<f64>~anonymous|0
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $3
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
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
     local.get $0
     local.get $3
     i32.const 3
     i32.shl
     i32.add
     local.get $4
     f64.store
     local.get $0
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     local.get $6
     f64.store
    end
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|0
   end
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $3
  loop $for-loop|2
   local.get $3
   i32.const 2
   i32.ge_s
   if
    local.get $0
    f64.load
    local.set $4
    local.get $0
    local.get $0
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    local.tee $1
    f64.load
    f64.store
    local.get $1
    local.get $4
    f64.store
    i32.const 1
    local.set $1
    loop $while-continue|3
     local.get $5
     local.get $1
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
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
     local.tee $2
     local.get $3
     i32.lt_s
     if
      local.get $2
      local.set $1
      br $while-continue|3
     end
    end
    loop $while-continue|4
     local.get $1
     i32.const 0
     i32.gt_s
     if
      local.get $0
      f64.load
      local.set $4
      local.get $0
      local.get $1
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.set $6
      i32.const 2
      global.set $~argumentsLength
      local.get $4
      local.get $6
      call $~lib/util/sort/COMPARATOR<f64>~anonymous|0
      i32.const 0
      i32.lt_s
      if
       local.get $5
       local.get $1
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.tee $2
       local.get $2
       i32.load
       i32.const 1
       local.get $1
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $1
       i32.const 3
       i32.shl
       i32.add
       local.get $4
       f64.store
       local.get $0
       local.get $6
       f64.store
      end
      local.get $1
      i32.const 1
      i32.shr_s
      local.set $1
      br $while-continue|4
     end
    end
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|2
   end
  end
  local.get $5
  call $~lib/rt/tlsf/__free
  local.get $0
  f64.load offset=8
  local.set $4
  local.get $0
  local.get $0
  f64.load
  f64.store offset=8
  local.get $0
  local.get $4
  f64.store
 )
 (func $~lib/array/Array<f64>#sort (; 120 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $1
   f64.load offset=8
   local.set $3
   local.get $1
   f64.load
   local.set $4
   i32.const 2
   global.set $~argumentsLength
   local.get $3
   local.get $4
   call $~lib/util/sort/COMPARATOR<f64>~anonymous|0
   i32.const 0
   i32.lt_s
   if
    local.get $1
    local.get $4
    f64.store offset=8
    local.get $1
    local.get $3
    f64.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $2
  i32.const 256
  i32.lt_s
  if
   local.get $1
   local.get $2
   call $~lib/util/sort/insertionSort<f64>
  else
   local.get $1
   local.get $2
   call $~lib/util/sort/weakHeapSort<f64>
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 121 ;) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/array/Array<f64>#__get (; 122 ;) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 304
   i32.const 560
   i32.const 93
   i32.const 41
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
 (func $std/array/isArraysEqual<f64> (; 123 ;) (param $0 i32) (param $1 i32) (result i32)
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
  loop $for-loop|0
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
    if (result i32)
     local.get $1
     local.get $2
     call $~lib/array/Array<f64>#__get
     local.tee $3
     local.get $3
     f64.ne
    else
     i32.const 0
    end
    i32.eqz
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
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $~lib/util/sort/insertionSort<i32> (; 124 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  loop $for-loop|0
   local.get $4
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $5
    local.get $4
    i32.const 1
    i32.sub
    local.set $3
    loop $while-continue|1
     local.get $3
     i32.const 0
     i32.ge_s
     if
      block $while-break|1
       local.get $0
       local.get $3
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.set $6
       i32.const 2
       global.set $~argumentsLength
       local.get $5
       local.get $6
       local.get $2
       call_indirect (type $i32_i32_=>_i32)
       i32.const 0
       i32.ge_s
       br_if $while-break|1
       local.get $3
       local.tee $7
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $3
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    i32.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/weakHeapSort<i32> (; 125 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $5
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $for-loop|0
   local.get $4
   i32.const 0
   i32.gt_s
   if
    local.get $4
    local.set $3
    loop $while-continue|1
     local.get $3
     i32.const 1
     i32.and
     local.get $5
     local.get $3
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
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
      br $while-continue|1
     end
    end
    local.get $0
    local.get $3
    i32.const 1
    i32.shr_s
    local.tee $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $3
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $6
    i32.const 2
    global.set $~argumentsLength
    local.get $3
    local.get $6
    local.get $2
    call_indirect (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
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
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.get $3
     i32.store
     local.get $0
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     i32.store
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|0
   end
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $for-loop|2
   local.get $4
   i32.const 2
   i32.ge_s
   if
    local.get $0
    i32.load
    local.set $1
    local.get $0
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $3
    i32.load
    i32.store
    local.get $3
    local.get $1
    i32.store
    i32.const 1
    local.set $1
    loop $while-continue|3
     local.get $5
     local.get $1
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
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
      br $while-continue|3
     end
    end
    loop $while-continue|4
     local.get $1
     i32.const 0
     i32.gt_s
     if
      local.get $0
      i32.load
      local.set $3
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $6
      i32.const 2
      global.set $~argumentsLength
      local.get $3
      local.get $6
      local.get $2
      call_indirect (type $i32_i32_=>_i32)
      i32.const 0
      i32.lt_s
      if
       local.get $5
       local.get $1
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
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
       local.get $0
       local.get $1
       i32.const 2
       i32.shl
       i32.add
       local.get $3
       i32.store
       local.get $0
       local.get $6
       i32.store
      end
      local.get $1
      i32.const 1
      i32.shr_s
      local.set $1
      br $while-continue|4
     end
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|2
   end
  end
  local.get $5
  call $~lib/rt/tlsf/__free
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
 (func $~lib/array/Array<i32>#sort (; 126 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
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
   global.set $~argumentsLength
   local.get $2
   local.get $4
   local.get $1
   call_indirect (type $i32_i32_=>_i32)
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
   call $~lib/rt/pure/__retain
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
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|0 (; 127 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/util/sort/COMPARATOR<u32>~anonymous|0 (; 128 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $std/array/createReverseOrderedArray (; 129 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/array/Array<i32>#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_s
   if
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/math/NativeMath.random (; 130 ;) (result f64)
  (local $0 i64)
  (local $1 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   i32.const 4912
   i32.const 4080
   i32.const 1413
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/math/random_state0_64
  local.set $0
  global.get $~lib/math/random_state1_64
  local.tee $1
  global.set $~lib/math/random_state0_64
  local.get $1
  local.get $0
  local.get $0
  i64.const 23
  i64.shl
  i64.xor
  local.tee $0
  local.get $0
  i64.const 17
  i64.shr_u
  i64.xor
  i64.xor
  local.get $1
  i64.const 26
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $1
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  f64.reinterpret_i64
  f64.const 1
  f64.sub
 )
 (func $std/array/createRandomOrderedArray (; 131 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/array/Array<i32>#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_s
   if
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $std/array/isSorted<i32> (; 132 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<u32>#__get
    local.get $0
    local.get $2
    call $~lib/array/Array<u32>#__get
    local.get $1
    call_indirect (type $i32_i32_=>_i32)
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
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $std/array/assertSorted<i32> (; 133 ;) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
  local.tee $0
  local.get $1
  call $std/array/isSorted<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 881
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/array/assertSortedDefault<i32> (; 134 ;) (param $0 i32)
  local.get $0
  i32.const 48
  call $std/array/assertSorted<i32>
 )
 (func $start:std/array~anonymous|44 (; 135 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_set (; 136 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  i32.load
  local.tee $1
  local.get $2
  i32.ne
  if
   local.get $0
   local.get $2
   call $~lib/rt/pure/__retain
   i32.store
   local.get $1
   call $~lib/rt/pure/__release
  end
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (; 137 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 304
    i32.const 560
    i32.const 109
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_set
 )
 (func $std/array/createReverseOrderedNestedArray (; 138 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 16
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 2
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $1
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 2
  i32.store offset=12
  loop $for-loop|0
   local.get $0
   i32.const 2
   i32.lt_s
   if
    i32.const 1
    call $~lib/array/Array<i32>#constructor
    local.tee $2
    i32.const 0
    i32.const 1
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__set
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $2
    call $~lib/rt/pure/__release
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
 )
 (func $start:std/array~anonymous|47 (; 139 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.sub
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#sort (; 140 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
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
   global.set $~argumentsLength
   local.get $2
   local.get $4
   local.get $1
   call_indirect (type $i32_i32_=>_i32)
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
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  local.get $2
  local.get $1
  call $~lib/util/sort/insertionSort<i32>
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $std/array/isSorted<~lib/array/Array<i32>> (; 141 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<std/array/Ref>#__get
    local.tee $3
    local.get $0
    local.get $2
    call $~lib/array/Array<std/array/Ref>#__get
    local.tee $4
    local.get $1
    call_indirect (type $i32_i32_=>_i32)
    i32.const 0
    i32.gt_s
    if
     local.get $3
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     i32.const 0
     return
    end
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $std/array/assertSorted<~lib/array/Array<i32>> (; 142 ;) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#sort
  local.tee $0
  local.get $1
  call $std/array/isSorted<~lib/array/Array<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 881
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/array/createReverseOrderedElementsArray (; 143 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 16
  i32.const 14
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 512
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $1
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 512
  i32.store offset=12
  loop $for-loop|0
   local.get $0
   i32.const 512
   i32.lt_s
   if
    i32.const 4
    i32.const 13
    call $~lib/rt/tlsf/__alloc
    call $~lib/rt/pure/__retain
    local.tee $2
    i32.const 511
    local.get $0
    i32.sub
    i32.store
    local.get $1
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $2
    call $~lib/rt/pure/__release
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
 )
 (func $start:std/array~anonymous|48 (; 144 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
 )
 (func $std/array/isSorted<~lib/string/String | null> (; 145 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $4
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    call $~lib/array/Array<std/array/Ref | null>#__get
    local.tee $2
    local.get $0
    local.get $1
    call $~lib/array/Array<std/array/Ref | null>#__get
    local.tee $3
    call $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0
    i32.const 0
    i32.gt_s
    if
     local.get $2
     call $~lib/rt/pure/__release
     local.get $3
     call $~lib/rt/pure/__release
     i32.const 0
     return
    end
    local.get $2
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $std/array/assertSorted<~lib/string/String | null> (; 146 ;) (param $0 i32)
  local.get $0
  i32.const 55
  call $~lib/array/Array<~lib/array/Array<i32>>#sort
  local.tee $0
  call $std/array/isSorted<~lib/string/String | null>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 881
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/string/String#get:length (; 147 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 148 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $0
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $2
   local.tee $3
   i32.const 1
   i32.sub
   local.set $2
   local.get $3
   if
    local.get $0
    i32.load16_u
    local.tee $3
    local.get $1
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $3
     local.get $4
     i32.sub
     return
    end
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 (; 149 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  local.get $1
  i32.eqz
  i32.const 1
  local.get $0
  i32.eqz
  local.get $0
  local.get $1
  i32.eq
  select
  select
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  i32.const 0
  local.get $1
  call $~lib/string/String#get:length
  local.tee $3
  i32.eqz
  local.get $2
  select
  if
   i32.const 0
   return
  end
  local.get $2
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
  local.get $2
  local.get $3
  local.get $2
  local.get $3
  i32.lt_s
  select
  call $~lib/util/string/compareImpl
 )
 (func $~lib/string/String.__eq (; 150 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.tee $2
  local.get $1
  call $~lib/string/String#get:length
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
 (func $std/array/isArraysEqual<~lib/string/String | null> (; 151 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  local.tee $5
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
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/array/Array<std/array/Ref | null>#__get
    local.tee $3
    local.get $1
    local.get $2
    call $~lib/array/Array<std/array/Ref | null>#__get
    local.tee $4
    call $~lib/string/String.__eq
    i32.eqz
    if
     local.get $3
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     i32.const 0
     return
    end
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $~lib/string/String#charAt (; 152 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4128
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 5168
   return
  end
  i32.const 2
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  i32.const 1
  i32.shl
  i32.const 4128
  i32.add
  i32.load16_u
  i32.store16
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/string/String#concat (; 153 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.eqz
  if
   i32.const 5280
   local.set $3
   local.get $1
   i32.const 5280
   i32.ne
   if
    local.get $1
    call $~lib/rt/pure/__release
   end
   i32.const 5280
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.tee $3
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.tee $4
  i32.add
  local.tee $2
  i32.eqz
  if
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 5168
   local.tee $0
   return
  end
  local.get $2
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/memory/memory.copy
  local.get $2
  local.get $3
  i32.add
  local.get $1
  local.get $4
  call $~lib/memory/memory.copy
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__concat (; 154 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 5280
  local.get $0
  select
  local.get $1
  call $~lib/string/String#concat
 )
 (func $std/array/createRandomString (; 155 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 5168
  local.set $1
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $1
    local.tee $3
    local.get $1
    call $~lib/math/NativeMath.random
    i32.const 4128
    call $~lib/string/String#get:length
    f64.convert_i32_s
    f64.mul
    f64.floor
    i32.trunc_f64_s
    call $~lib/string/String#charAt
    local.tee $4
    call $~lib/string/String.__concat
    local.tee $5
    local.tee $1
    i32.ne
    if
     local.get $1
     call $~lib/rt/pure/__retain
     local.set $1
     local.get $3
     call $~lib/rt/pure/__release
    end
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
 )
 (func $std/array/createRandomStringArray (; 156 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 16
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 400
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 400
  i32.store offset=12
  loop $for-loop|0
   local.get $1
   i32.const 400
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/math/NativeMath.random
    f64.const 32
    f64.mul
    i32.trunc_f64_s
    call $std/array/createRandomString
    local.tee $2
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $2
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/string/String#substring (; 157 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  local.get $0
  call $~lib/string/String#get:length
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
  local.tee $1
  i32.sub
  local.tee $3
  i32.eqz
  if
   i32.const 5168
   return
  end
  i32.const 0
  local.get $4
  local.get $2
  i32.const 1
  i32.shl
  i32.eq
  local.get $1
  select
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/string/joinBooleanArray (; 158 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $2
  i32.eqz
  if
   i32.const 5344
   i32.const 5376
   local.get $0
   i32.load8_u
   select
   call $~lib/rt/pure/__retain
   return
  end
  local.get $2
  i32.const 5408
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 5
  i32.add
  i32.mul
  i32.const 5
  i32.add
  local.tee $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $5
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $5
    i32.add
    i32.load8_u
    local.tee $8
    i32.eqz
    i32.const 4
    i32.add
    local.set $6
    local.get $3
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    i32.const 5344
    i32.const 5376
    local.get $8
    select
    local.get $6
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $1
    local.get $6
    i32.add
    local.set $1
    local.get $4
    if
     local.get $3
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 5408
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  local.get $0
  local.get $2
  i32.add
  i32.load8_u
  local.tee $2
  i32.eqz
  i32.const 4
  i32.add
  local.set $0
  local.get $3
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.const 5344
  i32.const 5376
  local.get $2
  select
  local.get $0
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
   local.get $3
   local.get $0
   call $~lib/string/String#substring
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $3
 )
 (func $~lib/util/number/decimalCount32 (; 159 ;) (param $0 i32) (result i32)
  i32.const 1
  i32.const 2
  local.get $0
  i32.const 10
  i32.lt_u
  select
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
  local.get $0
  i32.const 100
  i32.lt_u
  select
  i32.const 6
  i32.const 7
  local.get $0
  i32.const 1000000
  i32.lt_u
  select
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
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
 )
 (func $~lib/util/number/utoa_simple<u32> (; 160 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $do-continue|0
   local.get $1
   i32.const 10
   i32.div_u
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store16
   local.tee $1
   br_if $do-continue|0
  end
 )
 (func $~lib/util/number/itoa32 (; 161 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 5520
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
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa_stream<i32> (; 162 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
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
  local.get $2
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.tee $2
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/util/string/joinIntegerArray<i32> (; 163 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load
   call $~lib/util/number/itoa32
   return
  end
  local.get $4
  local.get $2
  call $~lib/string/String#get:length
  local.tee $5
  i32.const 11
  i32.add
  i32.mul
  i32.const 11
  i32.add
  local.tee $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $6
   local.get $4
   i32.lt_s
   if
    local.get $3
    local.get $1
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/util/number/itoa_stream<i32>
    local.get $1
    i32.add
    local.set $1
    local.get $5
    if
     local.get $3
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $5
     i32.add
     local.set $1
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $7
  local.get $3
  local.get $1
  local.get $0
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/util/number/itoa_stream<i32>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $3
   local.get $0
   call $~lib/string/String#substring
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $3
 )
 (func $~lib/array/Array<i32>#join (; 164 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinIntegerArray<i32>
 )
 (func $~lib/util/number/utoa32 (; 165 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 5520
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.tee $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/util/number/utoa_simple<u32>
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa_stream<u32> (; 166 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
  local.get $2
  local.get $2
  call $~lib/util/number/decimalCount32
  local.tee $0
  call $~lib/util/number/utoa_simple<u32>
  local.get $0
 )
 (func $~lib/util/string/joinIntegerArray<u32> (; 167 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load
   call $~lib/util/number/utoa32
   return
  end
  local.get $4
  local.get $2
  call $~lib/string/String#get:length
  local.tee $5
  i32.const 10
  i32.add
  i32.mul
  i32.const 10
  i32.add
  local.tee $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $6
   local.get $4
   i32.lt_s
   if
    local.get $3
    local.get $1
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/util/number/itoa_stream<u32>
    local.get $1
    i32.add
    local.set $1
    local.get $5
    if
     local.get $3
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $5
     i32.add
     local.set $1
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $7
  local.get $3
  local.get $1
  local.get $0
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/util/number/itoa_stream<u32>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $3
   local.get $0
   call $~lib/string/String#substring
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $3
 )
 (func $~lib/array/Array<u32>#join (; 168 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinIntegerArray<u32>
 )
 (func $~lib/util/number/genDigits (; 169 ;) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i64)
  local.get $3
  local.get $1
  i64.sub
  local.set $9
  local.get $3
  i64.const 1
  i32.const 0
  local.get $4
  i32.sub
  local.tee $10
  i64.extend_i32_s
  i64.shl
  local.tee $11
  i64.const 1
  i64.sub
  local.tee $14
  i64.and
  local.set $12
  local.get $3
  local.get $10
  i64.extend_i32_s
  i64.shr_u
  i32.wrap_i64
  local.tee $7
  call $~lib/util/number/decimalCount32
  local.set $4
  i32.const 7060
  i32.load
  local.set $13
  loop $while-continue|0
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
                i32.const 1
                i32.sub
                br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $case1|1 $case10|1
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
     local.get $0
     local.get $2
     i32.const 1
     i32.shl
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
    local.get $12
    local.get $7
    i64.extend_i32_u
    local.get $10
    i64.extend_i32_s
    i64.shl
    i64.add
    local.tee $1
    local.get $5
    i64.le_u
    if
     local.get $4
     global.get $~lib/util/number/_K
     i32.add
     global.set $~lib/util/number/_K
     local.get $13
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i64.load32_u
     local.get $10
     i64.extend_i32_s
     i64.shl
     local.set $3
     local.get $0
     local.get $6
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     i32.add
     local.tee $2
     i32.load16_u
     local.set $4
     loop $while-continue|3
      i32.const 1
      local.get $9
      local.get $1
      i64.sub
      local.get $1
      local.get $3
      i64.add
      local.get $9
      i64.sub
      i64.gt_u
      local.get $1
      local.get $3
      i64.add
      local.get $9
      i64.lt_u
      select
      i32.const 0
      local.get $5
      local.get $1
      i64.sub
      local.get $3
      i64.ge_u
      i32.const 0
      local.get $1
      local.get $9
      i64.lt_u
      select
      select
      if
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $1
       local.get $3
       i64.add
       local.set $1
       br $while-continue|3
      end
     end
     local.get $2
     local.get $4
     i32.store16
     local.get $6
     return
    end
    br $while-continue|0
   end
  end
  loop $while-continue|4 (result i32)
   local.get $5
   i64.const 10
   i64.mul
   local.set $5
   local.get $12
   i64.const 10
   i64.mul
   local.tee $3
   local.get $10
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
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
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
   local.tee $12
   local.get $5
   i64.ge_u
   br_if $while-continue|4
   local.get $4
   global.get $~lib/util/number/_K
   i32.add
   global.set $~lib/util/number/_K
   local.get $12
   local.set $1
   local.get $9
   local.get $13
   i32.const 0
   local.get $4
   i32.sub
   i32.const 2
   i32.shl
   i32.add
   i64.load32_u
   i64.mul
   local.set $3
   local.get $0
   local.get $6
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.tee $2
   i32.load16_u
   local.set $4
   loop $while-continue|6
    i32.const 1
    local.get $3
    local.get $1
    i64.sub
    local.get $1
    local.get $11
    i64.add
    local.get $3
    i64.sub
    i64.gt_u
    local.get $1
    local.get $11
    i64.add
    local.get $3
    i64.lt_u
    select
    i32.const 0
    local.get $5
    local.get $1
    i64.sub
    local.get $11
    i64.ge_u
    i32.const 0
    local.get $1
    local.get $3
    i64.lt_u
    select
    select
    if
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     local.get $1
     local.get $11
     i64.add
     local.set $1
     br $while-continue|6
    end
   end
   local.get $2
   local.get $4
   i32.store16
   local.get $6
  end
 )
 (func $~lib/util/number/prettify (; 170 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  i32.eqz
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.shl
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
  if (result i32)
   local.get $3
   i32.const 21
   i32.le_s
  else
   i32.const 0
  end
  if (result i32)
   loop $for-loop|0
    local.get $1
    local.get $3
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     i32.store16
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $0
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   i32.const 3145774
   i32.store
   local.get $3
   i32.const 2
   i32.add
  else
   local.get $3
   i32.const 21
   i32.le_s
   i32.const 0
   local.get $3
   i32.const 0
   i32.gt_s
   select
   if (result i32)
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
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
    local.get $3
    i32.const 0
    i32.le_s
    i32.const 0
    i32.const -6
    local.get $3
    i32.lt_s
    select
    if (result i32)
     local.get $0
     i32.const 2
     local.get $3
     i32.sub
     local.tee $3
     i32.const 1
     i32.shl
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
     loop $for-loop|1
      local.get $2
      local.get $3
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.shl
       i32.add
       i32.const 48
       i32.store16
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     local.get $3
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
      local.tee $1
      local.get $3
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $2
      if
       i32.const 0
       local.get $0
       i32.sub
       local.set $0
      end
      local.get $0
      local.get $0
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa_simple<u32>
      local.get $1
      i32.const 45
      i32.const 43
      local.get $2
      select
      i32.store16
      local.get $0
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
      local.get $3
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $3
      if
       i32.const 0
       local.get $0
       i32.sub
       local.set $0
      end
      local.get $0
      local.get $0
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa_simple<u32>
      local.get $2
      i32.const 45
      i32.const 43
      local.get $3
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
 (func $~lib/util/number/dtoa_core (; 171 ;) (param $0 i32) (param $1 f64) (result i32)
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
  i32.const 6740
  i32.load
  local.get $3
  i32.const 3
  i32.shl
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  i32.const 6964
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
  local.get $2
  local.get $8
  i64.const 32
  i64.shr_u
  local.tee $8
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
  global.get $~lib/util/number/_frc_minus
  local.tee $4
  i64.const 4294967295
  i64.and
  local.tee $9
  local.get $6
  i64.mul
  local.get $2
  local.get $4
  i64.const 32
  i64.shr_u
  local.tee $4
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
  local.get $0
  local.get $10
  i32.const 1
  i32.shl
  i32.add
  local.get $0
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
  local.get $6
  i64.mul
  local.get $2
  local.get $5
  i64.const 32
  i64.shr_u
  local.tee $5
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
  local.get $3
  global.get $~lib/util/number/_exp
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
 (func $~lib/util/number/dtoa (; 172 ;) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 5872
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
    i32.const 5904
    return
   end
   i32.const 5936
   i32.const 5984
   local.get $0
   f64.const 0
   f64.lt
   select
   call $~lib/rt/pure/__retain
   return
  end
  i32.const 56
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/util/number/dtoa_core
  local.tee $2
  i32.const 28
  i32.eq
  if
   local.get $1
   call $~lib/rt/pure/__retain
   return
  end
  local.get $1
  local.get $2
  call $~lib/string/String#substring
  local.get $1
  call $~lib/rt/tlsf/__free
 )
 (func $~lib/util/number/dtoa_stream (; 173 ;) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
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
    i32.const 5936
    i32.const 5984
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
 (func $~lib/util/string/joinFloatArray<f64> (; 174 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   f64.load
   call $~lib/util/number/dtoa
   return
  end
  local.get $3
  i32.const 5840
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 28
  i32.add
  i32.mul
  i32.const 28
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    f64.load
    call $~lib/util/number/dtoa_stream
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 5840
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 3
  i32.shl
  i32.add
  f64.load
  call $~lib/util/number/dtoa_stream
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/util/string/joinReferenceArray<~lib/string/String | null> (; 175 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $2
  local.set $5
  local.get $1
  i32.const 1
  i32.sub
  local.tee $6
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  i32.const 0
  local.set $2
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $4
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
   end
   local.get $4
   if (result i32)
    local.get $4
    call $~lib/rt/pure/__retain
   else
    i32.const 5168
   end
   local.get $4
   call $~lib/rt/pure/__release
   return
  end
  i32.const 5168
  local.set $1
  local.get $5
  call $~lib/string/String#get:length
  local.set $8
  loop $for-loop|0
   local.get $4
   local.get $6
   i32.lt_s
   if
    local.get $2
    local.tee $3
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $2
    i32.ne
    if
     local.get $2
     call $~lib/rt/pure/__retain
     local.set $2
     local.get $3
     call $~lib/rt/pure/__release
    end
    local.get $2
    if
     local.get $2
     call $~lib/rt/pure/__retain
     local.tee $3
     local.get $1
     local.get $1
     local.get $3
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $3
     i32.ne
     if
      local.get $3
      call $~lib/rt/pure/__retain
      local.set $3
      local.get $1
      call $~lib/rt/pure/__release
     end
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
     local.get $3
     local.set $1
    end
    local.get $8
    if
     local.get $1
     local.tee $3
     local.get $5
     call $~lib/string/String.__concat
     local.tee $7
     local.tee $1
     local.get $3
     i32.ne
     if
      local.get $1
      call $~lib/rt/pure/__retain
      local.set $1
      local.get $3
      call $~lib/rt/pure/__release
     end
     local.get $7
     call $~lib/rt/pure/__release
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $2
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $3
  if
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $0
   local.get $1
   local.get $1
   local.get $0
   call $~lib/string/String.__concat
   local.tee $0
   local.tee $2
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $2
    local.get $1
    call $~lib/rt/pure/__release
   end
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   local.set $1
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String | null>#join (; 176 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinReferenceArray<~lib/string/String | null>
 )
 (func $~lib/util/string/joinReferenceArray<std/array/Ref | null> (; 177 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $5
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $4
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
   end
   local.get $4
   call $~lib/rt/pure/__release
   i32.const 7248
   i32.const 5168
   local.get $4
   select
   return
  end
  i32.const 5168
  local.set $1
  i32.const 5408
  call $~lib/string/String#get:length
  local.set $7
  loop $for-loop|0
   local.get $4
   local.get $5
   i32.lt_s
   if
    local.get $3
    local.tee $2
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $3
    i32.ne
    if
     local.get $3
     call $~lib/rt/pure/__retain
     local.set $3
     local.get $2
     call $~lib/rt/pure/__release
    end
    local.get $3
    if
     local.get $1
     local.get $1
     i32.const 7248
     call $~lib/string/String.__concat
     local.tee $6
     local.tee $2
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $1
      call $~lib/rt/pure/__release
     end
     local.get $6
     call $~lib/rt/pure/__release
     local.get $2
     local.set $1
    end
    local.get $7
    if
     local.get $1
     local.tee $2
     i32.const 5408
     call $~lib/string/String.__concat
     local.tee $6
     local.tee $1
     local.get $2
     i32.ne
     if
      local.get $1
      call $~lib/rt/pure/__retain
      local.set $1
      local.get $2
      call $~lib/rt/pure/__release
     end
     local.get $6
     call $~lib/rt/pure/__release
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  local.get $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $2
  if
   local.get $1
   local.get $1
   i32.const 7248
   call $~lib/string/String.__concat
   local.tee $0
   local.tee $3
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   local.set $1
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<std/array/Ref | null>#join (; 178 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<std/array/Ref | null>
 )
 (func $~lib/array/Array<i32>#toString (; 179 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 5408
  call $~lib/array/Array<i32>#join
 )
 (func $~lib/util/number/itoa_stream<i8> (; 180 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/util/string/joinIntegerArray<i8> (; 181 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load8_s
   call $~lib/util/number/itoa32
   return
  end
  local.get $3
  i32.const 5408
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 11
  i32.add
  i32.mul
  i32.const 11
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.add
    i32.load8_s
    call $~lib/util/number/itoa_stream<i8>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 5408
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.add
  i32.load8_s
  call $~lib/util/number/itoa_stream<i8>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/util/number/itoa_stream<u16> (; 182 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $2
  i32.const 65535
  i32.and
  local.tee $2
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
 )
 (func $~lib/util/string/joinIntegerArray<u16> (; 183 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load16_u
   call $~lib/util/number/utoa32
   return
  end
  local.get $3
  i32.const 5408
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 10
  i32.add
  i32.mul
  i32.const 10
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    call $~lib/util/number/itoa_stream<u16>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 5408
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  call $~lib/util/number/itoa_stream<u16>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/util/number/decimalCount64 (; 184 ;) (param $0 i64) (result i32)
  i32.const 10
  i32.const 11
  i32.const 12
  local.get $0
  i64.const 100000000000
  i64.lt_u
  select
  local.get $0
  i64.const 10000000000
  i64.lt_u
  select
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
  local.get $0
  i64.const 1000000000000
  i64.lt_u
  select
  i32.const 16
  i32.const 17
  local.get $0
  i64.const 10000000000000000
  i64.lt_u
  select
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
  local.get $0
  i64.const 100000000000000000
  i64.lt_u
  select
  local.get $0
  i64.const 1000000000000000
  i64.lt_u
  select
 )
 (func $~lib/util/number/utoa_simple<u64> (; 185 ;) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  loop $do-continue|0
   local.get $1
   i64.const 10
   i64.div_u
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i64.const 10
   i64.rem_u
   i32.wrap_i64
   i32.const 48
   i32.add
   i32.store16
   local.tee $1
   i64.const 0
   i64.ne
   br_if $do-continue|0
  end
 )
 (func $~lib/util/number/utoa64 (; 186 ;) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i64.eqz
  if
   i32.const 5520
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
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $2
   local.get $1
   local.get $3
   call $~lib/util/number/utoa_simple<u32>
  else
   local.get $0
   call $~lib/util/number/decimalCount64
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $2
   local.get $0
   local.get $1
   call $~lib/util/number/utoa_simple<u64>
  end
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa_stream<u64> (; 187 ;) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
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
   call $~lib/util/number/utoa_simple<u32>
  else
   local.get $0
   local.get $2
   local.get $2
   call $~lib/util/number/decimalCount64
   local.tee $1
   call $~lib/util/number/utoa_simple<u64>
  end
  local.get $1
 )
 (func $~lib/util/string/joinIntegerArray<u64> (; 188 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i64.load
   call $~lib/util/number/utoa64
   return
  end
  local.get $3
  i32.const 5408
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 20
  i32.add
  i32.mul
  i32.const 20
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    i64.load
    call $~lib/util/number/itoa_stream<u64>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 5408
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 3
  i32.shl
  i32.add
  i64.load
  call $~lib/util/number/itoa_stream<u64>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/util/number/itoa64 (; 189 ;) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i64.eqz
  if
   i32.const 5520
   return
  end
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
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $3
   local.get $2
   local.get $4
   call $~lib/util/number/utoa_simple<u32>
  else
   local.get $0
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $3
   local.get $0
   local.get $2
   call $~lib/util/number/utoa_simple<u64>
  end
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa_stream<i64> (; 190 ;) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
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
   call $~lib/util/number/utoa_simple<u32>
  else
   local.get $0
   local.get $2
   local.get $2
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.tee $3
   call $~lib/util/number/utoa_simple<u64>
  end
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/util/string/joinIntegerArray<i64> (; 191 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i64.load
   call $~lib/util/number/itoa64
   return
  end
  local.get $3
  i32.const 5408
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 21
  i32.add
  i32.mul
  i32.const 21
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    i64.load
    call $~lib/util/number/itoa_stream<i64>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 5408
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 3
  i32.shl
  i32.add
  i64.load
  call $~lib/util/number/itoa_stream<i64>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/array/Array<~lib/string/String | null>#toString (; 192 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 5408
  call $~lib/array/Array<~lib/string/String | null>#join
 )
 (func $~lib/util/string/joinReferenceArray<~lib/array/Array<i32>> (; 193 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $5
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $3
   if
    local.get $3
    call $~lib/rt/pure/__retain
    local.set $3
   end
   local.get $3
   if (result i32)
    local.get $3
    call $~lib/array/Array<i32>#toString
   else
    i32.const 5168
   end
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  i32.const 5168
  local.set $1
  i32.const 5408
  call $~lib/string/String#get:length
  local.set $7
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    local.get $4
    local.tee $2
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $4
    i32.ne
    if
     local.get $4
     call $~lib/rt/pure/__retain
     local.set $4
     local.get $2
     call $~lib/rt/pure/__release
    end
    local.get $4
    if
     local.get $1
     local.get $1
     local.get $4
     call $~lib/array/Array<i32>#toString
     local.tee $6
     call $~lib/string/String.__concat
     local.tee $8
     local.tee $2
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $1
      call $~lib/rt/pure/__release
     end
     local.get $6
     call $~lib/rt/pure/__release
     local.get $8
     call $~lib/rt/pure/__release
     local.get $2
     local.set $1
    end
    local.get $7
    if
     local.get $1
     local.tee $2
     i32.const 5408
     call $~lib/string/String.__concat
     local.tee $6
     local.tee $1
     local.get $2
     i32.ne
     if
      local.get $1
      call $~lib/rt/pure/__retain
      local.set $1
      local.get $2
      call $~lib/rt/pure/__release
     end
     local.get $6
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  local.get $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  if
   local.get $1
   local.get $1
   local.get $2
   call $~lib/array/Array<i32>#toString
   local.tee $0
   call $~lib/string/String.__concat
   local.tee $3
   local.tee $4
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $1
    call $~lib/rt/pure/__release
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   local.set $1
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/util/number/itoa_stream<u8> (; 194 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $2
  i32.const 255
  i32.and
  local.tee $2
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
 )
 (func $~lib/util/string/joinIntegerArray<u8> (; 195 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load8_u
   call $~lib/util/number/utoa32
   return
  end
  local.get $3
  i32.const 5408
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 10
  i32.add
  i32.mul
  i32.const 10
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.add
    i32.load8_u
    call $~lib/util/number/itoa_stream<u8>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 5408
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.add
  i32.load8_u
  call $~lib/util/number/itoa_stream<u8>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/array/Array<u8>#toString (; 196 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<u8>
 )
 (func $~lib/util/string/joinReferenceArray<~lib/array/Array<u8>> (; 197 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $5
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $3
   if
    local.get $3
    call $~lib/rt/pure/__retain
    local.set $3
   end
   local.get $3
   if (result i32)
    local.get $3
    call $~lib/array/Array<u8>#toString
   else
    i32.const 5168
   end
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  i32.const 5168
  local.set $1
  i32.const 5408
  call $~lib/string/String#get:length
  local.set $7
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    local.get $4
    local.tee $2
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $4
    i32.ne
    if
     local.get $4
     call $~lib/rt/pure/__retain
     local.set $4
     local.get $2
     call $~lib/rt/pure/__release
    end
    local.get $4
    if
     local.get $1
     local.get $1
     local.get $4
     call $~lib/array/Array<u8>#toString
     local.tee $6
     call $~lib/string/String.__concat
     local.tee $8
     local.tee $2
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $1
      call $~lib/rt/pure/__release
     end
     local.get $6
     call $~lib/rt/pure/__release
     local.get $8
     call $~lib/rt/pure/__release
     local.get $2
     local.set $1
    end
    local.get $7
    if
     local.get $1
     local.tee $2
     i32.const 5408
     call $~lib/string/String.__concat
     local.tee $6
     local.tee $1
     local.get $2
     i32.ne
     if
      local.get $1
      call $~lib/rt/pure/__retain
      local.set $1
      local.get $2
      call $~lib/rt/pure/__release
     end
     local.get $6
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  local.get $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  if
   local.get $1
   local.get $1
   local.get $2
   call $~lib/array/Array<u8>#toString
   local.tee $0
   call $~lib/string/String.__concat
   local.tee $3
   local.tee $4
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $1
    call $~lib/rt/pure/__release
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   local.set $1
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<u32>#toString (; 198 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 5408
  call $~lib/array/Array<u32>#join
 )
 (func $~lib/util/string/joinReferenceArray<~lib/array/Array<u32>> (; 199 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $5
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $3
   if
    local.get $3
    call $~lib/rt/pure/__retain
    local.set $3
   end
   local.get $3
   if (result i32)
    local.get $3
    call $~lib/array/Array<u32>#toString
   else
    i32.const 5168
   end
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  i32.const 5168
  local.set $1
  i32.const 5408
  call $~lib/string/String#get:length
  local.set $7
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    local.get $4
    local.tee $2
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $4
    i32.ne
    if
     local.get $4
     call $~lib/rt/pure/__retain
     local.set $4
     local.get $2
     call $~lib/rt/pure/__release
    end
    local.get $4
    if
     local.get $1
     local.get $1
     local.get $4
     call $~lib/array/Array<u32>#toString
     local.tee $6
     call $~lib/string/String.__concat
     local.tee $8
     local.tee $2
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $1
      call $~lib/rt/pure/__release
     end
     local.get $6
     call $~lib/rt/pure/__release
     local.get $8
     call $~lib/rt/pure/__release
     local.get $2
     local.set $1
    end
    local.get $7
    if
     local.get $1
     local.tee $2
     i32.const 5408
     call $~lib/string/String.__concat
     local.tee $6
     local.tee $1
     local.get $2
     i32.ne
     if
      local.get $1
      call $~lib/rt/pure/__retain
      local.set $1
      local.get $2
      call $~lib/rt/pure/__release
     end
     local.get $6
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  local.get $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  if
   local.get $1
   local.get $1
   local.get $2
   call $~lib/array/Array<u32>#toString
   local.tee $0
   call $~lib/string/String.__concat
   local.tee $3
   local.tee $4
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $1
    call $~lib/rt/pure/__release
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   local.set $1
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#toString (; 200 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<u32>>
 )
 (func $~lib/util/string/joinReferenceArray<~lib/array/Array<~lib/array/Array<u32>>> (; 201 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  i32.lt_s
  if
   i32.const 5168
   return
  end
  local.get $5
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $3
   if
    local.get $3
    call $~lib/rt/pure/__retain
    local.set $3
   end
   local.get $3
   if (result i32)
    local.get $3
    call $~lib/array/Array<~lib/array/Array<u32>>#toString
   else
    i32.const 5168
   end
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  i32.const 5168
  local.set $1
  i32.const 5408
  call $~lib/string/String#get:length
  local.set $7
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    local.get $4
    local.tee $2
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $4
    i32.ne
    if
     local.get $4
     call $~lib/rt/pure/__retain
     local.set $4
     local.get $2
     call $~lib/rt/pure/__release
    end
    local.get $4
    if
     local.get $1
     local.get $1
     local.get $4
     call $~lib/array/Array<~lib/array/Array<u32>>#toString
     local.tee $6
     call $~lib/string/String.__concat
     local.tee $8
     local.tee $2
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $1
      call $~lib/rt/pure/__release
     end
     local.get $6
     call $~lib/rt/pure/__release
     local.get $8
     call $~lib/rt/pure/__release
     local.get $2
     local.set $1
    end
    local.get $7
    if
     local.get $1
     local.tee $2
     i32.const 5408
     call $~lib/string/String.__concat
     local.tee $6
     local.tee $1
     local.get $2
     i32.ne
     if
      local.get $1
      call $~lib/rt/pure/__retain
      local.set $1
      local.get $2
      call $~lib/rt/pure/__release
     end
     local.get $6
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  local.get $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  if
   local.get $1
   local.get $1
   local.get $2
   call $~lib/array/Array<~lib/array/Array<u32>>#toString
   local.tee $0
   call $~lib/string/String.__concat
   local.tee $3
   local.tee $4
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $1
    call $~lib/rt/pure/__release
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   local.set $1
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $start:std/array (; 202 ;)
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
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  global.set $std/array/arr
  i32.const 0
  call $~lib/array/Array.isArray<~lib/array/Array<i32> | null>
  if
   i32.const 0
   i32.const 416
   i32.const 40
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $std/array/Ref#constructor
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  i32.const 1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $1
  global.get $std/array/arr
  call $~lib/array/Array.isArray<~lib/array/Array<i32> | null>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 496
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 528
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 54
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 57
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 640
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 60
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 672
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 63
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 704
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 66
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 736
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 784
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 73
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 832
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 76
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 880
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 79
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 928
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 82
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 976
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 85
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 416
   i32.const 91
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  if
   i32.const 0
   i32.const 416
   i32.const 92
   i32.const 2
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
   i32.const 416
   i32.const 96
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 97
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 98
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 102
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 416
   i32.const 103
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 104
   i32.const 2
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
   i32.const 416
   i32.const 108
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 109
   i32.const 2
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
   i32.const 416
   i32.const 110
   i32.const 2
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
   i32.const 416
   i32.const 114
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 115
   i32.const 2
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
   i32.const 416
   i32.const 116
   i32.const 2
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
   i32.const 416
   i32.const 117
   i32.const 2
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
   i32.const 416
   i32.const 121
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 122
   i32.const 2
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
   i32.const 416
   i32.const 123
   i32.const 2
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
   i32.const 416
   i32.const 124
   i32.const 2
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
   i32.const 416
   i32.const 125
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.const 0
  call $std/array/Ref#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  i32.const 0
  call $std/array/Ref#constructor
  local.tee $1
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  call $~lib/array/Array<std/array/Ref>#set:length
  local.get $0
  i32.load offset=12
  if
   i32.const 0
   i32.const 416
   i32.const 133
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.set $1
  global.get $std/array/arr
  local.get $1
  call $~lib/array/Array<i32>#concat
  local.set $4
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 142
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 143
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 144
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 1072
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/array/Array<i32>#concat
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 147
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 149
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 150
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 151
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 46
  call $~lib/array/Array<i32>#push
  local.get $1
  i32.const 47
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  local.get $1
  call $~lib/array/Array<i32>#concat
  local.set $0
  local.get $4
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 158
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 159
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 160
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 161
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 162
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 163
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/array/Array<u32>#__get
  i32.const 46
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 164
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/array/Array<u32>#__get
  i32.const 47
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 165
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 168
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 1088
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=12
  if
   i32.const 0
   i32.const 416
   i32.const 176
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  global.get $std/array/arr
  call $~lib/array/Array<i32>#concat
  local.set $6
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 178
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=12
  if
   i32.const 0
   i32.const 416
   i32.const 179
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1104
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 3
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $4
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1152
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 186
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1200
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 1
  i32.const 3
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $2
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1248
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 188
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1296
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $5
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1344
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 190
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1392
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 2
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $8
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1440
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $9
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 192
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1488
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  local.tee $10
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1536
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $11
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 194
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1584
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  local.tee $12
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1632
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $13
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 196
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1680
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  local.tee $14
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1728
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $25
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 198
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1776
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $16
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1824
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $17
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 200
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1872
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  local.tee $18
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1920
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $19
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 202
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 1968
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const -4
  i32.const -3
  i32.const -2
  call $~lib/array/Array<i32>#copyWithin
  local.tee $20
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2016
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $15
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 204
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2064
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const -4
  i32.const -3
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  local.tee $21
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2112
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $22
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 206
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2160
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const -4
  i32.const -3
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $1
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2208
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $23
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 208
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.const 42
  call $~lib/array/Array<i32>#unshift
  global.get $std/array/arr
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 216
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 217
   i32.const 2
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
   i32.const 416
   i32.const 218
   i32.const 2
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
   i32.const 416
   i32.const 219
   i32.const 2
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
   i32.const 416
   i32.const 220
   i32.const 2
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
   i32.const 416
   i32.const 221
   i32.const 2
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
   i32.const 416
   i32.const 225
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 226
   i32.const 2
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
   i32.const 416
   i32.const 227
   i32.const 2
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
   i32.const 416
   i32.const 228
   i32.const 2
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
   i32.const 416
   i32.const 229
   i32.const 2
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
   i32.const 416
   i32.const 230
   i32.const 2
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
   i32.const 416
   i32.const 231
   i32.const 2
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
   i32.const 416
   i32.const 240
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 241
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 242
   i32.const 2
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
   i32.const 416
   i32.const 243
   i32.const 2
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
   i32.const 416
   i32.const 244
   i32.const 2
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
   i32.const 416
   i32.const 245
   i32.const 2
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
   i32.const 416
   i32.const 246
   i32.const 2
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
   i32.const 416
   i32.const 250
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 251
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 252
   i32.const 2
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
   i32.const 416
   i32.const 253
   i32.const 2
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
   i32.const 416
   i32.const 254
   i32.const 2
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
   i32.const 416
   i32.const 255
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#reverse
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 264
   i32.const 2
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
   i32.const 416
   i32.const 265
   i32.const 2
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
   i32.const 416
   i32.const 266
   i32.const 2
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
   i32.const 416
   i32.const 267
   i32.const 2
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
   i32.const 416
   i32.const 277
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 280
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 283
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 286
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 289
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 292
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 295
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 298
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 301
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 304
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 9
  i32.const 2256
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/array/Array<f32>#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 306
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 3
  i32.const 10
  i32.const 2288
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/array/Array<f64>#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 307
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.const 44
  i32.const 0
  call $~lib/array/Array<i32>#includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 314
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 42
  i32.const 0
  call $~lib/array/Array<i32>#includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 45
  i32.const 0
  call $~lib/array/Array<i32>#includes
  if
   i32.const 0
   i32.const 416
   i32.const 320
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 100
  call $~lib/array/Array<i32>#includes
  if
   i32.const 0
   i32.const 416
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -100
  call $~lib/array/Array<i32>#includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 326
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -2
  call $~lib/array/Array<i32>#includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 329
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -4
  call $~lib/array/Array<i32>#includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 0
  call $~lib/array/Array<i32>#includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 335
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 1
  call $~lib/array/Array<i32>#includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 338
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 2
  call $~lib/array/Array<i32>#includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 341
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 9
  i32.const 2320
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/array/Array<f32>#includes
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 343
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 3
  i32.const 10
  i32.const 2352
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/array/Array<f64>#includes
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 1
  i32.const 1
  call $~lib/array/Array<i32>#splice
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 348
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 349
   i32.const 2
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
   i32.const 416
   i32.const 350
   i32.const 2
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
   i32.const 416
   i32.const 351
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2384
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $5
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2432
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 2480
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2496
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#splice
  local.tee $9
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 2544
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 362
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2560
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $11
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 363
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $12
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 2656
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $13
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 2688
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $14
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2720
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#splice
  local.tee $16
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 2768
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $17
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 370
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 2800
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $18
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 371
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2832
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $19
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 2880
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $20
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 374
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 2912
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $15
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 375
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2944
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -1
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $21
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 2992
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $22
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 378
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 3024
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $23
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3056
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $26
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 3104
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $27
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 3136
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $28
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 383
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3168
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -2
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $29
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 3216
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $30
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 386
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 3248
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $31
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 387
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3280
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -7
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $32
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 3328
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $33
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 3360
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $34
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3392
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#splice
  local.tee $24
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3440
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $35
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3456
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $36
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 395
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3504
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 1
  i32.const -2
  call $~lib/array/Array<i32>#splice
  local.tee $37
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3552
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $38
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 398
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3568
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $39
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 399
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3616
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 4
  i32.const 0
  call $~lib/array/Array<i32>#splice
  local.tee $40
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3664
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $41
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 402
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3680
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $42
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 403
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3728
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 7
  i32.const 0
  call $~lib/array/Array<i32>#splice
  local.tee $43
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3776
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $44
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3792
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $45
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3840
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 7
  i32.const 5
  call $~lib/array/Array<i32>#splice
  local.tee $46
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3888
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $47
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 410
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3904
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $48
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 411
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 3952
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.const 1
  call $~lib/array/Array<std/array/Ref>#splice
  local.tee $3
  i32.load offset=12
  if
   i32.const 0
   i32.const 416
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=12
  if
   i32.const 0
   i32.const 416
   i32.const 416
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=4
  local.tee $0
  i32.const 1
  call $std/array/Ref#constructor
  local.tee $49
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  i32.const 2
  call $std/array/Ref#constructor
  local.tee $50
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  i32.const 3
  call $std/array/Ref#constructor
  local.tee $51
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $0
  i32.const 4
  call $std/array/Ref#constructor
  local.tee $52
  call $~lib/rt/pure/__retain
  i32.store offset=12
  local.get $0
  i32.const 5
  call $std/array/Ref#constructor
  local.tee $53
  call $~lib/rt/pure/__retain
  i32.store offset=16
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 2
  call $~lib/array/Array<std/array/Ref>#splice
  local.set $6
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 421
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 0
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $54
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 422
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 1
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $55
  i32.load
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 423
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 425
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $56
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 426
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $57
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 427
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $58
  i32.load
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=4
  local.tee $0
  i32.const 1
  call $std/array/Ref#constructor
  local.tee $59
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 2
  call $std/array/Ref#constructor
  local.tee $60
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $4
  call $~lib/array/Array<std/array/Ref | null>#splice
  local.tee $25
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 433
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $25
  i32.const 0
  call $~lib/array/Array<std/array/Ref | null>#__get
  local.tee $0
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 434
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 434
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 436
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  call $~lib/array/Array<std/array/Ref | null>#__get
  local.tee $61
  if
   i32.const 0
   i32.const 416
   i32.const 437
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 1
  call $~lib/array/Array<std/array/Ref | null>#__get
  local.tee $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 438
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $26
  call $~lib/rt/pure/__release
  local.get $27
  call $~lib/rt/pure/__release
  local.get $28
  call $~lib/rt/pure/__release
  local.get $29
  call $~lib/rt/pure/__release
  local.get $30
  call $~lib/rt/pure/__release
  local.get $31
  call $~lib/rt/pure/__release
  local.get $32
  call $~lib/rt/pure/__release
  local.get $33
  call $~lib/rt/pure/__release
  local.get $34
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $35
  call $~lib/rt/pure/__release
  local.get $36
  call $~lib/rt/pure/__release
  local.get $37
  call $~lib/rt/pure/__release
  local.get $38
  call $~lib/rt/pure/__release
  local.get $39
  call $~lib/rt/pure/__release
  local.get $40
  call $~lib/rt/pure/__release
  local.get $41
  call $~lib/rt/pure/__release
  local.get $42
  call $~lib/rt/pure/__release
  local.get $43
  call $~lib/rt/pure/__release
  local.get $44
  call $~lib/rt/pure/__release
  local.get $45
  call $~lib/rt/pure/__release
  local.get $46
  call $~lib/rt/pure/__release
  local.get $47
  call $~lib/rt/pure/__release
  local.get $48
  call $~lib/rt/pure/__release
  local.get $49
  call $~lib/rt/pure/__release
  local.get $50
  call $~lib/rt/pure/__release
  local.get $51
  call $~lib/rt/pure/__release
  local.get $52
  call $~lib/rt/pure/__release
  local.get $53
  call $~lib/rt/pure/__release
  local.get $54
  call $~lib/rt/pure/__release
  local.get $55
  call $~lib/rt/pure/__release
  local.get $56
  call $~lib/rt/pure/__release
  local.get $57
  call $~lib/rt/pure/__release
  local.get $58
  call $~lib/rt/pure/__release
  local.get $59
  call $~lib/rt/pure/__release
  local.get $60
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $61
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
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
   i32.const 416
   i32.const 451
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 454
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 457
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 465
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 466
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
  i32.eq
  if
   i32.const 0
   i32.const 416
   i32.const 468
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 481
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 482
   i32.const 2
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
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 492
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 8
  call $~lib/array/Array<i32>#every
  if
   i32.const 0
   i32.const 416
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 9
  call $~lib/array/Array<i32>#every
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 503
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 504
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 10
  call $~lib/array/Array<i32>#every
  if
   i32.const 0
   i32.const 416
   i32.const 506
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
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 519
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 520
   i32.const 2
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
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 13
  call $~lib/array/Array<i32>#some
  if
   i32.const 0
   i32.const 416
   i32.const 533
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 14
  call $~lib/array/Array<i32>#some
  if
   i32.const 0
   i32.const 416
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 15
  call $~lib/array/Array<i32>#some
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 544
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
  if
   i32.const 0
   i32.const 416
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 558
   i32.const 2
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
   i32.const 416
   i32.const 569
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 578
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 579
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 582
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 596
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 597
   i32.const 2
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
   i32.const 416
   i32.const 622
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $for-loop|0
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
    br $for-loop|0
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
  local.tee $0
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 636
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<f32>#__get
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  f32.convert_i32_s
  f32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 637
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 23
  call $~lib/array/Array<i32>#map<i32>
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 646
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 647
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 24
  call $~lib/array/Array<i32>#map<i32>
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 406
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 654
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
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 669
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 670
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  local.get $0
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.const 26
  call $~lib/array/Array<i32>#filter
  local.tee $0
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 680
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 27
  call $~lib/array/Array<i32>#filter
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 689
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 690
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 28
  call $~lib/array/Array<i32>#filter
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 406
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 697
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
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 713
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  global.get $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  local.get $0
  call $~lib/rt/pure/__release
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
   i32.const 416
   i32.const 723
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 727
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 32
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  i32.const 0
  i32.ne
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 730
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 33
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  if
   i32.const 0
   i32.const 416
   i32.const 733
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 741
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 742
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 744
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 757
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 758
   i32.const 2
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
   i32.const 416
   i32.const 768
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 772
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 39
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  i32.const 0
  i32.ne
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 775
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 40
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  if
   i32.const 0
   i32.const 416
   i32.const 778
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 786
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 787
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 789
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
  i32.ne
  if
   i32.const 0
   i32.const 416
   i32.const 802
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 416
   i32.const 803
   i32.const 2
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
  i32.const 8
  i32.const 2
  i32.const 9
  i32.const 4320
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  global.set $~argumentsLength
  local.get $2
  call $~lib/array/Array<f32>#sort
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 8
  i32.const 2
  i32.const 9
  i32.const 4368
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $18
  call $std/array/isArraysEqual<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 892
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 3
  i32.const 10
  i32.const 4416
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  global.set $~argumentsLength
  local.get $3
  call $~lib/array/Array<f64>#sort
  call $~lib/rt/pure/__release
  local.get $3
  i32.const 8
  i32.const 3
  i32.const 10
  i32.const 4496
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $19
  call $std/array/isArraysEqual<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 896
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4576
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  global.set $~argumentsLength
  local.get $5
  i32.const 46
  call $~lib/array/Array<i32>#sort
  call $~lib/rt/pure/__release
  local.get $5
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4624
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $20
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 900
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 4672
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $7
  i32.const 0
  global.set $~argumentsLength
  local.get $7
  i32.const 47
  call $~lib/array/Array<i32>#sort
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 4720
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $15
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 904
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 4768
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $16
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 4784
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 4816
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $9
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 4848
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $10
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 4880
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 64
  call $std/array/createReverseOrderedArray
  local.set $11
  i32.const 128
  call $std/array/createReverseOrderedArray
  local.set $12
  i32.const 1024
  call $std/array/createReverseOrderedArray
  local.set $13
  i32.const 10000
  call $std/array/createReverseOrderedArray
  local.set $14
  i32.const 512
  call $std/array/createRandomOrderedArray
  local.set $17
  local.get $16
  call $std/array/assertSortedDefault<i32>
  local.get $8
  call $std/array/assertSortedDefault<i32>
  local.get $8
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 4976
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $21
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 924
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $std/array/assertSortedDefault<i32>
  local.get $9
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 5008
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $22
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 927
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  call $std/array/assertSortedDefault<i32>
  local.get $10
  local.get $0
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 930
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  call $std/array/assertSortedDefault<i32>
  local.get $11
  local.get $0
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 933
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $12
  call $std/array/assertSortedDefault<i32>
  local.get $12
  local.get $0
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 936
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $13
  call $std/array/assertSortedDefault<i32>
  local.get $13
  local.get $0
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 939
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $14
  call $std/array/assertSortedDefault<i32>
  local.get $14
  local.get $0
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 942
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $17
  call $std/array/assertSortedDefault<i32>
  local.get $2
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  i32.const 64
  call $std/array/createRandomOrderedArray
  local.set $0
  i32.const 257
  call $std/array/createRandomOrderedArray
  local.set $2
  local.get $0
  i32.const 49
  call $std/array/assertSorted<i32>
  local.get $0
  i32.const 50
  call $std/array/assertSorted<i32>
  local.get $2
  i32.const 51
  call $std/array/assertSorted<i32>
  local.get $2
  i32.const 52
  call $std/array/assertSorted<i32>
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  call $std/array/createReverseOrderedNestedArray
  local.tee $0
  i32.const 53
  call $std/array/assertSorted<~lib/array/Array<i32>>
  local.get $0
  call $~lib/rt/pure/__release
  call $std/array/createReverseOrderedElementsArray
  local.tee $0
  i32.const 54
  call $std/array/assertSorted<~lib/array/Array<i32>>
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 7
  i32.const 2
  i32.const 15
  i32.const 5184
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 7
  i32.const 2
  i32.const 15
  i32.const 5232
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  call $std/array/assertSorted<~lib/string/String | null>
  local.get $2
  local.get $3
  call $std/array/isArraysEqual<~lib/string/String | null>
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 979
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  call $std/array/createRandomStringArray
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 56
  call $std/array/assertSorted<~lib/array/Array<i32>>
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 2
  i32.const 0
  i32.const 17
  i32.const 5312
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinBooleanArray
  local.tee $2
  local.get $2
  i32.const 5440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 988
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 5488
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  i32.const 5168
  call $~lib/array/Array<i32>#join
  local.tee $9
  i32.const 5552
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 989
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 7
  i32.const 5584
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  i32.const 5616
  call $~lib/array/Array<u32>#join
  local.tee $11
  i32.const 5552
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 990
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 5648
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $12
  i32.const 5680
  call $~lib/array/Array<i32>#join
  local.tee $13
  i32.const 5712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 991
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  i32.const 3
  i32.const 10
  i32.const 5776
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.get $2
  i32.load offset=12
  call $~lib/util/string/joinFloatArray<f64>
  local.tee $3
  local.set $14
  local.get $3
  i32.const 7088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 992
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 15
  i32.const 7216
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $16
  i32.const 5168
  call $~lib/array/Array<~lib/string/String | null>#join
  local.tee $17
  i32.const 7184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 993
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.tee $5
  i32.const 0
  call $std/array/Ref#constructor
  local.tee $18
  call $~lib/rt/pure/__retain
  i32.store
  local.get $5
  i32.const 0
  i32.store offset=4
  local.get $5
  i32.const 0
  call $std/array/Ref#constructor
  local.tee $19
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $3
  call $~lib/array/Array<std/array/Ref | null>#join
  local.tee $20
  i32.const 7296
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 995
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.load offset=4
  local.tee $15
  i32.const 0
  call $std/array/Ref#constructor
  local.tee $21
  call $~lib/rt/pure/__retain
  i32.store
  local.get $15
  i32.const 0
  call $std/array/Ref#constructor
  local.tee $15
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $5
  call $~lib/array/Array<std/array/Ref | null>#join
  local.tee $22
  i32.const 7376
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 998
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 7456
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 7472
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $7
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 7504
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 7536
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $9
  local.get $5
  call $~lib/array/Array<i32>#toString
  local.tee $16
  i32.const 5168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1008
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/array/Array<i32>#toString
  local.tee $17
  i32.const 7184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1009
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/array/Array<i32>#toString
  local.tee $18
  i32.const 7568
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1010
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $~lib/array/Array<i32>#toString
  local.tee $19
  i32.const 7600
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1011
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 0
  i32.const 20
  i32.const 7632
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  i32.load offset=4
  local.get $10
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<i8>
  local.tee $0
  local.get $0
  i32.const 7664
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1013
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 1
  i32.const 21
  i32.const 7696
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $11
  i32.load offset=4
  local.get $11
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<u16>
  local.tee $0
  local.set $15
  local.get $0
  i32.const 7728
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1014
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 3
  i32.const 18
  i32.const 7776
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $12
  i32.load offset=4
  local.get $12
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<u64>
  local.tee $0
  local.set $21
  local.get $0
  i32.const 7824
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1015
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 3
  i32.const 22
  i32.const 7888
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $13
  i32.load offset=4
  local.get $13
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<i64>
  local.tee $0
  local.set $22
  local.get $0
  i32.const 7936
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1016
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7
  i32.const 2
  i32.const 15
  i32.const 8048
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $23
  call $~lib/array/Array<~lib/string/String | null>#toString
  local.tee $26
  i32.const 8096
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1020
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 2
  i32.const 15
  i32.const 8208
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $27
  call $~lib/array/Array<~lib/string/String | null>#toString
  local.tee $28
  i32.const 8240
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1021
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 12
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.load offset=4
  local.tee $2
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 8272
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $29
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 8304
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $30
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<i32>>
  local.tee $2
  local.set $31
  local.get $2
  i32.const 8336
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1024
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 23
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.tee $3
  i32.const 2
  i32.const 0
  i32.const 6
  i32.const 8368
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $32
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  i32.const 2
  i32.const 0
  i32.const 6
  i32.const 8400
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $33
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $2
  i32.load offset=4
  local.get $2
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<u8>>
  local.tee $3
  local.set $34
  local.get $3
  i32.const 8336
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1027
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 25
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.const 24
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $14
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.const 7
  i32.const 8432
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $35
  call $~lib/rt/pure/__retain
  i32.store
  local.get $14
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  i32.load offset=4
  local.get $3
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<~lib/array/Array<u32>>>
  local.tee $24
  local.set $36
  local.get $24
  i32.const 7184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 1030
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $26
  call $~lib/rt/pure/__release
  local.get $27
  call $~lib/rt/pure/__release
  local.get $28
  call $~lib/rt/pure/__release
  local.get $29
  call $~lib/rt/pure/__release
  local.get $30
  call $~lib/rt/pure/__release
  local.get $31
  call $~lib/rt/pure/__release
  local.get $32
  call $~lib/rt/pure/__release
  local.get $33
  call $~lib/rt/pure/__release
  local.get $34
  call $~lib/rt/pure/__release
  local.get $35
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $36
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~start (; 203 ;)
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:std/array
 )
 (func $~lib/rt/pure/__visit (; 204 ;) (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 8660
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $0
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        local.get $1
        i32.const 1
        i32.ne
        if
         local.get $1
         i32.const 2
         i32.sub
         br_table $case1|0 $case2|0 $case3|0 $case4|0 $case5|0
        end
        local.get $0
        call $~lib/rt/pure/decrement
        br $break|0
       end
       local.get $0
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.le_u
       if
        i32.const 0
        i32.const 256
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       local.get $0
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $0
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $0
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const -268435456
     i32.and
     local.get $1
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 256
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $1
     i32.const 1879048192
     i32.and
     if
      local.get $0
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $0
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.const 256
   i32.const 97
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/array/Array<std/array/Ref>#__visit_impl (; 205 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $0
  loop $while-continue|0
   local.get $2
   local.get $0
   i32.lt_u
   if
    local.get $2
    i32.load
    local.tee $3
    if
     local.get $3
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/__visit_members (; 206 ;) (param $0 i32) (param $1 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$27
     block $switch$1$case$26
      block $switch$1$case$25
       block $switch$1$case$18
        block $switch$1$case$17
         block $switch$1$case$16
          block $switch$1$case$14
           block $switch$1$case$13
            block $switch$1$case$10
             block $switch$1$case$2
              local.get $0
              i32.const 8
              i32.sub
              i32.load
              br_table $switch$1$case$2 $switch$1$case$2 $block$4$break $block$4$break $switch$1$case$2 $block$4$break $block$4$break $block$4$break $switch$1$case$10 $block$4$break $block$4$break $switch$1$case$13 $switch$1$case$14 $switch$1$case$2 $switch$1$case$16 $switch$1$case$17 $switch$1$case$18 $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $switch$1$case$25 $switch$1$case$26 $switch$1$case$27 $switch$1$default
             end
             return
            end
            local.get $0
            local.get $1
            call $~lib/array/Array<std/array/Ref>#__visit_impl
            br $block$4$break
           end
           local.get $0
           local.get $1
           call $~lib/array/Array<std/array/Ref>#__visit_impl
           br $block$4$break
          end
          local.get $0
          local.get $1
          call $~lib/array/Array<std/array/Ref>#__visit_impl
          br $block$4$break
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<std/array/Ref>#__visit_impl
         br $block$4$break
        end
        local.get $0
        local.get $1
        call $~lib/array/Array<std/array/Ref>#__visit_impl
        br $block$4$break
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<std/array/Ref>#__visit_impl
       br $block$4$break
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<std/array/Ref>#__visit_impl
      br $block$4$break
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<std/array/Ref>#__visit_impl
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<std/array/Ref>#__visit_impl
    br $block$4$break
   end
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   local.get $1
   call $~lib/rt/pure/__visit
  end
 )
)
