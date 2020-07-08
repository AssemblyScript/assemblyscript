(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_f64 (func (result f64)))
 (type $none_=>_none (func))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i64_i32_i64_i32_i64_i32_=>_i32 (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $f32_f32_=>_i32 (func (param f32 f32) (result i32)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_i32_i32_=>_f32 (func (param i32 i32 i32) (result f32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "onrealloc" (func $~lib/rt/rtrace/onrealloc (param i32 i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (memory $0 1)
 (data (i32.const 1024) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1072) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1120) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1168) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1232) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1280) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1328) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1392) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 1424) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\02\03\04\05")
 (data (i32.const 1456) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 1488) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1552) "\05\00\00\00\01\00\00\00\00\00\00\00\05")
 (data (i32.const 1584) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01")
 (data (i32.const 1616) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 1648) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 1680) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1728) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 1776) "\14\00\00\00\01\00\00\00\00\00\00\00\14")
 (data (i32.const 1824) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01")
 (data (i32.const 1872) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 1920) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 1968) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 2020) "\01")
 (data (i32.const 2036) "\01")
 (data (i32.const 2048) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2096) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2144) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2192) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05")
 (data (i32.const 2240) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2288) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 2336) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2384) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2432) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2480) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2528) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2576) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2624) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2672) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 2720) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2768) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2816) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2864) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2912) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2960) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3008) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3056) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 3104) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3152) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 3200) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\00\00\c0\7f")
 (data (i32.const 3232) "\08\00\00\00\01\00\00\00\00\00\00\00\08")
 (data (i32.const 3254) "\f8\7f")
 (data (i32.const 3264) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\00\00\c0\7f")
 (data (i32.const 3296) "\08\00\00\00\01\00\00\00\00\00\00\00\08")
 (data (i32.const 3318) "\f8\7f")
 (data (i32.const 3328) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3376) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3428) "\01")
 (data (i32.const 3440) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3492) "\01")
 (data (i32.const 3504) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3552) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3600) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3632) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 3664) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3712) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\03\00\00\00\04")
 (data (i32.const 3744) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\05")
 (data (i32.const 3776) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3824) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 3856) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3888) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3936) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\05")
 (data (i32.const 3968) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04")
 (data (i32.const 4000) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4048) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\05")
 (data (i32.const 4080) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4112) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4160) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\04")
 (data (i32.const 4192) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05")
 (data (i32.const 4224) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4272) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 4304) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4336) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4388) "\01")
 (data (i32.const 4400) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4448) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4500) "\01")
 (data (i32.const 4512) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4560) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4612) "\01")
 (data (i32.const 4624) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4672) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4724) "\01")
 (data (i32.const 4736) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4784) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4836) "\01")
 (data (i32.const 4848) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4900) "\01")
 (data (i32.const 4912) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 5024) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 5072) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 5120) "\ac\00\00\00\01\00\00\00\01\00\00\00\ac\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?")
 (data (i32.const 5312) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 5360) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 5408) "@\00\00\00\01\00\00\00\00\00\00\00@")
 (data (i32.const 5430) "\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?")
 (data (i32.const 5470) "\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 5488) "@\00\00\00\01\00\00\00\00\00\00\00@")
 (data (i32.const 5510) "\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf")
 (data (i32.const 5542) "\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 5568) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 5616) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02")
 (data (i32.const 5664) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 5712) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 5764) "\01")
 (data (i32.const 5776) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 5808) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\02\00\00\00\01")
 (data (i32.const 5840) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\03\00\00\00\02\00\00\00\01")
 (data (i32.const 5872) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 5904) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 5936) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 5968) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 6000) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b")
 (data (i32.const 6032) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 6064) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00b\00a")
 (data (i32.const 6100) "\01\00\00\00\01")
 (data (i32.const 6112) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\00`\17\00\00\80\17\00\00`\17\00\00\a0\17\00\00\c0\17\00\00\e0\17")
 (data (i32.const 6160) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\00\e0\17\00\00`\17\00\00`\17\00\00\a0\17\00\00\80\17\00\00\c0\17")
 (data (i32.const 6208) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 6240) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\01")
 (data (i32.const 6272) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 6304) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 6336) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,")
 (data (i32.const 6368) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e")
 (data (i32.const 6416) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 6448) "d\00\00\00\01\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 6576) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 6640) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 6672) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 6768) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\001\00-\002\00-\003")
 (data (i32.const 6800) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 6832) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-")
 (data (i32.const 6864) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 6896) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00_\00_")
 (data (i32.const 6928) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 6992) "0\00\00\00\01\00\00\00\00\00\00\000")
 (data (i32.const 7022) "\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 7056) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00,\00 ")
 (data (i32.const 7088) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 7120) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 7152) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 7200) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 7232) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 7928) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 8104) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 8144) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 8240) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001")
 (data (i32.const 8272) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\e0\17\00\00@ ")
 (data (i32.const 8304) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 8352) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 8432) ">\00\00\00\01\00\00\00\01\00\00\00>\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 8516) "\01")
 (data (i32.const 8528) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 8560) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 8592) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 8624) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\00,\002")
 (data (i32.const 8656) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\000\00,\001\00,\002\00,\003")
 (data (i32.const 8688) "\03\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\01\ff")
 (data (i32.const 8720) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00,\00-\001\00,\000")
 (data (i32.const 8752) "\06\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\01\00\ff\ff")
 (data (i32.const 8784) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\00,\006\005\005\003\005\00,\000")
 (data (i32.const 8832) "\18\00\00\00\01\00\00\00\00\00\00\00\18\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 8880) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000")
 (data (i32.const 8944) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 8992) "T\00\00\00\01\00\00\00\01\00\00\00T\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007")
 (data (i32.const 9104) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\00\e0\17\00\00`\17\00\00`\17\00\00\a0\17\00\00\80\17\00\00\c0\17")
 (data (i32.const 9152) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,")
 (data (i32.const 9200) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\002")
 (data (i32.const 9232) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\004")
 (data (i32.const 9264) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00@ \00\00\00$\00\00\00\00\00\00 $")
 (data (i32.const 9296) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00,\002\00,\00,\004")
 (data (i32.const 9328) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 9360) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\03\00\00\00\04")
 (data (i32.const 9392) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\001\00,\002\00,\003\00,\004")
 (data (i32.const 9424) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\01\02")
 (data (i32.const 9456) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\03\04")
 (data (i32.const 9488) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01")
 (data (i32.const 9520) "\04\00\00\00\01\00\00\00\00\00\00\00\04")
 (data (i32.const 9552) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 9584) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\04\00\00\00\05\00\00\00\06")
 (data (i32.const 9616) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 9648) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00o\00n\00e")
 (data (i32.const 9680) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\c0%")
 (data (i32.const 9712) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00t\00w\00o")
 (data (i32.const 9744) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00t\00h\00r\00e\00e")
 (data (i32.const 9776) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00&\00\00\00\00\00\00 &")
 (data (i32.const 9808) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00f\00o\00u\00r")
 (data (i32.const 9840) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00f\00i\00v\00e")
 (data (i32.const 9872) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00i\00x")
 (data (i32.const 9904) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00`&\00\00\80&\00\00\a0&")
 (data (i32.const 9936) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00s\00e\00v\00e\00n")
 (data (i32.const 9968) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\e0&")
 (data (i32.const 10000) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\c0%\00\00\00&\00\00\00\00\00\00 &\00\00`&\00\00\80&\00\00\a0&\00\00\e0&")
 (data (i32.const 10052) "\01")
 (data (i32.const 10068) "\01")
 (data (i32.const 10080) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00I\00l\00l\00e\00g\00a\00l\00 \00g\00e\00n\00e\00r\00i\00c\00 \00t\00y\00p\00e")
 (table $0 57 funcref)
 (elem (i32.const 1) $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|2 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|16 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $start:std/array~anonymous|47 $start:std/array~anonymous|48 $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
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
 (global $std/array/ArrayU32 i32 (i32.const 26))
 (global $std/array/ArrayU8 i32 (i32.const 27))
 (global $std/array/ArrayStr i32 (i32.const 28))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (export "ArrayU32" (global $std/array/ArrayU32))
 (export "ArrayU32#constructor" (func $~lib/array/Array<u32>#constructor@varargs))
 (export "ArrayU32#get:length" (func $~lib/array/Array<u8>#get:length))
 (export "ArrayU32#set:length" (func $~lib/array/Array<u32>#set:length))
 (export "ArrayU32#every" (func $~lib/array/Array<i32>#every))
 (export "ArrayU32#findIndex" (func $~lib/array/Array<i32>#findIndex))
 (export "ArrayU32#fill" (func $~lib/array/Array<u32>#fill@varargs))
 (export "ArrayU32#includes" (func $~lib/array/Array<u32>#includes@varargs))
 (export "ArrayU32#indexOf" (func $~lib/array/Array<u32>#indexOf@varargs))
 (export "ArrayU32#lastIndexOf" (func $~lib/array/Array<u32>#lastIndexOf@varargs))
 (export "ArrayU32#push" (func $~lib/array/Array<i32>#push))
 (export "ArrayU32#concat" (func $~lib/array/Array<u32>#concat))
 (export "ArrayU32#copyWithin" (func $~lib/array/Array<u32>#copyWithin@varargs))
 (export "ArrayU32#pop" (func $~lib/array/Array<i32>#pop))
 (export "ArrayU32#forEach" (func $~lib/array/Array<i32>#forEach))
 (export "ArrayU32#filter" (func $~lib/array/Array<u32>#filter))
 (export "ArrayU32#shift" (func $~lib/array/Array<i32>#shift))
 (export "ArrayU32#some" (func $~lib/array/Array<i32>#some))
 (export "ArrayU32#unshift" (func $~lib/array/Array<i32>#unshift))
 (export "ArrayU32#slice" (func $~lib/array/Array<u32>#slice@varargs))
 (export "ArrayU32#splice" (func $~lib/array/Array<u32>#splice@varargs))
 (export "ArrayU32#reverse" (func $~lib/array/Array<i32>#reverse))
 (export "ArrayU32#sort" (func $~lib/array/Array<u32>#sort@varargs))
 (export "ArrayU32#join" (func $~lib/array/Array<u32>#join@varargs))
 (export "ArrayU32#flat" (func $~lib/array/Array<u32>#flat))
 (export "ArrayU32#toString" (func $~lib/array/Array<u32>#toString))
 (export "ArrayU8" (global $std/array/ArrayU8))
 (export "ArrayU8#constructor" (func $~lib/array/Array<u8>#constructor@varargs))
 (export "ArrayU8#get:length" (func $~lib/array/Array<u8>#get:length))
 (export "ArrayU8#set:length" (func $~lib/array/Array<u8>#set:length))
 (export "ArrayU8#every" (func $~lib/array/Array<u8>#every))
 (export "ArrayU8#findIndex" (func $~lib/array/Array<u8>#findIndex))
 (export "ArrayU8#fill" (func $~lib/array/Array<u8>#fill@varargs))
 (export "ArrayU8#includes" (func $~lib/array/Array<u8>#includes@varargs))
 (export "ArrayU8#indexOf" (func $~lib/array/Array<u8>#indexOf@varargs))
 (export "ArrayU8#lastIndexOf" (func $~lib/array/Array<u8>#lastIndexOf@varargs))
 (export "ArrayU8#push" (func $~lib/array/Array<u8>#push))
 (export "ArrayU8#concat" (func $~lib/array/Array<u8>#concat))
 (export "ArrayU8#copyWithin" (func $~lib/array/Array<u8>#copyWithin@varargs))
 (export "ArrayU8#pop" (func $~lib/array/Array<u8>#pop))
 (export "ArrayU8#forEach" (func $~lib/array/Array<u8>#forEach))
 (export "ArrayU8#filter" (func $~lib/array/Array<u8>#filter))
 (export "ArrayU8#shift" (func $~lib/array/Array<u8>#shift))
 (export "ArrayU8#some" (func $~lib/array/Array<u8>#some))
 (export "ArrayU8#unshift" (func $~lib/array/Array<u8>#unshift))
 (export "ArrayU8#slice" (func $~lib/array/Array<u8>#slice@varargs))
 (export "ArrayU8#splice" (func $~lib/array/Array<u8>#splice@varargs))
 (export "ArrayU8#reverse" (func $~lib/array/Array<u8>#reverse))
 (export "ArrayU8#sort" (func $~lib/array/Array<u8>#sort@varargs))
 (export "ArrayU8#join" (func $~lib/array/Array<u8>#join@varargs))
 (export "ArrayU8#flat" (func $~lib/array/Array<u32>#flat))
 (export "ArrayU8#toString" (func $~lib/array/Array<u8>#toString))
 (export "ArrayStr" (global $std/array/ArrayStr))
 (export "ArrayStr#constructor" (func $~lib/array/Array<~lib/string/String>#constructor@varargs))
 (export "ArrayStr#get:length" (func $~lib/array/Array<u8>#get:length))
 (export "ArrayStr#set:length" (func $~lib/array/Array<std/array/Ref>#set:length))
 (export "ArrayStr#every" (func $~lib/array/Array<i32>#every))
 (export "ArrayStr#findIndex" (func $~lib/array/Array<i32>#findIndex))
 (export "ArrayStr#fill" (func $~lib/array/Array<~lib/string/String>#fill@varargs))
 (export "ArrayStr#includes" (func $~lib/array/Array<~lib/string/String>#includes@varargs))
 (export "ArrayStr#indexOf" (func $~lib/array/Array<~lib/string/String>#indexOf@varargs))
 (export "ArrayStr#lastIndexOf" (func $~lib/array/Array<~lib/string/String>#lastIndexOf@varargs))
 (export "ArrayStr#push" (func $~lib/array/Array<~lib/string/String>#push))
 (export "ArrayStr#concat" (func $~lib/array/Array<~lib/string/String>#concat))
 (export "ArrayStr#copyWithin" (func $~lib/array/Array<~lib/string/String>#copyWithin@varargs))
 (export "ArrayStr#pop" (func $~lib/array/Array<~lib/string/String>#pop))
 (export "ArrayStr#forEach" (func $~lib/array/Array<i32>#forEach))
 (export "ArrayStr#filter" (func $~lib/array/Array<~lib/string/String>#filter))
 (export "ArrayStr#shift" (func $~lib/array/Array<~lib/string/String>#shift))
 (export "ArrayStr#some" (func $~lib/array/Array<i32>#some))
 (export "ArrayStr#unshift" (func $~lib/array/Array<~lib/string/String>#unshift))
 (export "ArrayStr#slice" (func $~lib/array/Array<~lib/string/String>#slice@varargs))
 (export "ArrayStr#splice" (func $~lib/array/Array<~lib/string/String>#splice@varargs))
 (export "ArrayStr#reverse" (func $~lib/array/Array<~lib/string/String>#reverse))
 (export "ArrayStr#sort" (func $~lib/array/Array<~lib/string/String>#sort@varargs))
 (export "ArrayStr#join" (func $~lib/array/Array<~lib/string/String>#join@varargs))
 (export "ArrayStr#flat" (func $~lib/array/Array<u32>#flat))
 (export "ArrayStr#toString" (func $~lib/array/Array<~lib/string/String | null>#toString))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 10136
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 277
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
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
   i32.const 1136
   i32.const 279
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $4
   i32.const 7
   i32.sub
   local.set $4
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $4
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 292
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $3
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $3
   i32.store offset=20
  end
  local.get $3
  if
   local.get $3
   local.get $5
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $4
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
   local.get $4
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   i32.store offset=96
   local.get $3
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $3
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.set $1
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 205
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 207
   i32.const 14
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
  local.tee $5
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $3
    local.get $4
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $5
    i32.load
    local.set $2
   end
  end
  local.get $4
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $3
   i32.load
   local.tee $7
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1136
    i32.const 228
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741808
   i32.lt_u
   if (result i32)
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/removeBlock
    local.get $3
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $3
   else
    local.get $1
   end
   local.set $1
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $4
  i32.const -4
  i32.and
  local.tee $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 243
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $1
  i32.const 16
  i32.add
  i32.add
  local.get $5
  i32.ne
  if
   i32.const 0
   i32.const 1136
   i32.const 244
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 256
  i32.lt_u
  if
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $4
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $3
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $6
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 260
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $4
  i32.store offset=20
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $3
  local.get $6
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
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 1136
   i32.const 386
   i32.const 5
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
    i32.const 1136
    i32.const 396
    i32.const 16
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
    i32.const 1136
    i32.const 408
    i32.const 5
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
 (func $~lib/rt/tlsf/maybeInitialize (result i32)
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
   i32.const 10144
   local.tee $0
   i32.const 0
   i32.store
   i32.const 11712
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
     i32.const 10144
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
       i32.const 10144
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
   i32.const 10144
   i32.const 11728
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 10144
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 1184
   i32.const 1136
   i32.const 461
   i32.const 30
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
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
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
   local.get $1
   local.get $1
   i32.const 536870904
   i32.lt_u
   select
   local.tee $1
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
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1136
   i32.const 338
   i32.const 14
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
     i32.const 1136
     i32.const 351
     i32.const 18
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
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 1136
   i32.const 365
   i32.const 14
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
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
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
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 1136
   i32.const 500
   i32.const 14
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
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    i32.const 16
    memory.size
    local.tee $3
    i32.const 16
    i32.shl
    i32.const 16
    i32.sub
    local.get $0
    i32.load offset=1568
    i32.ne
    i32.shl
    local.get $4
    i32.const 1
    i32.const 27
    local.get $4
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    i32.add
    local.get $4
    local.get $4
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
    local.set $5
    local.get $3
    local.get $5
    local.get $3
    local.get $5
    i32.gt_s
    select
    memory.grow
    i32.const 0
    i32.lt_s
    if
     local.get $5
     memory.grow
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
    local.get $0
    local.get $3
    i32.const 16
    i32.shl
    memory.size
    i32.const 16
    i32.shl
    call $~lib/rt/tlsf/addMemory
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/searchBlock
    local.tee $3
    i32.eqz
    if
     i32.const 0
     i32.const 1136
     i32.const 512
     i32.const 20
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
   i32.const 1136
   i32.const 520
   i32.const 14
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
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
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
   i32.const 4
   i32.sub
   local.tee $3
   local.get $1
   i32.store8 offset=3
   local.get $2
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   local.get $1
   i32.store8 offset=1
   local.get $0
   local.get $1
   i32.store8 offset=2
   local.get $3
   local.get $1
   i32.store8 offset=2
   local.get $3
   local.get $1
   i32.store8 offset=1
   local.get $2
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   local.get $1
   i32.store8 offset=3
   local.get $3
   local.get $1
   i32.store8
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $5
   i32.add
   local.tee $3
   local.get $1
   i32.const 255
   i32.and
   i32.const 16843009
   i32.mul
   local.tee $0
   i32.store
   local.get $3
   local.get $2
   local.get $5
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   local.get $0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $3
   local.get $0
   i32.store offset=4
   local.get $3
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.store offset=16
   local.get $1
   local.get $0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $3
   local.get $0
   i32.store offset=12
   local.get $3
   local.get $0
   i32.store offset=16
   local.get $3
   local.get $0
   i32.store offset=20
   local.get $3
   local.get $0
   i32.store offset=24
   local.get $1
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.store offset=12
   local.get $3
   local.get $3
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $3
   i32.add
   local.set $1
   local.get $2
   local.get $3
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
     local.get $4
     i64.store offset=8
     local.get $1
     local.get $4
     i64.store offset=16
     local.get $1
     local.get $4
     i64.store offset=24
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
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 10136
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   i32.load offset=4
   local.tee $2
   i32.const -268435456
   i32.and
   local.get $2
   i32.const 1
   i32.add
   i32.const -268435456
   i32.and
   i32.ne
   if
    i32.const 0
    i32.const 1248
    i32.const 109
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   call $~lib/rt/rtrace/onincrement
   local.get $1
   i32.load
   i32.const 1
   i32.and
   if
    i32.const 0
    i32.const 1248
    i32.const 112
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.const 0
  i32.store
  local.get $5
  i32.const 0
  i32.store offset=4
  local.get $5
  i32.const 0
  i32.store offset=8
  local.get $5
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 1040
   i32.const 1088
   i32.const 57
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  i32.const 0
  local.get $4
  call $~lib/memory/memory.fill
  local.get $2
  local.set $1
  local.get $2
  local.get $5
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $5
  local.get $1
  i32.store
  local.get $5
  local.get $2
  i32.store offset=4
  local.get $5
  local.get $4
  i32.store offset=8
  local.get $5
  local.get $0
  i32.store offset=12
  local.get $5
 )
 (func $~lib/array/Array.isArray<~lib/array/Array<i32> | null> (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 0
  i32.ne
 )
 (func $std/array/Ref#constructor (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
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
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
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
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
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
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/__allocArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  local.set $5
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $3
  if
   local.get $4
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $3
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/array/Array<u8>#fill (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<u8>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1504
   i32.const 1088
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $std/array/isArraysEqual<u8> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  block $folding-inner1
   block $folding-inner0
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $1
    i32.load offset=12
    i32.ne
    br_if $folding-inner0
    local.get $0
    local.get $1
    i32.eq
    br_if $folding-inner1
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
      br_if $folding-inner0
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|0
     end
    end
    br $folding-inner1
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 0
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 1
 )
 (func $~lib/array/Array<u32>#fill (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<u32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1504
   i32.const 1088
   i32.const 104
   i32.const 42
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
 (func $std/array/isArraysEqual<u32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  block $folding-inner1
   block $folding-inner0
    local.get $2
    i32.eqz
    if
     local.get $0
     i32.load offset=12
     local.tee $2
     local.get $1
     i32.load offset=12
     i32.ne
     br_if $folding-inner0
     local.get $0
     local.get $1
     i32.eq
     br_if $folding-inner1
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
      br_if $folding-inner0
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|0
     end
    end
    br $folding-inner1
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 0
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 1
 )
 (func $std/array/internalCapacity<i32> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.load
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 2
  i32.shr_s
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
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
   i32.const 1136
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
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
 (func $~lib/rt/tlsf/reallocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 10136
  i32.ge_u
  if
   local.get $1
   local.get $3
   call $~lib/rt/rtrace/onrealloc
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $3
 )
 (func $~lib/array/ensureSize (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 1040
    i32.const 1088
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   call $~lib/rt/tlsf/maybeInitialize
   local.get $4
   call $~lib/rt/tlsf/checkUsedBlock
   local.get $1
   local.get $2
   i32.shl
   local.tee $2
   call $~lib/rt/tlsf/reallocateBlock
   i32.const 16
   i32.add
   local.tee $1
   local.get $3
   i32.add
   i32.const 0
   local.get $2
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $4
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
   local.get $2
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i32>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/array/Array<i32>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 1984
   i32.const 1088
   i32.const 300
   i32.const 21
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
 (func $~lib/array/Array<std/array/Ref>#set:length (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $1
  i32.gt_s
  if
   local.get $0
   i32.load offset=4
   local.tee $4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.set $3
   local.get $4
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   local.set $2
   loop $do-continue|0
    local.get $3
    i32.load
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 4
    i32.add
    local.tee $3
    local.get $2
    i32.lt_u
    br_if $do-continue|0
   end
  else
   local.get $0
   local.get $1
   i32.const 2
   call $~lib/array/ensureSize
  end
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<i32>#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
   i32.const 1040
   i32.const 1088
   i32.const 229
   i32.const 60
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
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<i32>#copyWithin (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<i32>#unshift (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
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
  local.get $2
 )
 (func $~lib/array/Array<i32>#shift (param $0 i32) (result i32)
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
   i32.const 1984
   i32.const 1088
   i32.const 361
   i32.const 21
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
 (func $~lib/array/Array<i32>#reverse (param $0 i32) (result i32)
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
 (func $~lib/array/Array<i32>#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#includes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#splice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<std/array/Ref>#splice (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<std/array/Ref>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<std/array/Ref>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1504
   i32.const 1088
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Ref>#__uget
  local.tee $0
  i32.eqz
  if
   i32.const 4928
   i32.const 1088
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<std/array/Ref | null>#splice (param $0 i32) (result i32)
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
 (func $~lib/array/Array<std/array/Ref | null>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1504
   i32.const 1088
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Ref>#__uget
 )
 (func $~lib/array/Array<i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 1504
    i32.const 1088
    i32.const 120
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 2
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
 (func $start:std/array~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
 )
 (func $~lib/array/Array<i32>#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $4
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
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.const 3
    global.set $~argumentsLength
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
 (func $start:std/array~anonymous|1 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.eq
 )
 (func $start:std/array~anonymous|2 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|3 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|5 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/array/Array<i32>#pop
  drop
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|6 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $4
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
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.const 3
    global.set $~argumentsLength
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
 (func $start:std/array~anonymous|7 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.le_s
 )
 (func $start:std/array~anonymous|8 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|9 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|10 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/array/Array<i32>#pop
  drop
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 3
  i32.lt_s
 )
 (func $start:std/array~anonymous|11 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 3
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $4
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
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.const 3
    global.set $~argumentsLength
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
 (func $start:std/array~anonymous|12 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const -1
  i32.le_s
 )
 (func $start:std/array~anonymous|13 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|14 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|15 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/array/Array<i32>#pop
  drop
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 3
  i32.gt_s
 )
 (func $start:std/array~anonymous|16 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<i32>#forEach (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $4
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
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.const 3
    global.set $~argumentsLength
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
 (func $start:std/array~anonymous|17 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|19 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|20 (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
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
     drop
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
     drop
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
    i32.const 1296
    i32.const 633
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|21 (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  f32.convert_i32_s
 )
 (func $~lib/array/Array<f32>#__get (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1504
   i32.const 1088
   i32.const 104
   i32.const 42
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
 (func $start:std/array~anonymous|22 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/array/Array<i32>#map<i32> (param $0 i32) (param $1 i32) (result i32)
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
    local.get $2
    i32.const 2
    i32.shl
    local.tee $3
    local.get $0
    i32.load offset=4
    i32.add
    i32.load
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $3
    local.get $6
    i32.add
    local.get $7
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i32_i32_i32_=>_i32)
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
 (func $start:std/array~anonymous|23 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $start:std/array~anonymous|24 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $start:std/array~anonymous|25 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#filter (param $0 i32) (param $1 i32) (result i32)
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
     drop
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
 (func $start:std/array~anonymous|26 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|27 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|28 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|29 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduce<i32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $3
   local.get $5
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $5
   local.get $4
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $0
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $4
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $4
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
 (func $start:std/array~anonymous|31 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 1
  local.get $1
  i32.const 2
  i32.gt_s
  local.get $0
  select
 )
 (func $start:std/array~anonymous|32 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 1
  local.get $1
  i32.const 100
  i32.gt_s
  local.get $0
  select
 )
 (func $start:std/array~anonymous|33 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|35 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    local.get $0
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $4
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $4
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
 (func $~lib/math/murmurHash3 (param $0 i64) (result i64)
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
 (func $~lib/math/splitMix32 (param $0 i32) (result i32)
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
 (func $~lib/math/NativeMath.seedRandom (param $0 i64)
  (local $1 i32)
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
   i32.const 5088
   i32.const 1398
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/util/sort/insertionSort<f32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
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
    f32.load
    local.set $5
    local.get $4
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
       local.set $6
       i32.const 2
       global.set $~argumentsLength
       local.get $5
       local.get $6
       call $~lib/util/sort/COMPARATOR<f32>~anonymous|0
       i32.const 0
       i32.ge_s
       br_if $while-break|1
       local.get $2
       local.tee $3
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.get $3
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
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
    local.get $5
    f32.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/weakHeapSort<f32> (param $0 i32) (param $1 i32)
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
  i32.shr_u
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
     i32.shr_u
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
     i32.shr_u
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
     i32.shr_u
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
       i32.shr_u
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
  call $~lib/rt/tlsf/maybeInitialize
  local.get $5
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
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
 (func $~lib/util/sort/COMPARATOR<f32>~anonymous|0 (param $0 f32) (param $1 f32) (result i32)
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
 (func $std/array/isArraysEqual<f32> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  block $folding-inner1
   block $folding-inner0
    local.get $0
    i32.load offset=12
    local.tee $4
    local.get $1
    i32.load offset=12
    i32.ne
    br_if $folding-inner0
    local.get $0
    local.get $1
    i32.eq
    br_if $folding-inner1
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
       br_if $folding-inner0
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|0
     end
    end
    br $folding-inner1
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 0
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 1
 )
 (func $~lib/util/sort/insertionSort<f64> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  loop $for-loop|0
   local.get $4
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $5
    local.get $4
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
       local.set $6
       i32.const 2
       global.set $~argumentsLength
       local.get $5
       local.get $6
       call $~lib/util/sort/COMPARATOR<f64>~anonymous|0
       i32.const 0
       i32.ge_s
       br_if $while-break|1
       local.get $2
       local.tee $3
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.get $3
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       i32.add
       local.get $6
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
    local.get $5
    f64.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/weakHeapSort<f64> (param $0 i32) (param $1 i32)
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
  i32.shr_u
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
     i32.shr_u
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
     i32.shr_u
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
     i32.shr_u
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
       i32.shr_u
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
  call $~lib/rt/tlsf/maybeInitialize
  local.get $5
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
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
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/array/Array<f64>#__get (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1504
   i32.const 1088
   i32.const 104
   i32.const 42
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
 (func $std/array/isArraysEqual<f64> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  block $folding-inner1
   block $folding-inner0
    local.get $0
    i32.load offset=12
    local.tee $4
    local.get $1
    i32.load offset=12
    i32.ne
    br_if $folding-inner0
    local.get $0
    local.get $1
    i32.eq
    br_if $folding-inner1
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
       br_if $folding-inner0
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|0
     end
    end
    br $folding-inner1
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 0
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 1
 )
 (func $~lib/util/sort/insertionSort<i32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  loop $for-loop|0
   local.get $5
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $6
    local.get $5
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
       local.set $7
       i32.const 2
       global.set $~argumentsLength
       local.get $6
       local.get $7
       local.get $2
       call_indirect (type $i32_i32_=>_i32)
       i32.const 0
       i32.ge_s
       br_if $while-break|1
       local.get $3
       local.tee $4
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.get $4
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $7
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
    local.get $6
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/weakHeapSort<i32> (param $0 i32) (param $1 i32) (param $2 i32)
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
  i32.shr_u
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
     i32.shr_u
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
     i32.shr_u
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
     i32.shr_u
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
       i32.shr_u
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
  call $~lib/rt/tlsf/maybeInitialize
  local.get $5
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
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
 (func $~lib/array/Array<i32>#sort (param $0 i32) (param $1 i32) (result i32)
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
  local.set $4
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $4
   i32.load offset=4
   local.set $2
   local.get $4
   i32.load
   local.set $3
   i32.const 2
   global.set $~argumentsLength
   local.get $2
   local.get $3
   local.get $1
   call_indirect (type $i32_i32_=>_i32)
   i32.const 0
   i32.lt_s
   if
    local.get $4
    local.get $3
    i32.store offset=4
    local.get $4
    local.get $2
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $2
  local.tee $3
  i32.const 256
  i32.lt_s
  if
   local.get $4
   local.get $3
   local.get $1
   call $~lib/util/sort/insertionSort<i32>
  else
   local.get $4
   local.get $3
   local.get $1
   call $~lib/util/sort/weakHeapSort<i32>
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/util/sort/COMPARATOR<u32>~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $~lib/array/Array<u32>#sort@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 47
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
 )
 (func $std/array/createReverseOrderedArray (param $0 i32) (result i32)
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
 (func $~lib/math/NativeMath.random (result f64)
  (local $0 i64)
  (local $1 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   call $~lib/math/NativeMath.seedRandom
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
 (func $std/array/createRandomOrderedArray (param $0 i32) (result i32)
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
 (func $std/array/assertSorted<i32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $__inlined_func$std/array/isSorted<i32> (result i32)
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $3
   local.get $1
   call $~lib/array/Array<i32>#sort
   local.tee $4
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=12
   local.set $5
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $0
     local.get $2
     i32.const 1
     i32.sub
     call $~lib/array/Array<u32>#__get
     local.get $0
     local.get $2
     call $~lib/array/Array<u32>#__get
     i32.const 2
     global.set $~argumentsLength
     local.get $1
     call_indirect (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     if
      local.get $0
      call $~lib/rt/pure/__release
      i32.const 0
      br $__inlined_func$std/array/isSorted<i32>
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 895
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/array/assertSortedDefault<i32> (param $0 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 48
  call $std/array/assertSorted<i32>
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|44 (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1504
    i32.const 1088
    i32.const 120
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 2
   call $~lib/array/ensureSize
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $3
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  i32.load
  local.tee $1
  i32.ne
  if
   local.get $0
   local.get $3
   call $~lib/rt/pure/__retain
   i32.store
   local.get $1
   call $~lib/rt/pure/__release
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/array/createReverseOrderedNestedArray (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 16
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.store offset=8
  local.get $4
  i32.const 0
  i32.store offset=12
  i32.const 8
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  i32.const 0
  i32.const 8
  call $~lib/memory/memory.fill
  local.get $1
  local.set $0
  local.get $1
  local.get $4
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $0
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.get $0
  i32.store
  local.get $4
  local.get $1
  i32.store offset=4
  local.get $4
  i32.const 8
  i32.store offset=8
  local.get $4
  i32.const 2
  i32.store offset=12
  loop $for-loop|0
   local.get $3
   i32.const 2
   i32.lt_s
   if
    i32.const 1
    call $~lib/array/Array<i32>#constructor
    local.tee $1
    i32.const 0
    i32.const 1
    local.get $3
    i32.sub
    call $~lib/array/Array<i32>#__set
    local.get $4
    local.get $3
    local.get $1
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $4
 )
 (func $start:std/array~anonymous|47 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.const 0
  call $~lib/array/Array<u32>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.sub
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/sort/insertionSort<~lib/array/Array<i32>> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
    call $~lib/rt/pure/__retain
    local.set $6
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
       call $~lib/rt/pure/__retain
       local.set $5
       i32.const 2
       global.set $~argumentsLength
       local.get $6
       local.get $5
       local.get $2
       call_indirect (type $i32_i32_=>_i32)
       i32.const 0
       i32.lt_s
       if (result i32)
        local.get $0
        local.get $3
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        local.get $5
        i32.store
        local.get $3
        i32.const 1
        i32.sub
       else
        local.get $5
        call $~lib/rt/pure/__release
        br $while-break|1
       end
       local.set $3
       local.get $5
       call $~lib/rt/pure/__release
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
    local.get $6
    i32.store
    local.get $6
    call $~lib/rt/pure/__release
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#sort (param $0 i32) (param $1 i32) (result i32)
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
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   i32.load
   call $~lib/rt/pure/__retain
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
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   return
  end
  local.get $3
  local.get $2
  local.get $1
  call $~lib/util/sort/insertionSort<~lib/array/Array<i32>>
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $std/array/assertSorted<~lib/array/Array<i32>> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $__inlined_func$std/array/isSorted<~lib/array/Array<i32>> (result i32)
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $5
   local.get $1
   call $~lib/array/Array<~lib/array/Array<i32>>#sort
   local.tee $6
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=12
   local.set $7
   loop $for-loop|0
    local.get $2
    local.get $7
    i32.lt_s
    if
     local.get $0
     local.get $2
     i32.const 1
     i32.sub
     call $~lib/array/Array<std/array/Ref>#__get
     local.set $3
     local.get $0
     local.get $2
     call $~lib/array/Array<std/array/Ref>#__get
     local.set $4
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     local.get $4
     local.get $1
     call_indirect (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     if
      local.get $0
      call $~lib/rt/pure/__release
      local.get $3
      call $~lib/rt/pure/__release
      local.get $4
      call $~lib/rt/pure/__release
      i32.const 0
      br $__inlined_func$std/array/isSorted<~lib/array/Array<i32>>
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
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 895
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $std/array/createReverseOrderedElementsArray (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 16
  i32.const 14
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.store offset=8
  local.get $4
  i32.const 0
  i32.store offset=12
  i32.const 2048
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  i32.const 0
  i32.const 2048
  call $~lib/memory/memory.fill
  local.get $1
  local.set $0
  local.get $1
  local.get $4
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $0
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.get $0
  i32.store
  local.get $4
  local.get $1
  i32.store offset=4
  local.get $4
  i32.const 2048
  i32.store offset=8
  local.get $4
  i32.const 512
  i32.store offset=12
  loop $for-loop|0
   local.get $3
   i32.const 512
   i32.lt_s
   if
    i32.const 4
    i32.const 13
    call $~lib/rt/tlsf/__alloc
    call $~lib/rt/pure/__retain
    local.tee $1
    i32.const 511
    local.get $3
    i32.sub
    i32.store
    local.get $4
    local.get $3
    local.get $1
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $4
 )
 (func $start:std/array~anonymous|48 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  local.tee $3
  i32.const 7
  i32.and
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $5
  local.tee $1
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
    local.get $3
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $3
     i32.const 8
     i32.add
     local.set $3
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
   local.tee $0
   i32.const 1
   i32.sub
   local.set $2
   local.get $0
   if
    local.get $3
    i32.load16_u
    local.tee $0
    local.get $1
    i32.load16_u
    local.tee $6
    i32.ne
    if
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $0
     local.get $6
     i32.sub
     return
    end
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|1
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.eqz
   end
   if (result i32)
    i32.const 1
   else
    local.get $1
    i32.eqz
   end
   br_if $folding-inner0
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
   br_if $folding-inner0
   local.get $2
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    i32.const -1
    return
   end
   local.get $3
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
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
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.eq
  if
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $std/array/isArraysEqual<~lib/string/String | null> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $5
  local.get $1
  i32.load offset=12
  i32.ne
  if
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  i32.eq
  if
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
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
    local.set $3
    local.get $1
    local.get $2
    call $~lib/array/Array<std/array/Ref | null>#__get
    local.set $4
    local.get $3
    call $~lib/rt/pure/__retain
    local.tee $6
    local.get $4
    call $~lib/rt/pure/__retain
    local.tee $7
    call $~lib/string/String.__eq
    i32.eqz
    local.get $6
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    if
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
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
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 1
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 16
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
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 268435452
  i32.gt_u
  if
   i32.const 1040
   i32.const 1088
   i32.const 57
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  i32.const 0
  local.get $4
  call $~lib/memory/memory.fill
  local.get $2
  local.set $3
  local.get $2
  local.get $0
  i32.load
  local.tee $5
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $4
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $__inlined_func$~lib/string/String#concat (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.const 6224
   local.get $2
   select
   local.set $3
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $5
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.eqz
   if
    local.get $0
    i32.const 6224
    i32.ne
    if
     local.get $0
     call $~lib/rt/pure/__release
    end
    i32.const 6224
    local.set $0
   end
   local.get $3
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $4
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.tee $6
   i32.add
   local.tee $1
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const 6112
    br $__inlined_func$~lib/string/String#concat
   end
   local.get $1
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $3
   local.get $4
   call $~lib/memory/memory.copy
   local.get $1
   local.get $4
   i32.add
   local.get $0
   local.get $6
   call $~lib/memory/memory.copy
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 6112
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
 (func $~lib/util/string/joinBooleanArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 6352
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   local.get $3
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $4
  i32.eqz
  if
   i32.const 6288
   i32.const 6320
   local.get $0
   i32.load8_u
   select
   call $~lib/rt/pure/__retain
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $4
  local.get $3
  call $~lib/string/String#get:length
  local.tee $5
  i32.const 5
  i32.add
  i32.mul
  i32.const 5
  i32.add
  local.tee $8
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|1
   local.get $6
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $6
    i32.add
    i32.load8_u
    local.tee $9
    i32.eqz
    i32.const 4
    i32.add
    local.set $7
    local.get $1
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 6288
    i32.const 6320
    local.get $9
    select
    local.get $7
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $2
    local.get $7
    i32.add
    local.set $2
    local.get $5
    if
     local.get $1
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.get $3
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $2
     local.get $5
     i32.add
     local.set $2
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  local.get $0
  local.get $4
  i32.add
  i32.load8_u
  local.tee $4
  i32.eqz
  i32.const 4
  i32.add
  local.set $0
  local.get $1
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  i32.const 6288
  i32.const 6320
  local.get $4
  select
  local.get $0
  i32.const 1
  i32.shl
  call $~lib/memory/memory.copy
  local.get $8
  local.get $0
  local.get $2
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 10
  i32.ge_u
  i32.const 1
  i32.add
  local.get $0
  i32.const 10000
  i32.ge_u
  i32.const 3
  i32.add
  local.get $0
  i32.const 1000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 100
  i32.lt_u
  select
  local.get $0
  i32.const 1000000
  i32.ge_u
  i32.const 6
  i32.add
  local.get $0
  i32.const 1000000000
  i32.ge_u
  i32.const 8
  i32.add
  local.get $0
  i32.const 100000000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $do-continue|0
   local.get $1
   i32.const 10
   i32.rem_u
   local.set $3
   local.get $1
   i32.const 10
   i32.div_u
   local.set $1
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $3
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   br_if $do-continue|0
  end
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 6656
   return
  end
  local.get $0
  i32.const 31
  i32.shr_u
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
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa_buffered<i32> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.tee $2
  if
   local.get $0
   i32.const 45
   i32.store16
   i32.const 0
   local.get $1
   i32.sub
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.lt_u
  if
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 48
   i32.or
   i32.store16
   local.get $2
   i32.const 1
   i32.add
   return
  end
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/number/decimalCount32
  local.get $2
  i32.add
  local.tee $0
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $0
 )
 (func $~lib/util/string/joinIntegerArray<i32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load
   call $~lib/util/number/itoa32
   local.get $2
   call $~lib/rt/pure/__release
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
  local.set $1
  loop $for-loop|0
   local.get $6
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/util/number/itoa_buffered<i32>
    local.get $3
    i32.add
    local.set $3
    local.get $5
    if
     local.get $1
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $3
     local.get $5
     i32.add
     local.set $3
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $7
  local.get $1
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/util/number/itoa_buffered<i32>
  local.get $3
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<i32>#join (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinIntegerArray<i32>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 6656
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
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa_buffered<u32> (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 10
  i32.lt_u
  if
   local.get $0
   local.get $1
   i32.const 48
   i32.or
   i32.store16
   i32.const 1
   return
  end
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/number/decimalCount32
  local.tee $0
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $0
 )
 (func $~lib/util/string/joinIntegerArray<u32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load
   call $~lib/util/number/utoa32
   local.get $2
   call $~lib/rt/pure/__release
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
  local.set $1
  loop $for-loop|0
   local.get $6
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/util/number/itoa_buffered<u32>
    local.get $3
    i32.add
    local.set $3
    local.get $5
    if
     local.get $1
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $3
     local.get $5
     i32.add
     local.set $3
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $7
  local.get $1
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/util/number/itoa_buffered<u32>
  local.get $3
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<u32>#join (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinIntegerArray<u32>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/genDigits (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
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
  local.tee $12
  i64.and
  local.set $8
  local.get $3
  local.get $10
  i64.extend_i32_s
  i64.shr_u
  i32.wrap_i64
  local.tee $7
  call $~lib/util/number/decimalCount32
  local.set $4
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
               local.tee $2
               i32.const 10
               i32.ne
               if
                local.get $2
                i32.const 1
                i32.sub
                br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $case1|1 $case10|1
               end
               local.get $7
               i32.const 1000000000
               i32.div_u
               local.set $2
               local.get $7
               i32.const 1000000000
               i32.rem_u
               local.set $7
               br $break|1
              end
              local.get $7
              i32.const 100000000
              i32.div_u
              local.set $2
              local.get $7
              i32.const 100000000
              i32.rem_u
              local.set $7
              br $break|1
             end
             local.get $7
             i32.const 10000000
             i32.div_u
             local.set $2
             local.get $7
             i32.const 10000000
             i32.rem_u
             local.set $7
             br $break|1
            end
            local.get $7
            i32.const 1000000
            i32.div_u
            local.set $2
            local.get $7
            i32.const 1000000
            i32.rem_u
            local.set $7
            br $break|1
           end
           local.get $7
           i32.const 100000
           i32.div_u
           local.set $2
           local.get $7
           i32.const 100000
           i32.rem_u
           local.set $7
           br $break|1
          end
          local.get $7
          i32.const 10000
          i32.div_u
          local.set $2
          local.get $7
          i32.const 10000
          i32.rem_u
          local.set $7
          br $break|1
         end
         local.get $7
         i32.const 1000
         i32.div_u
         local.set $2
         local.get $7
         i32.const 1000
         i32.rem_u
         local.set $7
         br $break|1
        end
        local.get $7
        i32.const 100
        i32.div_u
        local.set $2
        local.get $7
        i32.const 100
        i32.rem_u
        local.set $7
        br $break|1
       end
       local.get $7
       i32.const 10
       i32.div_u
       local.set $2
       local.get $7
       i32.const 10
       i32.rem_u
       local.set $7
       br $break|1
      end
      local.get $7
      local.set $2
      i32.const 0
      local.set $7
      br $break|1
     end
     i32.const 0
     local.set $2
    end
    local.get $2
    local.get $6
    i32.or
    if
     local.get $0
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     i32.const 65535
     i32.and
     i32.const 48
     i32.add
     i32.store16
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    local.get $8
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
     local.get $4
     i32.const 2
     i32.shl
     i32.const 8104
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
  local.get $10
  i64.extend_i32_s
  local.set $13
  loop $while-continue|4 (result i32)
   local.get $5
   i64.const 10
   i64.mul
   local.set $5
   local.get $8
   i64.const 10
   i64.mul
   local.tee $3
   local.get $13
   i64.shr_u
   local.tee $1
   local.get $6
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $0
    local.get $6
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
    local.get $6
    i32.const 1
    i32.add
    local.set $6
   end
   local.get $4
   i32.const 1
   i32.sub
   local.set $4
   local.get $3
   local.get $12
   i64.and
   local.tee $8
   local.get $5
   i64.ge_u
   br_if $while-continue|4
   local.get $4
   global.get $~lib/util/number/_K
   i32.add
   global.set $~lib/util/number/_K
   local.get $8
   local.set $1
   local.get $9
   i32.const 0
   local.get $4
   i32.sub
   i32.const 2
   i32.shl
   i32.const 8104
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
 (func $~lib/util/number/prettify (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      local.tee $1
      i32.const 4
      i32.add
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
      call $~lib/util/number/utoa_dec_simple<u32>
      local.get $1
      i32.const 45
      i32.const 43
      local.get $2
      select
      i32.store16 offset=4
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
      local.tee $2
      i32.const 4
      i32.add
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
      call $~lib/util/number/utoa_dec_simple<u32>
      local.get $2
      i32.const 45
      i32.const 43
      local.get $3
      select
      i32.store16 offset=4
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
 (func $~lib/util/number/dtoa_core (param $0 i32) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  local.get $1
  f64.const 0
  f64.lt
  local.tee $8
  if (result f64)
   local.get $0
   i32.const 45
   i32.store16
   local.get $1
   f64.neg
  else
   local.get $1
  end
  i64.reinterpret_f64
  local.tee $3
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.tee $6
  i32.const 0
  i32.ne
  i64.extend_i32_u
  i64.const 52
  i64.shl
  local.get $3
  i64.const 4503599627370495
  i64.and
  i64.add
  local.tee $2
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.tee $3
  local.get $3
  i64.clz
  i32.wrap_i64
  local.tee $4
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_plus
  local.get $6
  i32.const 1
  local.get $6
  select
  i32.const 1075
  i32.sub
  local.tee $6
  i32.const 1
  i32.sub
  local.get $4
  i32.sub
  local.set $4
  local.get $2
  local.get $2
  i64.const 4503599627370496
  i64.eq
  i32.const 1
  i32.add
  local.tee $9
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $6
  local.get $9
  i32.sub
  local.get $4
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $4
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
  local.tee $4
  local.get $4
  f64.convert_i32_s
  local.get $1
  f64.ne
  i32.add
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.tee $4
  i32.const 3
  i32.shl
  local.tee $9
  i32.sub
  global.set $~lib/util/number/_K
  local.get $9
  i32.const 7232
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  local.get $4
  i32.const 1
  i32.shl
  i32.const 7928
  i32.add
  i32.load16_s
  global.set $~lib/util/number/_exp_pow
  global.get $~lib/util/number/_frc_pow
  local.tee $3
  i64.const 4294967295
  i64.and
  local.set $5
  local.get $0
  local.get $8
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $2
  local.get $2
  i64.clz
  i32.wrap_i64
  local.tee $0
  i64.extend_i32_s
  i64.shl
  local.tee $2
  i64.const 32
  i64.shr_u
  local.tee $7
  local.get $3
  i64.const 32
  i64.shr_u
  local.tee $10
  i64.mul
  local.get $5
  local.get $7
  i64.mul
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $2
  local.get $5
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $5
  i64.const 32
  i64.shr_u
  i64.add
  local.get $2
  local.get $10
  i64.mul
  local.get $5
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  global.get $~lib/util/number/_exp_pow
  local.tee $4
  local.get $6
  local.get $0
  i32.sub
  i32.add
  i32.const -64
  i32.sub
  global.get $~lib/util/number/_frc_plus
  local.tee $2
  i64.const 32
  i64.shr_u
  local.tee $5
  local.get $3
  i64.const 32
  i64.shr_u
  local.tee $7
  i64.mul
  local.get $3
  i64.const 4294967295
  i64.and
  local.tee $10
  local.get $5
  i64.mul
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $2
  local.get $10
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $5
  i64.const 32
  i64.shr_u
  i64.add
  local.get $2
  local.get $7
  i64.mul
  local.get $5
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  i64.const 1
  i64.sub
  local.tee $2
  local.get $4
  global.get $~lib/util/number/_exp
  i32.add
  i32.const -64
  i32.sub
  local.get $2
  global.get $~lib/util/number/_frc_minus
  local.tee $2
  i64.const 32
  i64.shr_u
  local.tee $5
  local.get $3
  i64.const 32
  i64.shr_u
  local.tee $7
  i64.mul
  local.get $3
  i64.const 4294967295
  i64.and
  local.tee $3
  local.get $5
  i64.mul
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $2
  local.get $3
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $3
  i64.const 32
  i64.shr_u
  i64.add
  local.get $2
  local.get $7
  i64.mul
  local.get $3
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  i64.const 1
  i64.add
  i64.sub
  local.get $8
  call $~lib/util/number/genDigits
  local.get $8
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.get $8
  i32.add
 )
 (func $~lib/util/number/dtoa_buffered (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  local.get $1
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
  local.get $1
  local.get $1
  f64.sub
  f64.const 0
  f64.ne
  if
   local.get $1
   local.get $1
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
    local.get $1
    f64.const 0
    f64.lt
    local.tee $2
    if
     local.get $0
     i32.const 45
     i32.store16
     local.get $0
     i32.const 2
     i32.add
     local.set $0
    end
    local.get $0
    i64.const 29555310648492105
    i64.store
    local.get $0
    i64.const 34058970405077102
    i64.store offset=8
    local.get $2
    i32.const 8
    i32.add
    return
   end
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/util/number/dtoa_core
 )
 (func $~lib/util/string/joinFloatArray<f64> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 7072
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  i32.lt_s
  if
   local.get $3
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $5
  i32.eqz
  if
   block $__inlined_func$~lib/util/number/dtoa
    local.get $0
    f64.load
    local.tee $4
    f64.const 0
    f64.eq
    if
     i32.const 7104
     local.set $0
     br $__inlined_func$~lib/util/number/dtoa
    end
    local.get $4
    local.get $4
    f64.sub
    f64.const 0
    f64.ne
    if
     local.get $4
     local.get $4
     f64.ne
     if
      i32.const 7136
      local.set $0
      br $__inlined_func$~lib/util/number/dtoa
     end
     i32.const 7168
     i32.const 7216
     local.get $4
     f64.const 0
     f64.lt
     select
     call $~lib/rt/pure/__retain
     local.set $0
     br $__inlined_func$~lib/util/number/dtoa
    end
    i32.const 56
    i32.const 1
    call $~lib/rt/tlsf/__alloc
    local.tee $1
    local.get $4
    call $~lib/util/number/dtoa_core
    local.tee $0
    i32.const 28
    i32.eq
    if
     local.get $1
     call $~lib/rt/pure/__retain
     local.set $0
     br $__inlined_func$~lib/util/number/dtoa
    end
    local.get $1
    local.get $0
    call $~lib/string/String#substring
    local.set $0
    call $~lib/rt/tlsf/maybeInitialize
    local.get $1
    call $~lib/rt/tlsf/checkUsedBlock
    call $~lib/rt/tlsf/freeBlock
   end
   local.get $3
   call $~lib/rt/pure/__release
   local.get $0
   return
  end
  local.get $5
  local.get $3
  call $~lib/string/String#get:length
  local.tee $6
  i32.const 28
  i32.add
  i32.mul
  i32.const 28
  i32.add
  local.tee $8
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $7
   local.get $5
   i32.lt_s
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    f64.load
    call $~lib/util/number/dtoa_buffered
    local.get $2
    i32.add
    local.set $2
    local.get $6
    if
     local.get $1
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.get $3
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $2
     local.get $6
     i32.add
     local.set $2
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  local.get $8
  local.get $1
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $5
  i32.const 3
  i32.shl
  i32.add
  f64.load
  call $~lib/util/number/dtoa_buffered
  local.get $2
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/util/string/joinReferenceArray<~lib/string/String | null> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  i32.const 1
  i32.sub
  local.tee $6
  i32.const 0
  i32.lt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $6
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
    call $~lib/rt/pure/__retain
   else
    i32.const 6112
   end
   local.get $5
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  i32.const 6112
  local.set $1
  local.get $5
  call $~lib/string/String#get:length
  local.set $8
  loop $for-loop|0
   local.get $3
   local.get $6
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
     local.get $4
     call $~lib/rt/pure/__retain
     local.tee $2
     local.get $1
     local.get $2
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $2
     local.get $1
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $1
      call $~lib/rt/pure/__release
     end
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
     local.get $2
     local.set $1
    end
    local.get $8
    if
     local.get $1
     local.tee $2
     local.get $5
     call $~lib/string/String.__concat
     local.tee $7
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
     local.get $7
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
  local.get $6
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
   local.get $2
   call $~lib/rt/pure/__retain
   local.tee $0
   local.get $1
   local.get $0
   call $~lib/string/String.__concat
   local.tee $0
   local.tee $4
   local.get $1
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $1
    call $~lib/rt/pure/__release
   end
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $4
   local.set $1
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String | null>#join (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinReferenceArray<~lib/string/String | null>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/string/joinReferenceArray<std/array/Ref | null> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 6352
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $1
  i32.const 1
  i32.sub
  local.tee $7
  i32.const 0
  i32.lt_s
  if
   local.get $8
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $7
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $2
   if
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $2
   end
   local.get $8
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 8320
   i32.const 6112
   local.get $2
   select
   return
  end
  i32.const 6112
  local.set $1
  local.get $8
  call $~lib/string/String#get:length
  local.set $5
  loop $for-loop|0
   local.get $2
   local.get $7
   i32.lt_s
   if
    local.get $4
    local.tee $3
    local.get $0
    local.get $2
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
     local.get $3
     call $~lib/rt/pure/__release
    end
    local.get $4
    if
     local.get $1
     local.get $1
     i32.const 8320
     call $~lib/string/String.__concat
     local.tee $6
     local.tee $3
     i32.ne
     if
      local.get $3
      call $~lib/rt/pure/__retain
      local.set $3
      local.get $1
      call $~lib/rt/pure/__release
     end
     local.get $6
     call $~lib/rt/pure/__release
     local.get $3
     local.set $1
    end
    local.get $5
    if
     local.get $1
     local.tee $3
     local.get $8
     call $~lib/string/String.__concat
     local.tee $6
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
     local.get $6
     call $~lib/rt/pure/__release
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $0
  local.get $7
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
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $3
  if
   local.get $1
   local.get $1
   i32.const 8320
   call $~lib/string/String.__concat
   local.tee $0
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
   local.get $4
   local.set $1
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<std/array/Ref | null>#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<std/array/Ref | null>
  i32.const 6352
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/itoa_buffered<i8> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.lt_s
  local.tee $2
  if
   local.get $0
   i32.const 45
   i32.store16
   i32.const 0
   local.get $1
   i32.sub
   local.set $1
  end
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 10
  i32.lt_u
  if
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 48
   i32.or
   i32.store16
   local.get $2
   i32.const 1
   i32.add
   return
  end
  local.get $2
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.tee $2
  call $~lib/util/number/decimalCount32
  i32.add
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $1
 )
 (func $~lib/util/string/joinIntegerArray<i8> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 6352
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   local.get $3
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load8_s
   call $~lib/util/number/itoa32
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $4
  local.get $3
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
  local.set $1
  loop $for-loop|0
   local.get $6
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.add
    i32.load8_s
    call $~lib/util/number/itoa_buffered<i8>
    local.get $2
    i32.add
    local.set $2
    local.get $5
    if
     local.get $1
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.get $3
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $2
     local.get $5
     i32.add
     local.set $2
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $7
  local.get $1
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $4
  i32.add
  i32.load8_s
  call $~lib/util/number/itoa_buffered<i8>
  local.get $2
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/util/number/itoa_buffered<u16> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 65535
  i32.and
  i32.const 10
  i32.lt_u
  if
   local.get $0
   local.get $1
   i32.const 65535
   i32.and
   i32.const 48
   i32.or
   i32.store16
   i32.const 1
   return
  end
  local.get $1
  i32.const 65535
  i32.and
  local.tee $2
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $1
 )
 (func $~lib/util/string/joinIntegerArray<u16> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 6352
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   local.get $3
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load16_u
   call $~lib/util/number/utoa32
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $4
  local.get $3
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
  local.set $1
  loop $for-loop|0
   local.get $6
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    call $~lib/util/number/itoa_buffered<u16>
    local.get $2
    i32.add
    local.set $2
    local.get $5
    if
     local.get $1
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.get $3
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $2
     local.get $5
     i32.add
     local.set $2
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $7
  local.get $1
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $4
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  call $~lib/util/number/itoa_buffered<u16>
  local.get $2
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/util/number/decimalCount64High (param $0 i64) (result i32)
  local.get $0
  i64.const 100000000000
  i64.ge_u
  i32.const 10
  i32.add
  local.get $0
  i64.const 10000000000
  i64.ge_u
  i32.add
  local.get $0
  i64.const 100000000000000
  i64.ge_u
  i32.const 13
  i32.add
  local.get $0
  i64.const 10000000000000
  i64.ge_u
  i32.add
  local.get $0
  i64.const 1000000000000
  i64.lt_u
  select
  local.get $0
  i64.const 10000000000000000
  i64.ge_u
  i32.const 16
  i32.add
  local.get $0
  i64.const -8446744073709551616
  i64.ge_u
  i32.const 18
  i32.add
  local.get $0
  i64.const 1000000000000000000
  i64.ge_u
  i32.add
  local.get $0
  i64.const 100000000000000000
  i64.lt_u
  select
  local.get $0
  i64.const 1000000000000000
  i64.lt_u
  select
 )
 (func $~lib/util/number/utoa_dec_simple<u64> (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  loop $do-continue|0
   local.get $1
   i64.const 10
   i64.rem_u
   i32.wrap_i64
   local.set $3
   local.get $1
   i64.const 10
   i64.div_u
   local.set $1
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $3
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   i64.const 0
   i64.ne
   br_if $do-continue|0
  end
 )
 (func $~lib/util/number/itoa_buffered<u64> (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i64.const 10
  i64.lt_u
  if
   local.get $0
   local.get $1
   i64.const 48
   i64.or
   i64.store16
   i32.const 1
   return
  end
  local.get $1
  i64.const 4294967295
  i64.le_u
  if
   local.get $1
   i32.wrap_i64
   local.tee $3
   call $~lib/util/number/decimalCount32
   local.set $2
   local.get $0
   local.get $3
   local.get $2
   call $~lib/util/number/utoa_dec_simple<u32>
  else
   local.get $0
   local.get $1
   local.get $1
   call $~lib/util/number/decimalCount64High
   local.tee $2
   call $~lib/util/number/utoa_dec_simple<u64>
  end
  local.get $2
 )
 (func $~lib/util/string/joinIntegerArray<u64> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 6352
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   local.get $3
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $4
  i32.eqz
  if
   block $__inlined_func$~lib/util/number/utoa64 (result i32)
    i32.const 6656
    local.get $0
    i64.load
    local.tee $5
    i64.eqz
    br_if $__inlined_func$~lib/util/number/utoa64
    drop
    local.get $5
    i64.const 4294967295
    i64.le_u
    if
     local.get $5
     i32.wrap_i64
     local.tee $1
     call $~lib/util/number/decimalCount32
     local.tee $2
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/tlsf/__alloc
     local.tee $0
     local.get $1
     local.get $2
     call $~lib/util/number/utoa_dec_simple<u32>
    else
     local.get $5
     call $~lib/util/number/decimalCount64High
     local.tee $1
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/tlsf/__alloc
     local.tee $0
     local.get $5
     local.get $1
     call $~lib/util/number/utoa_dec_simple<u64>
    end
    local.get $0
    call $~lib/rt/pure/__retain
   end
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $4
  local.get $3
  call $~lib/string/String#get:length
  local.tee $6
  i32.const 20
  i32.add
  i32.mul
  i32.const 20
  i32.add
  local.tee $8
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $7
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    i64.load
    call $~lib/util/number/itoa_buffered<u64>
    local.get $2
    i32.add
    local.set $2
    local.get $6
    if
     local.get $1
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.get $3
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $2
     local.get $6
     i32.add
     local.set $2
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  local.get $8
  local.get $1
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $4
  i32.const 3
  i32.shl
  i32.add
  i64.load
  call $~lib/util/number/itoa_buffered<u64>
  local.get $2
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/util/number/itoa_buffered<i64> (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i64.const 0
  i64.lt_s
  local.tee $2
  if
   local.get $0
   i32.const 45
   i32.store16
   i64.const 0
   local.get $1
   i64.sub
   local.set $1
  end
  local.get $1
  i64.const 10
  i64.lt_u
  if
   local.get $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i64.const 48
   i64.or
   i64.store16
   local.get $2
   i32.const 1
   i32.add
   return
  end
  local.get $1
  i64.const 4294967295
  i64.le_u
  if
   local.get $2
   local.get $1
   i32.wrap_i64
   local.tee $2
   call $~lib/util/number/decimalCount32
   i32.add
   local.set $3
   local.get $0
   local.get $2
   local.get $3
   call $~lib/util/number/utoa_dec_simple<u32>
  else
   local.get $0
   local.get $1
   local.get $1
   call $~lib/util/number/decimalCount64High
   local.get $2
   i32.add
   local.tee $3
   call $~lib/util/number/utoa_dec_simple<u64>
  end
  local.get $3
 )
 (func $~lib/util/string/joinIntegerArray<i64> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 6352
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  i32.lt_s
  if
   local.get $4
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $5
  i32.eqz
  if
   block $__inlined_func$~lib/util/number/itoa64 (result i32)
    i32.const 6656
    local.get $0
    i64.load
    i32.wrap_i64
    i64.extend_i32_s
    local.tee $3
    i64.eqz
    br_if $__inlined_func$~lib/util/number/itoa64
    drop
    local.get $3
    i64.const 63
    i64.shr_u
    i32.wrap_i64
    local.tee $0
    if
     i64.const 0
     local.get $3
     i64.sub
     local.set $3
    end
    local.get $3
    i64.const 4294967295
    i64.le_u
    if
     local.get $3
     i32.wrap_i64
     local.tee $2
     call $~lib/util/number/decimalCount32
     local.get $0
     i32.add
     local.tee $5
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/tlsf/__alloc
     local.tee $1
     local.get $2
     local.get $5
     call $~lib/util/number/utoa_dec_simple<u32>
    else
     local.get $3
     call $~lib/util/number/decimalCount64High
     local.get $0
     i32.add
     local.tee $2
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/tlsf/__alloc
     local.tee $1
     local.get $3
     local.get $2
     call $~lib/util/number/utoa_dec_simple<u64>
    end
    local.get $0
    if
     local.get $1
     i32.const 45
     i32.store16
    end
    local.get $1
    call $~lib/rt/pure/__retain
   end
   local.get $4
   call $~lib/rt/pure/__release
   return
  end
  local.get $5
  local.get $4
  call $~lib/string/String#get:length
  local.tee $6
  i32.const 21
  i32.add
  i32.mul
  i32.const 21
  i32.add
  local.tee $8
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $7
   local.get $5
   i32.lt_s
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    i64.load
    call $~lib/util/number/itoa_buffered<i64>
    local.get $2
    i32.add
    local.set $2
    local.get $6
    if
     local.get $1
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.get $4
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $2
     local.get $6
     i32.add
     local.set $2
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  local.get $8
  local.get $1
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $5
  i32.const 3
  i32.shl
  i32.add
  i64.load
  call $~lib/util/number/itoa_buffered<i64>
  local.get $2
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.get $4
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String | null>#toString (param $0 i32) (result i32)
  local.get $0
  i32.const 6352
  call $~lib/array/Array<~lib/string/String | null>#join
 )
 (func $~lib/util/string/joinReferenceArray<~lib/array/Array<i32>> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 6352
  call $~lib/rt/pure/__retain
  local.set $9
  local.get $1
  i32.const 1
  i32.sub
  local.tee $8
  i32.const 0
  i32.lt_s
  if
   local.get $9
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $8
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $2
   if
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $2
   end
   local.get $2
   if (result i32)
    local.get $2
    i32.const 6352
    call $~lib/array/Array<i32>#join
   else
    i32.const 6112
   end
   local.get $9
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  i32.const 6112
  local.set $1
  local.get $9
  call $~lib/string/String#get:length
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $8
   i32.lt_s
   if
    local.get $4
    local.tee $3
    local.get $0
    local.get $2
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
     local.get $3
     call $~lib/rt/pure/__release
    end
    local.get $4
    if
     local.get $4
     i32.const 6352
     call $~lib/array/Array<i32>#join
     local.tee $3
     local.get $1
     local.get $1
     local.get $3
     call $~lib/string/String.__concat
     local.tee $5
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
     local.get $5
     call $~lib/rt/pure/__release
     local.get $3
     local.set $1
    end
    local.get $6
    if
     local.get $1
     local.tee $3
     local.get $9
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
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $0
  local.get $8
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
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $3
  if
   local.get $3
   i32.const 6352
   call $~lib/array/Array<i32>#join
   local.tee $0
   local.get $1
   local.get $1
   local.get $0
   call $~lib/string/String.__concat
   local.tee $0
   local.tee $4
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $1
    call $~lib/rt/pure/__release
   end
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $4
   local.set $1
  end
  local.get $9
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/util/number/itoa_buffered<u8> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 255
  i32.and
  i32.const 10
  i32.lt_u
  if
   local.get $0
   local.get $1
   i32.const 255
   i32.and
   i32.const 48
   i32.or
   i32.store16
   i32.const 1
   return
  end
  local.get $1
  i32.const 255
  i32.and
  local.tee $2
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $1
 )
 (func $~lib/util/string/joinIntegerArray<u8> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load8_u
   call $~lib/util/number/utoa32
   local.get $2
   call $~lib/rt/pure/__release
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
  local.set $1
  loop $for-loop|0
   local.get $6
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.add
    i32.load8_u
    call $~lib/util/number/itoa_buffered<u8>
    local.get $3
    i32.add
    local.set $3
    local.get $5
    if
     local.get $1
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $3
     local.get $5
     i32.add
     local.set $3
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $7
  local.get $1
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $4
  i32.add
  i32.load8_u
  call $~lib/util/number/itoa_buffered<u8>
  local.get $3
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $1
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<u8>#join (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinIntegerArray<u8>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<u8>#toString (param $0 i32) (result i32)
  local.get $0
  i32.const 6352
  call $~lib/array/Array<u8>#join
 )
 (func $~lib/util/string/joinReferenceArray<~lib/array/Array<u8>> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 6352
  call $~lib/rt/pure/__retain
  local.set $9
  local.get $1
  i32.const 1
  i32.sub
  local.tee $8
  i32.const 0
  i32.lt_s
  if
   local.get $9
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $8
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $2
   if
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $2
   end
   local.get $2
   if (result i32)
    local.get $2
    i32.const 6352
    call $~lib/array/Array<u8>#join
   else
    i32.const 6112
   end
   local.get $9
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  i32.const 6112
  local.set $1
  local.get $9
  call $~lib/string/String#get:length
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $8
   i32.lt_s
   if
    local.get $4
    local.tee $3
    local.get $0
    local.get $2
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
     local.get $3
     call $~lib/rt/pure/__release
    end
    local.get $4
    if
     local.get $4
     i32.const 6352
     call $~lib/array/Array<u8>#join
     local.tee $3
     local.get $1
     local.get $1
     local.get $3
     call $~lib/string/String.__concat
     local.tee $5
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
     local.get $5
     call $~lib/rt/pure/__release
     local.get $3
     local.set $1
    end
    local.get $6
    if
     local.get $1
     local.tee $3
     local.get $9
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
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $0
  local.get $8
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
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $3
  if
   local.get $3
   i32.const 6352
   call $~lib/array/Array<u8>#join
   local.tee $0
   local.get $1
   local.get $1
   local.get $0
   call $~lib/string/String.__concat
   local.tee $0
   local.tee $4
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $1
    call $~lib/rt/pure/__release
   end
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $4
   local.set $1
  end
  local.get $9
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<u32>#toString (param $0 i32) (result i32)
  local.get $0
  i32.const 6352
  call $~lib/array/Array<u32>#join
 )
 (func $~lib/util/string/joinReferenceArray<~lib/array/Array<u32>> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 6352
  call $~lib/rt/pure/__retain
  local.set $9
  local.get $1
  i32.const 1
  i32.sub
  local.tee $8
  i32.const 0
  i32.lt_s
  if
   local.get $9
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $8
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $2
   if
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $2
   end
   local.get $2
   if (result i32)
    local.get $2
    i32.const 6352
    call $~lib/array/Array<u32>#join
   else
    i32.const 6112
   end
   local.get $9
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  i32.const 6112
  local.set $1
  local.get $9
  call $~lib/string/String#get:length
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $8
   i32.lt_s
   if
    local.get $4
    local.tee $3
    local.get $0
    local.get $2
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
     local.get $3
     call $~lib/rt/pure/__release
    end
    local.get $4
    if
     local.get $4
     i32.const 6352
     call $~lib/array/Array<u32>#join
     local.tee $3
     local.get $1
     local.get $1
     local.get $3
     call $~lib/string/String.__concat
     local.tee $5
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
     local.get $5
     call $~lib/rt/pure/__release
     local.get $3
     local.set $1
    end
    local.get $6
    if
     local.get $1
     local.tee $3
     local.get $9
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
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $0
  local.get $8
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
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $3
  if
   local.get $3
   i32.const 6352
   call $~lib/array/Array<u32>#join
   local.tee $0
   local.get $1
   local.get $1
   local.get $0
   call $~lib/string/String.__concat
   local.tee $0
   local.tee $4
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $1
    call $~lib/rt/pure/__release
   end
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $4
   local.set $1
  end
  local.get $9
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#toString (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<u32>>
  i32.const 6352
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/string/joinReferenceArray<~lib/array/Array<~lib/array/Array<u32>>> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 6352
  call $~lib/rt/pure/__retain
  local.set $9
  local.get $1
  i32.const 1
  i32.sub
  local.tee $8
  i32.const 0
  i32.lt_s
  if
   local.get $9
   call $~lib/rt/pure/__release
   i32.const 6112
   return
  end
  local.get $8
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $2
   if
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $2
   end
   local.get $2
   if (result i32)
    local.get $2
    call $~lib/array/Array<~lib/array/Array<u32>>#toString
   else
    i32.const 6112
   end
   local.get $9
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  i32.const 6112
  local.set $1
  local.get $9
  call $~lib/string/String#get:length
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $8
   i32.lt_s
   if
    local.get $4
    local.tee $3
    local.get $0
    local.get $2
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
     local.get $3
     call $~lib/rt/pure/__release
    end
    local.get $4
    if
     local.get $1
     local.get $1
     local.get $4
     call $~lib/array/Array<~lib/array/Array<u32>>#toString
     local.tee $7
     call $~lib/string/String.__concat
     local.tee $5
     local.tee $3
     i32.ne
     if
      local.get $3
      call $~lib/rt/pure/__retain
      local.set $3
      local.get $1
      call $~lib/rt/pure/__release
     end
     local.get $7
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $3
     local.set $1
    end
    local.get $6
    if
     local.get $1
     local.tee $3
     local.get $9
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
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $0
  local.get $8
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
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $3
  if
   local.get $1
   local.get $1
   local.get $3
   call $~lib/array/Array<~lib/array/Array<u32>>#toString
   local.tee $0
   call $~lib/string/String.__concat
   local.tee $2
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
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   local.set $1
  end
  local.get $9
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#flat (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    local.get $6
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $0
    if (result i32)
     local.get $0
     i32.load offset=12
    else
     i32.const 0
    end
    local.get $3
    i32.add
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  i32.const 16
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  i32.store offset=12
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=4
  local.get $0
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   local.get $5
   i32.lt_s
   if
    local.get $6
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $3
    if
     local.get $1
     local.get $4
     i32.add
     local.get $3
     i32.load offset=4
     local.get $3
     i32.load offset=8
     local.tee $3
     call $~lib/memory/memory.copy
     local.get $1
     local.get $3
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String | null>>#flat (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  local.set $6
  local.get $0
  i32.load offset=4
  local.set $7
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $0
    if (result i32)
     local.get $0
     i32.load offset=12
    else
     i32.const 0
    end
    local.get $3
    i32.add
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $0
  i32.const 16
  i32.const 15
  call $~lib/rt/tlsf/__alloc
  local.tee $4
  local.get $3
  i32.store offset=12
  local.get $4
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=4
  local.get $4
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $5
    if
     local.get $0
     local.get $1
     i32.add
     local.get $5
     i32.load offset=4
     local.get $5
     i32.load offset=8
     local.tee $5
     call $~lib/memory/memory.copy
     local.get $1
     local.get $5
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  i32.const 0
  local.set $2
  loop $for-loop|2
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    drop
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|2
   end
  end
  local.get $4
  call $~lib/rt/pure/__retain
 )
 (func $start:std/array
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
  (local $26 f32)
  (local $27 f64)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 f32)
  (local $35 f64)
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
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  global.set $std/array/arr
  i32.const 0
  call $~lib/array/Array.isArray<~lib/array/Array<i32> | null>
  if
   i32.const 0
   i32.const 1296
   i32.const 54
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $std/array/Ref#constructor
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.tee $1
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  i32.const 1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  i32.const 0
  i32.const 1
  call $~lib/memory/memory.fill
  local.get $2
  local.tee $0
  local.get $1
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $0
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  i32.const 1
  i32.store offset=8
  global.get $std/array/arr
  call $~lib/array/Array.isArray<~lib/array/Array<i32> | null>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 1440
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
  i32.const 1472
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 68
   i32.const 3
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
  i32.const 1568
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 71
   i32.const 3
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
  i32.const 1600
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 74
   i32.const 3
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
  i32.const 1632
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 77
   i32.const 3
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
  i32.const 1664
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $9
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 80
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 1696
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
  i32.const 1744
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 87
   i32.const 3
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
  i32.const 1792
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 90
   i32.const 3
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
  i32.const 1840
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 93
   i32.const 3
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
  i32.const 1888
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 96
   i32.const 3
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
  i32.const 1936
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $9
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 99
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 1296
   i32.const 105
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  if
   i32.const 0
   i32.const 1296
   i32.const 106
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 42
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 110
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 111
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 112
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $~lib/array/Array<i32>#pop
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 116
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 1296
   i32.const 117
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 122
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 123
   i32.const 3
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
   i32.const 1296
   i32.const 124
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 44
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 128
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 129
   i32.const 3
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
   i32.const 1296
   i32.const 130
   i32.const 3
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
   i32.const 1296
   i32.const 131
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 45
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 135
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 136
   i32.const 3
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
   i32.const 1296
   i32.const 137
   i32.const 3
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
   i32.const 1296
   i32.const 138
   i32.const 3
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
   i32.const 1296
   i32.const 139
   i32.const 3
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
  i32.store
  local.get $1
  i32.const 0
  call $std/array/Ref#constructor
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/array/Array<std/array/Ref>#set:length
  local.get $0
  i32.load offset=12
  if
   i32.const 0
   i32.const 1296
   i32.const 147
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.set $1
  global.get $std/array/arr
  local.get $1
  call $~lib/array/Array<i32>#concat
  local.set $2
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 156
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 157
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 158
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 2032
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $~lib/array/Array<i32>#concat
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 161
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 163
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 164
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 165
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 46
  call $~lib/array/Array<i32>#push
  drop
  local.get $1
  i32.const 47
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  local.get $1
  call $~lib/array/Array<i32>#concat
  local.set $0
  local.get $2
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 172
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 173
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=12
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 174
   i32.const 3
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
   i32.const 1296
   i32.const 175
   i32.const 3
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
   i32.const 1296
   i32.const 176
   i32.const 3
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
   i32.const 1296
   i32.const 177
   i32.const 3
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
   i32.const 1296
   i32.const 178
   i32.const 3
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
   i32.const 1296
   i32.const 179
   i32.const 3
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
   i32.const 1296
   i32.const 182
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 2048
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  if
   i32.const 0
   i32.const 1296
   i32.const 190
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/array/arr
  call $~lib/array/Array<i32>#concat
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 192
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=12
  if
   i32.const 0
   i32.const 1296
   i32.const 193
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2064
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 3
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $2
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2112
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 200
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2160
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
  local.tee $4
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2208
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $9
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 202
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2256
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $15
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2304
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $23
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 204
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2352
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 2
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $6
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2400
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 206
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2448
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  local.tee $7
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2496
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 208
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2544
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
  i32.const 2592
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $13
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 210
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2640
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  local.tee $28
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2688
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $16
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 212
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2736
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $17
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2784
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $18
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 214
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2832
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  local.tee $14
  i32.const 5
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
   i32.const 1296
   i32.const 216
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2928
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const -4
  i32.const -3
  i32.const -2
  call $~lib/array/Array<i32>#copyWithin
  local.tee $19
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2976
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $21
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 218
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3024
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.const -4
  i32.const -3
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  local.tee $22
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3072
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $24
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 220
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3120
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
  i32.const 3168
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $25
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 222
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $28
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.const 42
  call $~lib/array/Array<i32>#unshift
  drop
  global.get $std/array/arr
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 230
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 231
   i32.const 3
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
   i32.const 1296
   i32.const 232
   i32.const 3
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
   i32.const 1296
   i32.const 233
   i32.const 3
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
   i32.const 1296
   i32.const 234
   i32.const 3
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
   i32.const 1296
   i32.const 235
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 41
  call $~lib/array/Array<i32>#unshift
  drop
  global.get $std/array/arr
  i32.load offset=12
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 239
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 240
   i32.const 3
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
   i32.const 1296
   i32.const 241
   i32.const 3
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
   i32.const 1296
   i32.const 242
   i32.const 3
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
   i32.const 1296
   i32.const 243
   i32.const 3
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
   i32.const 1296
   i32.const 244
   i32.const 3
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
   i32.const 1296
   i32.const 245
   i32.const 3
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
   i32.const 1296
   i32.const 254
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 255
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 256
   i32.const 3
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
   i32.const 1296
   i32.const 257
   i32.const 3
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
   i32.const 1296
   i32.const 258
   i32.const 3
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
   i32.const 1296
   i32.const 259
   i32.const 3
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
   i32.const 1296
   i32.const 260
   i32.const 3
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
   i32.const 1296
   i32.const 264
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 265
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 266
   i32.const 3
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
   i32.const 1296
   i32.const 267
   i32.const 3
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
   i32.const 1296
   i32.const 268
   i32.const 3
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
   i32.const 1296
   i32.const 269
   i32.const 3
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
   i32.const 1296
   i32.const 277
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 278
   i32.const 3
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
   i32.const 1296
   i32.const 279
   i32.const 3
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
   i32.const 1296
   i32.const 280
   i32.const 3
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
   i32.const 1296
   i32.const 281
   i32.const 3
   call $~lib/builtins/abort
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
  if
   i32.const 0
   i32.const 1296
   i32.const 291
   i32.const 3
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
   i32.const 1296
   i32.const 294
   i32.const 3
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
   i32.const 1296
   i32.const 297
   i32.const 3
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
   i32.const 1296
   i32.const 300
   i32.const 3
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
   i32.const 1296
   i32.const 303
   i32.const 3
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
   i32.const 1296
   i32.const 306
   i32.const 3
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
   i32.const 1296
   i32.const 309
   i32.const 3
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
   i32.const 1296
   i32.const 312
   i32.const 3
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
   i32.const 1296
   i32.const 315
   i32.const 3
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
   i32.const 1296
   i32.const 318
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 9
  i32.const 3216
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  local.set $4
  i32.const 0
  local.set $0
  block $__inlined_func$~lib/array/Array<f32>#indexOf
   local.get $1
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
    local.set $0
    br $__inlined_func$~lib/array/Array<f32>#indexOf
   end
   local.get $4
   i32.load offset=4
   local.set $3
   loop $while-continue|0
    local.get $0
    local.get $2
    i32.lt_s
    if
     local.get $3
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     f32.load
     f32.const nan:0x400000
     f32.eq
     br_if $__inlined_func$~lib/array/Array<f32>#indexOf
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 320
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 3
  i32.const 10
  i32.const 3248
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  local.set $9
  i32.const 0
  local.set $0
  block $__inlined_func$~lib/array/Array<f64>#indexOf
   local.get $2
   i32.load offset=12
   local.tee $3
   if (result i32)
    i32.const 0
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/array/Array<f64>#indexOf
   end
   local.get $9
   i32.load offset=4
   local.set $4
   loop $while-continue|019
    local.get $0
    local.get $3
    i32.lt_s
    if
     local.get $4
     local.get $0
     i32.const 3
     i32.shl
     i32.add
     f64.load
     f64.const nan:0x8000000000000
     f64.eq
     br_if $__inlined_func$~lib/array/Array<f64>#indexOf
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $while-continue|019
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 321
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.const 44
  i32.const 0
  call $~lib/array/Array<i32>#includes
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 328
   i32.const 3
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
   i32.const 1296
   i32.const 331
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 45
  i32.const 0
  call $~lib/array/Array<i32>#includes
  if
   i32.const 0
   i32.const 1296
   i32.const 334
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 100
  call $~lib/array/Array<i32>#includes
  if
   i32.const 0
   i32.const 1296
   i32.const 337
   i32.const 3
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
   i32.const 1296
   i32.const 340
   i32.const 3
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
   i32.const 1296
   i32.const 343
   i32.const 3
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
   i32.const 1296
   i32.const 346
   i32.const 3
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
   i32.const 1296
   i32.const 349
   i32.const 3
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
   i32.const 1296
   i32.const 352
   i32.const 3
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
   i32.const 1296
   i32.const 355
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/array/Array<f32>#includes (result i32)
   i32.const 0
   local.set $0
   i32.const 0
   i32.const 1
   i32.const 2
   i32.const 9
   i32.const 3280
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=12
   local.tee $3
   if (result i32)
    i32.const 0
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   br_if $__inlined_func$~lib/array/Array<f32>#includes
   drop
   local.get $2
   i32.load offset=4
   local.set $9
   loop $while-continue|020
    local.get $0
    local.get $3
    i32.lt_s
    if
     i32.const 1
     local.get $9
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.tee $26
     f32.const nan:0x400000
     f32.eq
     if (result i32)
      i32.const 1
     else
      local.get $26
      local.get $26
      f32.ne
     end
     br_if $__inlined_func$~lib/array/Array<f32>#includes
     drop
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $while-continue|020
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 357
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/array/Array<f64>#includes (result i32)
   i32.const 0
   local.set $0
   i32.const 0
   i32.const 1
   i32.const 3
   i32.const 10
   i32.const 3312
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $3
   i32.load offset=12
   local.tee $4
   if (result i32)
    i32.const 0
    local.get $4
    i32.ge_s
   else
    i32.const 1
   end
   br_if $__inlined_func$~lib/array/Array<f64>#includes
   drop
   local.get $3
   i32.load offset=4
   local.set $15
   loop $while-continue|021
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 1
     local.get $15
     local.get $0
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.tee $27
     f64.const nan:0x8000000000000
     f64.eq
     if (result i32)
      i32.const 1
     else
      local.get $27
      local.get $27
      f64.ne
     end
     br_if $__inlined_func$~lib/array/Array<f64>#includes
     drop
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $while-continue|021
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 358
   i32.const 3
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
   i32.const 1296
   i32.const 362
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 363
   i32.const 3
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
   i32.const 1296
   i32.const 364
   i32.const 3
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
   i32.const 1296
   i32.const 365
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3344
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $3
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3392
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 372
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3440
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 373
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3456
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#splice
  local.tee $8
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3504
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 376
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3520
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 377
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3568
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $12
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 3616
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $13
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 380
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 3648
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $16
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 381
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3680
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#splice
  local.tee $17
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 3728
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $18
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 384
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 3760
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $14
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 385
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3792
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $20
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 3840
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $19
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 388
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 3872
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $21
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 389
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3904
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -1
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $22
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 3952
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $24
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 3984
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $25
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4016
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $29
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 4064
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $30
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 396
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 4096
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $31
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 397
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4128
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -2
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $32
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 4176
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $33
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 400
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 4208
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $36
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 401
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4240
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -7
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $37
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 4288
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $38
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 404
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 4320
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $39
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 405
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4352
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#splice
  local.tee $40
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 4400
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $41
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 408
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4416
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $42
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 409
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4464
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 1
  i32.const -2
  call $~lib/array/Array<i32>#splice
  local.tee $43
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 4512
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $44
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 412
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4528
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $45
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 413
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4576
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 4
  i32.const 0
  call $~lib/array/Array<i32>#splice
  local.tee $46
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 4624
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $47
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 416
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4640
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $48
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 417
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4688
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 7
  i32.const 0
  call $~lib/array/Array<i32>#splice
  local.tee $49
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 4736
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $50
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 420
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4752
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $51
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 421
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4800
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 7
  i32.const 5
  call $~lib/array/Array<i32>#splice
  local.tee $52
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 4848
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $53
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 424
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4864
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $54
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 425
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 4912
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 1
  call $~lib/array/Array<std/array/Ref>#splice
  local.tee $15
  i32.load offset=12
  if
   i32.const 0
   i32.const 1296
   i32.const 429
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=12
  if
   i32.const 0
   i32.const 1296
   i32.const 430
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $9
  i32.load offset=4
  local.tee $0
  i32.const 1
  call $std/array/Ref#constructor
  i32.store
  local.get $0
  i32.const 2
  call $std/array/Ref#constructor
  i32.store offset=4
  local.get $0
  i32.const 3
  call $std/array/Ref#constructor
  i32.store offset=8
  local.get $0
  i32.const 4
  call $std/array/Ref#constructor
  i32.store offset=12
  local.get $0
  i32.const 5
  call $std/array/Ref#constructor
  i32.store offset=16
  local.get $1
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 2
  call $~lib/array/Array<std/array/Ref>#splice
  local.set $23
  local.get $15
  call $~lib/rt/pure/__release
  local.get $23
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 435
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $23
  i32.const 0
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $55
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 436
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $23
  i32.const 1
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $56
  i32.load
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 437
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 439
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.const 0
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $57
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 440
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.const 1
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $58
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 441
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.const 2
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $59
  i32.load
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 442
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $15
  i32.load offset=4
  local.tee $0
  i32.const 1
  call $std/array/Ref#constructor
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 2
  call $std/array/Ref#constructor
  i32.store offset=8
  local.get $15
  call $~lib/array/Array<std/array/Ref | null>#splice
  local.tee $28
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 447
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $28
  i32.const 0
  call $~lib/array/Array<std/array/Ref | null>#__get
  local.tee $0
  local.get $0
  i32.eqz
  if
   i32.const 5040
   i32.const 1296
   i32.const 448
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 448
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $15
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 450
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $15
  i32.const 0
  call $~lib/array/Array<std/array/Ref | null>#__get
  local.tee $60
  if
   i32.const 0
   i32.const 1296
   i32.const 451
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $15
  i32.const 1
  call $~lib/array/Array<std/array/Ref | null>#__get
  local.tee $1
  local.get $1
  i32.eqz
  if
   i32.const 5040
   i32.const 1296
   i32.const 452
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 452
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $25
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
  local.get $0
  call $~lib/rt/pure/__release
  local.get $60
  call $~lib/rt/pure/__release
  local.get $1
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
   i32.const 1296
   i32.const 465
   i32.const 3
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
   i32.const 1296
   i32.const 468
   i32.const 3
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
   i32.const 1296
   i32.const 471
   i32.const 3
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
   i32.const 1296
   i32.const 479
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 480
   i32.const 3
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
   i32.const 1296
   i32.const 482
   i32.const 3
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
   i32.const 1296
   i32.const 495
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 496
   i32.const 3
   call $~lib/builtins/abort
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
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 506
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 8
  call $~lib/array/Array<i32>#every
  if
   i32.const 0
   i32.const 1296
   i32.const 509
   i32.const 3
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
   i32.const 1296
   i32.const 517
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 518
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 10
  call $~lib/array/Array<i32>#every
  if
   i32.const 0
   i32.const 1296
   i32.const 520
   i32.const 3
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
   i32.const 1296
   i32.const 533
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 534
   i32.const 3
   call $~lib/builtins/abort
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
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 544
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 13
  call $~lib/array/Array<i32>#some
  if
   i32.const 0
   i32.const 1296
   i32.const 547
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 14
  call $~lib/array/Array<i32>#some
  if
   i32.const 0
   i32.const 1296
   i32.const 555
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 556
   i32.const 3
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
   i32.const 1296
   i32.const 558
   i32.const 3
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
   i32.const 1296
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
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
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 583
   i32.const 3
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
   i32.const 1296
   i32.const 592
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 593
   i32.const 3
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
   i32.const 1296
   i32.const 596
   i32.const 3
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
   i32.const 1296
   i32.const 610
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 611
   i32.const 3
   call $~lib/builtins/abort
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
  i32.load offset=12
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 636
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $5
   i32.const 100
   i32.lt_s
   if
    global.get $std/array/arr
    call $~lib/array/Array<i32>#pop
    drop
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
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
  i32.const 0
  local.set $0
  global.get $std/array/arr
  local.tee $2
  i32.load offset=12
  local.tee $3
  i32.const 2
  i32.const 9
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=4
  local.set $4
  loop $for-loop|039
   local.get $0
   local.get $3
   local.get $2
   i32.load offset=12
   local.tee $5
   local.get $3
   local.get $5
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.tee $5
    local.get $2
    i32.load offset=4
    i32.add
    i32.load
    local.set $6
    i32.const 3
    global.set $~argumentsLength
    local.get $4
    local.get $5
    i32.add
    local.get $6
    f32.convert_i32_s
    f32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|039
   end
  end
  local.get $1
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 650
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/array/Array<f32>#__get
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  f32.convert_i32_s
  f32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 651
   i32.const 3
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
   i32.const 1296
   i32.const 660
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 661
   i32.const 3
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
   i32.const 1296
   i32.const 668
   i32.const 3
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
   i32.const 1296
   i32.const 683
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 684
   i32.const 3
   call $~lib/builtins/abort
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
  local.get $1
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
   i32.const 1296
   i32.const 694
   i32.const 3
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
   i32.const 1296
   i32.const 703
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 704
   i32.const 3
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
   i32.const 1296
   i32.const 711
   i32.const 3
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
   i32.const 1296
   i32.const 726
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 727
   i32.const 3
   call $~lib/builtins/abort
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
   i32.const 1296
   i32.const 737
   i32.const 3
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
   i32.const 1296
   i32.const 741
   i32.const 3
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
   i32.const 1296
   i32.const 744
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 33
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  if
   i32.const 0
   i32.const 1296
   i32.const 747
   i32.const 3
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
   i32.const 1296
   i32.const 755
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 756
   i32.const 3
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
   i32.const 1296
   i32.const 758
   i32.const 3
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
   i32.const 1296
   i32.const 771
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 772
   i32.const 3
   call $~lib/builtins/abort
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
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 782
   i32.const 3
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
   i32.const 1296
   i32.const 786
   i32.const 3
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
   i32.const 1296
   i32.const 789
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 40
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  if
   i32.const 0
   i32.const 1296
   i32.const 792
   i32.const 3
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
   i32.const 1296
   i32.const 800
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 801
   i32.const 3
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
   i32.const 1296
   i32.const 803
   i32.const 3
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
   i32.const 1296
   i32.const 816
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 1296
   i32.const 817
   i32.const 3
   call $~lib/builtins/abort
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
  i32.const 8
  i32.const 2
  i32.const 9
  i32.const 5328
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  block $__inlined_func$~lib/array/Array<f32>#sort (result i32)
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 1
   i32.le_s
   if
    local.get $0
    call $~lib/rt/pure/__retain
    br $__inlined_func$~lib/array/Array<f32>#sort
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
    local.set $26
    local.get $1
    f32.load
    local.set $34
    i32.const 2
    global.set $~argumentsLength
    local.get $26
    local.get $34
    call $~lib/util/sort/COMPARATOR<f32>~anonymous|0
    i32.const 0
    i32.lt_s
    if
     local.get $1
     local.get $34
     f32.store offset=4
     local.get $1
     local.get $26
     f32.store
    end
    local.get $0
    call $~lib/rt/pure/__retain
    br $__inlined_func$~lib/array/Array<f32>#sort
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
  end
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 8
  i32.const 2
  i32.const 9
  i32.const 5376
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $18
  call $std/array/isArraysEqual<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 906
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 3
  i32.const 10
  i32.const 5424
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  global.set $~argumentsLength
  block $__inlined_func$~lib/array/Array<f64>#sort (result i32)
   local.get $1
   i32.load offset=12
   local.tee $3
   i32.const 1
   i32.le_s
   if
    local.get $1
    call $~lib/rt/pure/__retain
    br $__inlined_func$~lib/array/Array<f64>#sort
   end
   local.get $1
   i32.load offset=4
   local.set $2
   local.get $3
   i32.const 2
   i32.eq
   if
    local.get $2
    f64.load offset=8
    local.set $27
    local.get $2
    f64.load
    local.set $35
    i32.const 2
    global.set $~argumentsLength
    local.get $27
    local.get $35
    call $~lib/util/sort/COMPARATOR<f64>~anonymous|0
    i32.const 0
    i32.lt_s
    if
     local.get $2
     local.get $35
     f64.store offset=8
     local.get $2
     local.get $27
     f64.store
    end
    local.get $1
    call $~lib/rt/pure/__retain
    br $__inlined_func$~lib/array/Array<f64>#sort
   end
   local.get $3
   i32.const 256
   i32.lt_s
   if
    local.get $2
    local.get $3
    call $~lib/util/sort/insertionSort<f64>
   else
    local.get $2
    local.get $3
    call $~lib/util/sort/weakHeapSort<f64>
   end
   local.get $1
   call $~lib/rt/pure/__retain
  end
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 8
  i32.const 3
  i32.const 10
  i32.const 5504
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $14
  call $std/array/isArraysEqual<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 910
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 5584
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  global.set $~argumentsLength
  local.get $3
  i32.const 46
  call $~lib/array/Array<i32>#sort
  call $~lib/rt/pure/__release
  local.get $3
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 5632
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $20
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 914
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 5680
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  global.set $~argumentsLength
  local.get $4
  i32.const 0
  call $~lib/array/Array<u32>#sort@varargs
  call $~lib/rt/pure/__release
  local.get $4
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 5728
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $19
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 918
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 5776
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $16
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 5792
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 5824
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 5856
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 5888
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 64
  call $std/array/createReverseOrderedArray
  local.set $7
  i32.const 128
  call $std/array/createReverseOrderedArray
  local.set $10
  i32.const 1024
  call $std/array/createReverseOrderedArray
  local.set $12
  i32.const 10000
  call $std/array/createReverseOrderedArray
  local.set $13
  i32.const 512
  call $std/array/createRandomOrderedArray
  local.set $17
  local.get $16
  call $std/array/assertSortedDefault<i32>
  local.get $5
  call $std/array/assertSortedDefault<i32>
  local.get $5
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 5920
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $21
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 938
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $std/array/assertSortedDefault<i32>
  local.get $6
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 5952
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $22
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 941
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $std/array/assertSortedDefault<i32>
  local.get $8
  local.get $2
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 944
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $std/array/assertSortedDefault<i32>
  local.get $7
  local.get $2
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 947
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  call $std/array/assertSortedDefault<i32>
  local.get $10
  local.get $2
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 950
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $12
  call $std/array/assertSortedDefault<i32>
  local.get $12
  local.get $2
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 953
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $13
  call $std/array/assertSortedDefault<i32>
  local.get $13
  local.get $2
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 956
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $17
  call $std/array/assertSortedDefault<i32>
  local.get $0
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
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
  local.set $1
  local.get $0
  i32.const 49
  call $std/array/assertSorted<i32>
  local.get $0
  i32.const 50
  call $std/array/assertSorted<i32>
  local.get $1
  i32.const 51
  call $std/array/assertSorted<i32>
  local.get $1
  i32.const 52
  call $std/array/assertSorted<i32>
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
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
  i32.const 6128
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 7
  i32.const 2
  i32.const 15
  i32.const 6176
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 1
  global.set $~argumentsLength
  block $__inlined_func$std/array/isSorted<~lib/string/String | null> (result i32)
   i32.const 1
   local.set $0
   local.get $5
   call $~lib/rt/pure/__retain
   local.tee $4
   i32.const 55
   call $~lib/array/Array<~lib/array/Array<i32>>#sort
   local.tee $6
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.load offset=12
   local.set $7
   loop $for-loop|00
    local.get $0
    local.get $7
    i32.lt_s
    if
     local.get $1
     local.get $0
     i32.const 1
     i32.sub
     call $~lib/array/Array<std/array/Ref | null>#__get
     local.set $2
     local.get $1
     local.get $0
     call $~lib/array/Array<std/array/Ref | null>#__get
     local.set $3
     i32.const 2
     global.set $~argumentsLength
     local.get $2
     local.get $3
     call $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0
     i32.const 0
     i32.gt_s
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      local.get $3
      call $~lib/rt/pure/__release
      i32.const 0
      br $__inlined_func$std/array/isSorted<~lib/string/String | null>
     end
     local.get $2
     call $~lib/rt/pure/__release
     local.get $3
     call $~lib/rt/pure/__release
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|00
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 895
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  local.get $8
  call $std/array/isArraysEqual<~lib/string/String | null>
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 993
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  i32.const 0
  i32.const 400
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  loop $for-loop|06
   local.get $0
   i32.const 400
   i32.lt_s
   if
    local.get $0
    local.set $3
    call $~lib/math/NativeMath.random
    f64.const 32
    f64.mul
    i32.trunc_f64_s
    local.set $7
    i32.const 0
    local.set $6
    i32.const 6112
    local.set $0
    loop $for-loop|01
     local.get $6
     local.get $7
     i32.lt_s
     if
      block $__inlined_func$~lib/string/String#charAt (result i32)
       i32.const 6112
       call $~lib/math/NativeMath.random
       i32.const 5136
       call $~lib/string/String#get:length
       f64.convert_i32_s
       f64.mul
       f64.floor
       i32.trunc_f64_s
       local.tee $2
       i32.const 5136
       call $~lib/string/String#get:length
       i32.ge_u
       br_if $__inlined_func$~lib/string/String#charAt
       drop
       i32.const 2
       i32.const 1
       call $~lib/rt/tlsf/__alloc
       local.tee $4
       local.get $2
       i32.const 1
       i32.shl
       i32.const 5136
       i32.add
       i32.load16_u
       i32.store16
       local.get $4
       call $~lib/rt/pure/__retain
      end
      local.set $2
      local.get $0
      local.tee $4
      local.get $0
      local.get $2
      call $~lib/string/String.__concat
      local.tee $10
      local.tee $0
      i32.ne
      if
       local.get $0
       call $~lib/rt/pure/__retain
       local.set $0
       local.get $4
       call $~lib/rt/pure/__release
      end
      local.get $2
      call $~lib/rt/pure/__release
      local.get $10
      call $~lib/rt/pure/__release
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|01
     end
    end
    local.get $1
    local.get $3
    local.get $0
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $0
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|06
   end
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  i32.const 56
  call $std/array/assertSorted<~lib/array/Array<i32>>
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 2
  i32.const 0
  i32.const 17
  i32.const 6256
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinBooleanArray
  local.set $1
  i32.const 6352
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 6384
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1002
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 6432
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.const 6112
  call $~lib/array/Array<i32>#join
  local.tee $8
  i32.const 6784
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1003
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 7
  i32.const 6816
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  i32.const 6848
  call $~lib/array/Array<u32>#join
  local.tee $10
  i32.const 6784
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1004
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 6880
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $12
  i32.const 6912
  call $~lib/array/Array<i32>#join
  local.tee $13
  i32.const 6944
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1005
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  i32.const 3
  i32.const 10
  i32.const 7008
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.get $2
  i32.load offset=12
  call $~lib/util/string/joinFloatArray<f64>
  local.set $3
  i32.const 7072
  call $~lib/rt/pure/__release
  local.get $3
  i32.const 8160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1006
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 15
  i32.const 8288
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $16
  i32.const 6112
  call $~lib/array/Array<~lib/string/String | null>#join
  local.tee $17
  i32.const 8256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1007
   i32.const 3
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
  local.tee $5
  i32.const 0
  call $std/array/Ref#constructor
  i32.store
  local.get $5
  i32.const 0
  i32.store offset=4
  local.get $5
  i32.const 0
  call $std/array/Ref#constructor
  i32.store offset=8
  local.get $4
  call $~lib/array/Array<std/array/Ref | null>#join
  local.tee $18
  i32.const 8368
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1009
   i32.const 3
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
  local.tee $14
  i32.const 0
  call $std/array/Ref#constructor
  i32.store
  local.get $14
  i32.const 0
  call $std/array/Ref#constructor
  i32.store offset=4
  local.get $5
  call $~lib/array/Array<std/array/Ref | null>#join
  local.tee $14
  i32.const 8448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1012
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 8528
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 8544
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 8576
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 8608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $3
  i32.const 6352
  call $~lib/array/Array<i32>#join
  local.tee $0
  local.get $0
  i32.const 6112
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1022
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 6352
  call $~lib/array/Array<i32>#join
  local.tee $0
  local.set $22
  local.get $0
  i32.const 8256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1023
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 6352
  call $~lib/array/Array<i32>#join
  local.tee $0
  local.set $24
  local.get $0
  i32.const 8640
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1024
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 6352
  call $~lib/array/Array<i32>#join
  local.tee $0
  local.set $25
  local.get $0
  i32.const 8672
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1025
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 0
  i32.const 18
  i32.const 8704
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  i32.load offset=4
  local.get $8
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<i8>
  local.set $7
  i32.const 6352
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 8736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1027
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 1
  i32.const 19
  i32.const 8768
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  i32.load offset=4
  local.get $10
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<u16>
  local.set $12
  i32.const 6352
  call $~lib/rt/pure/__release
  local.get $12
  i32.const 8800
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1028
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 3
  i32.const 20
  i32.const 8848
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $13
  i32.load offset=4
  local.get $13
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<u64>
  local.set $16
  i32.const 6352
  call $~lib/rt/pure/__release
  local.get $16
  i32.const 8896
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1029
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 3
  i32.const 21
  i32.const 8960
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $17
  i32.load offset=4
  local.get $17
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<i64>
  local.set $18
  i32.const 6352
  call $~lib/rt/pure/__release
  local.get $18
  i32.const 9008
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1030
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7
  i32.const 2
  i32.const 15
  i32.const 9120
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $29
  i32.const 6352
  call $~lib/array/Array<~lib/string/String | null>#join
  local.tee $0
  local.set $30
  local.get $0
  i32.const 9168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1034
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 2
  i32.const 15
  i32.const 9280
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $31
  i32.const 6352
  call $~lib/array/Array<~lib/string/String | null>#join
  local.tee $0
  local.set $32
  local.get $0
  i32.const 9312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1035
   i32.const 3
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
  local.tee $1
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 9344
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 9376
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<i32>>
  local.set $14
  i32.const 6352
  call $~lib/rt/pure/__release
  local.get $14
  i32.const 9408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1038
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 22
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=4
  local.tee $2
  i32.const 2
  i32.const 0
  i32.const 6
  i32.const 9440
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  i32.const 2
  i32.const 0
  i32.const 6
  i32.const 9472
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<u8>>
  local.set $20
  i32.const 6352
  call $~lib/rt/pure/__release
  local.get $20
  i32.const 9408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1041
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 24
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.const 23
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $33
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.const 7
  i32.const 9504
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $33
  i32.store
  local.get $2
  i32.load offset=4
  local.get $2
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<~lib/array/Array<u32>>>
  local.set $19
  i32.const 6352
  call $~lib/rt/pure/__release
  local.get $19
  i32.const 8256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 1044
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $29
  call $~lib/rt/pure/__release
  local.get $30
  call $~lib/rt/pure/__release
  local.get $31
  call $~lib/rt/pure/__release
  local.get $32
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $~lib/rt/pure/__release
  i32.const 4
  i32.const 2
  i32.const 12
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.load offset=4
  local.tee $3
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 9536
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 9568
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $3
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 9600
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $3
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 9632
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=12
  local.get $5
  call $~lib/array/Array<~lib/array/Array<i32>>#flat
  local.tee $6
  i32.load offset=12
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 1055
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|1
   local.get $11
   i32.const 10
   i32.lt_s
   if
    local.get $6
    local.get $11
    call $~lib/array/Array<u32>#__get
    local.get $11
    i32.ne
    if
     i32.const 0
     i32.const 1296
     i32.const 1057
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $11
    i32.const 1
    i32.add
    local.set $11
    br $for-loop|1
   end
  end
  i32.const 4
  i32.const 2
  i32.const 25
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  i32.load offset=4
  local.tee $3
  i32.const 1
  i32.const 2
  i32.const 15
  i32.const 9696
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  i32.const 3
  i32.const 2
  i32.const 15
  i32.const 9792
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $3
  i32.const 3
  i32.const 2
  i32.const 15
  i32.const 9920
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $3
  i32.const 1
  i32.const 2
  i32.const 15
  i32.const 9984
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=12
  local.get $8
  call $~lib/array/Array<~lib/array/Array<~lib/string/String | null>>#flat
  local.set $3
  i32.const 8
  i32.const 2
  i32.const 15
  i32.const 10016
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $3
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 1063
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $11
  loop $for-loop|2
   local.get $11
   local.get $4
   i32.load offset=12
   i32.lt_s
   if
    local.get $3
    local.get $11
    call $~lib/array/Array<std/array/Ref | null>#__get
    local.tee $7
    local.get $4
    local.get $11
    call $~lib/array/Array<std/array/Ref | null>#__get
    local.tee $10
    call $~lib/string/String.__eq
    i32.eqz
    if
     i32.const 0
     i32.const 1296
     i32.const 1065
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    call $~lib/rt/pure/__release
    local.get $10
    call $~lib/rt/pure/__release
    local.get $11
    i32.const 1
    i32.add
    local.set $11
    br $for-loop|2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 12
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $11
  i32.load offset=4
  local.tee $7
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 10064
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $7
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 10080
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $11
  call $~lib/array/Array<~lib/array/Array<i32>>#flat
  local.tee $7
  i32.load offset=12
  if
   i32.const 0
   i32.const 1296
   i32.const 1069
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $28
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<u32>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 7
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
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 268435452
  i32.gt_u
  if
   i32.const 1040
   i32.const 1088
   i32.const 57
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  i32.const 0
  local.get $4
  call $~lib/memory/memory.fill
  local.get $2
  local.set $3
  local.get $2
  local.get $0
  i32.load
  local.tee $5
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $4
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u32>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=12
  drop
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<u32>#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
   i32.const 1040
   i32.const 1088
   i32.const 229
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.const 7
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
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<u32>#filter (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 2
  i32.const 7
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
     drop
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
 (func $~lib/array/Array<u32>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
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
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 2
  i32.const 7
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/array/Array<u32>#splice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 7
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
 (func $~lib/array/Array<u32>#flat (param $0 i32) (result i32)
  i32.const 10096
  i32.const 1088
  i32.const 504
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 6
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
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1040
   i32.const 1088
   i32.const 57
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  local.set $3
  local.get $2
  local.get $0
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u8>#set:length (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=12
  drop
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<u8>#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $4
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
    local.get $0
    i32.load offset=4
    local.get $2
    i32.add
    i32.load8_u
    i32.const 3
    global.set $~argumentsLength
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
 (func $~lib/array/Array<u8>#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $4
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
    local.get $0
    i32.load offset=4
    local.get $2
    i32.add
    i32.load8_u
    i32.const 3
    global.set $~argumentsLength
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
 (func $~lib/array/Array<u8>#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.get $0
    local.get $2
    i32.add
    i32.load8_u
    local.get $1
    i32.const 255
    i32.and
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
 (func $~lib/array/Array<u8>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $3
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/array/Array<u8>#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1040
   i32.const 1088
   i32.const 229
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 6
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.tee $5
  local.get $0
  i32.load offset=4
  local.get $3
  call $~lib/memory/memory.copy
  local.get $3
  local.get $5
  i32.add
  local.get $1
  i32.load offset=4
  local.get $4
  call $~lib/memory/memory.copy
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<u8>#copyWithin (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  call $~lib/memory/memory.copy
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<u8>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 1984
   i32.const 1088
   i32.const 300
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<u8>#forEach (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $4
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
    local.get $0
    i32.load offset=4
    local.get $2
    i32.add
    i32.load8_u
    i32.const 3
    global.set $~argumentsLength
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
 (func $~lib/array/Array<u8>#filter (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 0
  i32.const 6
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
    i32.add
    i32.load8_u
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
     call $~lib/array/Array<u8>#push
     drop
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
 (func $~lib/array/Array<u8>#shift (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 1984
   i32.const 1088
   i32.const 361
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.load8_u
  local.get $2
  local.get $2
  i32.const 1
  i32.add
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  i32.const 0
  i32.store8
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<u8>#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $4
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
    local.get $0
    i32.load offset=4
    local.get $2
    i32.add
    i32.load8_u
    i32.const 3
    global.set $~argumentsLength
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
 (func $~lib/array/Array<u8>#unshift (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.add
  local.tee $2
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.const 1
  i32.add
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  call $~lib/memory/memory.copy
  local.get $3
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/array/Array<u8>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
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
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 0
  i32.const 6
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/array/Array<u8>#splice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 0
  i32.const 6
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.tee $5
  local.get $1
  i32.add
  local.tee $6
  local.get $2
  call $~lib/memory/memory.copy
  local.get $3
  local.get $1
  local.get $2
  i32.add
  local.tee $1
  i32.ne
  if
   local.get $6
   local.get $1
   local.get $5
   i32.add
   local.get $3
   local.get $1
   i32.sub
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  i32.store offset=12
  local.get $4
 )
 (func $~lib/array/Array<u8>#reverse (param $0 i32) (result i32)
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
   i32.add
   local.set $1
   loop $while-continue|0
    local.get $2
    local.get $1
    i32.lt_u
    if
     local.get $2
     i32.load8_u
     local.set $3
     local.get $2
     local.get $1
     i32.load8_u
     i32.store8
     local.get $1
     local.get $3
     i32.store8
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/weakHeapSort<u8> (param $0 i32) (param $1 i32) (param $2 i32)
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
  i32.shr_u
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
     i32.shr_u
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
    i32.add
    i32.load8_u
    local.set $3
    local.get $0
    local.get $4
    i32.add
    i32.load8_u
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
     i32.shr_u
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
     i32.add
     local.get $3
     i32.store8
     local.get $0
     local.get $7
     i32.add
     local.get $6
     i32.store8
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
    i32.load8_u
    local.set $1
    local.get $0
    local.get $0
    local.get $4
    i32.add
    local.tee $3
    i32.load8_u
    i32.store8
    local.get $3
    local.get $1
    i32.store8
    i32.const 1
    local.set $1
    loop $while-continue|3
     local.get $5
     local.get $1
     i32.const 5
     i32.shr_u
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
      i32.load8_u
      local.set $3
      local.get $0
      local.get $1
      i32.add
      i32.load8_u
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
       i32.shr_u
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
       i32.add
       local.get $3
       i32.store8
       local.get $0
       local.get $6
       i32.store8
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
  call $~lib/rt/tlsf/maybeInitialize
  local.get $5
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
  local.get $0
  i32.load8_u offset=1
  local.set $1
  local.get $0
  local.get $0
  i32.load8_u
  i32.store8 offset=1
  local.get $0
  local.get $1
  i32.store8
 )
 (func $~lib/array/Array<u8>#sort (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
  local.set $5
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $5
   i32.load8_u offset=1
   local.set $2
   local.get $5
   i32.load8_u
   local.set $3
   i32.const 2
   global.set $~argumentsLength
   local.get $2
   local.get $3
   local.get $1
   call_indirect (type $i32_i32_=>_i32)
   i32.const 0
   i32.lt_s
   if
    local.get $5
    local.get $3
    i32.store8 offset=1
    local.get $5
    local.get $2
    i32.store8
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $2
  i32.const 256
  i32.lt_s
  if
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   loop $for-loop|0
    local.get $6
    local.get $3
    i32.lt_s
    if
     local.get $5
     local.get $6
     i32.add
     i32.load8_u
     local.set $7
     local.get $6
     i32.const 1
     i32.sub
     local.set $1
     loop $while-continue|1
      local.get $1
      i32.const 0
      i32.ge_s
      if
       block $while-break|1
        local.get $1
        local.get $5
        i32.add
        i32.load8_u
        local.set $8
        i32.const 2
        global.set $~argumentsLength
        local.get $7
        local.get $8
        local.get $4
        call_indirect (type $i32_i32_=>_i32)
        i32.const 0
        i32.ge_s
        br_if $while-break|1
        local.get $1
        local.tee $2
        i32.const 1
        i32.sub
        local.set $1
        local.get $5
        local.get $2
        i32.const 1
        i32.add
        i32.add
        local.get $8
        i32.store8
        br $while-continue|1
       end
      end
     end
     local.get $5
     local.get $1
     i32.const 1
     i32.add
     i32.add
     local.get $7
     i32.store8
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $for-loop|0
    end
   end
  else
   local.get $5
   local.get $2
   local.get $1
   call $~lib/util/sort/weakHeapSort<u8>
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#fill (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
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
   local.get $1
   local.get $2
   local.get $1
   i32.lt_s
   select
  end
  local.set $2
  local.get $3
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
   local.get $3
   local.get $1
   local.get $3
   local.get $1
   i32.lt_s
   select
  end
  local.set $1
  loop $for-loop|0
   local.get $2
   local.get $1
   i32.lt_s
   if
    local.get $4
    local.get $5
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $3
    i32.ne
    if
     local.get $5
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.get $4
     call $~lib/rt/pure/__retain
     i32.store
     local.get $3
     call $~lib/rt/pure/__release
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/string/String>#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
   local.get $1
   call $~lib/rt/pure/__release
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
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    call $~lib/string/String.__eq
    if
     local.get $1
     call $~lib/rt/pure/__release
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
  local.get $1
  call $~lib/rt/pure/__release
  i32.const -1
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<~lib/string/String>#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $4
  local.get $1
  i32.load offset=12
  i32.const 0
  local.get $1
  select
  local.tee $6
  i32.add
  local.tee $2
  i32.const 268435452
  i32.gt_u
  if
   i32.const 1040
   i32.const 1088
   i32.const 229
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.const 16
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  i32.load offset=4
  local.set $2
  local.get $4
  i32.const 2
  i32.shl
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $0
  loop $for-loop|0
   local.get $3
   local.get $4
   i32.lt_u
   if
    local.get $2
    local.get $3
    i32.add
    local.get $0
    local.get $3
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    i32.store
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  local.get $4
  i32.add
  local.set $0
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $6
  i32.const 2
  i32.shl
  local.set $2
  loop $for-loop|1
   local.get $5
   local.get $2
   i32.lt_u
   if
    local.get $0
    local.get $5
    i32.add
    local.get $3
    local.get $5
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    i32.store
    local.get $5
    i32.const 4
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/array/Array<~lib/string/String>#copyWithin (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  local.tee $1
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
  local.tee $3
  i32.add
  i32.lt_s
  i32.const 0
  local.get $2
  local.get $1
  i32.lt_s
  select
  if
   local.get $2
   local.get $3
   i32.const 1
   i32.sub
   local.tee $4
   i32.add
   local.set $2
   local.get $1
   local.get $4
   i32.add
   local.set $1
   loop $while-continue|0
    local.get $3
    if
     local.get $5
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $4
     local.get $5
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $6
     i32.ne
     if
      local.get $5
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      call $~lib/rt/pure/__retain
      i32.store
      local.get $4
      call $~lib/rt/pure/__release
     end
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     local.get $3
     i32.const 1
     i32.sub
     local.set $3
     br $while-continue|0
    end
   end
  else
   loop $while-continue|1
    local.get $3
    if
     local.get $5
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $4
     local.get $5
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $6
     i32.ne
     if
      local.get $5
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      call $~lib/rt/pure/__retain
      i32.store
      local.get $4
      call $~lib/rt/pure/__release
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     i32.const 1
     i32.sub
     local.set $3
     br $while-continue|1
    end
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 1984
   i32.const 1088
   i32.const 300
   i32.const 21
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
  call $~lib/rt/pure/__retain
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#filter (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 2
  i32.const 16
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $3
   local.get $5
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $5
   local.get $2
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $0
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    local.set $2
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $3
    local.get $0
    local.get $1
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $4
     local.get $2
     call $~lib/array/Array<~lib/string/String>#push
     drop
    end
    local.get $2
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $4
 )
 (func $~lib/array/Array<~lib/string/String>#shift (param $0 i32) (result i32)
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
   i32.const 1984
   i32.const 1088
   i32.const 361
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.load
  call $~lib/rt/pure/__retain
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
 (func $~lib/array/Array<~lib/string/String>#unshift (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.add
  local.tee $1
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.const 4
  i32.add
  local.get $3
  local.get $1
  i32.const 1
  i32.sub
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $3
  local.get $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  local.set $3
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
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 2
  i32.const 16
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $5
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i32.const 2
  i32.shl
  local.set $1
  loop $while-continue|0
   local.get $4
   local.get $1
   i32.lt_u
   if
    local.get $4
    local.get $5
    i32.add
    local.get $0
    local.get $4
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    i32.store
    local.get $4
    i32.const 4
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  local.get $3
 )
 (func $~lib/array/Array<~lib/string/String>#splice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  i32.const 16
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
 (func $~lib/array/Array<~lib/string/String>#reverse (param $0 i32) (result i32)
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
     call $~lib/rt/pure/__retain
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
     local.get $3
     call $~lib/rt/pure/__release
     br $while-continue|0
    end
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~start
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:std/array
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
   i32.const 1248
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   block $__inlined_func$~lib/rt/__visit_members
    block $folding-inner1
     block $folding-inner0
      block $switch$1$default
       block $switch$1$case$4
        local.get $0
        i32.const 8
        i32.add
        i32.load
        br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $switch$1$case$4 $folding-inner0 $__inlined_func$~lib/rt/__visit_members $switch$1$case$4 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner1 $__inlined_func$~lib/rt/__visit_members $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner0 $folding-inner0 $folding-inner1 $switch$1$default
       end
       local.get $0
       i32.load offset=16
       local.tee $1
       if
        local.get $1
        call $~lib/rt/pure/__visit
       end
       br $__inlined_func$~lib/rt/__visit_members
      end
      unreachable
     end
     local.get $0
     i32.load offset=16
     call $~lib/rt/pure/__visit
     br $__inlined_func$~lib/rt/__visit_members
    end
    local.get $0
    i32.load offset=20
    local.tee $1
    local.get $0
    i32.load offset=28
    i32.const 2
    i32.shl
    i32.add
    local.set $3
    loop $while-continue|0
     local.get $1
     local.get $3
     i32.lt_u
     if
      local.get $1
      i32.load
      local.tee $4
      if
       local.get $4
       call $~lib/rt/pure/__visit
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $0
    i32.load offset=16
    call $~lib/rt/pure/__visit
   end
   local.get $2
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 1248
    i32.const 126
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 1248
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.sub
   local.get $2
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/pure/__visit (param $0 i32)
  local.get $0
  i32.const 10136
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
 (func $~lib/array/Array<u32>#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#constructor
 )
 (func $~lib/array/Array<u32>#fill@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
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
 (func $~lib/array/Array<u32>#includes@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#includes
 )
 (func $~lib/array/Array<u32>#indexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#indexOf
 )
 (func $~lib/array/Array<u32>#lastIndexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=12
   local.set $2
  end
  block $__inlined_func$~lib/array/Array<u32>#lastIndexOf
   local.get $0
   local.tee $3
   i32.load offset=12
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/array/Array<u32>#lastIndexOf
   end
   local.get $0
   local.get $2
   i32.add
   local.get $0
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $0
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $0
   local.get $3
   i32.load offset=4
   local.set $2
   loop $while-continue|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     local.get $1
     local.get $2
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.eq
     br_if $__inlined_func$~lib/array/Array<u32>#lastIndexOf
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array<u32>#copyWithin@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
 (func $~lib/array/Array<u32>#slice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $1
   end
   i32.const 2147483647
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u32>#slice
 )
 (func $~lib/array/Array<u32>#splice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
  call $~lib/array/Array<u32>#splice
 )
 (func $~lib/array/Array<u32>#join@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 6352
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#join
 )
 (func $~lib/array/Array<u8>#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#constructor
 )
 (func $~lib/array/Array<u8>#fill@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
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
 (func $~lib/array/Array<u8>#includes@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u8>#indexOf
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<u8>#indexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u8>#indexOf
 )
 (func $~lib/array/Array<u8>#lastIndexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=12
   local.set $2
  end
  block $__inlined_func$~lib/array/Array<u8>#lastIndexOf
   local.get $0
   local.tee $3
   i32.load offset=12
   local.tee $0
   i32.eqz
   if
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/array/Array<u8>#lastIndexOf
   end
   local.get $0
   local.get $2
   i32.add
   local.get $0
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $0
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $0
   local.get $3
   i32.load offset=4
   local.set $2
   loop $while-continue|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
     br_if $__inlined_func$~lib/array/Array<u8>#lastIndexOf
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array<u8>#copyWithin@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
  call $~lib/array/Array<u8>#copyWithin
 )
 (func $~lib/array/Array<u8>#slice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $1
   end
   i32.const 2147483647
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u8>#slice
 )
 (func $~lib/array/Array<u8>#splice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
  call $~lib/array/Array<u8>#splice
 )
 (func $~lib/array/Array<u8>#sort@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 57
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#sort
 )
 (func $~lib/array/Array<u8>#join@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 6352
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#join
 )
 (func $~lib/array/Array<~lib/string/String>#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#constructor
 )
 (func $~lib/array/Array<~lib/string/String>#fill@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
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
  call $~lib/array/Array<~lib/string/String>#fill
 )
 (func $~lib/array/Array<~lib/string/String>#includes@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  local.get $2
  call $~lib/array/Array<~lib/string/String>#indexOf
  i32.const 0
  i32.ge_s
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/string/String>#indexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/string/String>#indexOf
 )
 (func $~lib/array/Array<~lib/string/String>#lastIndexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=12
   local.set $2
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  block $__inlined_func$~lib/array/Array<~lib/string/String>#lastIndexOf
   local.get $0
   local.tee $3
   i32.load offset=12
   local.tee $0
   i32.eqz
   if
    local.get $1
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $0
    br $__inlined_func$~lib/array/Array<~lib/string/String>#lastIndexOf
   end
   local.get $0
   local.get $2
   i32.add
   local.get $0
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $0
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $0
   local.get $3
   i32.load offset=4
   local.set $2
   loop $while-continue|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     local.get $2
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $1
     call $~lib/string/String.__eq
     if
      local.get $1
      call $~lib/rt/pure/__release
      br $__inlined_func$~lib/array/Array<~lib/string/String>#lastIndexOf
     end
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $while-continue|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#copyWithin@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
  call $~lib/array/Array<~lib/string/String>#copyWithin
 )
 (func $~lib/array/Array<~lib/string/String>#slice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $1
   end
   i32.const 2147483647
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/string/String>#slice
 )
 (func $~lib/array/Array<~lib/string/String>#splice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
  call $~lib/array/Array<~lib/string/String>#splice
 )
 (func $~lib/array/Array<~lib/string/String>#sort@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 58
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#sort
 )
 (func $~lib/array/Array<~lib/string/String>#join@varargs (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 6352
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#join
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
)
