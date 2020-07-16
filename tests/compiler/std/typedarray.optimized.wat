(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i64_i32_i32_=>_i32 (func (param i64 i32 i32) (result i32)))
 (type $f32_i32_i32_=>_i32 (func (param f32 i32 i32) (result i32)))
 (type $f64_i32_i32_=>_i32 (func (param f64 i32 i32) (result i32)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i64_i32_i32_=>_i64 (func (param i64 i32 i32) (result i64)))
 (type $i64_i64_i32_i32_=>_i64 (func (param i64 i64 i32 i32) (result i64)))
 (type $f32_f32_i32_i32_=>_f32 (func (param f32 f32 i32 i32) (result f32)))
 (type $f64_f64_i32_i32_=>_f64 (func (param f64 f64 i32 i32) (result f64)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i64_i32_i32_=>_none (func (param i64 i32 i32)))
 (type $f32_i32_i32_=>_none (func (param f32 i32 i32)))
 (type $f64_i32_i32_=>_none (func (param f64 i32 i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_f32_i32_=>_i32 (func (param i32 f32 i32) (result i32)))
 (type $i32_f64_i32_=>_i32 (func (param i32 f64 i32) (result i32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $f32_i32_i32_=>_f32 (func (param f32 i32 i32) (result f32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $f64_i32_i32_=>_f64 (func (param f64 i32 i32) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_i32_i64_i32_i64_i32_=>_i32 (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "onrealloc" (func $~lib/rt/rtrace/onrealloc (param i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (memory $0 1)
 (data (i32.const 1024) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1072) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1136) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1184) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1248) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1296) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00s\00t\00d\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1360) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1424) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1488) "\08\00\00\00\01\00\00\00\0e\00\00\00\08\00\00\00\01")
 (data (i32.const 1520) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 1552) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1600) "\05\00\00\00\01\00\00\00\00\00\00\00\05")
 (data (i32.const 1632) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01")
 (data (i32.const 1664) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 1696) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 1728) "\03\00\00\00\01\00\00\00\00\00\00\00\03")
 (data (i32.const 1760) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\00\00\00\02")
 (data (i32.const 1792) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 1840) "\14\00\00\00\01\00\00\00\00\00\00\00\14")
 (data (i32.const 1888) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01")
 (data (i32.const 1936) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 1984) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 2032) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c")
 (data (i32.const 2064) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01")
 (data (i32.const 2096) "\02")
 (data (i32.const 2112) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2160) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05")
 (data (i32.const 2208) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 2256) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2304) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2352) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2400) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 2448) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2496) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2544) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2592) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 2640) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 2688) "\08\00\00\00\01\00\00\00\11\00\00\00\08\00\00\00\02")
 (data (i32.const 2720) "\08\00\00\00\01\00\00\00\12\00\00\00\08\00\00\00\03")
 (data (i32.const 2752) "\08\00\00\00\01\00\00\00\13\00\00\00\08\00\00\00\04")
 (data (i32.const 2784) "\08\00\00\00\01\00\00\00\14\00\00\00\08\00\00\00\05")
 (data (i32.const 2816) "\08\00\00\00\01\00\00\00\15\00\00\00\08\00\00\00\06")
 (data (i32.const 2848) "\08\00\00\00\01\00\00\00\16\00\00\00\08\00\00\00\07")
 (data (i32.const 2880) "\08\00\00\00\01\00\00\00\17\00\00\00\08\00\00\00\08")
 (data (i32.const 2912) "\08\00\00\00\01\00\00\00\18\00\00\00\08\00\00\00\t")
 (data (i32.const 2944) "\08\00\00\00\01\00\00\00\19\00\00\00\08\00\00\00\n")
 (data (i32.const 2976) "\08\00\00\00\01\00\00\00\1a\00\00\00\08\00\00\00\0b")
 (data (i32.const 3008) "\08\00\00\00\01\00\00\00\1b\00\00\00\08\00\00\00\0c")
 (data (i32.const 3040) "\08\00\00\00\01\00\00\00\11\00\00\00\08\00\00\00\0d")
 (data (i32.const 3072) "\08\00\00\00\01\00\00\00\12\00\00\00\08\00\00\00\0e")
 (data (i32.const 3104) "\08\00\00\00\01\00\00\00\13\00\00\00\08\00\00\00\0f")
 (data (i32.const 3136) "\08\00\00\00\01\00\00\00\14\00\00\00\08\00\00\00\10")
 (data (i32.const 3168) "\08\00\00\00\01\00\00\00\15\00\00\00\08\00\00\00\11")
 (data (i32.const 3200) "\08\00\00\00\01\00\00\00\16\00\00\00\08\00\00\00\12")
 (data (i32.const 3232) "\08\00\00\00\01\00\00\00\17\00\00\00\08\00\00\00\13")
 (data (i32.const 3264) "\08\00\00\00\01\00\00\00\18\00\00\00\08\00\00\00\14")
 (data (i32.const 3296) "\08\00\00\00\01\00\00\00\19\00\00\00\08\00\00\00\15")
 (data (i32.const 3328) "\08\00\00\00\01\00\00\00\1a\00\00\00\08\00\00\00\16")
 (data (i32.const 3360) "\08\00\00\00\01\00\00\00\1b\00\00\00\08\00\00\00\17")
 (data (i32.const 3392) "\08\00\00\00\01\00\00\00\1c\00\00\00\08\00\00\00\18")
 (data (i32.const 3424) "\08\00\00\00\01\00\00\00\1d\00\00\00\08\00\00\00\19")
 (data (i32.const 3456) "\08\00\00\00\01\00\00\00\1e\00\00\00\08\00\00\00\1a")
 (data (i32.const 3488) "\08\00\00\00\01\00\00\00\1f\00\00\00\08\00\00\00\1b")
 (data (i32.const 3520) "\08\00\00\00\01\00\00\00 \00\00\00\08\00\00\00\1c")
 (data (i32.const 3552) "\08\00\00\00\01\00\00\00!\00\00\00\08\00\00\00\1d")
 (data (i32.const 3584) "\08\00\00\00\01\00\00\00\"\00\00\00\08\00\00\00\1e")
 (data (i32.const 3616) "\08\00\00\00\01\00\00\00#\00\00\00\08\00\00\00\1f")
 (data (i32.const 3648) "\08\00\00\00\01\00\00\00$\00\00\00\08\00\00\00 ")
 (data (i32.const 3680) "\08\00\00\00\01\00\00\00%\00\00\00\08\00\00\00!")
 (data (i32.const 3712) "\08\00\00\00\01\00\00\00&\00\00\00\08\00\00\00\"")
 (data (i32.const 3744) "\08\00\00\00\01\00\00\00\'\00\00\00\08\00\00\00#")
 (data (i32.const 3776) "\08\00\00\00\01\00\00\00(\00\00\00\08\00\00\00$")
 (data (i32.const 3808) "\08\00\00\00\01\00\00\00)\00\00\00\08\00\00\00%")
 (data (i32.const 3840) "\08\00\00\00\01\00\00\00*\00\00\00\08\00\00\00&")
 (data (i32.const 3872) "\08\00\00\00\01\00\00\00+\00\00\00\08\00\00\00\'")
 (data (i32.const 3904) "\08\00\00\00\01\00\00\00,\00\00\00\08\00\00\00(")
 (data (i32.const 3936) "\08\00\00\00\01\00\00\00-\00\00\00\08\00\00\00)")
 (data (i32.const 3968) "\08\00\00\00\01\00\00\00.\00\00\00\08\00\00\00*")
 (data (i32.const 4000) "\08\00\00\00\01\00\00\00/\00\00\00\08\00\00\00+")
 (data (i32.const 4032) "\08\00\00\00\01\00\00\000\00\00\00\08\00\00\00,")
 (data (i32.const 4064) "\08\00\00\00\01\00\00\001\00\00\00\08\00\00\00-")
 (data (i32.const 4096) "\08\00\00\00\01\00\00\00\'\00\00\00\08\00\00\00.")
 (data (i32.const 4128) "\08\00\00\00\01\00\00\00\'\00\00\00\08\00\00\00/")
 (data (i32.const 4160) "\08\00\00\00\01\00\00\00(\00\00\00\08\00\00\000")
 (data (i32.const 4192) "\08\00\00\00\01\00\00\00(\00\00\00\08\00\00\001")
 (data (i32.const 4224) "\08\00\00\00\01\00\00\00)\00\00\00\08\00\00\002")
 (data (i32.const 4256) "\08\00\00\00\01\00\00\00)\00\00\00\08\00\00\003")
 (data (i32.const 4288) "\08\00\00\00\01\00\00\00*\00\00\00\08\00\00\004")
 (data (i32.const 4320) "\08\00\00\00\01\00\00\00*\00\00\00\08\00\00\005")
 (data (i32.const 4352) "\08\00\00\00\01\00\00\00+\00\00\00\08\00\00\006")
 (data (i32.const 4384) "\08\00\00\00\01\00\00\00+\00\00\00\08\00\00\007")
 (data (i32.const 4416) "\08\00\00\00\01\00\00\00,\00\00\00\08\00\00\008")
 (data (i32.const 4448) "\08\00\00\00\01\00\00\00,\00\00\00\08\00\00\009")
 (data (i32.const 4480) "\08\00\00\00\01\00\00\00-\00\00\00\08\00\00\00:")
 (data (i32.const 4512) "\08\00\00\00\01\00\00\00-\00\00\00\08\00\00\00;")
 (data (i32.const 4544) "\08\00\00\00\01\00\00\00.\00\00\00\08\00\00\00<")
 (data (i32.const 4576) "\08\00\00\00\01\00\00\00.\00\00\00\08\00\00\00=")
 (data (i32.const 4608) "\08\00\00\00\01\00\00\00/\00\00\00\08\00\00\00>")
 (data (i32.const 4640) "\08\00\00\00\01\00\00\00/\00\00\00\08\00\00\00?")
 (data (i32.const 4672) "\08\00\00\00\01\00\00\000\00\00\00\08\00\00\00@")
 (data (i32.const 4704) "\08\00\00\00\01\00\00\000\00\00\00\08\00\00\00A")
 (data (i32.const 4736) "\08\00\00\00\01\00\00\001\00\00\00\08\00\00\00B")
 (data (i32.const 4768) "\08\00\00\00\01\00\00\001\00\00\00\08\00\00\00C")
 (data (i32.const 4800) "\08\00\00\00\01\00\00\00\'\00\00\00\08\00\00\00D")
 (data (i32.const 4832) "\08\00\00\00\01\00\00\00\'\00\00\00\08\00\00\00E")
 (data (i32.const 4864) "\08\00\00\00\01\00\00\00(\00\00\00\08\00\00\00F")
 (data (i32.const 4896) "\08\00\00\00\01\00\00\00(\00\00\00\08\00\00\00G")
 (data (i32.const 4928) "\08\00\00\00\01\00\00\00)\00\00\00\08\00\00\00H")
 (data (i32.const 4960) "\08\00\00\00\01\00\00\00)\00\00\00\08\00\00\00I")
 (data (i32.const 4992) "\08\00\00\00\01\00\00\00*\00\00\00\08\00\00\00J")
 (data (i32.const 5024) "\08\00\00\00\01\00\00\00*\00\00\00\08\00\00\00K")
 (data (i32.const 5056) "\08\00\00\00\01\00\00\00+\00\00\00\08\00\00\00L")
 (data (i32.const 5088) "\08\00\00\00\01\00\00\00+\00\00\00\08\00\00\00M")
 (data (i32.const 5120) "\08\00\00\00\01\00\00\00,\00\00\00\08\00\00\00N")
 (data (i32.const 5152) "\08\00\00\00\01\00\00\00,\00\00\00\08\00\00\00O")
 (data (i32.const 5184) "\08\00\00\00\01\00\00\00-\00\00\00\08\00\00\00P")
 (data (i32.const 5216) "\08\00\00\00\01\00\00\00-\00\00\00\08\00\00\00Q")
 (data (i32.const 5248) "\08\00\00\00\01\00\00\00.\00\00\00\08\00\00\00R")
 (data (i32.const 5280) "\08\00\00\00\01\00\00\00.\00\00\00\08\00\00\00S")
 (data (i32.const 5312) "\08\00\00\00\01\00\00\00/\00\00\00\08\00\00\00T")
 (data (i32.const 5344) "\08\00\00\00\01\00\00\00/\00\00\00\08\00\00\00U")
 (data (i32.const 5376) "\08\00\00\00\01\00\00\000\00\00\00\08\00\00\00V")
 (data (i32.const 5408) "\08\00\00\00\01\00\00\000\00\00\00\08\00\00\00W")
 (data (i32.const 5440) "\08\00\00\00\01\00\00\001\00\00\00\08\00\00\00X")
 (data (i32.const 5472) "\08\00\00\00\01\00\00\001\00\00\00\08\00\00\00Y")
 (data (i32.const 5504) "\08\00\00\00\01\00\00\00\'\00\00\00\08\00\00\00Z")
 (data (i32.const 5536) "\08\00\00\00\01\00\00\00\'\00\00\00\08\00\00\00[")
 (data (i32.const 5568) "\08\00\00\00\01\00\00\00(\00\00\00\08\00\00\00\\")
 (data (i32.const 5600) "\08\00\00\00\01\00\00\00(\00\00\00\08\00\00\00]")
 (data (i32.const 5632) "\08\00\00\00\01\00\00\00)\00\00\00\08\00\00\00^")
 (data (i32.const 5664) "\08\00\00\00\01\00\00\00)\00\00\00\08\00\00\00_")
 (data (i32.const 5696) "\08\00\00\00\01\00\00\00*\00\00\00\08\00\00\00`")
 (data (i32.const 5728) "\08\00\00\00\01\00\00\00*\00\00\00\08\00\00\00a")
 (data (i32.const 5760) "\08\00\00\00\01\00\00\00+\00\00\00\08\00\00\00b")
 (data (i32.const 5792) "\08\00\00\00\01\00\00\00+\00\00\00\08\00\00\00c")
 (data (i32.const 5824) "\08\00\00\00\01\00\00\00,\00\00\00\08\00\00\00d")
 (data (i32.const 5856) "\08\00\00\00\01\00\00\00,\00\00\00\08\00\00\00e")
 (data (i32.const 5888) "\08\00\00\00\01\00\00\00-\00\00\00\08\00\00\00f")
 (data (i32.const 5920) "\08\00\00\00\01\00\00\00-\00\00\00\08\00\00\00g")
 (data (i32.const 5952) "\08\00\00\00\01\00\00\00.\00\00\00\08\00\00\00h")
 (data (i32.const 5984) "\08\00\00\00\01\00\00\00.\00\00\00\08\00\00\00i")
 (data (i32.const 6016) "\08\00\00\00\01\00\00\00/\00\00\00\08\00\00\00j")
 (data (i32.const 6048) "\08\00\00\00\01\00\00\00/\00\00\00\08\00\00\00k")
 (data (i32.const 6080) "\08\00\00\00\01\00\00\000\00\00\00\08\00\00\00l")
 (data (i32.const 6112) "\08\00\00\00\01\00\00\000\00\00\00\08\00\00\00m")
 (data (i32.const 6144) "\08\00\00\00\01\00\00\001\00\00\00\08\00\00\00n")
 (data (i32.const 6176) "\08\00\00\00\01\00\00\001\00\00\00\08\00\00\00o")
 (data (i32.const 6208) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\n\00\00\00\0c\00\00\00\0e")
 (data (i32.const 6240) "\10\00\00\00\01\00\00\00\10\00\00\00\10\00\00\00P\18\00\00P\18\00\00\0c\00\00\00\03")
 (data (i32.const 6272) "\08\00\00\00\01\00\00\002\00\00\00\08\00\00\00p")
 (data (i32.const 6304) "\08\00\00\00\01\00\00\003\00\00\00\08\00\00\00q")
 (data (i32.const 6336) "\08\00\00\00\01\00\00\004\00\00\00\08\00\00\00r")
 (data (i32.const 6368) "\08\00\00\00\01\00\00\005\00\00\00\08\00\00\00s")
 (data (i32.const 6400) "\08\00\00\00\01\00\00\006\00\00\00\08\00\00\00t")
 (data (i32.const 6432) "\08\00\00\00\01\00\00\007\00\00\00\08\00\00\00u")
 (data (i32.const 6464) "\08\00\00\00\01\00\00\008\00\00\00\08\00\00\00v")
 (data (i32.const 6496) "\08\00\00\00\01\00\00\009\00\00\00\08\00\00\00w")
 (data (i32.const 6528) "\08\00\00\00\01\00\00\00:\00\00\00\08\00\00\00x")
 (data (i32.const 6560) "\08\00\00\00\01\00\00\00;\00\00\00\08\00\00\00y")
 (data (i32.const 6592) "\08\00\00\00\01\00\00\00<\00\00\00\08\00\00\00z")
 (data (i32.const 6624) "$\00\00\00\01\00\00\00\00\00\00\00$\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 6688) "\10\00\00\00\01\00\00\00\10\00\00\00\10\00\00\00\f0\19\00\00\f0\19\00\00$\00\00\00\t")
 (data (i32.const 6720) ",\00\00\00\01\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00\n")
 (data (i32.const 6784) "\10\00\00\00\01\00\00\00\10\00\00\00\10\00\00\00P\1a\00\00P\1a\00\00,\00\00\00\0b")
 (data (i32.const 6820) "\01\00\00\00\01")
 (data (i32.const 6832) "d\00\00\00\01\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 6960) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 7024) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 7056) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 7152) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,")
 (data (i32.const 7184) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\00,\002\00,\003\00,\004\00,\005")
 (data (i32.const 7232) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 7264) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 7296) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 7344) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 7376) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 8072) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 8248) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 8288) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\001\00.\000\00,\002\00.\000\00,\003\00.\000\00,\004\00.\000\00,\005\00.\000")
 (data (i32.const 8352) ",\00\00\00\01\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00\n")
 (data (i32.const 8416) "\10\00\00\00\01\00\00\00\10\00\00\00\10\00\00\00\b0 \00\00\b0 \00\00,\00\00\00\0b")
 (data (i32.const 8448) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 8480) "\10\00\00\00\01\00\00\00\10\00\00\00\10\00\00\00\10!\00\00\10!\00\00\0c\00\00\00\03")
 (data (i32.const 8512) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\80@\00\00\a0@\00\00\c0@")
 (data (i32.const 8544) "\10\00\00\00\01\00\00\00=\00\00\00\10\00\00\00P!\00\00P!\00\00\0c\00\00\00\03")
 (data (i32.const 8576) "\18\00\00\00\01\00\00\00\00\00\00\00\18")
 (data (i32.const 8598) "\f0\7f\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff")
 (data (i32.const 8624) "\10\00\00\00\01\00\00\00>\00\00\00\10\00\00\00\90!\00\00\90!\00\00\18\00\00\00\03")
 (data (i32.const 8656) "\03\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\92\91\90")
 (data (i32.const 8688) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\e0!\00\00\e0!\00\00\03\00\00\00\03")
 (data (i32.const 8720) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03")
 (data (i32.const 8752) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00I\00n\00t\008\00A\00r\00r\00a\00y")
 (data (i32.const 8800) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06")
 (data (i32.const 8832) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06\07\08\t")
 (data (i32.const 8864) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\00\00\00\06\07\08\t")
 (data (i32.const 8896) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00defg\e8\e9\ea\92\91\90")
 (data (i32.const 8928) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03")
 (data (i32.const 8960) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00U\00i\00n\00t\008\00A\00r\00r\00a\00y")
 (data (i32.const 9008) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06")
 (data (i32.const 9040) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06\07\08\t")
 (data (i32.const 9072) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\00\00\00\06\07\08\t")
 (data (i32.const 9104) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00defg\e8\e9\ea\92\91\90")
 (data (i32.const 9136) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03")
 (data (i32.const 9168) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00U\00i\00n\00t\008\00C\00l\00a\00m\00p\00e\00d\00A\00r\00r\00a\00y")
 (data (i32.const 9232) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06")
 (data (i32.const 9264) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06\07\08\t")
 (data (i32.const 9296) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\00\00\00\06\07\08\t")
 (data (i32.const 9328) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00defg\ff\ff\ff")
 (data (i32.const 9360) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03")
 (data (i32.const 9408) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00n\00t\001\006\00A\00r\00r\00a\00y")
 (data (i32.const 9456) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06")
 (data (i32.const 9504) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\t")
 (data (i32.const 9552) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\00\00\00\00\00\00\06\00\07\00\08\00\t")
 (data (i32.const 9600) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00d\00e\00f\00g\00\e8\03\e9\03\ea\03\92\ff\91\ff\90\ff")
 (data (i32.const 9648) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03")
 (data (i32.const 9696) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00U\00i\00n\00t\001\006\00A\00r\00r\00a\00y")
 (data (i32.const 9744) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06")
 (data (i32.const 9792) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\t")
 (data (i32.const 9840) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\00\00\00\00\00\00\06\00\07\00\08\00\t")
 (data (i32.const 9888) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00d\00e\00f\00g\00\e8\03\e9\03\ea\03\92\ff\91\ff\90\ff")
 (data (i32.const 9936) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 10000) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00n\00t\003\002\00A\00r\00r\00a\00y")
 (data (i32.const 10048) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06")
 (data (i32.const 10112) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 10176) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02")
 (data (i32.const 10212) "\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 10240) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00d\00\00\00e\00\00\00f\00\00\00g\00\00\00\e8\03\00\00\e9\03\00\00\ea\03\00\00\92\ff\ff\ff\91\ff\ff\ff\90\ff\ff\ff")
 (data (i32.const 10304) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 10368) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00U\00i\00n\00t\003\002\00A\00r\00r\00a\00y")
 (data (i32.const 10416) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06")
 (data (i32.const 10480) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 10544) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02")
 (data (i32.const 10580) "\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 10608) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00d\00\00\00e\00\00\00f\00\00\00g\00\00\00\e8\03\00\00\e9\03\00\00\ea\03\00\00\92\ff\ff\ff\91\ff\ff\ff\90\ff\ff\ff")
 (data (i32.const 10672) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03")
 (data (i32.const 10768) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00n\00t\006\004\00A\00r\00r\00a\00y")
 (data (i32.const 10816) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06")
 (data (i32.const 10912) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 11008) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02")
 (data (i32.const 11064) "\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 11104) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00d\00\00\00\00\00\00\00e\00\00\00\00\00\00\00f\00\00\00\00\00\00\00g\00\00\00\00\00\00\00\e8\03\00\00\00\00\00\00\e9\03\00\00\00\00\00\00\ea\03\00\00\00\00\00\00\92\ff\ff\ff\ff\ff\ff\ff\91\ff\ff\ff\ff\ff\ff\ff\90\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 11200) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03")
 (data (i32.const 11296) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00U\00i\00n\00t\006\004\00A\00r\00r\00a\00y")
 (data (i32.const 11344) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06")
 (data (i32.const 11440) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 11536) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02")
 (data (i32.const 11592) "\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 11632) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00d\00\00\00\00\00\00\00e\00\00\00\00\00\00\00f\00\00\00\00\00\00\00g\00\00\00\00\00\00\00\e8\03\00\00\00\00\00\00\e9\03\00\00\00\00\00\00\ea\03\00\00\00\00\00\00\92\ff\ff\ff\ff\ff\ff\ff\91\ff\ff\ff\ff\ff\ff\ff\90\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 11728) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 11792) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00F\00l\00o\00a\00t\003\002\00A\00r\00r\00a\00y")
 (data (i32.const 11840) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\00\00\80?\00\00\00@\00\00@@\00\00\80@\00\00\a0@\00\00\c0@")
 (data (i32.const 11904) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\00\00\80?\00\00\00@\00\00@@\00\00\80@\00\00\a0@\00\00\c0@\00\00\e0@\00\00\00A\00\00\10A")
 (data (i32.const 11968) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\00\00\c8B\00\00\caB\00\00\ccB\00\00\ceB\00\00zD\00@zD\00\80zD\00\00\dc\c2\00\00\de\c2\00\00\e0\c2")
 (data (i32.const 12032) "P\00\00\00\01\00\00\00\00\00\00\00P")
 (data (i32.const 12054) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@")
 (data (i32.const 12128) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00F\00l\00o\00a\00t\006\004\00A\00r\00r\00a\00y")
 (data (i32.const 12176) "P\00\00\00\01\00\00\00\00\00\00\00P")
 (data (i32.const 12198) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@\00\00\00\00\00\00\10@\00\00\00\00\00\00\14@\00\00\00\00\00\00\18@")
 (data (i32.const 12272) "P\00\00\00\01\00\00\00\00\00\00\00P")
 (data (i32.const 12294) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@\00\00\00\00\00\00\10@\00\00\00\00\00\00\14@\00\00\00\00\00\00\18@\00\00\00\00\00\00\1c@\00\00\00\00\00\00 @\00\00\00\00\00\00\"@")
 (data (i32.const 12368) "P\00\00\00\01\00\00\00\00\00\00\00P")
 (data (i32.const 12390) "Y@\00\00\00\00\00@Y@\00\00\00\00\00\80Y@\00\00\00\00\00\c0Y@\00\00\00\00\00@\8f@\00\00\00\00\00H\8f@\00\00\00\00\00P\8f@\00\00\00\00\00\80[\c0\00\00\00\00\00\c0[\c0\00\00\00\00\00\00\\\c0")
 (data (i32.const 12464) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\00\ff\00\00\00d\n\ff\ff")
 (data (i32.const 12496) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\ffd\ff\00\00d\n\ff")
 (table $0 123 funcref)
 (elem (i32.const 1) $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $std/typedarray/forEachCallCount (mut i32) (i32.const 0))
 (global $std/typedarray/forEachSelf (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 12524
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
   i32.const 1152
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
   i32.const 1152
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
   i32.const 1152
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
   i32.const 1152
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
   i32.const 1152
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
    i32.const 1152
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
   i32.const 1152
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
   i32.const 1152
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
   i32.const 1152
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
   i32.const 1152
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
    i32.const 1152
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
    i32.const 1152
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
   i32.const 12528
   local.tee $0
   i32.const 0
   i32.store
   i32.const 14096
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
     i32.const 12528
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
       i32.const 12528
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
   i32.const 12528
   i32.const 14112
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 12528
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 1200
   i32.const 1152
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
   i32.const 1152
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
     i32.const 1152
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
   i32.const 1152
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
   i32.const 1152
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
     i32.const 1152
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
   i32.const 1152
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
  i32.const 12524
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
    i32.const 1264
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
    i32.const 1264
    i32.const 112
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 1040
   i32.const 1088
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  local.set $2
  local.get $1
  local.get $0
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Uint8ClampedArray#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int16Array#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Uint16Array#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int32Array#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Uint32Array#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int64Array#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Uint64Array#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Float32Array#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Float64Array#constructor (param $0 i32) (result i32)
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $std/typedarray/testInstantiate (param $0 i32)
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
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 32
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 33
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 34
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 38
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 39
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 42
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 43
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 44
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.tee $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 47
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=8
  local.get $0
  i32.const 1
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 48
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $4
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 49
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $5
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 52
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.load offset=8
  local.get $0
  i32.const 1
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 53
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 54
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.tee $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=8
  local.get $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 58
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $6
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 59
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $7
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 62
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load offset=8
  local.get $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $7
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 64
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.tee $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 67
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.load offset=8
  local.get $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $8
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 69
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $9
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 72
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.load offset=8
  local.get $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 73
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $9
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Float32Array#constructor
  local.tee $10
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 77
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  i32.load offset=8
  local.get $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 78
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $10
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 79
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.tee $11
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 82
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  i32.load offset=8
  local.get $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 83
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $11
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 84
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
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
 )
 (func $~lib/typedarray/Int32Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 675
   i32.const 64
   call $~lib/builtins/abort
   unreachable
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
 (func $~lib/typedarray/Int32Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 664
   i32.const 64
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
 (func $~lib/typedarray/Int32Array#subarray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
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
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
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
  local.set $1
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $4
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.load offset=4
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $2
  local.get $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#__set (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1315
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
 )
 (func $~lib/typedarray/Float64Array#subarray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
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
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
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
  local.set $1
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $4
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.load offset=4
  local.get $0
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $2
  local.get $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/sort/insertionSort<f64> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $5
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
    local.set $6
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
       local.set $7
       i32.const 2
       global.set $~argumentsLength
       local.get $6
       local.get $7
       local.get $5
       i32.load
       call_indirect (type $f64_f64_=>_i32)
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
       local.get $7
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
    local.get $6
    f64.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $5
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
   i32.const 1152
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
 (func $~lib/util/sort/weakHeapSort<f64> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $7
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
    local.get $7
    i32.load
    call_indirect (type $f64_f64_=>_i32)
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
     local.tee $8
     local.get $8
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
      local.get $7
      i32.load
      call_indirect (type $f64_f64_=>_i32)
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
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#sort (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $5
  call $~lib/rt/pure/__retain
  local.set $3
  block $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $2
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.tee $0
   i32.const 1
   i32.le_s
   br_if $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $2
   i32.load offset=4
   local.set $1
   local.get $0
   i32.const 2
   i32.eq
   if
    local.get $1
    f64.load offset=8
    local.set $6
    local.get $1
    f64.load
    local.set $7
    i32.const 2
    global.set $~argumentsLength
    local.get $6
    local.get $7
    local.get $3
    i32.load
    call_indirect (type $f64_f64_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $1
     local.get $7
     f64.store offset=8
     local.get $1
     local.get $6
     f64.store
    end
    br $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $0
   i32.const 256
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $4
    call $~lib/util/sort/insertionSort<f64>
   else
    local.get $1
    local.get $0
    local.get $4
    call $~lib/util/sort/weakHeapSort<f64>
   end
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
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
 (func $~lib/typedarray/Float64Array#__get (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1304
   i32.const 64
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
 (func $~lib/typedarray/Uint8ClampedArray#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 291
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.const 255
  local.get $2
  i32.sub
  i32.const 31
  i32.shr_s
  i32.or
  local.get $2
  i32.const 31
  i32.shr_s
  i32.const -1
  i32.xor
  i32.and
  i32.store8
 )
 (func $~lib/typedarray/Uint8ClampedArray#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 280
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/typedarray/Int8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 35
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Int8Array#fill (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.load offset=4
  local.set $6
  local.get $5
  i32.load offset=8
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
  local.tee $2
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $4
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
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
  local.tee $0
  i32.lt_s
  if
   local.get $2
   local.get $6
   i32.add
   local.get $1
   local.get $0
   local.get $2
   i32.sub
   call $~lib/memory/memory.fill
  end
  local.get $5
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
 (func $~lib/typedarray/Int8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 24
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $std/typedarray/isInt8ArrayEqual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  block $folding-inner0
   local.get $0
   i32.load offset=8
   local.get $1
   i32.load offset=12
   i32.ne
   br_if $folding-inner0
   local.get $0
   i32.load offset=8
   local.set $3
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $0
     local.get $2
     call $~lib/typedarray/Int8Array#__get
     local.set $4
     local.get $2
     local.get $1
     i32.load offset=12
     i32.ge_u
     if
      i32.const 1376
      i32.const 1568
      i32.const 104
      i32.const 42
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     local.get $2
     call $~lib/array/Array<i8>#__uget
     local.get $4
     i32.ne
     br_if $folding-inner0
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
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $~lib/typedarray/Int8Array#subarray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=8
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
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
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
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
  local.set $1
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $4
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $0
  local.get $4
  i32.load offset=4
  i32.add
  i32.store offset=4
  local.get $2
  local.get $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#fill (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.set $4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.load offset=4
  local.set $6
  local.get $5
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
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
  local.set $0
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
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $6
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $5
 )
 (func $~lib/array/Array<i32>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1376
   i32.const 1568
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__uget
 )
 (func $std/typedarray/isInt32ArrayEqual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  block $folding-inner0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.load offset=12
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $3
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $0
     local.get $2
     call $~lib/typedarray/Int32Array#__get
     local.get $1
     local.get $2
     call $~lib/array/Array<i32>#__get
     i32.ne
     br_if $folding-inner0
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
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $~lib/typedarray/Int32Array#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
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
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
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
  local.get $0
  i32.sub
  local.tee $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  call $~lib/typedarray/Int32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.get $4
  i32.load offset=4
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int32Array#copyWithin (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $3
  local.get $5
  i32.load offset=4
  local.tee $6
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $4
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
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
  local.get $6
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
  local.get $0
  i32.sub
  local.tee $2
  local.get $4
  local.get $1
  i32.sub
  local.tee $0
  local.get $2
  local.get $0
  i32.lt_s
  select
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $5
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Uint8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 163
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Uint8Array#reduce<u8> (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $2
    local.get $5
    i32.add
    i32.load8_u
    local.set $7
    i32.const 4
    global.set $~argumentsLength
    local.get $4
    local.get $7
    local.get $2
    local.get $0
    local.get $3
    i32.load
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $4
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Int16Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 419
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/typedarray/Uint16Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 547
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/typedarray/Int32Array#reduce<i32> (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $5
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $7
    i32.const 4
    global.set $~argumentsLength
    local.get $4
    local.get $7
    local.get $2
    local.get $0
    local.get $3
    i32.load
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $4
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint32Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 803
   i32.const 64
   call $~lib/builtins/abort
   unreachable
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
 (func $~lib/typedarray/Int64Array#__set (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 931
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $5
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $7
    i32.const 4
    global.set $~argumentsLength
    local.get $4
    local.get $7
    local.get $2
    local.get $0
    local.get $3
    i32.load
    call_indirect (type $i64_i64_i32_i32_=>_i64)
    local.set $4
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint64Array#__set (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1059
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $~lib/typedarray/Float32Array#__set (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1187
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const 0
   i32.ge_s
   if
    local.get $0
    local.get $5
    i32.add
    i32.load8_u
    local.set $6
    i32.const 4
    global.set $~argumentsLength
    local.get $4
    local.get $6
    local.get $0
    local.get $1
    local.get $3
    i32.load
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $4
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const 0
   i32.ge_s
   if
    local.get $5
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $6
    i32.const 4
    global.set $~argumentsLength
    local.get $4
    local.get $6
    local.get $0
    local.get $1
    local.get $3
    i32.load
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $4
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const 0
   i32.ge_s
   if
    local.get $5
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $6
    i32.const 4
    global.set $~argumentsLength
    local.get $4
    local.get $6
    local.get $0
    local.get $1
    local.get $3
    i32.load
    call_indirect (type $i64_i64_i32_i32_=>_i64)
    local.set $4
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Int8Array#map (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 3408
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $2
  i32.load offset=8
  local.set $0
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_s
   if
    local.get $1
    local.get $6
    i32.add
    i32.load8_s
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $1
    local.get $4
    i32.add
    local.get $7
    local.get $1
    local.get $2
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  local.get $4
  i32.store offset=4
  local.get $3
  local.get $0
  i32.store offset=8
  local.get $3
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  i32.const 3408
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#map (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 3440
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $2
  i32.load offset=8
  local.set $0
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_s
   if
    local.get $1
    local.get $6
    i32.add
    i32.load8_u
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $1
    local.get $4
    i32.add
    local.get $7
    local.get $1
    local.get $2
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  local.get $4
  i32.store offset=4
  local.get $3
  local.get $0
  i32.store offset=8
  local.get $3
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  i32.const 3440
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 152
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/typedarray/Uint8ClampedArray#map (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 3472
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $2
  i32.load offset=8
  local.set $0
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_s
   if
    local.get $1
    local.get $6
    i32.add
    i32.load8_u
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $1
    local.get $4
    i32.add
    local.get $7
    local.get $1
    local.get $2
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  local.get $4
  i32.store offset=4
  local.get $3
  local.get $0
  i32.store offset=8
  local.get $3
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  i32.const 3472
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#map (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 3504
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $0
  local.get $1
  i32.load offset=4
  local.set $6
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $0
  i32.const 1
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.lt_s
   if
    local.get $6
    local.get $3
    i32.const 1
    i32.shl
    local.tee $8
    i32.add
    i32.load16_s
    local.set $9
    i32.const 3
    global.set $~argumentsLength
    local.get $4
    local.get $8
    i32.add
    local.get $9
    local.get $3
    local.get $1
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    i32.store16
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $7
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 3504
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 408
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/typedarray/Uint16Array#map (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 3536
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $0
  local.get $1
  i32.load offset=4
  local.set $6
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $0
  i32.const 1
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.lt_s
   if
    local.get $6
    local.get $3
    i32.const 1
    i32.shl
    local.tee $8
    i32.add
    i32.load16_u
    local.set $9
    i32.const 3
    global.set $~argumentsLength
    local.get $4
    local.get $8
    i32.add
    local.get $9
    local.get $3
    local.get $1
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    i32.store16
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $7
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 3536
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 536
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/typedarray/Int32Array#map (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 3568
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $0
  local.get $1
  i32.load offset=4
  local.set $6
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $0
  i32.const 2
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.lt_s
   if
    local.get $6
    local.get $3
    i32.const 2
    i32.shl
    local.tee $8
    i32.add
    i32.load
    local.set $9
    i32.const 3
    global.set $~argumentsLength
    local.get $4
    local.get $8
    i32.add
    local.get $9
    local.get $3
    local.get $1
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $7
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 3568
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#map (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 3600
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $0
  local.get $1
  i32.load offset=4
  local.set $6
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $0
  i32.const 2
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.lt_s
   if
    local.get $6
    local.get $3
    i32.const 2
    i32.shl
    local.tee $8
    i32.add
    i32.load
    local.set $9
    i32.const 3
    global.set $~argumentsLength
    local.get $4
    local.get $8
    i32.add
    local.get $9
    local.get $3
    local.get $1
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $7
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 3600
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 792
   i32.const 64
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  local.get $0
  local.get $0
  i64.mul
 )
 (func $~lib/typedarray/Int64Array#map (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 3632
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $0
  local.get $1
  i32.load offset=4
  local.set $6
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $0
  i32.const 3
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.lt_s
   if
    local.get $6
    local.get $3
    i32.const 3
    i32.shl
    local.tee $8
    i32.add
    i64.load
    local.set $9
    i32.const 3
    global.set $~argumentsLength
    local.get $4
    local.get $8
    i32.add
    local.get $9
    local.get $3
    local.get $1
    local.get $5
    i32.load
    call_indirect (type $i64_i32_i32_=>_i64)
    i64.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $7
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 3632
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#__get (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 920
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/typedarray/Uint64Array#map (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 3664
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $0
  local.get $1
  i32.load offset=4
  local.set $6
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $0
  i32.const 3
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.lt_s
   if
    local.get $6
    local.get $3
    i32.const 3
    i32.shl
    local.tee $8
    i32.add
    i64.load
    local.set $9
    i32.const 3
    global.set $~argumentsLength
    local.get $4
    local.get $8
    i32.add
    local.get $9
    local.get $3
    local.get $1
    local.get $5
    i32.load
    call_indirect (type $i64_i32_i32_=>_i64)
    i64.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $7
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 3664
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#__get (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1048
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  local.get $0
  f32.mul
 )
 (func $~lib/typedarray/Float32Array#map (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 3696
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $0
  local.get $1
  i32.load offset=4
  local.set $6
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $0
  i32.const 2
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.lt_s
   if
    local.get $6
    local.get $3
    i32.const 2
    i32.shl
    local.tee $8
    i32.add
    f32.load
    local.set $9
    i32.const 3
    global.set $~argumentsLength
    local.get $4
    local.get $8
    i32.add
    local.get $9
    local.get $3
    local.get $1
    local.get $5
    i32.load
    call_indirect (type $f32_i32_i32_=>_f32)
    f32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $7
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 3696
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#__get (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1176
   i32.const 64
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
  local.get $0
  local.get $0
  f64.mul
 )
 (func $~lib/typedarray/Float64Array#map (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 3728
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $0
  local.get $1
  i32.load offset=4
  local.set $6
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $0
  i32.const 3
  i32.shl
  local.tee $7
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.lt_s
   if
    local.get $6
    local.get $3
    i32.const 3
    i32.shl
    local.tee $8
    i32.add
    f64.load
    local.set $9
    i32.const 3
    global.set $~argumentsLength
    local.get $4
    local.get $8
    i32.add
    local.get $9
    local.get $3
    local.get $1
    local.get $5
    i32.load
    call_indirect (type $f64_i32_i32_=>_f64)
    f64.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $7
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 3728
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.gt_s
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
  i32.const 12524
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
 (func $~lib/rt/tlsf/__realloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/typedarray/Int8Array#filter (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 3760
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $2
  i32.load offset=8
  local.set $0
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $2
  i32.load offset=4
  local.set $8
  loop $for-loop|0
   local.get $4
   local.get $0
   i32.lt_s
   if
    local.get $4
    local.get $8
    i32.add
    i32.load8_s
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $4
    local.get $2
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $1
     local.get $6
     i32.add
     local.get $7
     i32.store8
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
  local.get $6
  local.get $1
  call $~lib/rt/tlsf/__realloc
  local.tee $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  local.get $1
  i32.store offset=8
  local.get $3
  local.get $0
  i32.store offset=4
  local.get $3
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  i32.const 3760
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 6
  call $~lib/typedarray/Int8Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  call $~lib/typedarray/Int8Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 394
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.gt_u
 )
 (func $~lib/typedarray/Uint8Array#filter (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 3792
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $2
  i32.load offset=8
  local.set $0
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $2
  i32.load offset=4
  local.set $8
  loop $for-loop|0
   local.get $4
   local.get $0
   i32.lt_s
   if
    local.get $4
    local.get $8
    i32.add
    i32.load8_u
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $4
    local.get $2
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $1
     local.get $6
     i32.add
     local.get $7
     i32.store8
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
  local.get $6
  local.get $1
  call $~lib/rt/tlsf/__realloc
  local.tee $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  local.get $1
  i32.store offset=8
  local.get $3
  local.get $0
  i32.store offset=4
  local.get $3
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  i32.const 3792
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 6
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  call $~lib/typedarray/Uint8Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 394
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#filter (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 3824
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $2
  i32.load offset=8
  local.set $0
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $2
  i32.load offset=4
  local.set $8
  loop $for-loop|0
   local.get $4
   local.get $0
   i32.lt_s
   if
    local.get $4
    local.get $8
    i32.add
    i32.load8_u
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $4
    local.get $2
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $1
     local.get $6
     i32.add
     local.get $7
     i32.store8
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
  local.get $6
  local.get $1
  call $~lib/rt/tlsf/__realloc
  local.tee $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  local.get $1
  i32.store offset=8
  local.get $3
  local.get $0
  i32.store offset=4
  local.get $3
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  i32.const 3824
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8ClampedArray,u8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 394
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.gt_s
 )
 (func $~lib/typedarray/Int16Array#filter (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 3856
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $0
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  i32.const 1
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $8
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $2
    local.get $3
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $6
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.get $7
     i32.store16
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $6
  local.get $1
  i32.const 1
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $4
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 3856
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 6
  call $~lib/typedarray/Int16Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  call $~lib/typedarray/Int16Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 394
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.gt_u
 )
 (func $~lib/typedarray/Uint16Array#filter (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 3888
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $0
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  i32.const 1
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $8
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $2
    local.get $3
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $6
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.get $7
     i32.store16
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $6
  local.get $1
  i32.const 1
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $4
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 3888
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 6
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  call $~lib/typedarray/Uint16Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 394
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.gt_s
 )
 (func $~lib/typedarray/Int32Array#filter (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 3920
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $0
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $8
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $2
    local.get $3
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $6
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.get $7
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $6
  local.get $1
  i32.const 2
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $4
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 3920
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 6
  call $~lib/typedarray/Int32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  call $~lib/typedarray/Int32Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 394
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.gt_u
 )
 (func $~lib/typedarray/Uint32Array#filter (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 3952
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $0
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $8
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $2
    local.get $3
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $6
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.get $7
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $6
  local.get $1
  i32.const 2
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $4
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 3952
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 6
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  call $~lib/typedarray/Uint32Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Uint32Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 394
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>~anonymous|0 (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.gt_s
 )
 (func $~lib/typedarray/Int64Array#filter (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 3984
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $0
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  i32.const 3
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $8
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $2
    local.get $3
    local.get $5
    i32.load
    call_indirect (type $i64_i32_i32_=>_i32)
    if
     local.get $6
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $7
     i64.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $6
  local.get $1
  i32.const 3
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $4
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 3984
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 6
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 3
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 5
  i64.const 5
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  call $~lib/typedarray/Int64Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  i64.const 3
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  i64.const 5
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 394
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>~anonymous|0 (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.gt_u
 )
 (func $~lib/typedarray/Uint64Array#filter (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 4016
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $0
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  i32.const 3
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $8
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $2
    local.get $3
    local.get $5
    i32.load
    call_indirect (type $i64_i32_i32_=>_i32)
    if
     local.get $6
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $7
     i64.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $6
  local.get $1
  i32.const 3
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $4
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 4016
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 6
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 3
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 5
  i64.const 5
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  call $~lib/typedarray/Uint64Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  i64.const 3
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Uint64Array#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Uint64Array#__get
  i64.const 5
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 394
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>~anonymous|0 (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.gt
 )
 (func $~lib/typedarray/Float32Array#filter (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 4048
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $0
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $8
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $2
    local.get $3
    local.get $5
    i32.load
    call_indirect (type $f32_i32_i32_=>_i32)
    if
     local.get $6
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.get $7
     f32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $6
  local.get $1
  i32.const 2
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $4
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 4048
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 6
  call $~lib/typedarray/Float32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 3
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 5
  f32.const 5
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/typedarray/Float32Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.const 3
  f32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 4
  f32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.const 5
  f32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 394
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>~anonymous|0 (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.gt
 )
 (func $~lib/typedarray/Float64Array#filter (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 4080
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $0
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  i32.const 3
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.lt_s
   if
    local.get $8
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $7
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $2
    local.get $3
    local.get $5
    i32.load
    call_indirect (type $f64_i32_i32_=>_i32)
    if
     local.get $6
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $7
     f64.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  local.get $6
  local.get $1
  i32.const 3
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $2
  i32.store offset=4
  local.get $4
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 4080
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 6
  call $~lib/typedarray/Float64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 3
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 5
  f64.const 5
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  call $~lib/typedarray/Float64Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 3
  f64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  f64.const 4
  f64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  f64.const 5
  f64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 394
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  local.set $5
  block $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $2
     local.get $4
     i32.add
     i32.load8_s
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      i32.const 1
      local.set $7
      br $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.eqz
 )
 (func $~lib/typedarray/Uint8Array#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  local.set $5
  block $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $2
     local.get $4
     i32.add
     i32.load8_u
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      i32.const 1
      local.set $7
      br $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $5
  block $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_s
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      i32.const 1
      local.set $7
      br $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.eqz
 )
 (func $~lib/typedarray/Uint16Array#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $5
  block $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      i32.const 1
      local.set $7
      br $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $5
  block $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
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
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      i32.const 1
      local.set $7
      br $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $5
  block $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i64_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      i32.const 1
      local.set $7
      br $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $5
  block $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $f32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      i32.const 1
      local.set $7
      br $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 0
  f32.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $5
  block $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $f64_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      i32.const 1
      local.set $7
      br $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 0
  f64.eq
 )
 (func $~lib/typedarray/Int8Array#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  local.set $5
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $2
     local.get $4
     i32.add
     i32.load8_s
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $~lib/typedarray/Uint8Array#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  local.set $5
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $2
     local.get $4
     i32.add
     i32.load8_u
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/typedarray/Int16Array#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $5
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_s
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
 )
 (func $~lib/typedarray/Uint16Array#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $5
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $5
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
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
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 4
  i32.eq
 )
 (func $~lib/typedarray/Int64Array#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $5
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i64_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 4
  i64.eq
 )
 (func $~lib/typedarray/Float32Array#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $5
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $f32_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 4
  f32.eq
 )
 (func $~lib/typedarray/Float64Array#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $5
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $f64_i32_i32_=>_i32)
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 4
  f64.eq
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
  local.set $0
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  local.set $5
  block $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $2
     local.get $4
     i32.add
     i32.load8_s
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     i32.eqz
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 1
   local.set $7
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $~lib/typedarray/Uint8Array#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  local.set $5
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $2
     local.get $4
     i32.add
     i32.load8_u
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     i32.eqz
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 1
   local.set $7
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
  local.set $0
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/typedarray/Int16Array#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $5
  block $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_s
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     i32.eqz
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 1
   local.set $7
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/typedarray/Uint16Array#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $5
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     i32.eqz
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 1
   local.set $7
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  i32.rem_s
  i32.eqz
  local.set $0
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/typedarray/Int32Array#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $5
  block $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
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
     i32.load
     call_indirect (type $i32_i32_i32_=>_i32)
     i32.eqz
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 1
   local.set $7
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $0
  i64.const 2
  i64.rem_s
  i64.eqz
  local.set $2
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/typedarray/Int64Array#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $5
  block $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $i64_i32_i32_=>_i32)
     i32.eqz
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 1
   local.set $7
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 1
  i64.and
  i64.eqz
 )
 (func $~lib/math/NativeMathf.mod (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  i32.const 0
  local.get $0
  i32.reinterpret_f32
  local.tee $1
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.tee $2
  i32.const 255
  i32.eq
  select
  if
   local.get $0
   f32.const 2
   f32.mul
   local.tee $0
   local.get $0
   f32.div
   return
  end
  local.get $1
  i32.const -2147483648
  i32.and
  local.set $4
  block $folding-inner0
   local.get $1
   i32.const 1
   i32.shl
   local.tee $3
   i32.const -2147483648
   i32.le_u
   if
    local.get $3
    i32.const -2147483648
    i32.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $2
   if (result i32)
    local.get $1
    i32.const 8388607
    i32.and
    i32.const 8388608
    i32.or
   else
    local.get $1
    i32.const 1
    local.get $2
    local.get $1
    i32.const 9
    i32.shl
    i32.clz
    i32.sub
    local.tee $2
    i32.sub
    i32.shl
   end
   local.set $1
   loop $while-continue|0
    local.get $2
    i32.const 128
    i32.gt_s
    if
     local.get $1
     i32.const 8388608
     i32.ge_u
     if (result i32)
      local.get $1
      i32.const 8388608
      i32.eq
      br_if $folding-inner0
      local.get $1
      i32.const 8388608
      i32.sub
     else
      local.get $1
     end
     i32.const 1
     i32.shl
     local.set $1
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   local.get $1
   i32.const 8388608
   i32.ge_u
   if
    local.get $1
    i32.const 8388608
    i32.eq
    br_if $folding-inner0
    local.get $1
    i32.const 8388608
    i32.sub
    local.set $1
   end
   local.get $1
   local.get $1
   i32.const 8
   i32.shl
   i32.clz
   local.tee $3
   i32.shl
   local.set $1
   local.get $2
   local.get $3
   i32.sub
   local.tee $2
   i32.const 0
   i32.gt_s
   if (result i32)
    local.get $1
    i32.const 8388608
    i32.sub
    local.get $2
    i32.const 23
    i32.shl
    i32.or
   else
    local.get $1
    i32.const 1
    local.get $2
    i32.sub
    i32.shr_u
   end
   local.get $4
   i32.or
   f32.reinterpret_i32
   return
  end
  f32.const 0
  local.get $0
  f32.mul
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/math/NativeMathf.mod
  f32.const 0
  f32.eq
  local.set $2
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/typedarray/Float32Array#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $5
  block $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $f32_i32_i32_=>_i32)
     i32.eqz
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 1
   local.set $7
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/math/NativeMath.mod (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  i32.const 1
  i32.const 0
  local.get $0
  i64.reinterpret_f64
  local.tee $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.tee $2
  i64.const 2047
  i64.eq
  select
  if
   local.get $0
   f64.const 2
   f64.mul
   local.tee $0
   local.get $0
   f64.div
   return
  end
  local.get $1
  i64.const 63
  i64.shr_u
  local.set $4
  block $folding-inner0
   local.get $1
   i64.const 1
   i64.shl
   local.tee $3
   i64.const -9223372036854775808
   i64.le_u
   if
    local.get $3
    i64.const -9223372036854775808
    i64.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $2
   i64.eqz
   if (result i64)
    local.get $1
    i64.const 0
    local.get $2
    local.get $1
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    local.tee $2
    i64.sub
    i64.const 1
    i64.add
    i64.shl
   else
    local.get $1
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   local.set $1
   loop $while-continue|0
    local.get $2
    i64.const 1024
    i64.gt_s
    if
     local.get $1
     i64.const 4503599627370496
     i64.ge_u
     if (result i64)
      local.get $1
      i64.const 4503599627370496
      i64.eq
      br_if $folding-inner0
      local.get $1
      i64.const 4503599627370496
      i64.sub
     else
      local.get $1
     end
     i64.const 1
     i64.shl
     local.set $1
     local.get $2
     i64.const 1
     i64.sub
     local.set $2
     br $while-continue|0
    end
   end
   local.get $1
   i64.const 4503599627370496
   i64.ge_u
   if
    local.get $1
    i64.const 4503599627370496
    i64.eq
    br_if $folding-inner0
    local.get $1
    i64.const 4503599627370496
    i64.sub
    local.set $1
   end
   local.get $1
   local.get $1
   i64.const 11
   i64.shl
   i64.clz
   local.tee $3
   i64.shl
   local.set $1
   local.get $2
   local.get $3
   i64.sub
   local.tee $2
   i64.const 0
   i64.gt_s
   if (result i64)
    local.get $1
    i64.const 4503599627370496
    i64.sub
    local.get $2
    i64.const 52
    i64.shl
    i64.or
   else
    local.get $1
    i64.const 0
    local.get $2
    i64.sub
    i64.const 1
    i64.add
    i64.shr_u
   end
   local.get $4
   i64.const 63
   i64.shl
   i64.or
   f64.reinterpret_i64
   return
  end
  f64.const 0
  local.get $0
  f64.mul
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/math/NativeMath.mod
  f64.const 0
  f64.eq
  local.set $2
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/typedarray/Float64Array#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $5
  block $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0
   loop $for-loop|0
    local.get $2
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect (type $f64_i32_i32_=>_i32)
     i32.eqz
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 1
   local.set $7
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.const 255
  i32.and
  i32.const 6256
  local.get $1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 490
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 491
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 492
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#forEach (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  local.set $5
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    local.get $2
    local.get $4
    i32.add
    i32.load8_u
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $0
    local.get $3
    i32.load
    call_indirect (type $i32_i32_i32_=>_none)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.const 65535
  i32.and
  i32.const 6256
  local.get $1
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 490
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 491
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 492
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 6256
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 490
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 491
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 492
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#forEach (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $5
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $0
    local.get $3
    i32.load
    call_indirect (type $i32_i32_i32_=>_none)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 (param $0 i64) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.const 6256
  local.get $1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 490
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 491
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 492
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#forEach (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $5
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $0
    local.get $3
    i32.load
    call_indirect (type $i64_i32_i32_=>_none)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 (param $0 f32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.const 6256
  local.get $1
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  f32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 490
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 491
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 492
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0 (param $0 f64) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.const 6256
  local.get $1
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  f64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 490
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 491
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 492
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    local.get $4
    i32.add
    local.tee $2
    i32.load8_s
    local.set $5
    local.get $2
    local.get $0
    local.get $4
    i32.add
    local.tee $2
    i32.load8_s
    i32.store8
    local.get $2
    local.get $5
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 6716
  i32.load
  local.tee $1
  call $~lib/typedarray/Int8Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/typedarray/Int8Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $3
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int8Array#__get
    i32.const 6704
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 524
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int8Array#subarray
  local.tee $1
  call $~lib/typedarray/Int8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 6704
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    local.get $4
    i32.add
    local.tee $2
    i32.load8_u
    local.set $5
    local.get $2
    local.get $0
    local.get $4
    i32.add
    local.tee $2
    i32.load8_u
    i32.store8
    local.get $2
    local.get $5
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#subarray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=8
  local.tee $0
  i32.const 4
  local.get $0
  i32.lt_s
  select
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $0
   local.get $1
   local.get $0
   i32.lt_s
   select
  end
  local.set $0
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $3
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  local.get $3
  i32.load offset=4
  i32.add
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $2
  local.get $0
  local.get $2
  i32.gt_s
  select
  local.get $2
  i32.sub
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 6716
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $3
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Uint8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint8Array#__get
    i32.const 6704
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 524
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Uint8Array#subarray
  local.tee $1
  call $~lib/typedarray/Uint8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 6704
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#subarray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=8
  local.tee $0
  i32.const 4
  local.get $0
  i32.lt_s
  select
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $0
   local.get $1
   local.get $0
   i32.lt_s
   select
  end
  local.set $0
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $3
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  local.get $3
  i32.load offset=4
  i32.add
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $2
  local.get $0
  local.get $2
  i32.gt_s
  select
  local.get $2
  i32.sub
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 6716
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $3
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Uint8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint8ClampedArray#__get
    i32.const 6704
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 524
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Uint8ClampedArray#subarray
  local.tee $1
  call $~lib/typedarray/Uint8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 6704
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $4
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    local.tee $2
    i32.load16_s
    local.set $5
    local.get $2
    local.get $4
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.tee $2
    i32.load16_s
    i32.store16
    local.get $2
    local.get $5
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Int16Array#subarray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.tee $0
  i32.const 4
  local.get $0
  i32.lt_s
  select
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $0
   local.get $1
   local.get $0
   i32.lt_s
   select
  end
  local.set $0
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $3
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.load offset=4
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $2
  local.get $0
  local.get $2
  i32.gt_s
  select
  local.get $2
  i32.sub
  i32.const 1
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 6716
  i32.load
  local.tee $1
  call $~lib/typedarray/Int16Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/typedarray/Int16Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $3
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int16Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int16Array#__get
    i32.const 6704
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 524
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Int16Array#subarray
  local.tee $1
  call $~lib/typedarray/Int16Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int16Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 6704
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $4
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    local.tee $2
    i32.load16_u
    local.set $5
    local.get $2
    local.get $4
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.tee $2
    i32.load16_u
    i32.store16
    local.get $2
    local.get $5
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Uint16Array#subarray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.tee $0
  i32.const 4
  local.get $0
  i32.lt_s
  select
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $0
   local.get $1
   local.get $0
   i32.lt_s
   select
  end
  local.set $0
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $3
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.load offset=4
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $2
  local.get $0
  local.get $2
  i32.gt_s
  select
  local.get $2
  i32.sub
  i32.const 1
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 6716
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $3
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Uint16Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint16Array#__get
    i32.const 6704
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 524
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Uint16Array#subarray
  local.tee $1
  call $~lib/typedarray/Uint16Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint16Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 6704
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  local.get $3
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    i32.load
    local.set $5
    local.get $2
    local.get $4
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    i32.load
    i32.store
    local.get $2
    local.get $5
    i32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 6716
  i32.load
  local.tee $1
  call $~lib/typedarray/Int32Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/typedarray/Int32Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $3
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    i32.const 6704
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 524
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int32Array#subarray
  local.tee $1
  call $~lib/typedarray/Int32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int32Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 6704
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#subarray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $0
  i32.const 4
  local.get $0
  i32.lt_s
  select
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $0
   local.get $1
   local.get $0
   i32.lt_s
   select
  end
  local.set $0
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $3
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $2
  local.get $0
  local.get $2
  i32.gt_s
  select
  local.get $2
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 6716
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $3
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint32Array#__get
    i32.const 6704
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 524
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Uint32Array#subarray
  local.tee $1
  call $~lib/typedarray/Int32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint32Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 6704
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  local.get $3
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $4
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    i64.load
    local.set $5
    local.get $2
    local.get $4
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    i64.load
    i64.store
    local.get $2
    local.get $5
    i64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Int64Array#subarray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $0
  i32.const 4
  local.get $0
  i32.lt_s
  select
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $0
   local.get $1
   local.get $0
   i32.lt_s
   select
  end
  local.set $0
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $3
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.load offset=4
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $2
  local.get $0
  local.get $2
  i32.gt_s
  select
  local.get $2
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 6716
  i32.load
  local.tee $1
  call $~lib/typedarray/Int64Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/typedarray/Int64Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $3
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int64Array#__get
    i32.const 6704
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    i64.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 524
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Int64Array#subarray
  local.tee $1
  call $~lib/typedarray/Int64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  i64.const 8
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  i64.const 7
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int64Array#__get
  i64.const 5
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 6704
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#subarray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $0
  i32.const 4
  local.get $0
  i32.lt_s
  select
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $0
   local.get $1
   local.get $0
   i32.lt_s
   select
  end
  local.set $0
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $3
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.load offset=4
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $2
  local.get $0
  local.get $2
  i32.gt_s
  select
  local.get $2
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 6716
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $3
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint64Array#__get
    i32.const 6704
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    i64.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 524
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Uint64Array#subarray
  local.tee $1
  call $~lib/typedarray/Int64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  i64.const 8
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint64Array#__get
  i64.const 7
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint64Array#__get
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint64Array#__get
  i64.const 5
  i64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 6704
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  local.get $3
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    f32.load
    local.set $5
    local.get $2
    local.get $4
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    f32.load
    f32.store
    local.get $2
    local.get $5
    f32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Float32Array#subarray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $0
  i32.const 4
  local.get $0
  i32.lt_s
  select
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $0
   local.get $1
   local.get $0
   i32.lt_s
   select
  end
  local.set $0
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $3
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $2
  local.get $0
  local.get $2
  i32.gt_s
  select
  local.get $2
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 6716
  i32.load
  local.tee $1
  call $~lib/typedarray/Float32Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/typedarray/Float32Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $3
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Float32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Float32Array#__get
    i32.const 6704
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    f32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 524
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Float32Array#subarray
  local.tee $1
  call $~lib/typedarray/Float32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.const 8
  f32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 7
  f32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  f32.const 5
  f32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 6704
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  local.get $3
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $4
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    f64.load
    local.set $5
    local.get $2
    local.get $4
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    f64.load
    f64.store
    local.get $2
    local.get $5
    f64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 6716
  i32.load
  local.tee $1
  call $~lib/typedarray/Float64Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/typedarray/Float64Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $3
    local.get $0
    i32.const 6704
    local.get $0
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Float64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Float64Array#__get
    i32.const 6704
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    f64.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 524
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Float64Array#subarray
  local.tee $1
  call $~lib/typedarray/Float64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 8
  f64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 529
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  f64.const 7
  f64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 530
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 531
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Float64Array#__get
  f64.const 5
  f64.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 6704
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
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
   local.set $4
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $2
     local.get $4
     i32.add
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int8Array#lastIndexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   local.tee $3
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $3
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $2
     local.get $3
     i32.add
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int8Array#lastIndexOf@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
   i32.load offset=8
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int8Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int8Array,i8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 6812
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 6800
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 560
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 561
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  if
   i32.const 0
   i32.const 1312
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 573
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 574
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 576
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Int8Array#subarray
  local.tee $1
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 582
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 583
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 586
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 587
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 6800
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8Array,u8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 6812
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 6800
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 560
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 561
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  if
   i32.const 0
   i32.const 1312
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 573
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 574
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 576
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Uint8Array#subarray
  local.tee $1
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 582
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 583
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 586
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 587
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 6800
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8ClampedArray,u8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 6812
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 6800
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 560
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 561
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  if
   i32.const 0
   i32.const 1312
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf@varargs
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 573
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 574
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 576
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Uint8ClampedArray#subarray
  local.tee $1
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 582
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 583
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 586
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 587
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 6800
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
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
   local.set $4
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.get $1
     i32.const 65535
     i32.and
     i32.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int16Array#lastIndexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   local.tee $3
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $3
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $3
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.get $1
     i32.const 65535
     i32.and
     i32.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int16Array#lastIndexOf@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
   i32.load offset=8
   i32.const 1
   i32.shr_u
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int16Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int16Array,i16>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 6812
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 6800
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 560
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 561
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int16Array#lastIndexOf@varargs
  if
   i32.const 0
   i32.const 1312
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int16Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int16Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int16Array#lastIndexOf@varargs
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 573
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 574
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 576
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Int16Array#subarray
  local.tee $1
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 582
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 583
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 586
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 587
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 6800
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint16Array,u16>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 6812
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 6800
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 560
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 561
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int16Array#lastIndexOf@varargs
  if
   i32.const 0
   i32.const 1312
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int16Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int16Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int16Array#lastIndexOf@varargs
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 573
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 574
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 576
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Uint16Array#subarray
  local.tee $1
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 582
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 583
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 586
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 587
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 6800
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
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
   local.set $4
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $1
     local.get $4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#lastIndexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.tee $3
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $3
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $1
     local.get $3
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#lastIndexOf@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int32Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int32Array,i32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 6812
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 6800
    local.get $1
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 560
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 561
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#lastIndexOf@varargs
  if
   i32.const 0
   i32.const 1312
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int32Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int32Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int32Array#lastIndexOf@varargs
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 573
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 574
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 576
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Int32Array#subarray
  local.tee $1
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 582
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 583
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 586
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 587
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 6800
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint32Array,u32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 6812
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 6800
    local.get $1
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 560
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 561
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#lastIndexOf@varargs
  if
   i32.const 0
   i32.const 1312
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int32Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int32Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int32Array#lastIndexOf@varargs
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 573
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 574
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 576
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Uint32Array#subarray
  local.tee $1
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 582
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 583
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 586
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 587
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 6800
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#indexOf (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
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
   local.set $4
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $1
     local.get $4
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     i64.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int64Array#lastIndexOf (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.tee $3
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $3
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $1
     local.get $3
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     i64.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int64Array#lastIndexOf@varargs (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
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
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int64Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int64Array,i64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 6812
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 6800
    local.get $1
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i64.const 0
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const -1
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 560
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 561
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const 10
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -100
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 0
  call $~lib/typedarray/Int64Array#lastIndexOf@varargs
  if
   i32.const 0
   i32.const 1312
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 11
  call $~lib/typedarray/Int64Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const -1
  call $~lib/typedarray/Int64Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 3
  call $~lib/typedarray/Int64Array#lastIndexOf@varargs
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 573
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const 100
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 574
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -10
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -11
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 576
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Int64Array#subarray
  local.tee $1
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 4
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 5
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 582
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 9
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 583
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 10
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 5
  i32.const 1
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 586
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 5
  i32.const 2
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 587
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 6800
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint64Array,u64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 6812
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 6800
    local.get $1
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i64.const 0
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const -1
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 560
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 561
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const 10
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -100
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 0
  call $~lib/typedarray/Int64Array#lastIndexOf@varargs
  if
   i32.const 0
   i32.const 1312
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 11
  call $~lib/typedarray/Int64Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const -1
  call $~lib/typedarray/Int64Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 3
  call $~lib/typedarray/Int64Array#lastIndexOf@varargs
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 573
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const 100
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 574
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -10
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -11
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 576
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Uint64Array#subarray
  local.tee $1
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 4
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 5
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 582
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 9
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 583
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 10
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 5
  i32.const 1
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 586
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i64.const 5
  i32.const 2
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 587
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 6800
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#indexOf (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
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
   local.set $4
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.get $1
     f32.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float32Array#lastIndexOf (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.tee $3
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $3
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $3
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.get $1
     f32.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float32Array#lastIndexOf@varargs (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
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
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Float32Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float32Array,f32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 6812
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Float32Array#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 6800
    local.get $1
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  f32.const 0
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 11
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const -1
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 560
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 2
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 561
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 3
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 4
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 1
  i32.const 10
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 1
  i32.const -100
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f32.const 0
  call $~lib/typedarray/Float32Array#lastIndexOf@varargs
  if
   i32.const 0
   i32.const 1312
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f32.const 11
  call $~lib/typedarray/Float32Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f32.const -1
  call $~lib/typedarray/Float32Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f32.const 3
  call $~lib/typedarray/Float32Array#lastIndexOf@varargs
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 4
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 3
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 2
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 573
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 1
  i32.const 100
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 574
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 1
  i32.const -10
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 1
  i32.const -11
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 576
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Float32Array#subarray
  local.tee $1
  f32.const 3
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f32.const 4
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f32.const 5
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 582
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f32.const 9
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 583
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f32.const 10
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f32.const 11
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f32.const 5
  i32.const 1
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 586
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f32.const 5
  i32.const 2
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 587
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 6800
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#indexOf (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
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
   local.set $4
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $4
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.get $1
     f64.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float64Array#lastIndexOf (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.tee $3
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $3
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $3
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.get $1
     f64.eq
     if
      local.get $0
      call $~lib/rt/pure/__release
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float64Array#lastIndexOf@varargs (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
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
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Float64Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float64Array,f64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 6812
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 6800
    local.get $1
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  f64.const 0
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 557
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 11
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 558
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const -1
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 560
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 2
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 561
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 3
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 4
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 1
  i32.const 10
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 1
  i32.const -100
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f64.const 0
  call $~lib/typedarray/Float64Array#lastIndexOf@varargs
  if
   i32.const 0
   i32.const 1312
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f64.const 11
  call $~lib/typedarray/Float64Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f64.const -1
  call $~lib/typedarray/Float64Array#lastIndexOf@varargs
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f64.const 3
  call $~lib/typedarray/Float64Array#lastIndexOf@varargs
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 4
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 3
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 2
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 573
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 1
  i32.const 100
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 574
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 1
  i32.const -10
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 1
  i32.const -11
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 576
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Float64Array#subarray
  local.tee $1
  f64.const 3
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f64.const 4
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  if
   i32.const 0
   i32.const 1312
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f64.const 5
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 582
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f64.const 9
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 583
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f64.const 10
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f64.const 11
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f64.const 5
  i32.const 1
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 586
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  f64.const 5
  i32.const 2
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 587
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 6800
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
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
   i32.const 7040
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
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
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
   i32.const 6832
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
 (func $~lib/util/string/joinIntegerArray<i8> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 7168
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
   i32.const 6832
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
 (func $~lib/typedarray/Int8Array#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  call $~lib/util/string/joinIntegerArray<i8>
  i32.const 7168
  call $~lib/rt/pure/__release
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
 (func $~lib/util/number/utoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 7040
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
 (func $~lib/util/string/joinIntegerArray<u8> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 7168
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
   i32.const 6832
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load8_u
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
    i32.add
    i32.load8_u
    call $~lib/util/number/itoa_buffered<u8>
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
  i32.load8_u
  call $~lib/util/number/itoa_buffered<u8>
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
 (func $~lib/typedarray/Uint8Array#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  call $~lib/util/string/joinIntegerArray<u8>
  i32.const 7168
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/itoa_buffered<i16> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
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
  i32.const 16
  i32.shl
  i32.const 16
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
   i32.const 16
   i32.shl
   i32.const 16
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
  i32.const 16
  i32.shl
  i32.const 16
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
 (func $~lib/util/string/joinIntegerArray<i16> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 7168
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
   i32.const 6832
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load16_s
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
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    call $~lib/util/number/itoa_buffered<i16>
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
  i32.load16_s
  call $~lib/util/number/itoa_buffered<i16>
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
 (func $~lib/typedarray/Int16Array#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  call $~lib/util/string/joinIntegerArray<i16>
  i32.const 7168
  call $~lib/rt/pure/__release
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
  i32.const 7168
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
   i32.const 6832
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
 (func $~lib/typedarray/Uint16Array#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  call $~lib/util/string/joinIntegerArray<u16>
  i32.const 7168
  call $~lib/rt/pure/__release
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
 (func $~lib/util/string/joinIntegerArray<i32> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 7168
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
   i32.const 6832
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load
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
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/util/number/itoa_buffered<i32>
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
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/util/number/itoa_buffered<i32>
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
 (func $~lib/typedarray/Int32Array#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  call $~lib/util/string/joinIntegerArray<i32>
  i32.const 7168
  call $~lib/rt/pure/__release
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
 (func $~lib/util/string/joinIntegerArray<u32> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 7168
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
   i32.const 6832
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load
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
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/util/number/itoa_buffered<u32>
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
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/util/number/itoa_buffered<u32>
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
 (func $~lib/typedarray/Uint32Array#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  call $~lib/util/string/joinIntegerArray<u32>
  i32.const 7168
  call $~lib/rt/pure/__release
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
  i32.const 7168
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
   i32.const 6832
   return
  end
  local.get $5
  i32.eqz
  if
   block $__inlined_func$~lib/util/number/itoa64 (result i32)
    i32.const 7040
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
 (func $~lib/typedarray/Int64Array#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  call $~lib/util/string/joinIntegerArray<i64>
  i32.const 7168
  call $~lib/rt/pure/__release
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
  i32.const 7168
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
   i32.const 6832
   return
  end
  local.get $4
  i32.eqz
  if
   block $__inlined_func$~lib/util/number/utoa64 (result i32)
    i32.const 7040
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
 (func $~lib/typedarray/Uint64Array#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  call $~lib/util/string/joinIntegerArray<u64>
  i32.const 7168
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
     i32.const 8248
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
   i32.const 8248
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
  i32.const 7376
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  local.get $4
  i32.const 1
  i32.shl
  i32.const 8072
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
 (func $~lib/util/number/dtoa (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 7248
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
    i32.const 7280
    return
   end
   i32.const 7312
   i32.const 7360
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
  call $~lib/rt/tlsf/maybeInitialize
  local.get $1
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
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
 (func $~lib/util/string/joinFloatArray<f32> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 7168
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
   i32.const 6832
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   f32.load
   f64.promote_f32
   call $~lib/util/number/dtoa
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $4
  local.get $3
  call $~lib/string/String#get:length
  local.tee $5
  i32.const 28
  i32.add
  i32.mul
  i32.const 28
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
    i32.const 2
    i32.shl
    i32.add
    f32.load
    f64.promote_f32
    call $~lib/util/number/dtoa_buffered
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
  i32.const 2
  i32.shl
  i32.add
  f32.load
  f64.promote_f32
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
 (func $~lib/typedarray/Float32Array#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  call $~lib/util/string/joinFloatArray<f32>
  i32.const 7168
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/string/joinFloatArray<f64> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 7168
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
   i32.const 6832
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $0
   f64.load
   call $~lib/util/number/dtoa
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $4
  local.get $3
  call $~lib/string/String#get:length
  local.tee $5
  i32.const 28
  i32.add
  i32.mul
  i32.const 28
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
    i32.const 3
    i32.shl
    i32.add
    f64.load
    call $~lib/util/number/dtoa_buffered
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
 (func $~lib/typedarray/Float64Array#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  call $~lib/util/string/joinFloatArray<f64>
  i32.const 7168
  call $~lib/rt/pure/__release
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 1040
   i32.const 1088
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Uint8Array.wrap (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $5
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $4
  i32.gt_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1741
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $2
   i32.const -1
   i32.eq
   if (result i32)
    local.get $4
    local.get $1
    i32.sub
   else
    i32.const 1040
    i32.const 1440
    i32.const 1750
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.set $0
  else
   local.get $2
   local.tee $0
   local.get $1
   i32.add
   local.get $4
   i32.gt_s
   if
    i32.const 1040
    i32.const 1440
    i32.const 1755
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $1
  local.get $3
  i32.add
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array.wrap@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint8Array.wrap
 )
 (func $~lib/arraybuffer/ArrayBuffer#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.const 16
  i32.sub
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
  call $~lib/rt/tlsf/__alloc
  local.tee $3
  local.get $0
  local.get $1
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int8Array,i8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8444
  i32.load
  local.tee $4
  call $~lib/typedarray/Int8Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 8432
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 1
  global.set $~argumentsLength
  local.get $5
  call $~lib/rt/pure/__retain
  local.tee $7
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $0
  local.set $8
  i32.const 0
  local.get $0
  i32.gt_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1741
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $8
  i32.store offset=8
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Int8Array#__get
    local.get $0
    local.get $2
    call $~lib/typedarray/Int8Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 684
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $6
  call $~lib/rt/pure/__release
  i32.const 8432
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint8Array,u8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 8444
  i32.load
  local.tee $3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 8432
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.load
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $0
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $1
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint8Array.wrap@varargs
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 684
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  i32.const 8432
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint8ClampedArray,u8>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8444
  i32.load
  local.tee $4
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 8432
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 1
  global.set $~argumentsLength
  local.get $5
  call $~lib/rt/pure/__retain
  local.tee $7
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $0
  local.set $8
  i32.const 0
  local.get $0
  i32.gt_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1741
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $8
  i32.store offset=8
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8ClampedArray#__get
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8ClampedArray#__get
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 684
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $6
  call $~lib/rt/pure/__release
  i32.const 8432
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int16Array,i16>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8444
  i32.load
  local.tee $4
  call $~lib/typedarray/Int16Array#constructor
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 8432
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  local.get $5
  call $~lib/rt/pure/__retain
  local.tee $8
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $6
  i32.gt_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1741
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 1
  i32.and
  if
   i32.const 1040
   i32.const 1440
   i32.const 1746
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $6
  i32.store offset=8
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Int16Array#__get
    local.get $0
    local.get $2
    call $~lib/typedarray/Int16Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 684
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $7
  call $~lib/rt/pure/__release
  i32.const 8432
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint16Array,u16>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8444
  i32.load
  local.tee $4
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 8432
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  local.get $5
  call $~lib/rt/pure/__retain
  local.tee $8
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $6
  i32.gt_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1741
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 1
  i32.and
  if
   i32.const 1040
   i32.const 1440
   i32.const 1746
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $6
  i32.store offset=8
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint16Array#__get
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint16Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 684
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $7
  call $~lib/rt/pure/__release
  i32.const 8432
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int32Array,i32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8444
  i32.load
  local.tee $4
  call $~lib/typedarray/Int32Array#constructor
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 8432
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  local.get $5
  call $~lib/rt/pure/__retain
  local.tee $8
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $6
  i32.gt_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1741
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 3
  i32.and
  if
   i32.const 1040
   i32.const 1440
   i32.const 1746
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $6
  i32.store offset=8
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    local.get $0
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 684
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $7
  call $~lib/rt/pure/__release
  i32.const 8432
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint32Array,u32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8444
  i32.load
  local.tee $4
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 8432
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  local.get $5
  call $~lib/rt/pure/__retain
  local.tee $8
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $6
  i32.gt_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1741
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 3
  i32.and
  if
   i32.const 1040
   i32.const 1440
   i32.const 1746
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $6
  i32.store offset=8
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint32Array#__get
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint32Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 684
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $7
  call $~lib/rt/pure/__release
  i32.const 8432
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int64Array,i64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8444
  i32.load
  local.tee $4
  call $~lib/typedarray/Int64Array#constructor
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 8432
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  local.get $5
  call $~lib/rt/pure/__retain
  local.tee $8
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $6
  i32.gt_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1741
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 7
  i32.and
  if
   i32.const 1040
   i32.const 1440
   i32.const 1746
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $6
  i32.store offset=8
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Int64Array#__get
    local.get $0
    local.get $2
    call $~lib/typedarray/Int64Array#__get
    i64.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 684
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $7
  call $~lib/rt/pure/__release
  i32.const 8432
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint64Array,u64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8444
  i32.load
  local.tee $4
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 8432
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  local.get $5
  call $~lib/rt/pure/__retain
  local.tee $8
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $6
  i32.gt_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1741
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 7
  i32.and
  if
   i32.const 1040
   i32.const 1440
   i32.const 1746
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $6
  i32.store offset=8
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint64Array#__get
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint64Array#__get
    i64.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 684
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $7
  call $~lib/rt/pure/__release
  i32.const 8432
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Float32Array,f32>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8444
  i32.load
  local.tee $4
  call $~lib/typedarray/Float32Array#constructor
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 8432
    local.get $0
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  local.get $5
  call $~lib/rt/pure/__retain
  local.tee $8
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $6
  i32.gt_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1741
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 3
  i32.and
  if
   i32.const 1040
   i32.const 1440
   i32.const 1746
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $6
  i32.store offset=8
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Float32Array#__get
    local.get $0
    local.get $2
    call $~lib/typedarray/Float32Array#__get
    f32.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 684
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $7
  call $~lib/rt/pure/__release
  i32.const 8432
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Float64Array,f64>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8444
  i32.load
  local.tee $4
  call $~lib/typedarray/Float64Array#constructor
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 8432
    local.get $0
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  local.get $5
  call $~lib/rt/pure/__retain
  local.tee $8
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $6
  i32.gt_u
  if
   i32.const 1376
   i32.const 1440
   i32.const 1741
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 7
  i32.and
  if
   i32.const 1040
   i32.const 1440
   i32.const 1746
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $6
  i32.store offset=8
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Float64Array#__get
    local.get $0
    local.get $2
    call $~lib/typedarray/Float64Array#__get
    f64.ne
    if
     i32.const 0
     i32.const 1312
     i32.const 684
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $7
  call $~lib/rt/pure/__release
  i32.const 8432
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#set<~lib/array/Array<i32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8496
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.load offset=4
  local.set $4
  local.get $2
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.lt_s
   if
    local.get $1
    local.get $3
    i32.add
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8496
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int8Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 712
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.load offset=4
    i32.add
    i32.load8_s
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<i8>#__uget
    local.tee $5
    i32.ne
    if
     i32.const 8768
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_s
     local.get $5
     f64.convert_i32_s
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 1312
     i32.const 718
     i32.const 7
     call $~lib/builtins/abort
     unreachable
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
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#set<~lib/array/Array<f32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8560
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $1
    local.get $4
    i32.add
    local.get $5
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $3
    local.get $3
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $3
     i32.trunc_f32_s
    else
     i32.const 0
    end
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8560
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#set<~lib/typedarray/Int64Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 6
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 6
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $2
    local.get $4
    i32.add
    local.get $5
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    i64.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#set<~lib/array/Array<f64>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8640
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $1
    local.get $4
    i32.add
    local.get $5
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $3
    local.get $3
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $3
     i32.trunc_f64_s
    else
     i32.const 0
    end
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8640
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#set<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  call $~lib/memory/memory.copy
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#set<~lib/typedarray/Int16Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $2
    local.get $4
    i32.add
    local.get $5
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#set<~lib/array/Array<i8>> (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8704
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=12
  i32.const 7
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 7
  i32.add
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  call $~lib/memory/memory.copy
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8704
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int8Array>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Int8Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 15
  i32.const 8736
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 15
  i32.const 8816
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 15
  i32.const 8848
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 15
  i32.const 8880
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 15
  i32.const 8912
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 712
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__uget
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<u8>#__uget
    local.tee $5
    i32.ne
    if
     i32.const 8976
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_u
     local.get $5
     f64.convert_i32_u
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 1312
     i32.const 718
     i32.const 7
     call $~lib/builtins/abort
     unreachable
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
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#set<~lib/array/Array<f32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8560
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $1
    local.get $4
    i32.add
    local.get $5
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $3
    local.get $3
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $3
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8560
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#set<~lib/array/Array<f64>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8640
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $1
    local.get $4
    i32.add
    local.get $5
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $3
    local.get $3
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $3
     i32.trunc_f64_u
    else
     i32.const 0
    end
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8640
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint8Array>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 63
  i32.const 8944
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $0
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 63
  i32.const 9024
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 63
  i32.const 9056
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $0
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 63
  i32.const 9088
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 63
  i32.const 9120
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<i32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8496
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $1
    local.get $4
    i32.add
    local.get $5
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $3
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    local.get $3
    i32.const 255
    local.get $3
    i32.sub
    i32.const 31
    i32.shr_s
    i32.or
    i32.and
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8496
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 712
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__uget
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<u8>#__uget
    local.tee $5
    i32.ne
    if
     i32.const 9184
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_u
     local.get $5
     f64.convert_i32_u
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 1312
     i32.const 718
     i32.const 7
     call $~lib/builtins/abort
     unreachable
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
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8560
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $1
    local.get $4
    i32.add
    local.get $5
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $3
    local.get $3
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     f32.const 0
     f32.const 255
     local.get $3
     f32.min
     f32.max
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8560
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int64Array> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1774
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.add
  local.get $1
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.load offset=4
  i32.add
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $7
  loop $for-loop|0
   local.get $3
   local.get $7
   i32.lt_s
   if
    local.get $2
    local.get $3
    i32.add
    local.get $6
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.tee $5
    i32.wrap_i64
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    i64.extend_i32_s
    local.get $5
    i32.const 255
    local.get $5
    i32.wrap_i64
    i32.sub
    i32.const 31
    i32.shr_s
    i64.extend_i32_s
    i64.or
    i64.and
    i64.store8
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f64>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8640
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $1
    local.get $4
    i32.add
    local.get $5
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $3
    local.get $3
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     f64.const 0
     f64.const 255
     local.get $3
     f64.min
     f64.max
     i32.trunc_f64_u
    else
     i32.const 0
    end
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8640
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int16Array> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1774
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.add
  local.get $1
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.load offset=4
  i32.add
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $7
  loop $for-loop|0
   local.get $3
   local.get $7
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.add
    local.get $6
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    local.tee $2
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    local.get $2
    i32.const 255
    local.get $2
    i32.sub
    i32.const 31
    i32.shr_s
    i32.or
    i32.and
    i32.store8
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<i8>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8704
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 7
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 7
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $1
    local.get $4
    i32.add
    local.get $1
    local.get $5
    i32.add
    i32.load8_s
    local.tee $3
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    local.get $3
    i32.const 255
    local.get $3
    i32.sub
    i32.const 31
    i32.shr_s
    i32.or
    i32.and
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8704
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint8ClampedArray>
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
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $3
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $3
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $3
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $2
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $2
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $2
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $4
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $4
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $4
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $7
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 63
  i32.const 9152
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 63
  i32.const 9248
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $9
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $0
  local.get $3
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 63
  i32.const 9280
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 63
  i32.const 9312
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $6
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.load offset=8
  local.get $1
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.get $5
  i32.load offset=4
  local.get $5
  i32.load offset=8
  call $~lib/memory/memory.copy
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  local.get $4
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 63
  i32.const 9344
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#set<~lib/array/Array<i32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8496
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.load offset=4
  local.set $4
  local.get $2
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.lt_s
   if
    local.get $3
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8496
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int16Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 712
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Int16Array#__uget
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/typedarray/Int16Array#__uget
    local.tee $5
    i32.ne
    if
     i32.const 9424
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_s
     local.get $5
     f64.convert_i32_s
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 1312
     i32.const 718
     i32.const 7
     call $~lib/builtins/abort
     unreachable
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
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#set<~lib/array/Array<f32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8560
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 6
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    local.get $5
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $3
    local.get $3
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $3
     i32.trunc_f32_s
    else
     i32.const 0
    end
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8560
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#set<~lib/typedarray/Int64Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 6
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 12
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $5
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    i64.store16
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#set<~lib/array/Array<f64>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8640
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    local.get $5
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $3
    local.get $3
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $3
     i32.trunc_f64_s
    else
     i32.const 0
    end
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8640
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#set<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $2
    local.get $5
    i32.add
    i32.load8_u
    i32.store16
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#set<~lib/typedarray/Int16Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  call $~lib/memory/memory.copy
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#set<~lib/array/Array<i8>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8704
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 7
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 14
  i32.add
  local.set $3
  local.get $2
  i32.load offset=4
  local.set $4
  local.get $2
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.lt_s
   if
    local.get $3
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    local.get $1
    local.get $4
    i32.add
    i32.load8_s
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8704
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int16Array>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Int16Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 64
  i32.const 9376
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 64
  i32.const 9472
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 64
  i32.const 9520
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 64
  i32.const 9568
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 64
  i32.const 9616
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 712
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint16Array#__uget
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint16Array#__uget
    local.tee $5
    i32.ne
    if
     i32.const 9712
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_u
     local.get $5
     f64.convert_i32_u
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 1312
     i32.const 718
     i32.const 7
     call $~lib/builtins/abort
     unreachable
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
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#set<~lib/array/Array<f32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8560
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 6
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    local.get $5
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $3
    local.get $3
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $3
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8560
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#set<~lib/array/Array<f64>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8640
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    local.get $5
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $3
    local.get $3
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $3
     i32.trunc_f64_u
    else
     i32.const 0
    end
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8640
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint16Array>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 65
  i32.const 9664
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $0
  call $~lib/typedarray/Uint16Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 65
  i32.const 9760
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 65
  i32.const 9808
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $0
  call $~lib/typedarray/Uint16Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 65
  i32.const 9856
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 65
  i32.const 9904
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#set<~lib/array/Array<i32>> (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8496
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=12
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  call $~lib/memory/memory.copy
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8496
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int32Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 712
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/array/Array<i32>#__uget
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<i32>#__uget
    local.tee $5
    i32.ne
    if
     i32.const 10016
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_s
     local.get $5
     f64.convert_i32_s
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 1312
     i32.const 718
     i32.const 7
     call $~lib/builtins/abort
     unreachable
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
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#set<~lib/array/Array<f32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8560
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 12
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    local.tee $7
    i32.add
    local.get $5
    local.get $7
    i32.add
    f32.load
    local.tee $3
    local.get $3
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $3
     i32.trunc_f32_s
    else
     i32.const 0
    end
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8560
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#set<~lib/typedarray/Int64Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 6
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    i64.store32
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#set<~lib/array/Array<f64>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8640
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $3
    local.get $3
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $3
     i32.trunc_f64_s
    else
     i32.const 0
    end
    i32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8640
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#set<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.get $2
    local.get $5
    i32.add
    i32.load8_u
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#set<~lib/typedarray/Int16Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 16
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#set<~lib/array/Array<i8>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8704
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 7
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 28
  i32.add
  local.set $3
  local.get $2
  i32.load offset=4
  local.set $4
  local.get $2
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.lt_s
   if
    local.get $3
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    local.get $1
    local.get $4
    i32.add
    i32.load8_s
    i32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8704
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int32Array>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Int32Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 16
  i32.const 9952
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 16
  i32.const 10064
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 16
  i32.const 10128
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 16
  i32.const 10192
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 16
  i32.const 10256
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 712
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/array/Array<i32>#__uget
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<i32>#__uget
    local.tee $5
    i32.ne
    if
     i32.const 10384
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_u
     local.get $5
     f64.convert_i32_u
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 1312
     i32.const 718
     i32.const 7
     call $~lib/builtins/abort
     unreachable
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
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#set<~lib/array/Array<f32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8560
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 12
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    local.tee $7
    i32.add
    local.get $5
    local.get $7
    i32.add
    f32.load
    local.tee $3
    local.get $3
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $3
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8560
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#set<~lib/array/Array<f64>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8640
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $3
    local.get $3
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $3
     i32.trunc_f64_u
    else
     i32.const 0
    end
    i32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8640
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint32Array>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 66
  i32.const 10320
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $0
  call $~lib/typedarray/Uint32Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 66
  i32.const 10432
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 66
  i32.const 10496
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $0
  call $~lib/typedarray/Uint32Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 66
  i32.const 10560
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 66
  i32.const 10624
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#set<~lib/array/Array<i32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8496
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.load offset=4
  local.set $4
  local.get $2
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.lt_s
   if
    local.get $3
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_s
    i64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8496
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#__uget (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int64Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 712
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Int64Array#__uget
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/typedarray/Int64Array#__uget
    local.tee $5
    i64.ne
    if
     i32.const 10784
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i64_s
     local.get $5
     f64.convert_i64_s
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 1312
     i32.const 718
     i32.const 7
     call $~lib/builtins/abort
     unreachable
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
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#set<~lib/array/Array<f32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8560
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.get $5
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $3
    local.get $3
    f32.sub
    f32.const 0
    f32.eq
    if (result i64)
     local.get $3
     i64.trunc_f32_s
    else
     i64.const 0
    end
    i64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8560
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#set<~lib/typedarray/Int64Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 6
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 48
  i32.add
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  call $~lib/memory/memory.copy
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#set<~lib/array/Array<f64>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8640
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 16
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 3
    i32.shl
    local.tee $7
    i32.add
    local.get $5
    local.get $7
    i32.add
    f64.load
    local.tee $3
    local.get $3
    f64.sub
    f64.const 0
    f64.eq
    if (result i64)
     local.get $3
     i64.trunc_f64_s
    else
     i64.const 0
    end
    i64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8640
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#set<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    local.get $2
    local.get $5
    i32.add
    i64.load8_u
    i64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#set<~lib/typedarray/Int16Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 32
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    local.get $5
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i64.load16_s
    i64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#set<~lib/array/Array<i8>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8704
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 7
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 56
  i32.add
  local.set $3
  local.get $2
  i32.load offset=4
  local.set $4
  local.get $2
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.lt_s
   if
    local.get $3
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.get $1
    local.get $4
    i32.add
    i64.load8_s
    i64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8704
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int64Array>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Int64Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 67
  i32.const 10688
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 67
  i32.const 10832
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 67
  i32.const 10928
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 67
  i32.const 11024
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 67
  i32.const 11120
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 712
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Int64Array#__uget
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/typedarray/Int64Array#__uget
    local.tee $5
    i64.ne
    if
     i32.const 11312
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i64_u
     local.get $5
     f64.convert_i64_u
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 1312
     i32.const 718
     i32.const 7
     call $~lib/builtins/abort
     unreachable
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
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#set<~lib/array/Array<f32>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8560
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $4
  local.get $2
  i32.load offset=4
  local.set $5
  local.get $2
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.get $5
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $3
    local.get $3
    f32.sub
    f32.const 0
    f32.eq
    if (result i64)
     local.get $3
     i64.trunc_f32_u
    else
     i64.const 0
    end
    i64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8560
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#set<~lib/array/Array<f64>> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 8640
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 16
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 3
    i32.shl
    local.tee $7
    i32.add
    local.get $5
    local.get $7
    i32.add
    f64.load
    local.tee $3
    local.get $3
    f64.sub
    f64.const 0
    f64.eq
    if (result i64)
     local.get $3
     i64.trunc_f64_u
    else
     i64.const 0
    end
    i64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 8640
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint64Array>
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $5
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 68
  i32.const 11216
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $0
  call $~lib/typedarray/Uint64Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 68
  i32.const 11360
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 68
  i32.const 11456
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $0
  call $~lib/typedarray/Uint64Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 68
  i32.const 11552
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 68
  i32.const 11648
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#__uget (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Float32Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 712
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Float32Array#__uget
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/typedarray/Float32Array#__uget
    local.tee $5
    f32.ne
    if
     i32.const 11808
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.promote_f32
     local.get $5
     f64.promote_f32
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 1312
     i32.const 718
     i32.const 7
     call $~lib/builtins/abort
     unreachable
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
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#set<~lib/typedarray/Int64Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 6
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    f32.convert_i64_s
    f32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#set<~lib/typedarray/Int16Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 16
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    f32.convert_i32_s
    f32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Float32Array>
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
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $7
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $7
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $7
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $5
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $5
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $5
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $5
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $8
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $8
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $8
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Float32Array#constructor
  local.tee $14
  call $~lib/rt/pure/__retain
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $1
  block $folding-inner0
   i32.const 8496
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=12
   local.get $1
   i32.load offset=8
   i32.const 2
   i32.shr_u
   i32.gt_s
   br_if $folding-inner0
   local.get $1
   i32.load offset=4
   local.set $9
   local.get $2
   i32.load offset=4
   local.set $10
   local.get $2
   i32.load offset=12
   local.set $11
   loop $for-loop|0
    local.get $0
    local.get $11
    i32.lt_s
    if
     local.get $9
     local.get $0
     i32.const 2
     i32.shl
     local.tee $6
     i32.add
     local.get $6
     local.get $10
     i32.add
     i32.load
     f32.convert_i32_s
     f32.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 8496
   call $~lib/rt/pure/__release
   local.get $3
   i32.const 10
   i32.const 2
   i32.const 61
   i32.const 11744
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $9
   call $std/typedarray/valuesEqual<~lib/typedarray/Float32Array>
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $0
   i32.const 8560
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.load offset=12
   i32.const 3
   i32.add
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   i32.gt_s
   br_if $folding-inner0
   local.get $0
   i32.load offset=4
   i32.const 12
   i32.add
   local.get $1
   i32.load offset=4
   local.get $1
   i32.load offset=8
   call $~lib/memory/memory.copy
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 8560
   call $~lib/rt/pure/__release
   local.get $3
   i32.const 10
   i32.const 2
   i32.const 61
   i32.const 11856
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $10
   call $std/typedarray/valuesEqual<~lib/typedarray/Float32Array>
   local.get $3
   local.get $7
   call $~lib/typedarray/Float32Array#set<~lib/typedarray/Int64Array>
   local.get $3
   i32.const 10
   i32.const 2
   i32.const 61
   i32.const 11920
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $11
   call $std/typedarray/valuesEqual<~lib/typedarray/Float32Array>
   i32.const 0
   local.set $0
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $4
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=8
   local.get $1
   i32.load offset=8
   i32.const 2
   i32.shr_u
   i32.gt_s
   br_if $folding-inner0
   local.get $1
   i32.load offset=4
   local.set $6
   local.get $2
   i32.load offset=4
   local.set $12
   local.get $2
   i32.load offset=8
   local.set $13
   loop $for-loop|00
    local.get $0
    local.get $13
    i32.lt_s
    if
     local.get $6
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     local.get $0
     local.get $12
     i32.add
     i32.load8_u
     f32.convert_i32_u
     f32.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|00
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $3
   local.get $8
   call $~lib/typedarray/Float32Array#set<~lib/typedarray/Int16Array>
   i32.const 0
   local.set $0
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $1
   i32.const 8704
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=12
   i32.const 7
   i32.add
   local.get $1
   i32.load offset=8
   i32.const 2
   i32.shr_u
   i32.gt_s
   br_if $folding-inner0
   local.get $1
   i32.load offset=4
   i32.const 28
   i32.add
   local.set $6
   local.get $2
   i32.load offset=4
   local.set $12
   local.get $2
   i32.load offset=12
   local.set $13
   loop $for-loop|01
    local.get $0
    local.get $13
    i32.lt_s
    if
     local.get $6
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     local.get $0
     local.get $12
     i32.add
     i32.load8_s
     f32.convert_i32_s
     f32.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|01
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 8704
   call $~lib/rt/pure/__release
   local.get $3
   i32.const 10
   i32.const 2
   i32.const 61
   i32.const 11984
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $0
   call $std/typedarray/valuesEqual<~lib/typedarray/Float32Array>
   local.get $0
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $14
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   local.get $11
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1376
  i32.const 1440
  i32.const 1775
  i32.const 47
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/typedarray/Float64Array#__uget (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Float64Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 712
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Float64Array#__uget
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/typedarray/Float64Array#__uget
    local.tee $5
    f64.ne
    if
     i32.const 12144
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     local.get $5
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 1312
     i32.const 718
     i32.const 7
     call $~lib/builtins/abort
     unreachable
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
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#set<~lib/typedarray/Int64Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 6
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 48
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 3
    i32.shl
    local.tee $7
    i32.add
    local.get $5
    local.get $7
    i32.add
    i64.load
    f64.convert_i64_s
    f64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#set<~lib/typedarray/Int16Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 32
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    local.get $5
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    f64.convert_i32_s
    f64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Float64Array>
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
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $7
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $7
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $7
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $5
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $5
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $5
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $5
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $8
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $8
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $8
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Float64Array#constructor
  local.tee $13
  call $~lib/rt/pure/__retain
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $1
  block $folding-inner1
   i32.const 8496
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=12
   local.get $1
   i32.load offset=8
   i32.const 3
   i32.shr_u
   i32.gt_s
   br_if $folding-inner1
   local.get $1
   i32.load offset=4
   local.set $4
   local.get $2
   i32.load offset=4
   local.set $9
   local.get $2
   i32.load offset=12
   local.set $6
   loop $for-loop|0
    local.get $0
    local.get $6
    i32.lt_s
    if
     local.get $4
     local.get $0
     i32.const 3
     i32.shl
     i32.add
     local.get $9
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     f64.convert_i32_s
     f64.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 8496
   call $~lib/rt/pure/__release
   local.get $3
   i32.const 10
   i32.const 3
   i32.const 62
   i32.const 12048
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $9
   call $std/typedarray/valuesEqual<~lib/typedarray/Float64Array>
   i32.const 0
   local.set $0
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $1
   i32.const 8560
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=12
   i32.const 3
   i32.add
   local.get $1
   i32.load offset=8
   i32.const 3
   i32.shr_u
   i32.gt_s
   br_if $folding-inner1
   local.get $1
   i32.load offset=4
   i32.const 24
   i32.add
   local.set $4
   local.get $2
   i32.load offset=4
   local.set $6
   local.get $2
   i32.load offset=12
   local.set $10
   loop $for-loop|00
    local.get $0
    local.get $10
    i32.lt_s
    if
     local.get $4
     local.get $0
     i32.const 3
     i32.shl
     i32.add
     local.get $6
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     f32.load
     f64.promote_f32
     f64.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|00
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 8560
   call $~lib/rt/pure/__release
   local.get $3
   i32.const 10
   i32.const 3
   i32.const 62
   i32.const 12192
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $6
   call $std/typedarray/valuesEqual<~lib/typedarray/Float64Array>
   local.get $3
   local.get $7
   call $~lib/typedarray/Float64Array#set<~lib/typedarray/Int64Array>
   local.get $3
   i32.const 10
   i32.const 3
   i32.const 62
   i32.const 12288
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $10
   call $std/typedarray/valuesEqual<~lib/typedarray/Float64Array>
   i32.const 0
   local.set $0
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $4
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=8
   local.get $1
   i32.load offset=8
   i32.const 3
   i32.shr_u
   i32.gt_s
   br_if $folding-inner1
   local.get $1
   i32.load offset=4
   local.set $11
   local.get $2
   i32.load offset=4
   local.set $12
   local.get $2
   i32.load offset=8
   local.set $14
   loop $for-loop|001
    local.get $0
    local.get $14
    i32.lt_s
    if
     local.get $11
     local.get $0
     i32.const 3
     i32.shl
     i32.add
     local.get $0
     local.get $12
     i32.add
     i32.load8_u
     f64.convert_i32_u
     f64.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|001
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $3
   local.get $8
   call $~lib/typedarray/Float64Array#set<~lib/typedarray/Int16Array>
   i32.const 0
   local.set $0
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $1
   i32.const 8704
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=12
   i32.const 7
   i32.add
   local.get $1
   i32.load offset=8
   i32.const 3
   i32.shr_u
   i32.gt_s
   br_if $folding-inner1
   local.get $1
   i32.load offset=4
   i32.const 56
   i32.add
   local.set $4
   local.get $2
   i32.load offset=4
   local.set $11
   local.get $2
   i32.load offset=12
   local.set $12
   loop $for-loop|01
    local.get $0
    local.get $12
    i32.lt_s
    if
     local.get $4
     local.get $0
     i32.const 3
     i32.shl
     i32.add
     local.get $0
     local.get $11
     i32.add
     i32.load8_s
     f64.convert_i32_s
     f64.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|01
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 8704
   call $~lib/rt/pure/__release
   local.get $3
   i32.const 10
   i32.const 3
   i32.const 62
   i32.const 12384
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $0
   call $std/typedarray/valuesEqual<~lib/typedarray/Float64Array>
   local.get $0
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1376
  i32.const 1440
  i32.const 1775
  i32.const 47
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Float32Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  local.set $5
  local.get $1
  i32.load offset=4
  local.set $6
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $7
  loop $for-loop|0
   local.get $2
   local.get $7
   i32.lt_s
   if
    local.get $2
    local.get $5
    i32.add
    local.get $6
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $4
    local.get $4
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     f32.const 0
     f32.const 255
     local.get $4
     f32.min
     f32.max
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int32Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 8
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  local.set $5
  local.get $1
  i32.load offset=4
  local.set $6
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $7
  loop $for-loop|0
   local.get $2
   local.get $7
   i32.lt_s
   if
    local.get $2
    local.get $5
    i32.add
    local.get $6
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $4
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    local.get $4
    i32.const 255
    local.get $4
    i32.sub
    i32.const 31
    i32.shr_s
    i32.or
    i32.and
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Uint32Array> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 1376
   i32.const 1440
   i32.const 1775
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $5
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $2
    local.get $4
    i32.add
    i32.const 255
    local.get $5
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $7
    i32.const 255
    local.get $7
    i32.lt_u
    select
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $start:std/typedarray
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f64)
  (local $11 i32)
  (local $12 f32)
  (local $13 f64)
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
  i32.const 0
  call $std/typedarray/testInstantiate
  i32.const 5
  call $std/typedarray/testInstantiate
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 95
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 96
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 97
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 98
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 99
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 100
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#subarray
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 103
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 104
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 105
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 106
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 8
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 7
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 3
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 4
  f64.const 5
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 5
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 6
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 7
  f64.const 8
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Float64Array#subarray
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 122
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 16
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 123
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 124
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~argumentsLength
  local.get $1
  i32.const 1504
  call $~lib/typedarray/Float64Array#sort
  i32.const 1504
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 4
  f64.eq
  if (result i32)
   local.get $1
   i32.const 1
   call $~lib/typedarray/Float64Array#__get
   f64.const 5
   f64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 2
   call $~lib/typedarray/Float64Array#__get
   f64.const 6
   f64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 3
   call $~lib/typedarray/Float64Array#__get
   f64.const 7
   f64.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 126
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  i32.const 0
  i32.const -32
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 256
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  if
   i32.const 0
   i32.const 1312
   i32.const 135
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 136
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 137
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 5
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 15
  i32.const 1536
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 149
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 15
  i32.const 1616
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 152
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 15
  i32.const 1648
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 155
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 15
  i32.const 1680
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 158
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 15
  i32.const 1712
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 161
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  local.tee $1
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 165
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 166
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 167
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 0
  i32.const 15
  i32.const 1744
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 168
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 15
  i32.const 1776
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 169
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
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  i32.const 5
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 1808
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 181
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 1856
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 184
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 1904
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 187
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 1952
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 190
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2000
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 193
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#subarray
  local.tee $1
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 197
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 198
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 199
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 2
  i32.const 16
  i32.const 2048
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 200
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2080
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 201
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
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  i32.const 6
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 5
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 6
  call $~lib/typedarray/Int8Array#subarray
  local.tee $1
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 222
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 223
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 224
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 225
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 5
  call $~lib/typedarray/Int8Array#subarray
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 228
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=8
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 229
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 230
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=8
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 231
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  local.tee $3
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 234
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 235
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 236
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 237
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
  i32.const 5
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.set $2
  local.get $0
  i32.const 0
  i32.const 3
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $3
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2128
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 248
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 1
  i32.const 3
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $5
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2176
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 250
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $7
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2224
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 252
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 2
  i32.const 2
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $11
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2272
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $14
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 254
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $15
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2320
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $16
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 256
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $17
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2368
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $18
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 258
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 4
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $19
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2416
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $20
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 260
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const -2
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $21
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2464
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $22
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 262
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const -2
  i32.const -1
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $23
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2512
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $24
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 264
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const -4
  i32.const -3
  i32.const -2
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $25
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2560
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $26
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 266
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const -4
  i32.const -3
  i32.const -1
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $27
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $28
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 268
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const -4
  i32.const -3
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $1
  i32.const 5
  i32.const 2
  i32.const 16
  i32.const 2656
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $29
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 1312
   i32.const 270
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
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $15
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
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $26
  call $~lib/rt/pure/__release
  local.get $27
  call $~lib/rt/pure/__release
  local.get $28
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $29
  call $~lib/rt/pure/__release
  i32.const 5
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#subarray
  local.tee $2
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 282
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 283
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=8
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 284
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int32Array#slice
  local.tee $1
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 287
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 288
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 289
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 290
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 291
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#slice
  local.tee $3
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 294
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 295
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 1312
   i32.const 296
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 297
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.tee $4
  i32.eq
  if
   i32.const 0
   i32.const 1312
   i32.const 300
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 301
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 302
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=8
  local.get $0
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 1312
   i32.const 303
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  i32.const 0
  local.set $0
  i32.const 0
  local.set $3
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 2704
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $7
  local.get $2
  i32.load offset=8
  local.set $8
  loop $for-loop|0
   local.get $0
   local.get $8
   i32.lt_s
   if
    local.get $0
    local.get $7
    i32.add
    i32.load8_s
    local.set $11
    i32.const 4
    global.set $~argumentsLength
    local.get $3
    local.get $11
    local.get $0
    local.get $2
    local.get $5
    i32.load
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $3
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  i32.const 2704
  call $~lib/rt/pure/__release
  block $folding-inner18
   block $folding-inner0
    block $folding-inner17
     block $folding-inner16
      block $folding-inner13
       block $folding-inner12
        block $folding-inner11
         block $folding-inner10
          block $folding-inner9
           block $folding-inner8
            block $folding-inner7
             block $folding-inner6
              block $folding-inner5
               block $folding-inner4
                block $folding-inner3
                 block $folding-inner2
                  local.get $3
                  i32.const 255
                  i32.and
                  i32.const 6
                  i32.ne
                  br_if $folding-inner2
                  local.get $6
                  call $~lib/rt/pure/__release
                  local.get $1
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Uint8Array#constructor
                  local.tee $1
                  call $~lib/rt/pure/__retain
                  local.tee $0
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Uint8Array#__set
                  local.get $0
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Uint8Array#__set
                  local.get $0
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Uint8Array#__set
                  local.get $0
                  i32.const 2736
                  call $~lib/typedarray/Uint8Array#reduce<u8>
                  i32.const 255
                  i32.and
                  i32.const 6
                  i32.ne
                  br_if $folding-inner2
                  local.get $1
                  call $~lib/rt/pure/__release
                  local.get $0
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Uint8ClampedArray#constructor
                  local.tee $1
                  call $~lib/rt/pure/__retain
                  local.tee $0
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Uint8ClampedArray#__set
                  local.get $0
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Uint8ClampedArray#__set
                  local.get $0
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Uint8ClampedArray#__set
                  local.get $0
                  i32.const 2768
                  call $~lib/typedarray/Uint8Array#reduce<u8>
                  i32.const 255
                  i32.and
                  i32.const 6
                  i32.ne
                  br_if $folding-inner2
                  local.get $1
                  call $~lib/rt/pure/__release
                  local.get $0
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Int16Array#constructor
                  local.tee $6
                  call $~lib/rt/pure/__retain
                  local.tee $1
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Int16Array#__set
                  local.get $1
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Int16Array#__set
                  local.get $1
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Int16Array#__set
                  i32.const 0
                  local.set $0
                  i32.const 0
                  local.set $3
                  local.get $1
                  call $~lib/rt/pure/__retain
                  local.set $2
                  i32.const 2800
                  call $~lib/rt/pure/__retain
                  local.set $5
                  local.get $2
                  i32.load offset=4
                  local.set $7
                  local.get $2
                  i32.load offset=8
                  i32.const 1
                  i32.shr_u
                  local.set $8
                  loop $for-loop|00
                   local.get $0
                   local.get $8
                   i32.lt_s
                   if
                    local.get $7
                    local.get $0
                    i32.const 1
                    i32.shl
                    i32.add
                    i32.load16_s
                    local.set $11
                    i32.const 4
                    global.set $~argumentsLength
                    local.get $3
                    local.get $11
                    local.get $0
                    local.get $2
                    local.get $5
                    i32.load
                    call_indirect (type $i32_i32_i32_i32_=>_i32)
                    local.set $3
                    local.get $0
                    i32.const 1
                    i32.add
                    local.set $0
                    br $for-loop|00
                   end
                  end
                  local.get $5
                  call $~lib/rt/pure/__release
                  local.get $2
                  call $~lib/rt/pure/__release
                  i32.const 2800
                  call $~lib/rt/pure/__release
                  local.get $3
                  i32.const 65535
                  i32.and
                  i32.const 6
                  i32.ne
                  br_if $folding-inner2
                  local.get $6
                  call $~lib/rt/pure/__release
                  local.get $1
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Uint16Array#constructor
                  local.tee $6
                  call $~lib/rt/pure/__retain
                  local.tee $1
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Uint16Array#__set
                  local.get $1
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Uint16Array#__set
                  local.get $1
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Uint16Array#__set
                  i32.const 0
                  local.set $0
                  i32.const 0
                  local.set $3
                  local.get $1
                  call $~lib/rt/pure/__retain
                  local.set $2
                  i32.const 2832
                  call $~lib/rt/pure/__retain
                  local.set $5
                  local.get $2
                  i32.load offset=4
                  local.set $7
                  local.get $2
                  i32.load offset=8
                  i32.const 1
                  i32.shr_u
                  local.set $8
                  loop $for-loop|01
                   local.get $0
                   local.get $8
                   i32.lt_s
                   if
                    local.get $7
                    local.get $0
                    i32.const 1
                    i32.shl
                    i32.add
                    i32.load16_u
                    local.set $11
                    i32.const 4
                    global.set $~argumentsLength
                    local.get $3
                    local.get $11
                    local.get $0
                    local.get $2
                    local.get $5
                    i32.load
                    call_indirect (type $i32_i32_i32_i32_=>_i32)
                    local.set $3
                    local.get $0
                    i32.const 1
                    i32.add
                    local.set $0
                    br $for-loop|01
                   end
                  end
                  local.get $5
                  call $~lib/rt/pure/__release
                  local.get $2
                  call $~lib/rt/pure/__release
                  i32.const 2832
                  call $~lib/rt/pure/__release
                  local.get $3
                  i32.const 65535
                  i32.and
                  i32.const 6
                  i32.ne
                  br_if $folding-inner2
                  local.get $6
                  call $~lib/rt/pure/__release
                  local.get $1
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Int32Array#constructor
                  local.tee $1
                  call $~lib/rt/pure/__retain
                  local.tee $0
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Int32Array#__set
                  local.get $0
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Int32Array#__set
                  local.get $0
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Int32Array#__set
                  local.get $0
                  i32.const 2864
                  call $~lib/typedarray/Int32Array#reduce<i32>
                  i32.const 6
                  i32.ne
                  br_if $folding-inner2
                  local.get $1
                  call $~lib/rt/pure/__release
                  local.get $0
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Uint32Array#constructor
                  local.tee $1
                  call $~lib/rt/pure/__retain
                  local.tee $0
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Uint32Array#__set
                  local.get $0
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Uint32Array#__set
                  local.get $0
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Uint32Array#__set
                  local.get $0
                  i32.const 2896
                  call $~lib/typedarray/Int32Array#reduce<i32>
                  i32.const 6
                  i32.ne
                  br_if $folding-inner2
                  local.get $1
                  call $~lib/rt/pure/__release
                  local.get $0
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Int64Array#constructor
                  local.tee $1
                  call $~lib/rt/pure/__retain
                  local.tee $0
                  i32.const 0
                  i64.const 1
                  call $~lib/typedarray/Int64Array#__set
                  local.get $0
                  i32.const 1
                  i64.const 2
                  call $~lib/typedarray/Int64Array#__set
                  local.get $0
                  i32.const 2
                  i64.const 3
                  call $~lib/typedarray/Int64Array#__set
                  local.get $0
                  i32.const 2928
                  call $~lib/typedarray/Int64Array#reduce<i64>
                  i64.const 6
                  i64.ne
                  br_if $folding-inner2
                  local.get $1
                  call $~lib/rt/pure/__release
                  local.get $0
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Uint64Array#constructor
                  local.tee $1
                  call $~lib/rt/pure/__retain
                  local.tee $0
                  i32.const 0
                  i64.const 1
                  call $~lib/typedarray/Uint64Array#__set
                  local.get $0
                  i32.const 1
                  i64.const 2
                  call $~lib/typedarray/Uint64Array#__set
                  local.get $0
                  i32.const 2
                  i64.const 3
                  call $~lib/typedarray/Uint64Array#__set
                  local.get $0
                  i32.const 2960
                  call $~lib/typedarray/Int64Array#reduce<i64>
                  i64.const 6
                  i64.ne
                  br_if $folding-inner2
                  local.get $1
                  call $~lib/rt/pure/__release
                  local.get $0
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Float32Array#constructor
                  local.tee $5
                  call $~lib/rt/pure/__retain
                  local.tee $1
                  i32.const 0
                  f32.const 1
                  call $~lib/typedarray/Float32Array#__set
                  local.get $1
                  i32.const 1
                  f32.const 2
                  call $~lib/typedarray/Float32Array#__set
                  local.get $1
                  i32.const 2
                  f32.const 3
                  call $~lib/typedarray/Float32Array#__set
                  i32.const 0
                  local.set $0
                  local.get $1
                  call $~lib/rt/pure/__retain
                  local.set $2
                  i32.const 2992
                  call $~lib/rt/pure/__retain
                  local.set $4
                  local.get $2
                  i32.load offset=4
                  local.set $6
                  local.get $2
                  i32.load offset=8
                  i32.const 2
                  i32.shr_u
                  local.set $7
                  loop $for-loop|02
                   local.get $0
                   local.get $7
                   i32.lt_s
                   if
                    local.get $6
                    local.get $0
                    i32.const 2
                    i32.shl
                    i32.add
                    f32.load
                    local.set $12
                    i32.const 4
                    global.set $~argumentsLength
                    local.get $9
                    local.get $12
                    local.get $0
                    local.get $2
                    local.get $4
                    i32.load
                    call_indirect (type $f32_f32_i32_i32_=>_f32)
                    local.set $9
                    local.get $0
                    i32.const 1
                    i32.add
                    local.set $0
                    br $for-loop|02
                   end
                  end
                  local.get $4
                  call $~lib/rt/pure/__release
                  local.get $2
                  call $~lib/rt/pure/__release
                  i32.const 2992
                  call $~lib/rt/pure/__release
                  local.get $9
                  f32.const 6
                  f32.ne
                  br_if $folding-inner2
                  local.get $5
                  call $~lib/rt/pure/__release
                  local.get $1
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Float64Array#constructor
                  local.tee $5
                  call $~lib/rt/pure/__retain
                  local.tee $1
                  i32.const 0
                  f64.const 1
                  call $~lib/typedarray/Float64Array#__set
                  local.get $1
                  i32.const 1
                  f64.const 2
                  call $~lib/typedarray/Float64Array#__set
                  local.get $1
                  i32.const 2
                  f64.const 3
                  call $~lib/typedarray/Float64Array#__set
                  i32.const 0
                  local.set $0
                  local.get $1
                  call $~lib/rt/pure/__retain
                  local.set $2
                  i32.const 3024
                  call $~lib/rt/pure/__retain
                  local.set $4
                  local.get $2
                  i32.load offset=4
                  local.set $6
                  local.get $2
                  i32.load offset=8
                  i32.const 3
                  i32.shr_u
                  local.set $7
                  loop $for-loop|03
                   local.get $0
                   local.get $7
                   i32.lt_s
                   if
                    local.get $6
                    local.get $0
                    i32.const 3
                    i32.shl
                    i32.add
                    f64.load
                    local.set $13
                    i32.const 4
                    global.set $~argumentsLength
                    local.get $10
                    local.get $13
                    local.get $0
                    local.get $2
                    local.get $4
                    i32.load
                    call_indirect (type $f64_f64_i32_i32_=>_f64)
                    local.set $10
                    local.get $0
                    i32.const 1
                    i32.add
                    local.set $0
                    br $for-loop|03
                   end
                  end
                  local.get $4
                  call $~lib/rt/pure/__release
                  local.get $2
                  call $~lib/rt/pure/__release
                  i32.const 3024
                  call $~lib/rt/pure/__release
                  local.get $10
                  f64.const 6
                  f64.ne
                  br_if $folding-inner2
                  local.get $5
                  call $~lib/rt/pure/__release
                  local.get $1
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Int8Array#constructor
                  local.tee $6
                  call $~lib/rt/pure/__retain
                  local.tee $1
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Int8Array#__set
                  local.get $1
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Int8Array#__set
                  local.get $1
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Int8Array#__set
                  i32.const 0
                  local.set $3
                  local.get $1
                  call $~lib/rt/pure/__retain
                  local.set $2
                  i32.const 3056
                  call $~lib/rt/pure/__retain
                  local.set $5
                  local.get $2
                  i32.load offset=4
                  local.set $7
                  local.get $2
                  i32.load offset=8
                  i32.const 1
                  i32.sub
                  local.set $0
                  loop $for-loop|04
                   local.get $0
                   i32.const 0
                   i32.ge_s
                   if
                    local.get $0
                    local.get $7
                    i32.add
                    i32.load8_s
                    local.set $8
                    i32.const 4
                    global.set $~argumentsLength
                    local.get $3
                    local.get $8
                    local.get $0
                    local.get $2
                    local.get $5
                    i32.load
                    call_indirect (type $i32_i32_i32_i32_=>_i32)
                    local.set $3
                    local.get $0
                    i32.const 1
                    i32.sub
                    local.set $0
                    br $for-loop|04
                   end
                  end
                  local.get $5
                  call $~lib/rt/pure/__release
                  local.get $2
                  call $~lib/rt/pure/__release
                  i32.const 3056
                  call $~lib/rt/pure/__release
                  local.get $3
                  i32.const 255
                  i32.and
                  i32.const 6
                  i32.ne
                  br_if $folding-inner3
                  local.get $6
                  call $~lib/rt/pure/__release
                  local.get $1
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Uint8Array#constructor
                  local.tee $1
                  call $~lib/rt/pure/__retain
                  local.tee $0
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Uint8Array#__set
                  local.get $0
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Uint8Array#__set
                  local.get $0
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Uint8Array#__set
                  local.get $0
                  i32.const 3088
                  call $~lib/typedarray/Uint8Array#reduceRight<u8>
                  i32.const 255
                  i32.and
                  i32.const 6
                  i32.ne
                  br_if $folding-inner3
                  local.get $1
                  call $~lib/rt/pure/__release
                  local.get $0
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Uint8ClampedArray#constructor
                  local.tee $1
                  call $~lib/rt/pure/__retain
                  local.tee $0
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Uint8ClampedArray#__set
                  local.get $0
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Uint8ClampedArray#__set
                  local.get $0
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Uint8ClampedArray#__set
                  local.get $0
                  i32.const 3120
                  call $~lib/typedarray/Uint8Array#reduceRight<u8>
                  i32.const 255
                  i32.and
                  i32.const 6
                  i32.ne
                  br_if $folding-inner3
                  local.get $1
                  call $~lib/rt/pure/__release
                  local.get $0
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Int16Array#constructor
                  local.tee $6
                  call $~lib/rt/pure/__retain
                  local.tee $1
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Int16Array#__set
                  local.get $1
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Int16Array#__set
                  local.get $1
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Int16Array#__set
                  i32.const 0
                  local.set $3
                  local.get $1
                  call $~lib/rt/pure/__retain
                  local.set $2
                  i32.const 3152
                  call $~lib/rt/pure/__retain
                  local.set $5
                  local.get $2
                  i32.load offset=4
                  local.set $7
                  local.get $2
                  i32.load offset=8
                  i32.const 1
                  i32.shr_u
                  i32.const 1
                  i32.sub
                  local.set $0
                  loop $for-loop|05
                   local.get $0
                   i32.const 0
                   i32.ge_s
                   if
                    local.get $7
                    local.get $0
                    i32.const 1
                    i32.shl
                    i32.add
                    i32.load16_s
                    local.set $8
                    i32.const 4
                    global.set $~argumentsLength
                    local.get $3
                    local.get $8
                    local.get $0
                    local.get $2
                    local.get $5
                    i32.load
                    call_indirect (type $i32_i32_i32_i32_=>_i32)
                    local.set $3
                    local.get $0
                    i32.const 1
                    i32.sub
                    local.set $0
                    br $for-loop|05
                   end
                  end
                  local.get $5
                  call $~lib/rt/pure/__release
                  local.get $2
                  call $~lib/rt/pure/__release
                  i32.const 3152
                  call $~lib/rt/pure/__release
                  local.get $3
                  i32.const 65535
                  i32.and
                  i32.const 6
                  i32.ne
                  br_if $folding-inner3
                  local.get $6
                  call $~lib/rt/pure/__release
                  local.get $1
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Uint16Array#constructor
                  local.tee $6
                  call $~lib/rt/pure/__retain
                  local.tee $1
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Uint16Array#__set
                  local.get $1
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Uint16Array#__set
                  local.get $1
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Uint16Array#__set
                  i32.const 0
                  local.set $3
                  local.get $1
                  call $~lib/rt/pure/__retain
                  local.set $2
                  i32.const 3184
                  call $~lib/rt/pure/__retain
                  local.set $5
                  local.get $2
                  i32.load offset=4
                  local.set $7
                  local.get $2
                  i32.load offset=8
                  i32.const 1
                  i32.shr_u
                  i32.const 1
                  i32.sub
                  local.set $0
                  loop $for-loop|06
                   local.get $0
                   i32.const 0
                   i32.ge_s
                   if
                    local.get $7
                    local.get $0
                    i32.const 1
                    i32.shl
                    i32.add
                    i32.load16_u
                    local.set $8
                    i32.const 4
                    global.set $~argumentsLength
                    local.get $3
                    local.get $8
                    local.get $0
                    local.get $2
                    local.get $5
                    i32.load
                    call_indirect (type $i32_i32_i32_i32_=>_i32)
                    local.set $3
                    local.get $0
                    i32.const 1
                    i32.sub
                    local.set $0
                    br $for-loop|06
                   end
                  end
                  local.get $5
                  call $~lib/rt/pure/__release
                  local.get $2
                  call $~lib/rt/pure/__release
                  i32.const 3184
                  call $~lib/rt/pure/__release
                  local.get $3
                  i32.const 65535
                  i32.and
                  i32.const 6
                  i32.ne
                  br_if $folding-inner3
                  local.get $6
                  call $~lib/rt/pure/__release
                  local.get $1
                  call $~lib/rt/pure/__release
                  i32.const 3
                  call $~lib/typedarray/Int32Array#constructor
                  local.tee $1
                  call $~lib/rt/pure/__retain
                  local.tee $0
                  i32.const 0
                  i32.const 1
                  call $~lib/typedarray/Int32Array#__set
                  local.get $0
                  i32.const 1
                  i32.const 2
                  call $~lib/typedarray/Int32Array#__set
                  local.get $0
                  i32.const 2
                  i32.const 3
                  call $~lib/typedarray/Int32Array#__set
                  block $folding-inner1
                   local.get $0
                   i32.const 3216
                   call $~lib/typedarray/Int32Array#reduceRight<i32>
                   i32.const 6
                   i32.ne
                   br_if $folding-inner1
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 3248
                   call $~lib/typedarray/Int32Array#reduceRight<i32>
                   i32.const 6
                   i32.ne
                   br_if $folding-inner1
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 1
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 2
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 3
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 3280
                   call $~lib/typedarray/Int64Array#reduceRight<i64>
                   i64.const 6
                   i64.ne
                   br_if $folding-inner1
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 1
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 2
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 3
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 3312
                   call $~lib/typedarray/Int64Array#reduceRight<i64>
                   i64.const 6
                   i64.ne
                   br_if $folding-inner1
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Float32Array#constructor
                   local.tee $5
                   call $~lib/rt/pure/__retain
                   local.tee $1
                   i32.const 0
                   f32.const 1
                   call $~lib/typedarray/Float32Array#__set
                   local.get $1
                   i32.const 1
                   f32.const 2
                   call $~lib/typedarray/Float32Array#__set
                   local.get $1
                   i32.const 2
                   f32.const 3
                   call $~lib/typedarray/Float32Array#__set
                   f32.const 0
                   local.set $9
                   local.get $1
                   call $~lib/rt/pure/__retain
                   local.set $2
                   i32.const 3344
                   call $~lib/rt/pure/__retain
                   local.set $4
                   local.get $2
                   i32.load offset=4
                   local.set $6
                   local.get $2
                   i32.load offset=8
                   i32.const 2
                   i32.shr_u
                   i32.const 1
                   i32.sub
                   local.set $0
                   loop $for-loop|07
                    local.get $0
                    i32.const 0
                    i32.ge_s
                    if
                     local.get $6
                     local.get $0
                     i32.const 2
                     i32.shl
                     i32.add
                     f32.load
                     local.set $12
                     i32.const 4
                     global.set $~argumentsLength
                     local.get $9
                     local.get $12
                     local.get $0
                     local.get $2
                     local.get $4
                     i32.load
                     call_indirect (type $f32_f32_i32_i32_=>_f32)
                     local.set $9
                     local.get $0
                     i32.const 1
                     i32.sub
                     local.set $0
                     br $for-loop|07
                    end
                   end
                   local.get $4
                   call $~lib/rt/pure/__release
                   local.get $2
                   call $~lib/rt/pure/__release
                   i32.const 3344
                   call $~lib/rt/pure/__release
                   local.get $9
                   f32.const 6
                   f32.ne
                   br_if $folding-inner1
                   local.get $5
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Float64Array#constructor
                   local.tee $5
                   call $~lib/rt/pure/__retain
                   local.tee $1
                   i32.const 0
                   f64.const 1
                   call $~lib/typedarray/Float64Array#__set
                   local.get $1
                   i32.const 1
                   f64.const 2
                   call $~lib/typedarray/Float64Array#__set
                   local.get $1
                   i32.const 2
                   f64.const 3
                   call $~lib/typedarray/Float64Array#__set
                   f64.const 0
                   local.set $10
                   local.get $1
                   call $~lib/rt/pure/__retain
                   local.set $2
                   i32.const 3376
                   call $~lib/rt/pure/__retain
                   local.set $4
                   local.get $2
                   i32.load offset=4
                   local.set $6
                   local.get $2
                   i32.load offset=8
                   i32.const 3
                   i32.shr_u
                   i32.const 1
                   i32.sub
                   local.set $0
                   loop $for-loop|08
                    local.get $0
                    i32.const 0
                    i32.ge_s
                    if
                     local.get $6
                     local.get $0
                     i32.const 3
                     i32.shl
                     i32.add
                     f64.load
                     local.set $13
                     i32.const 4
                     global.set $~argumentsLength
                     local.get $10
                     local.get $13
                     local.get $0
                     local.get $2
                     local.get $4
                     i32.load
                     call_indirect (type $f64_f64_i32_i32_=>_f64)
                     local.set $10
                     local.get $0
                     i32.const 1
                     i32.sub
                     local.set $0
                     br $for-loop|08
                    end
                   end
                   local.get $4
                   call $~lib/rt/pure/__release
                   local.get $2
                   call $~lib/rt/pure/__release
                   i32.const 3376
                   call $~lib/rt/pure/__release
                   local.get $10
                   f64.const 6
                   f64.ne
                   br_if $folding-inner1
                   local.get $5
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int8Array#constructor
                   local.tee $2
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   call $~lib/typedarray/Int8Array#map
                   local.tee $1
                   i32.const 0
                   call $~lib/typedarray/Int8Array#__get
                   i32.const 1
                   i32.ne
                   br_if $folding-inner4
                   local.get $1
                   i32.const 1
                   call $~lib/typedarray/Int8Array#__get
                   i32.const 4
                   i32.ne
                   br_if $folding-inner5
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Int8Array#__get
                   i32.const 9
                   i32.ne
                   br_if $folding-inner6
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint8Array#constructor
                   local.tee $2
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   call $~lib/typedarray/Uint8Array#map
                   local.tee $1
                   i32.const 0
                   call $~lib/typedarray/Uint8Array#__get
                   i32.const 1
                   i32.ne
                   br_if $folding-inner4
                   local.get $1
                   i32.const 1
                   call $~lib/typedarray/Uint8Array#__get
                   i32.const 4
                   i32.ne
                   br_if $folding-inner5
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Uint8Array#__get
                   i32.const 9
                   i32.ne
                   br_if $folding-inner6
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint8ClampedArray#constructor
                   local.tee $2
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   call $~lib/typedarray/Uint8ClampedArray#map
                   local.tee $1
                   i32.const 0
                   call $~lib/typedarray/Uint8ClampedArray#__get
                   i32.const 1
                   i32.ne
                   br_if $folding-inner4
                   local.get $1
                   i32.const 1
                   call $~lib/typedarray/Uint8ClampedArray#__get
                   i32.const 4
                   i32.ne
                   br_if $folding-inner5
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Uint8ClampedArray#__get
                   i32.const 9
                   i32.ne
                   br_if $folding-inner6
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int16Array#constructor
                   local.tee $2
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   call $~lib/typedarray/Int16Array#map
                   local.tee $1
                   i32.const 0
                   call $~lib/typedarray/Int16Array#__get
                   i32.const 1
                   i32.ne
                   br_if $folding-inner4
                   local.get $1
                   i32.const 1
                   call $~lib/typedarray/Int16Array#__get
                   i32.const 4
                   i32.ne
                   br_if $folding-inner5
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Int16Array#__get
                   i32.const 9
                   i32.ne
                   br_if $folding-inner6
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint16Array#constructor
                   local.tee $2
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   call $~lib/typedarray/Uint16Array#map
                   local.tee $1
                   i32.const 0
                   call $~lib/typedarray/Uint16Array#__get
                   i32.const 1
                   i32.ne
                   br_if $folding-inner4
                   local.get $1
                   i32.const 1
                   call $~lib/typedarray/Uint16Array#__get
                   i32.const 4
                   i32.ne
                   br_if $folding-inner5
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Uint16Array#__get
                   i32.const 9
                   i32.ne
                   br_if $folding-inner6
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int32Array#constructor
                   local.tee $2
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   call $~lib/typedarray/Int32Array#map
                   local.tee $1
                   i32.const 0
                   call $~lib/typedarray/Int32Array#__get
                   i32.const 1
                   i32.ne
                   br_if $folding-inner4
                   local.get $1
                   i32.const 1
                   call $~lib/typedarray/Int32Array#__get
                   i32.const 4
                   i32.ne
                   br_if $folding-inner5
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Int32Array#__get
                   i32.const 9
                   i32.ne
                   br_if $folding-inner6
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint32Array#constructor
                   local.tee $2
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   call $~lib/typedarray/Uint32Array#map
                   local.tee $1
                   i32.const 0
                   call $~lib/typedarray/Uint32Array#__get
                   i32.const 1
                   i32.ne
                   br_if $folding-inner4
                   local.get $1
                   i32.const 1
                   call $~lib/typedarray/Uint32Array#__get
                   i32.const 4
                   i32.ne
                   br_if $folding-inner5
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Uint32Array#__get
                   i32.const 9
                   i32.ne
                   br_if $folding-inner6
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int64Array#constructor
                   local.tee $2
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 1
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 2
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 3
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   call $~lib/typedarray/Int64Array#map
                   local.tee $1
                   i32.const 0
                   call $~lib/typedarray/Int64Array#__get
                   i64.const 1
                   i64.ne
                   br_if $folding-inner4
                   local.get $1
                   i32.const 1
                   call $~lib/typedarray/Int64Array#__get
                   i64.const 4
                   i64.ne
                   br_if $folding-inner5
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Int64Array#__get
                   i64.const 9
                   i64.ne
                   br_if $folding-inner6
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint64Array#constructor
                   local.tee $2
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 1
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 2
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 3
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   call $~lib/typedarray/Uint64Array#map
                   local.tee $1
                   i32.const 0
                   call $~lib/typedarray/Uint64Array#__get
                   i64.const 1
                   i64.ne
                   br_if $folding-inner4
                   local.get $1
                   i32.const 1
                   call $~lib/typedarray/Uint64Array#__get
                   i64.const 4
                   i64.ne
                   br_if $folding-inner5
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Uint64Array#__get
                   i64.const 9
                   i64.ne
                   br_if $folding-inner6
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Float32Array#constructor
                   local.tee $2
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   f32.const 1
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 1
                   f32.const 2
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 2
                   f32.const 3
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   call $~lib/typedarray/Float32Array#map
                   local.tee $1
                   i32.const 0
                   call $~lib/typedarray/Float32Array#__get
                   f32.const 1
                   f32.ne
                   br_if $folding-inner4
                   local.get $1
                   i32.const 1
                   call $~lib/typedarray/Float32Array#__get
                   f32.const 4
                   f32.ne
                   br_if $folding-inner5
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Float32Array#__get
                   f32.const 9
                   f32.ne
                   br_if $folding-inner6
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Float64Array#constructor
                   local.tee $2
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   f64.const 1
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 1
                   f64.const 2
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 2
                   f64.const 3
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   call $~lib/typedarray/Float64Array#map
                   local.tee $1
                   i32.const 0
                   call $~lib/typedarray/Float64Array#__get
                   f64.const 1
                   f64.ne
                   br_if $folding-inner4
                   local.get $1
                   i32.const 1
                   call $~lib/typedarray/Float64Array#__get
                   f64.const 4
                   f64.ne
                   br_if $folding-inner5
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Float64Array#__get
                   f64.const 9
                   f64.ne
                   br_if $folding-inner6
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   call $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>
                   call $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>
                   call $std/typedarray/testArrayFilter<~lib/typedarray/Uint8ClampedArray,u8>
                   call $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>
                   call $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>
                   call $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>
                   call $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>
                   call $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>
                   call $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>
                   call $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>
                   call $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>
                   i32.const 3
                   call $~lib/typedarray/Int8Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 4112
                   call $~lib/typedarray/Int8Array#some
                   i32.eqz
                   br_if $folding-inner7
                   local.get $0
                   i32.const 4144
                   call $~lib/typedarray/Int8Array#some
                   br_if $folding-inner8
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint8Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 4176
                   call $~lib/typedarray/Uint8Array#some
                   i32.eqz
                   br_if $folding-inner7
                   local.get $0
                   i32.const 4208
                   call $~lib/typedarray/Uint8Array#some
                   br_if $folding-inner8
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint8ClampedArray#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 4240
                   call $~lib/typedarray/Uint8Array#some
                   i32.eqz
                   br_if $folding-inner7
                   local.get $0
                   i32.const 4272
                   call $~lib/typedarray/Uint8Array#some
                   br_if $folding-inner8
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int16Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 4304
                   call $~lib/typedarray/Int16Array#some
                   i32.eqz
                   br_if $folding-inner7
                   local.get $0
                   i32.const 4336
                   call $~lib/typedarray/Int16Array#some
                   br_if $folding-inner8
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint16Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 4368
                   call $~lib/typedarray/Uint16Array#some
                   i32.eqz
                   br_if $folding-inner7
                   local.get $0
                   i32.const 4400
                   call $~lib/typedarray/Uint16Array#some
                   br_if $folding-inner8
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 4432
                   call $~lib/typedarray/Int32Array#some
                   i32.eqz
                   br_if $folding-inner7
                   local.get $0
                   i32.const 4464
                   call $~lib/typedarray/Int32Array#some
                   br_if $folding-inner8
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 4496
                   call $~lib/typedarray/Int32Array#some
                   i32.eqz
                   br_if $folding-inner7
                   local.get $0
                   i32.const 4528
                   call $~lib/typedarray/Int32Array#some
                   br_if $folding-inner8
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 2
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 4
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 6
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 4560
                   call $~lib/typedarray/Int64Array#some
                   i32.eqz
                   br_if $folding-inner7
                   local.get $0
                   i32.const 4592
                   call $~lib/typedarray/Int64Array#some
                   br_if $folding-inner8
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 2
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 4
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 6
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 4624
                   call $~lib/typedarray/Int64Array#some
                   i32.eqz
                   br_if $folding-inner7
                   local.get $0
                   i32.const 4656
                   call $~lib/typedarray/Int64Array#some
                   br_if $folding-inner8
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Float32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   f32.const 2
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 1
                   f32.const 4
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 2
                   f32.const 6
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 4688
                   call $~lib/typedarray/Float32Array#some
                   i32.eqz
                   br_if $folding-inner7
                   local.get $0
                   i32.const 4720
                   call $~lib/typedarray/Float32Array#some
                   br_if $folding-inner8
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Float64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   f64.const 2
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 1
                   f64.const 4
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 2
                   f64.const 6
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 4752
                   call $~lib/typedarray/Float64Array#some
                   i32.eqz
                   br_if $folding-inner7
                   local.get $0
                   i32.const 4784
                   call $~lib/typedarray/Float64Array#some
                   br_if $folding-inner8
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int8Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 4816
                   call $~lib/typedarray/Int8Array#findIndex
                   i32.const 1
                   i32.ne
                   br_if $folding-inner9
                   local.get $0
                   i32.const 4848
                   call $~lib/typedarray/Int8Array#findIndex
                   i32.const -1
                   i32.ne
                   br_if $folding-inner10
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint8Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 4880
                   call $~lib/typedarray/Uint8Array#findIndex
                   i32.const 1
                   i32.ne
                   br_if $folding-inner9
                   local.get $0
                   i32.const 4912
                   call $~lib/typedarray/Uint8Array#findIndex
                   i32.const -1
                   i32.ne
                   br_if $folding-inner10
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint8ClampedArray#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 4944
                   call $~lib/typedarray/Uint8Array#findIndex
                   i32.const 1
                   i32.ne
                   br_if $folding-inner9
                   local.get $0
                   i32.const 4976
                   call $~lib/typedarray/Uint8Array#findIndex
                   i32.const -1
                   i32.ne
                   br_if $folding-inner10
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int16Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 5008
                   call $~lib/typedarray/Int16Array#findIndex
                   i32.const 1
                   i32.ne
                   br_if $folding-inner9
                   local.get $0
                   i32.const 5040
                   call $~lib/typedarray/Int16Array#findIndex
                   i32.const -1
                   i32.ne
                   br_if $folding-inner10
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint16Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 5072
                   call $~lib/typedarray/Uint16Array#findIndex
                   i32.const 1
                   i32.ne
                   br_if $folding-inner9
                   local.get $0
                   i32.const 5104
                   call $~lib/typedarray/Uint16Array#findIndex
                   i32.const -1
                   i32.ne
                   br_if $folding-inner10
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 5136
                   call $~lib/typedarray/Int32Array#findIndex
                   i32.const 1
                   i32.ne
                   br_if $folding-inner9
                   local.get $0
                   i32.const 5168
                   call $~lib/typedarray/Int32Array#findIndex
                   i32.const -1
                   i32.ne
                   br_if $folding-inner10
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 5200
                   call $~lib/typedarray/Int32Array#findIndex
                   i32.const 1
                   i32.ne
                   br_if $folding-inner9
                   local.get $0
                   i32.const 5232
                   call $~lib/typedarray/Int32Array#findIndex
                   i32.const -1
                   i32.ne
                   br_if $folding-inner10
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 1
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 2
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 3
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 5264
                   call $~lib/typedarray/Int64Array#findIndex
                   i32.const 1
                   i32.ne
                   br_if $folding-inner9
                   local.get $0
                   i32.const 5296
                   call $~lib/typedarray/Int64Array#findIndex
                   i32.const -1
                   i32.ne
                   br_if $folding-inner10
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 1
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 2
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 3
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 5328
                   call $~lib/typedarray/Int64Array#findIndex
                   i32.const 1
                   i32.ne
                   br_if $folding-inner9
                   local.get $0
                   i32.const 5360
                   call $~lib/typedarray/Int64Array#findIndex
                   i32.const -1
                   i32.ne
                   br_if $folding-inner10
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Float32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   f32.const 1
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 1
                   f32.const 2
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 2
                   f32.const 3
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 5392
                   call $~lib/typedarray/Float32Array#findIndex
                   i32.const 1
                   i32.ne
                   br_if $folding-inner9
                   local.get $0
                   i32.const 5424
                   call $~lib/typedarray/Float32Array#findIndex
                   i32.const -1
                   i32.ne
                   br_if $folding-inner10
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Float64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   f64.const 1
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 1
                   f64.const 2
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 2
                   f64.const 3
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 5456
                   call $~lib/typedarray/Float64Array#findIndex
                   i32.const 1
                   i32.ne
                   br_if $folding-inner9
                   local.get $0
                   i32.const 5488
                   call $~lib/typedarray/Float64Array#findIndex
                   i32.const -1
                   i32.ne
                   br_if $folding-inner10
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int8Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 5520
                   call $~lib/typedarray/Int8Array#every
                   i32.eqz
                   br_if $folding-inner11
                   local.get $0
                   i32.const 5552
                   call $~lib/typedarray/Int8Array#every
                   br_if $folding-inner12
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint8Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 5584
                   call $~lib/typedarray/Uint8Array#every
                   i32.eqz
                   br_if $folding-inner11
                   local.get $0
                   i32.const 5616
                   call $~lib/typedarray/Uint8Array#every
                   br_if $folding-inner12
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint8ClampedArray#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 5648
                   call $~lib/typedarray/Uint8Array#every
                   i32.eqz
                   br_if $folding-inner11
                   local.get $0
                   i32.const 5680
                   call $~lib/typedarray/Uint8Array#every
                   br_if $folding-inner12
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int16Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 5712
                   call $~lib/typedarray/Int16Array#every
                   i32.eqz
                   br_if $folding-inner11
                   local.get $0
                   i32.const 5744
                   call $~lib/typedarray/Int16Array#every
                   br_if $folding-inner12
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint16Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 5776
                   call $~lib/typedarray/Uint16Array#every
                   i32.eqz
                   br_if $folding-inner11
                   local.get $0
                   i32.const 5808
                   call $~lib/typedarray/Uint16Array#every
                   br_if $folding-inner12
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 5840
                   call $~lib/typedarray/Int32Array#every
                   i32.eqz
                   br_if $folding-inner11
                   local.get $0
                   i32.const 5872
                   call $~lib/typedarray/Int32Array#every
                   br_if $folding-inner12
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 2
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 4
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 5904
                   call $~lib/typedarray/Int32Array#every
                   i32.eqz
                   br_if $folding-inner11
                   local.get $0
                   i32.const 5936
                   call $~lib/typedarray/Int32Array#every
                   br_if $folding-inner12
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Int64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 2
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 4
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 6
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 5968
                   call $~lib/typedarray/Int64Array#every
                   i32.eqz
                   br_if $folding-inner11
                   local.get $0
                   i32.const 6000
                   call $~lib/typedarray/Int64Array#every
                   br_if $folding-inner12
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Uint64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 2
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 4
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 6
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 6032
                   call $~lib/typedarray/Int64Array#every
                   i32.eqz
                   br_if $folding-inner11
                   local.get $0
                   i32.const 6064
                   call $~lib/typedarray/Int64Array#every
                   br_if $folding-inner12
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Float32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   f32.const 2
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 1
                   f32.const 4
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 2
                   f32.const 6
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 6096
                   call $~lib/typedarray/Float32Array#every
                   i32.eqz
                   br_if $folding-inner11
                   local.get $0
                   i32.const 6128
                   call $~lib/typedarray/Float32Array#every
                   br_if $folding-inner12
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 3
                   call $~lib/typedarray/Float64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   f64.const 2
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 1
                   f64.const 4
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 2
                   f64.const 6
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 6160
                   call $~lib/typedarray/Float64Array#every
                   i32.eqz
                   br_if $folding-inner11
                   local.get $0
                   i32.const 6192
                   call $~lib/typedarray/Float64Array#every
                   br_if $folding-inner12
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   global.set $std/typedarray/forEachCallCount
                   i32.const 3
                   call $~lib/typedarray/Int8Array#constructor
                   local.tee $5
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   global.set $std/typedarray/forEachSelf
                   local.get $0
                   i32.const 0
                   i32.const 6256
                   i32.const 0
                   call $~lib/array/Array<i32>#__get
                   i32.const 24
                   i32.shl
                   i32.const 24
                   i32.shr_s
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 6256
                   i32.const 1
                   call $~lib/array/Array<i32>#__get
                   i32.const 24
                   i32.shl
                   i32.const 24
                   i32.shr_s
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6256
                   i32.const 2
                   call $~lib/array/Array<i32>#__get
                   i32.const 24
                   i32.shl
                   i32.const 24
                   i32.shr_s
                   call $~lib/typedarray/Int8Array#__set
                   i32.const 0
                   local.set $1
                   local.get $0
                   call $~lib/rt/pure/__retain
                   local.set $2
                   i32.const 6288
                   call $~lib/rt/pure/__retain
                   local.set $4
                   local.get $2
                   i32.load offset=4
                   local.set $6
                   local.get $2
                   i32.load offset=8
                   local.set $7
                   loop $for-loop|09
                    local.get $1
                    local.get $7
                    i32.lt_s
                    if
                     local.get $1
                     local.get $6
                     i32.add
                     i32.load8_s
                     i32.const 3
                     global.set $~argumentsLength
                     local.get $1
                     local.get $2
                     local.get $4
                     i32.load
                     call_indirect (type $i32_i32_i32_=>_none)
                     local.get $1
                     i32.const 1
                     i32.add
                     local.set $1
                     br $for-loop|09
                    end
                   end
                   local.get $4
                   call $~lib/rt/pure/__release
                   local.get $2
                   call $~lib/rt/pure/__release
                   i32.const 6288
                   call $~lib/rt/pure/__release
                   global.get $std/typedarray/forEachCallCount
                   i32.const 3
                   i32.ne
                   br_if $folding-inner13
                   local.get $5
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   global.set $std/typedarray/forEachCallCount
                   i32.const 3
                   call $~lib/typedarray/Uint8Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   global.set $std/typedarray/forEachSelf
                   local.get $0
                   i32.const 0
                   i32.const 6256
                   i32.const 0
                   call $~lib/array/Array<i32>#__get
                   i32.const 255
                   i32.and
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 6256
                   i32.const 1
                   call $~lib/array/Array<i32>#__get
                   i32.const 255
                   i32.and
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6256
                   i32.const 2
                   call $~lib/array/Array<i32>#__get
                   i32.const 255
                   i32.and
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 6320
                   call $~lib/typedarray/Uint8Array#forEach
                   global.get $std/typedarray/forEachCallCount
                   i32.const 3
                   i32.ne
                   br_if $folding-inner13
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   global.set $std/typedarray/forEachCallCount
                   i32.const 3
                   call $~lib/typedarray/Uint8ClampedArray#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   global.set $std/typedarray/forEachSelf
                   local.get $0
                   i32.const 0
                   i32.const 6256
                   i32.const 0
                   call $~lib/array/Array<i32>#__get
                   i32.const 255
                   i32.and
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 1
                   i32.const 6256
                   i32.const 1
                   call $~lib/array/Array<i32>#__get
                   i32.const 255
                   i32.and
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 2
                   i32.const 6256
                   i32.const 2
                   call $~lib/array/Array<i32>#__get
                   i32.const 255
                   i32.and
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 6352
                   call $~lib/typedarray/Uint8Array#forEach
                   global.get $std/typedarray/forEachCallCount
                   i32.const 3
                   i32.ne
                   br_if $folding-inner13
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   global.set $std/typedarray/forEachCallCount
                   i32.const 3
                   call $~lib/typedarray/Int16Array#constructor
                   local.tee $5
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   global.set $std/typedarray/forEachSelf
                   local.get $0
                   i32.const 0
                   i32.const 6256
                   i32.const 0
                   call $~lib/array/Array<i32>#__get
                   i32.const 16
                   i32.shl
                   i32.const 16
                   i32.shr_s
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 6256
                   i32.const 1
                   call $~lib/array/Array<i32>#__get
                   i32.const 16
                   i32.shl
                   i32.const 16
                   i32.shr_s
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6256
                   i32.const 2
                   call $~lib/array/Array<i32>#__get
                   i32.const 16
                   i32.shl
                   i32.const 16
                   i32.shr_s
                   call $~lib/typedarray/Int16Array#__set
                   i32.const 0
                   local.set $1
                   local.get $0
                   call $~lib/rt/pure/__retain
                   local.set $2
                   i32.const 6384
                   call $~lib/rt/pure/__retain
                   local.set $4
                   local.get $2
                   i32.load offset=4
                   local.set $6
                   local.get $2
                   i32.load offset=8
                   i32.const 1
                   i32.shr_u
                   local.set $7
                   loop $for-loop|010
                    local.get $1
                    local.get $7
                    i32.lt_s
                    if
                     local.get $6
                     local.get $1
                     i32.const 1
                     i32.shl
                     i32.add
                     i32.load16_s
                     i32.const 3
                     global.set $~argumentsLength
                     local.get $1
                     local.get $2
                     local.get $4
                     i32.load
                     call_indirect (type $i32_i32_i32_=>_none)
                     local.get $1
                     i32.const 1
                     i32.add
                     local.set $1
                     br $for-loop|010
                    end
                   end
                   local.get $4
                   call $~lib/rt/pure/__release
                   local.get $2
                   call $~lib/rt/pure/__release
                   i32.const 6384
                   call $~lib/rt/pure/__release
                   global.get $std/typedarray/forEachCallCount
                   i32.const 3
                   i32.ne
                   br_if $folding-inner13
                   local.get $5
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   global.set $std/typedarray/forEachCallCount
                   i32.const 3
                   call $~lib/typedarray/Uint16Array#constructor
                   local.tee $5
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   global.set $std/typedarray/forEachSelf
                   local.get $0
                   i32.const 0
                   i32.const 6256
                   i32.const 0
                   call $~lib/array/Array<i32>#__get
                   i32.const 65535
                   i32.and
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 6256
                   i32.const 1
                   call $~lib/array/Array<i32>#__get
                   i32.const 65535
                   i32.and
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6256
                   i32.const 2
                   call $~lib/array/Array<i32>#__get
                   i32.const 65535
                   i32.and
                   call $~lib/typedarray/Uint16Array#__set
                   i32.const 0
                   local.set $1
                   local.get $0
                   call $~lib/rt/pure/__retain
                   local.set $2
                   i32.const 6416
                   call $~lib/rt/pure/__retain
                   local.set $4
                   local.get $2
                   i32.load offset=4
                   local.set $6
                   local.get $2
                   i32.load offset=8
                   i32.const 1
                   i32.shr_u
                   local.set $7
                   loop $for-loop|011
                    local.get $1
                    local.get $7
                    i32.lt_s
                    if
                     local.get $6
                     local.get $1
                     i32.const 1
                     i32.shl
                     i32.add
                     i32.load16_u
                     i32.const 3
                     global.set $~argumentsLength
                     local.get $1
                     local.get $2
                     local.get $4
                     i32.load
                     call_indirect (type $i32_i32_i32_=>_none)
                     local.get $1
                     i32.const 1
                     i32.add
                     local.set $1
                     br $for-loop|011
                    end
                   end
                   local.get $4
                   call $~lib/rt/pure/__release
                   local.get $2
                   call $~lib/rt/pure/__release
                   i32.const 6416
                   call $~lib/rt/pure/__release
                   global.get $std/typedarray/forEachCallCount
                   i32.const 3
                   i32.ne
                   br_if $folding-inner13
                   local.get $5
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   global.set $std/typedarray/forEachCallCount
                   i32.const 3
                   call $~lib/typedarray/Int32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   global.set $std/typedarray/forEachSelf
                   local.get $0
                   i32.const 0
                   i32.const 6256
                   i32.const 0
                   call $~lib/array/Array<i32>#__get
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 6256
                   i32.const 1
                   call $~lib/array/Array<i32>#__get
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6256
                   i32.const 2
                   call $~lib/array/Array<i32>#__get
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 6448
                   call $~lib/typedarray/Int32Array#forEach
                   global.get $std/typedarray/forEachCallCount
                   i32.const 3
                   i32.ne
                   br_if $folding-inner13
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   global.set $std/typedarray/forEachCallCount
                   i32.const 3
                   call $~lib/typedarray/Uint32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   global.set $std/typedarray/forEachSelf
                   local.get $0
                   i32.const 0
                   i32.const 6256
                   i32.const 0
                   call $~lib/array/Array<i32>#__get
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 6256
                   i32.const 1
                   call $~lib/array/Array<i32>#__get
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6256
                   i32.const 2
                   call $~lib/array/Array<i32>#__get
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 6480
                   call $~lib/typedarray/Int32Array#forEach
                   global.get $std/typedarray/forEachCallCount
                   i32.const 3
                   i32.ne
                   br_if $folding-inner13
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   global.set $std/typedarray/forEachCallCount
                   i32.const 3
                   call $~lib/typedarray/Int64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   global.set $std/typedarray/forEachSelf
                   local.get $0
                   i32.const 0
                   i32.const 6256
                   i32.const 0
                   call $~lib/array/Array<i32>#__get
                   i64.extend_i32_s
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 6256
                   i32.const 1
                   call $~lib/array/Array<i32>#__get
                   i64.extend_i32_s
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6256
                   i32.const 2
                   call $~lib/array/Array<i32>#__get
                   i64.extend_i32_s
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 6512
                   call $~lib/typedarray/Int64Array#forEach
                   global.get $std/typedarray/forEachCallCount
                   i32.const 3
                   i32.ne
                   br_if $folding-inner13
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   global.set $std/typedarray/forEachCallCount
                   i32.const 3
                   call $~lib/typedarray/Uint64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   global.set $std/typedarray/forEachSelf
                   local.get $0
                   i32.const 0
                   i32.const 6256
                   i32.const 0
                   call $~lib/array/Array<i32>#__get
                   i64.extend_i32_s
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 6256
                   i32.const 1
                   call $~lib/array/Array<i32>#__get
                   i64.extend_i32_s
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6256
                   i32.const 2
                   call $~lib/array/Array<i32>#__get
                   i64.extend_i32_s
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 6544
                   call $~lib/typedarray/Int64Array#forEach
                   global.get $std/typedarray/forEachCallCount
                   i32.const 3
                   i32.ne
                   br_if $folding-inner13
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   global.set $std/typedarray/forEachCallCount
                   i32.const 3
                   call $~lib/typedarray/Float32Array#constructor
                   local.tee $5
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   global.set $std/typedarray/forEachSelf
                   local.get $0
                   i32.const 0
                   i32.const 6256
                   i32.const 0
                   call $~lib/array/Array<i32>#__get
                   f32.convert_i32_s
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 6256
                   i32.const 1
                   call $~lib/array/Array<i32>#__get
                   f32.convert_i32_s
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6256
                   i32.const 2
                   call $~lib/array/Array<i32>#__get
                   f32.convert_i32_s
                   call $~lib/typedarray/Float32Array#__set
                   i32.const 0
                   local.set $1
                   local.get $0
                   call $~lib/rt/pure/__retain
                   local.set $2
                   i32.const 6576
                   call $~lib/rt/pure/__retain
                   local.set $4
                   local.get $2
                   i32.load offset=4
                   local.set $6
                   local.get $2
                   i32.load offset=8
                   i32.const 2
                   i32.shr_u
                   local.set $7
                   loop $for-loop|012
                    local.get $1
                    local.get $7
                    i32.lt_s
                    if
                     local.get $6
                     local.get $1
                     i32.const 2
                     i32.shl
                     i32.add
                     f32.load
                     i32.const 3
                     global.set $~argumentsLength
                     local.get $1
                     local.get $2
                     local.get $4
                     i32.load
                     call_indirect (type $f32_i32_i32_=>_none)
                     local.get $1
                     i32.const 1
                     i32.add
                     local.set $1
                     br $for-loop|012
                    end
                   end
                   local.get $4
                   call $~lib/rt/pure/__release
                   local.get $2
                   call $~lib/rt/pure/__release
                   i32.const 6576
                   call $~lib/rt/pure/__release
                   global.get $std/typedarray/forEachCallCount
                   i32.const 3
                   i32.ne
                   br_if $folding-inner13
                   local.get $5
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   global.set $std/typedarray/forEachCallCount
                   i32.const 3
                   call $~lib/typedarray/Float64Array#constructor
                   local.tee $5
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   global.set $std/typedarray/forEachSelf
                   local.get $0
                   i32.const 0
                   i32.const 6256
                   i32.const 0
                   call $~lib/array/Array<i32>#__get
                   f64.convert_i32_s
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 6256
                   i32.const 1
                   call $~lib/array/Array<i32>#__get
                   f64.convert_i32_s
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 6256
                   i32.const 2
                   call $~lib/array/Array<i32>#__get
                   f64.convert_i32_s
                   call $~lib/typedarray/Float64Array#__set
                   i32.const 0
                   local.set $1
                   local.get $0
                   call $~lib/rt/pure/__retain
                   local.set $2
                   i32.const 6608
                   call $~lib/rt/pure/__retain
                   local.set $4
                   local.get $2
                   i32.load offset=4
                   local.set $6
                   local.get $2
                   i32.load offset=8
                   i32.const 3
                   i32.shr_u
                   local.set $7
                   loop $for-loop|013
                    local.get $1
                    local.get $7
                    i32.lt_s
                    if
                     local.get $6
                     local.get $1
                     i32.const 3
                     i32.shl
                     i32.add
                     f64.load
                     i32.const 3
                     global.set $~argumentsLength
                     local.get $1
                     local.get $2
                     local.get $4
                     i32.load
                     call_indirect (type $f64_i32_i32_=>_none)
                     local.get $1
                     i32.const 1
                     i32.add
                     local.set $1
                     br $for-loop|013
                    end
                   end
                   local.get $4
                   call $~lib/rt/pure/__release
                   local.get $2
                   call $~lib/rt/pure/__release
                   i32.const 6608
                   call $~lib/rt/pure/__release
                   global.get $std/typedarray/forEachCallCount
                   i32.const 3
                   i32.ne
                   br_if $folding-inner13
                   local.get $5
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   call $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8>
                   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8>
                   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8>
                   call $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16>
                   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16>
                   call $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32>
                   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32>
                   call $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64>
                   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64>
                   call $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32>
                   call $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64>
                   call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int8Array,i8>
                   call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8Array,u8>
                   call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8ClampedArray,u8>
                   call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int16Array,i16>
                   call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint16Array,u16>
                   call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int32Array,i32>
                   call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint32Array,u32>
                   call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int64Array,i64>
                   call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint64Array,u64>
                   call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float32Array,f32>
                   call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float64Array,f64>
                   i32.const 1
                   call $~lib/typedarray/Float64Array#constructor
                   local.tee $2
                   i32.const 0
                   f64.const nan:0x8000000000000
                   call $~lib/typedarray/Float64Array#__set
                   local.get $2
                   f64.const nan:0x8000000000000
                   i32.const 0
                   call $~lib/typedarray/Float64Array#indexOf
                   i32.const -1
                   i32.ne
                   if
                    i32.const 0
                    i32.const 1312
                    i32.const 607
                    i32.const 3
                    call $~lib/builtins/abort
                    unreachable
                   end
                   i32.const 0
                   local.set $0
                   i32.const 0
                   local.set $3
                   block $~lib/typedarray/INCLUDES<~lib/typedarray/Float64Array,f64>|inlined.0
                    local.get $2
                    call $~lib/rt/pure/__retain
                    local.tee $1
                    i32.load offset=8
                    i32.const 3
                    i32.shr_u
                    local.tee $4
                    if (result i32)
                     i32.const 0
                     local.get $4
                     i32.ge_s
                    else
                     i32.const 1
                    end
                    if
                     local.get $1
                     call $~lib/rt/pure/__release
                     br $~lib/typedarray/INCLUDES<~lib/typedarray/Float64Array,f64>|inlined.0
                    end
                    local.get $1
                    i32.load offset=4
                    local.set $6
                    loop $while-continue|0
                     local.get $0
                     local.get $4
                     i32.lt_s
                     if
                      local.get $6
                      local.get $0
                      i32.const 3
                      i32.shl
                      i32.add
                      f64.load
                      local.tee $10
                      f64.const nan:0x8000000000000
                      f64.eq
                      if (result i32)
                       i32.const 1
                      else
                       local.get $10
                       local.get $10
                       f64.ne
                      end
                      if
                       local.get $1
                       call $~lib/rt/pure/__release
                       i32.const 1
                       local.set $3
                       br $~lib/typedarray/INCLUDES<~lib/typedarray/Float64Array,f64>|inlined.0
                      end
                      local.get $0
                      i32.const 1
                      i32.add
                      local.set $0
                      br $while-continue|0
                     end
                    end
                    local.get $1
                    call $~lib/rt/pure/__release
                   end
                   local.get $3
                   i32.const 0
                   i32.ne
                   i32.const 1
                   i32.ne
                   if
                    i32.const 0
                    i32.const 1312
                    i32.const 608
                    i32.const 3
                    call $~lib/builtins/abort
                    unreachable
                   end
                   i32.const 1
                   call $~lib/typedarray/Float32Array#constructor
                   local.tee $3
                   i32.const 0
                   f32.const nan:0x400000
                   call $~lib/typedarray/Float32Array#__set
                   local.get $3
                   f32.const nan:0x400000
                   i32.const 0
                   call $~lib/typedarray/Float32Array#indexOf
                   i32.const -1
                   i32.ne
                   if
                    i32.const 0
                    i32.const 1312
                    i32.const 613
                    i32.const 3
                    call $~lib/builtins/abort
                    unreachable
                   end
                   i32.const 0
                   local.set $0
                   i32.const 0
                   local.set $4
                   block $~lib/typedarray/INCLUDES<~lib/typedarray/Float32Array,f32>|inlined.0
                    local.get $3
                    call $~lib/rt/pure/__retain
                    local.tee $1
                    i32.load offset=8
                    i32.const 2
                    i32.shr_u
                    local.tee $5
                    if (result i32)
                     i32.const 0
                     local.get $5
                     i32.ge_s
                    else
                     i32.const 1
                    end
                    if
                     local.get $1
                     call $~lib/rt/pure/__release
                     br $~lib/typedarray/INCLUDES<~lib/typedarray/Float32Array,f32>|inlined.0
                    end
                    local.get $1
                    i32.load offset=4
                    local.set $7
                    loop $while-continue|014
                     local.get $0
                     local.get $5
                     i32.lt_s
                     if
                      local.get $7
                      local.get $0
                      i32.const 2
                      i32.shl
                      i32.add
                      f32.load
                      local.tee $9
                      f32.const nan:0x400000
                      f32.eq
                      if (result i32)
                       i32.const 1
                      else
                       local.get $9
                       local.get $9
                       f32.ne
                      end
                      if
                       local.get $1
                       call $~lib/rt/pure/__release
                       i32.const 1
                       local.set $4
                       br $~lib/typedarray/INCLUDES<~lib/typedarray/Float32Array,f32>|inlined.0
                      end
                      local.get $0
                      i32.const 1
                      i32.add
                      local.set $0
                      br $while-continue|014
                     end
                    end
                    local.get $1
                    call $~lib/rt/pure/__release
                   end
                   local.get $4
                   i32.const 0
                   i32.ne
                   i32.const 1
                   i32.ne
                   if
                    i32.const 0
                    i32.const 1312
                    i32.const 614
                    i32.const 3
                    call $~lib/builtins/abort
                    unreachable
                   end
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $3
                   call $~lib/rt/pure/__release
                   i32.const 5
                   call $~lib/typedarray/Int8Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 3
                   i32.const 4
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   i32.const 4
                   i32.const 5
                   call $~lib/typedarray/Int8Array#__set
                   local.get $0
                   call $~lib/typedarray/Int8Array#join
                   local.tee $2
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner0
                   local.get $0
                   call $~lib/typedarray/Int8Array#join
                   local.tee $3
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner18
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $3
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 5
                   call $~lib/typedarray/Uint8Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 3
                   i32.const 4
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   i32.const 4
                   i32.const 5
                   call $~lib/typedarray/Uint8Array#__set
                   local.get $0
                   call $~lib/typedarray/Uint8Array#join
                   local.tee $2
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner0
                   local.get $0
                   call $~lib/typedarray/Uint8Array#join
                   local.tee $3
                   local.get $3
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner18
                   local.get $2
                   call $~lib/rt/pure/__release
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 5
                   call $~lib/typedarray/Uint8ClampedArray#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 3
                   i32.const 4
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   i32.const 4
                   i32.const 5
                   call $~lib/typedarray/Uint8ClampedArray#__set
                   local.get $0
                   call $~lib/typedarray/Uint8Array#join
                   local.tee $2
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner0
                   local.get $0
                   call $~lib/typedarray/Uint8Array#join
                   local.tee $3
                   local.get $3
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner18
                   local.get $2
                   call $~lib/rt/pure/__release
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 5
                   call $~lib/typedarray/Int16Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 3
                   i32.const 4
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   i32.const 4
                   i32.const 5
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   call $~lib/typedarray/Int16Array#join
                   local.tee $2
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner0
                   local.get $0
                   call $~lib/typedarray/Int16Array#join
                   local.tee $3
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner18
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $3
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 5
                   call $~lib/typedarray/Uint16Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 3
                   i32.const 4
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   i32.const 4
                   i32.const 5
                   call $~lib/typedarray/Uint16Array#__set
                   local.get $0
                   call $~lib/typedarray/Uint16Array#join
                   local.tee $2
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner0
                   local.get $0
                   call $~lib/typedarray/Uint16Array#join
                   local.tee $3
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner18
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $3
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 5
                   call $~lib/typedarray/Int32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 3
                   i32.const 4
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   i32.const 4
                   i32.const 5
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   call $~lib/typedarray/Int32Array#join
                   local.tee $2
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner0
                   local.get $0
                   call $~lib/typedarray/Int32Array#join
                   local.tee $3
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner18
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $3
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 5
                   call $~lib/typedarray/Uint32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 1
                   i32.const 2
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 2
                   i32.const 3
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 3
                   i32.const 4
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   i32.const 4
                   i32.const 5
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $0
                   call $~lib/typedarray/Uint32Array#join
                   local.tee $2
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner0
                   local.get $0
                   call $~lib/typedarray/Uint32Array#join
                   local.tee $3
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner18
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $3
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 5
                   call $~lib/typedarray/Int64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 1
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 2
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 3
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 3
                   i64.const 4
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   i32.const 4
                   i64.const 5
                   call $~lib/typedarray/Int64Array#__set
                   local.get $0
                   call $~lib/typedarray/Int64Array#join
                   local.tee $2
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner0
                   local.get $0
                   call $~lib/typedarray/Int64Array#join
                   local.tee $3
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner18
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $3
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 5
                   call $~lib/typedarray/Uint64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   i64.const 1
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 1
                   i64.const 2
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 2
                   i64.const 3
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 3
                   i64.const 4
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   i32.const 4
                   i64.const 5
                   call $~lib/typedarray/Uint64Array#__set
                   local.get $0
                   call $~lib/typedarray/Uint64Array#join
                   local.tee $2
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner0
                   local.get $0
                   call $~lib/typedarray/Uint64Array#join
                   local.tee $3
                   i32.const 7200
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner18
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $3
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 5
                   call $~lib/typedarray/Float32Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   f32.const 1
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 1
                   f32.const 2
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 2
                   f32.const 3
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 3
                   f32.const 4
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   i32.const 4
                   f32.const 5
                   call $~lib/typedarray/Float32Array#__set
                   local.get $0
                   call $~lib/typedarray/Float32Array#join
                   local.tee $2
                   i32.const 8304
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner16
                   local.get $0
                   call $~lib/typedarray/Float32Array#join
                   local.tee $3
                   i32.const 8304
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner17
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $3
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 5
                   call $~lib/typedarray/Float64Array#constructor
                   local.tee $1
                   call $~lib/rt/pure/__retain
                   local.tee $0
                   i32.const 0
                   f64.const 1
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 1
                   f64.const 2
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 2
                   f64.const 3
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 3
                   f64.const 4
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   i32.const 4
                   f64.const 5
                   call $~lib/typedarray/Float64Array#__set
                   local.get $0
                   call $~lib/typedarray/Float64Array#join
                   local.tee $2
                   i32.const 8304
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner16
                   local.get $0
                   call $~lib/typedarray/Float64Array#join
                   local.tee $3
                   i32.const 8304
                   call $~lib/string/String.__eq
                   i32.eqz
                   br_if $folding-inner17
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $3
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 0
                   call $~lib/arraybuffer/ArrayBuffer#constructor
                   local.set $0
                   i32.const 2
                   global.set $~argumentsLength
                   local.get $0
                   i32.const 0
                   call $~lib/typedarray/Uint8Array.wrap@varargs
                   local.tee $2
                   i32.load offset=8
                   if
                    i32.const 0
                    i32.const 1312
                    i32.const 691
                    i32.const 3
                    call $~lib/builtins/abort
                    unreachable
                   end
                   i32.const 2
                   call $~lib/arraybuffer/ArrayBuffer#constructor
                   local.set $1
                   local.get $0
                   call $~lib/rt/pure/__release
                   i32.const 2
                   global.set $~argumentsLength
                   local.get $1
                   i32.const 2
                   call $~lib/typedarray/Uint8Array.wrap@varargs
                   local.set $0
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $0
                   i32.load offset=8
                   if
                    i32.const 0
                    i32.const 1312
                    i32.const 695
                    i32.const 3
                    call $~lib/builtins/abort
                    unreachable
                   end
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $0
                   call $~lib/rt/pure/__release
                   call $std/typedarray/testArrayWrap<~lib/typedarray/Int8Array,i8>
                   call $std/typedarray/testArrayWrap<~lib/typedarray/Uint8Array,u8>
                   call $std/typedarray/testArrayWrap<~lib/typedarray/Uint8ClampedArray,u8>
                   call $std/typedarray/testArrayWrap<~lib/typedarray/Int16Array,i16>
                   call $std/typedarray/testArrayWrap<~lib/typedarray/Uint16Array,u16>
                   call $std/typedarray/testArrayWrap<~lib/typedarray/Int32Array,i32>
                   call $std/typedarray/testArrayWrap<~lib/typedarray/Uint32Array,u32>
                   call $std/typedarray/testArrayWrap<~lib/typedarray/Int64Array,i64>
                   call $std/typedarray/testArrayWrap<~lib/typedarray/Uint64Array,u64>
                   call $std/typedarray/testArrayWrap<~lib/typedarray/Float32Array,f32>
                   call $std/typedarray/testArrayWrap<~lib/typedarray/Float64Array,f64>
                   call $std/typedarray/testTypedArraySet<~lib/typedarray/Int8Array>
                   call $std/typedarray/testTypedArraySet<~lib/typedarray/Uint8Array>
                   call $std/typedarray/testTypedArraySet<~lib/typedarray/Uint8ClampedArray>
                   call $std/typedarray/testTypedArraySet<~lib/typedarray/Int16Array>
                   call $std/typedarray/testTypedArraySet<~lib/typedarray/Uint16Array>
                   call $std/typedarray/testTypedArraySet<~lib/typedarray/Int32Array>
                   call $std/typedarray/testTypedArraySet<~lib/typedarray/Uint32Array>
                   call $std/typedarray/testTypedArraySet<~lib/typedarray/Int64Array>
                   call $std/typedarray/testTypedArraySet<~lib/typedarray/Uint64Array>
                   call $std/typedarray/testTypedArraySet<~lib/typedarray/Float32Array>
                   call $std/typedarray/testTypedArraySet<~lib/typedarray/Float64Array>
                   i32.const 10
                   call $~lib/typedarray/Uint8ClampedArray#constructor
                   local.set $0
                   i32.const 3
                   call $~lib/typedarray/Float32Array#constructor
                   local.tee $4
                   i32.const 0
                   f32.const 400
                   call $~lib/typedarray/Float32Array#__set
                   local.get $4
                   i32.const 1
                   f32.const nan:0x400000
                   call $~lib/typedarray/Float32Array#__set
                   local.get $4
                   i32.const 2
                   f32.const inf
                   call $~lib/typedarray/Float32Array#__set
                   i32.const 4
                   call $~lib/typedarray/Int64Array#constructor
                   local.tee $1
                   i32.const 0
                   i64.const -10
                   call $~lib/typedarray/Int64Array#__set
                   local.get $1
                   i32.const 1
                   i64.const 100
                   call $~lib/typedarray/Int64Array#__set
                   local.get $1
                   i32.const 2
                   i64.const 10
                   call $~lib/typedarray/Int64Array#__set
                   local.get $1
                   i32.const 3
                   i64.const 300
                   call $~lib/typedarray/Int64Array#__set
                   i32.const 2
                   call $~lib/typedarray/Int32Array#constructor
                   local.tee $5
                   i32.const 0
                   i32.const 300
                   call $~lib/typedarray/Int32Array#__set
                   local.get $5
                   i32.const 1
                   i32.const -1
                   call $~lib/typedarray/Int32Array#__set
                   local.get $0
                   local.get $4
                   call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Float32Array>
                   local.get $0
                   local.get $1
                   i32.const 4
                   call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int64Array>
                   local.get $0
                   local.get $5
                   call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int32Array>
                   local.get $0
                   i32.const 10
                   i32.const 0
                   i32.const 63
                   i32.const 12480
                   call $~lib/rt/__allocArray
                   call $~lib/rt/pure/__retain
                   local.tee $6
                   call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
                   i32.const 4
                   call $~lib/typedarray/Uint32Array#constructor
                   local.tee $2
                   i32.const 0
                   i32.const 1
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $2
                   i32.const 1
                   i32.const 300
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $2
                   i32.const 2
                   i32.const 100
                   call $~lib/typedarray/Uint32Array#__set
                   local.get $2
                   i32.const 3
                   i32.const -1
                   call $~lib/typedarray/Uint32Array#__set
                   i32.const 4
                   call $~lib/typedarray/Int16Array#constructor
                   local.tee $3
                   i32.const 0
                   i32.const -10
                   call $~lib/typedarray/Int16Array#__set
                   local.get $3
                   i32.const 1
                   i32.const 100
                   call $~lib/typedarray/Int16Array#__set
                   local.get $3
                   i32.const 2
                   i32.const 10
                   call $~lib/typedarray/Int16Array#__set
                   local.get $3
                   i32.const 3
                   i32.const 300
                   call $~lib/typedarray/Int16Array#__set
                   local.get $0
                   local.get $2
                   call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Uint32Array>
                   local.get $0
                   local.get $3
                   i32.const 5
                   call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int16Array>
                   local.get $0
                   i32.const 10
                   i32.const 0
                   i32.const 63
                   i32.const 12512
                   call $~lib/rt/__allocArray
                   call $~lib/rt/pure/__retain
                   local.tee $7
                   call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
                   local.get $0
                   call $~lib/rt/pure/__release
                   local.get $4
                   call $~lib/rt/pure/__release
                   local.get $1
                   call $~lib/rt/pure/__release
                   local.get $5
                   call $~lib/rt/pure/__release
                   local.get $6
                   call $~lib/rt/pure/__release
                   local.get $2
                   call $~lib/rt/pure/__release
                   local.get $3
                   call $~lib/rt/pure/__release
                   local.get $7
                   call $~lib/rt/pure/__release
                   return
                  end
                  br $folding-inner3
                 end
                 i32.const 0
                 i32.const 1312
                 i32.const 323
                 i32.const 3
                 call $~lib/builtins/abort
                 unreachable
                end
                i32.const 0
                i32.const 1312
                i32.const 344
                i32.const 3
                call $~lib/builtins/abort
                unreachable
               end
               i32.const 0
               i32.const 1312
               i32.const 365
               i32.const 3
               call $~lib/builtins/abort
               unreachable
              end
              i32.const 0
              i32.const 1312
              i32.const 366
              i32.const 3
              call $~lib/builtins/abort
              unreachable
             end
             i32.const 0
             i32.const 1312
             i32.const 367
             i32.const 3
             call $~lib/builtins/abort
             unreachable
            end
            i32.const 0
            i32.const 1312
            i32.const 415
            i32.const 3
            call $~lib/builtins/abort
            unreachable
           end
           i32.const 0
           i32.const 1312
           i32.const 417
           i32.const 3
           call $~lib/builtins/abort
           unreachable
          end
          i32.const 0
          i32.const 1312
          i32.const 438
          i32.const 3
          call $~lib/builtins/abort
          unreachable
         end
         i32.const 0
         i32.const 1312
         i32.const 440
         i32.const 3
         call $~lib/builtins/abort
         unreachable
        end
        i32.const 0
        i32.const 1312
        i32.const 461
        i32.const 3
        call $~lib/builtins/abort
        unreachable
       end
       i32.const 0
       i32.const 1312
       i32.const 463
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      i32.const 0
      i32.const 1312
      i32.const 495
      i32.const 3
      call $~lib/builtins/abort
      unreachable
     end
     i32.const 0
     i32.const 1312
     i32.const 626
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 0
    i32.const 1312
    i32.const 627
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 1312
   i32.const 629
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1312
  i32.const 630
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:std/typedarray
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
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
   i32.const 1264
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
        br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $folding-inner0 $folding-inner1 $folding-inner1 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $switch$1$default
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
     i32.load offset=20
     call $~lib/rt/pure/__visit
     br $__inlined_func$~lib/rt/__visit_members
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
    i32.const 1264
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
    i32.const 1264
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
  i32.const 12524
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
)
