(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $~lib/bindings/wasi_snapshot_preview1/proc_exit (param i32)))
 (import "wasi_snapshot_preview1" "args_sizes_get" (func $~lib/bindings/wasi_snapshot_preview1/args_sizes_get (param i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "args_get" (func $~lib/bindings/wasi_snapshot_preview1/args_get (param i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "environ_sizes_get" (func $~lib/bindings/wasi_snapshot_preview1/environ_sizes_get (param i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "environ_get" (func $~lib/bindings/wasi_snapshot_preview1/environ_get (param i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "clock_time_get" (func $~lib/bindings/wasi_snapshot_preview1/clock_time_get (param i32 i64 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\14\00\00\00=\00=\00 \00a\00r\00c\00h\00 \00=\00=")
 (data (i32.const 1116) ",")
 (data (i32.const 1128) "\01\00\00\00\0e\00\00\00S\00U\00C\00C\00E\00S\00S")
 (data (i32.const 1164) "\1c")
 (data (i32.const 1176) "\01\00\00\00\0c\00\00\00T\00O\00O\00B\00I\00G")
 (data (i32.const 1196) "\1c")
 (data (i32.const 1208) "\01\00\00\00\n\00\00\00A\00C\00C\00E\00S")
 (data (i32.const 1228) ",")
 (data (i32.const 1240) "\01\00\00\00\12\00\00\00A\00D\00D\00R\00I\00N\00U\00S\00E")
 (data (i32.const 1276) ",")
 (data (i32.const 1288) "\01\00\00\00\18\00\00\00A\00D\00D\00R\00N\00O\00T\00A\00V\00A\00I\00L")
 (data (i32.const 1324) ",")
 (data (i32.const 1336) "\01\00\00\00\16\00\00\00A\00F\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 1372) "\1c")
 (data (i32.const 1384) "\01\00\00\00\n\00\00\00A\00G\00A\00I\00N")
 (data (i32.const 1404) ",")
 (data (i32.const 1416) "\01\00\00\00\0e\00\00\00A\00L\00R\00E\00A\00D\00Y")
 (data (i32.const 1452) "\1c")
 (data (i32.const 1464) "\01\00\00\00\08\00\00\00B\00A\00D\00F")
 (data (i32.const 1484) "\1c")
 (data (i32.const 1496) "\01\00\00\00\0c\00\00\00B\00A\00D\00M\00S\00G")
 (data (i32.const 1516) "\1c")
 (data (i32.const 1528) "\01\00\00\00\08\00\00\00B\00U\00S\00Y")
 (data (i32.const 1548) ",")
 (data (i32.const 1560) "\01\00\00\00\10\00\00\00C\00A\00N\00C\00E\00L\00E\00D")
 (data (i32.const 1596) "\1c")
 (data (i32.const 1608) "\01\00\00\00\n\00\00\00C\00H\00I\00L\00D")
 (data (i32.const 1628) ",")
 (data (i32.const 1640) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00A\00B\00O\00R\00T\00E\00D")
 (data (i32.const 1676) ",")
 (data (i32.const 1688) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00R\00E\00F\00U\00S\00E\00D")
 (data (i32.const 1724) ",")
 (data (i32.const 1736) "\01\00\00\00\12\00\00\00C\00O\00N\00N\00R\00E\00S\00E\00T")
 (data (i32.const 1772) "\1c")
 (data (i32.const 1784) "\01\00\00\00\0c\00\00\00D\00E\00A\00D\00L\00K")
 (data (i32.const 1804) ",")
 (data (i32.const 1816) "\01\00\00\00\16\00\00\00D\00E\00S\00T\00A\00D\00D\00R\00R\00E\00Q")
 (data (i32.const 1852) "\1c")
 (data (i32.const 1864) "\01\00\00\00\06\00\00\00D\00O\00M")
 (data (i32.const 1884) "\1c")
 (data (i32.const 1896) "\01\00\00\00\n\00\00\00D\00Q\00U\00O\00T")
 (data (i32.const 1916) "\1c")
 (data (i32.const 1928) "\01\00\00\00\n\00\00\00E\00X\00I\00S\00T")
 (data (i32.const 1948) "\1c")
 (data (i32.const 1960) "\01\00\00\00\n\00\00\00F\00A\00U\00L\00T")
 (data (i32.const 1980) "\1c")
 (data (i32.const 1992) "\01\00\00\00\08\00\00\00F\00B\00I\00G")
 (data (i32.const 2012) ",")
 (data (i32.const 2024) "\01\00\00\00\16\00\00\00H\00O\00S\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 2060) "\1c")
 (data (i32.const 2072) "\01\00\00\00\08\00\00\00I\00D\00R\00M")
 (data (i32.const 2092) "\1c")
 (data (i32.const 2104) "\01\00\00\00\n\00\00\00I\00L\00S\00E\00Q")
 (data (i32.const 2124) ",")
 (data (i32.const 2136) "\01\00\00\00\14\00\00\00I\00N\00P\00R\00O\00G\00R\00E\00S\00S")
 (data (i32.const 2172) "\1c")
 (data (i32.const 2184) "\01\00\00\00\08\00\00\00I\00N\00T\00R")
 (data (i32.const 2204) "\1c")
 (data (i32.const 2216) "\01\00\00\00\n\00\00\00I\00N\00V\00A\00L")
 (data (i32.const 2236) "\1c")
 (data (i32.const 2248) "\01\00\00\00\04\00\00\00I\00O")
 (data (i32.const 2268) "\1c")
 (data (i32.const 2280) "\01\00\00\00\0c\00\00\00I\00S\00C\00O\00N\00N")
 (data (i32.const 2300) "\1c")
 (data (i32.const 2312) "\01\00\00\00\n\00\00\00I\00S\00D\00I\00R")
 (data (i32.const 2332) "\1c")
 (data (i32.const 2344) "\01\00\00\00\08\00\00\00L\00O\00O\00P")
 (data (i32.const 2364) "\1c")
 (data (i32.const 2376) "\01\00\00\00\n\00\00\00M\00F\00I\00L\00E")
 (data (i32.const 2396) "\1c")
 (data (i32.const 2408) "\01\00\00\00\n\00\00\00M\00L\00I\00N\00K")
 (data (i32.const 2428) ",")
 (data (i32.const 2440) "\01\00\00\00\0e\00\00\00M\00S\00G\00S\00I\00Z\00E")
 (data (i32.const 2476) ",")
 (data (i32.const 2488) "\01\00\00\00\10\00\00\00M\00U\00L\00T\00I\00H\00O\00P")
 (data (i32.const 2524) ",")
 (data (i32.const 2536) "\01\00\00\00\16\00\00\00N\00A\00M\00E\00T\00O\00O\00L\00O\00N\00G")
 (data (i32.const 2572) ",")
 (data (i32.const 2584) "\01\00\00\00\0e\00\00\00N\00E\00T\00D\00O\00W\00N")
 (data (i32.const 2620) ",")
 (data (i32.const 2632) "\01\00\00\00\10\00\00\00N\00E\00T\00R\00E\00S\00E\00T")
 (data (i32.const 2668) ",")
 (data (i32.const 2680) "\01\00\00\00\14\00\00\00N\00E\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 2716) "\1c")
 (data (i32.const 2728) "\01\00\00\00\n\00\00\00N\00F\00I\00L\00E")
 (data (i32.const 2748) "\1c")
 (data (i32.const 2760) "\01\00\00\00\0c\00\00\00N\00O\00B\00U\00F\00S")
 (data (i32.const 2780) "\1c")
 (data (i32.const 2792) "\01\00\00\00\n\00\00\00N\00O\00D\00E\00V")
 (data (i32.const 2812) "\1c")
 (data (i32.const 2824) "\01\00\00\00\n\00\00\00N\00O\00E\00N\00T")
 (data (i32.const 2844) "\1c")
 (data (i32.const 2856) "\01\00\00\00\0c\00\00\00N\00O\00E\00X\00E\00C")
 (data (i32.const 2876) "\1c")
 (data (i32.const 2888) "\01\00\00\00\n\00\00\00N\00O\00L\00C\00K")
 (data (i32.const 2908) "\1c")
 (data (i32.const 2920) "\01\00\00\00\0c\00\00\00N\00O\00L\00I\00N\00K")
 (data (i32.const 2940) "\1c")
 (data (i32.const 2952) "\01\00\00\00\n\00\00\00N\00O\00M\00E\00M")
 (data (i32.const 2972) "\1c")
 (data (i32.const 2984) "\01\00\00\00\n\00\00\00N\00O\00M\00S\00G")
 (data (i32.const 3004) ",")
 (data (i32.const 3016) "\01\00\00\00\14\00\00\00N\00O\00P\00R\00O\00T\00O\00O\00P\00T")
 (data (i32.const 3052) "\1c")
 (data (i32.const 3064) "\01\00\00\00\n\00\00\00N\00O\00S\00P\00C")
 (data (i32.const 3084) "\1c")
 (data (i32.const 3096) "\01\00\00\00\n\00\00\00N\00O\00S\00Y\00S")
 (data (i32.const 3116) ",")
 (data (i32.const 3128) "\01\00\00\00\0e\00\00\00N\00O\00T\00C\00O\00N\00N")
 (data (i32.const 3164) "\1c")
 (data (i32.const 3176) "\01\00\00\00\0c\00\00\00N\00O\00T\00D\00I\00R")
 (data (i32.const 3196) ",")
 (data (i32.const 3208) "\01\00\00\00\10\00\00\00N\00O\00T\00E\00M\00P\00T\00Y")
 (data (i32.const 3244) ",")
 (data (i32.const 3256) "\01\00\00\00\1c\00\00\00N\00O\00T\00R\00E\00C\00O\00V\00E\00R\00A\00B\00L\00E")
 (data (i32.const 3292) ",")
 (data (i32.const 3304) "\01\00\00\00\0e\00\00\00N\00O\00T\00S\00O\00C\00K")
 (data (i32.const 3340) "\1c")
 (data (i32.const 3352) "\01\00\00\00\0c\00\00\00N\00O\00T\00S\00U\00P")
 (data (i32.const 3372) "\1c")
 (data (i32.const 3384) "\01\00\00\00\n\00\00\00N\00O\00T\00T\00Y")
 (data (i32.const 3404) "\1c")
 (data (i32.const 3416) "\01\00\00\00\08\00\00\00N\00X\00I\00O")
 (data (i32.const 3436) ",")
 (data (i32.const 3448) "\01\00\00\00\10\00\00\00O\00V\00E\00R\00F\00L\00O\00W")
 (data (i32.const 3484) ",")
 (data (i32.const 3496) "\01\00\00\00\12\00\00\00O\00W\00N\00E\00R\00D\00E\00A\00D")
 (data (i32.const 3532) "\1c")
 (data (i32.const 3544) "\01\00\00\00\08\00\00\00P\00E\00R\00M")
 (data (i32.const 3564) "\1c")
 (data (i32.const 3576) "\01\00\00\00\08\00\00\00P\00I\00P\00E")
 (data (i32.const 3596) "\1c")
 (data (i32.const 3608) "\01\00\00\00\n\00\00\00P\00R\00O\00T\00O")
 (data (i32.const 3628) ",")
 (data (i32.const 3640) "\01\00\00\00\1c\00\00\00P\00R\00O\00T\00O\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 3676) ",")
 (data (i32.const 3688) "\01\00\00\00\12\00\00\00P\00R\00O\00T\00O\00T\00Y\00P\00E")
 (data (i32.const 3724) "\1c")
 (data (i32.const 3736) "\01\00\00\00\n\00\00\00R\00A\00N\00G\00E")
 (data (i32.const 3756) "\1c")
 (data (i32.const 3768) "\01\00\00\00\08\00\00\00R\00O\00F\00S")
 (data (i32.const 3788) "\1c")
 (data (i32.const 3800) "\01\00\00\00\n\00\00\00S\00P\00I\00P\00E")
 (data (i32.const 3820) "\1c")
 (data (i32.const 3832) "\01\00\00\00\08\00\00\00S\00R\00C\00H")
 (data (i32.const 3852) "\1c")
 (data (i32.const 3864) "\01\00\00\00\n\00\00\00S\00T\00A\00L\00E")
 (data (i32.const 3884) ",")
 (data (i32.const 3896) "\01\00\00\00\10\00\00\00T\00I\00M\00E\00D\00O\00U\00T")
 (data (i32.const 3932) "\1c")
 (data (i32.const 3944) "\01\00\00\00\0c\00\00\00T\00X\00T\00B\00S\00Y")
 (data (i32.const 3964) "\1c")
 (data (i32.const 3976) "\01\00\00\00\08\00\00\00X\00D\00E\00V")
 (data (i32.const 3996) ",")
 (data (i32.const 4008) "\01\00\00\00\14\00\00\00N\00O\00T\00C\00A\00P\00A\00B\00L\00E")
 (data (i32.const 4044) ",")
 (data (i32.const 4056) "\01\00\00\00\0e\00\00\00U\00N\00K\00N\00O\00W\00N")
 (data (i32.const 4092) "<")
 (data (i32.const 4104) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00p\00r\00o\00c\00e\00s\00s\00.\00t\00s")
 (data (i32.const 4156) "<")
 (data (i32.const 4168) "\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 4220) "<")
 (data (i32.const 4232) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 4284) "<")
 (data (i32.const 4296) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 4380) "\1c")
 (data (i32.const 4392) "\01\00\00\00\02\00\00\00\n")
 (data (i32.const 4412) "\1c")
 (data (i32.const 4424) "\01\00\00\00\0c\00\00\00w\00a\00s\00m\003\002")
 (data (i32.const 4444) ",")
 (data (i32.const 4456) "\01\00\00\00\1c\00\00\00=\00=\00 \00p\00l\00a\00t\00f\00o\00r\00m\00 \00=\00=")
 (data (i32.const 4492) "\1c")
 (data (i32.const 4504) "\01\00\00\00\08\00\00\00w\00a\00s\00m")
 (data (i32.const 4524) ",")
 (data (i32.const 4536) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 4572) ",")
 (data (i32.const 4584) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 4620) ",")
 (data (i32.const 4632) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 4668) "<")
 (data (i32.const 4680) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 4732) ",")
 (data (i32.const 4744) "\01\00\00\00\14\00\00\00=\00=\00 \00a\00r\00g\00v\00 \00=\00=")
 (data (i32.const 4780) "|")
 (data (i32.const 4792) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 4908) "<")
 (data (i32.const 4920) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 4972) "\1c")
 (data (i32.const 4984) "\01\00\00\00\02\00\00\00=")
 (data (i32.const 5004) "\1c")
 (data (i32.const 5016) "\01")
 (data (i32.const 5036) ",")
 (data (i32.const 5048) "\01\00\00\00\12\00\00\00=\00=\00 \00e\00n\00v\00 \00=\00=")
 (data (i32.const 5084) "\1c")
 (data (i32.const 5096) "\01\00\00\00\n\00\00\00k\00e\00y\00:\00 ")
 (data (i32.const 5116) "\1c")
 (data (i32.const 5128) "\01\00\00\00\n\00\00\00v\00a\00l\00:\00 ")
 (data (i32.const 5148) "<")
 (data (i32.const 5160) "\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 5212) ",")
 (data (i32.const 5224) "\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 5260) ",")
 (data (i32.const 5272) "\01\00\00\00\14\00\00\00=\00=\00 \00t\00i\00m\00e\00 \00=\00=")
 (data (i32.const 5308) "|")
 (data (i32.const 5320) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 5436) "<")
 (data (i32.const 5448) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 5500) "\1c")
 (data (i32.const 5512) "\01\00\00\00\02\00\00\000")
 (data (i32.const 5532) "\\")
 (data (i32.const 5544) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 5628) ",")
 (data (i32.const 5640) "\01\00\00\00\18\00\00\00=\00=\00 \00h\00r\00t\00i\00m\00e\00 \00=\00=")
 (data (i32.const 5676) ",")
 (data (i32.const 5688) "\01\00\00\00\14\00\00\00=\00=\00 \00e\00x\00i\00t\00 \00=\00=")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/process/process.argv (mut i32) (i32.const 0))
 (global $wasi/process/argv (mut i32) (i32.const 0))
 (global $~lib/process/process.env (mut i32) (i32.const 0))
 (global $wasi/process/env (mut i32) (i32.const 0))
 (global $wasi/process/envKeys (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $4
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $3
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $4
      local.get $0
      i32.const 2
      i32.add
      i32.gt_u
      i32.const 0
      local.get $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $5
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        local.get $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $5
        i32.const 1023
        i32.and
        i32.or
        local.tee $3
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $3
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $3
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $3
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      local.get $3
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $1
  local.get $2
  i32.sub
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
 (func $~lib/wasi/index/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 12
  i32.store
  i32.const 12
  i64.const 9071471065260641
  i64.store
  local.get $0
  if (result i32)
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 19
   call $~lib/string/String.UTF8.encodeUnsafe
   i32.const 19
   i32.add
  else
   i32.const 19
  end
  local.tee $4
  i32.const 544106784
  i32.store
  local.get $4
  i32.const 4
  i32.add
  local.set $4
  local.get $1
  if
   local.get $1
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $4
   call $~lib/string/String.UTF8.encodeUnsafe
   local.get $4
   i32.add
   local.set $4
  end
  local.get $4
  i32.const 40
  i32.store8
  local.get $2
  call $~lib/util/number/decimalCount32
  local.tee $0
  local.get $4
  i32.const 1
  i32.add
  i32.add
  local.set $4
  loop $do-continue|0
   local.get $4
   i32.const 1
   i32.sub
   local.tee $4
   local.get $2
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.get $2
   i32.const 10
   i32.div_u
   local.tee $2
   br_if $do-continue|0
  end
  local.get $0
  local.get $4
  i32.add
  local.tee $0
  i32.const 58
  i32.store8
  local.get $3
  call $~lib/util/number/decimalCount32
  local.tee $1
  local.get $0
  i32.const 1
  i32.add
  i32.add
  local.set $4
  loop $do-continue|1
   local.get $4
   i32.const 1
   i32.sub
   local.tee $4
   local.get $3
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.get $3
   i32.const 10
   i32.div_u
   local.tee $3
   br_if $do-continue|1
  end
  local.get $1
  local.get $4
  i32.add
  local.tee $0
  i32.const 2601
  i32.store16
  i32.const 4
  local.get $0
  i32.const 10
  i32.sub
  i32.store
  i32.const 2
  i32.const 0
  i32.const 1
  i32.const 8
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  drop
  i32.const 255
  call $~lib/bindings/wasi_snapshot_preview1/proc_exit
 )
 (func $~lib/bindings/wasi_snapshot_preview1/errnoToString (param $0 i32) (result i32)
  block $break|0
   block $case76|0
    block $case75|0
     block $case74|0
      block $case73|0
       block $case72|0
        block $case71|0
         block $case70|0
          block $case69|0
           block $case68|0
            block $case67|0
             block $case66|0
              block $case65|0
               block $case64|0
                block $case63|0
                 block $case62|0
                  block $case61|0
                   block $case60|0
                    block $case59|0
                     block $case58|0
                      block $case57|0
                       block $case56|0
                        block $case55|0
                         block $case54|0
                          block $case53|0
                           block $case52|0
                            block $case51|0
                             block $case50|0
                              block $case49|0
                               block $case48|0
                                block $case47|0
                                 block $case46|0
                                  block $case45|0
                                   block $case44|0
                                    block $case43|0
                                     block $case42|0
                                      block $case41|0
                                       block $case40|0
                                        block $case39|0
                                         block $case38|0
                                          block $case37|0
                                           block $case36|0
                                            block $case35|0
                                             block $case34|0
                                              block $case33|0
                                               block $case32|0
                                                block $case31|0
                                                 block $case30|0
                                                  block $case29|0
                                                   block $case28|0
                                                    block $case27|0
                                                     block $case26|0
                                                      block $case25|0
                                                       block $case24|0
                                                        block $case23|0
                                                         block $case22|0
                                                          block $case21|0
                                                           block $case20|0
                                                            block $case19|0
                                                             block $case18|0
                                                              block $case17|0
                                                               block $case16|0
                                                                block $case15|0
                                                                 block $case14|0
                                                                  block $case13|0
                                                                   block $case12|0
                                                                    block $case11|0
                                                                     block $case10|0
                                                                      block $case9|0
                                                                       block $case8|0
                                                                        block $case7|0
                                                                         block $case6|0
                                                                          block $case5|0
                                                                           block $case4|0
                                                                            block $case3|0
                                                                             block $case2|0
                                                                              block $case1|0
                                                                               block $case0|0
                                                                                local.get $0
                                                                                i32.const 65535
                                                                                i32.and
                                                                                br_table $case0|0 $case1|0 $case2|0 $case3|0 $case4|0 $case5|0 $case6|0 $case7|0 $case8|0 $case9|0 $case10|0 $case11|0 $case12|0 $case13|0 $case14|0 $case15|0 $case16|0 $case17|0 $case18|0 $case19|0 $case20|0 $case21|0 $case22|0 $case23|0 $case24|0 $case25|0 $case26|0 $case27|0 $case28|0 $case29|0 $case30|0 $case31|0 $case32|0 $case33|0 $case34|0 $case35|0 $case36|0 $case37|0 $case38|0 $case39|0 $case40|0 $case41|0 $case42|0 $case43|0 $case44|0 $case45|0 $case46|0 $case47|0 $case48|0 $case49|0 $case50|0 $case51|0 $case52|0 $case53|0 $case54|0 $case55|0 $case56|0 $case57|0 $case58|0 $case59|0 $case60|0 $case61|0 $case62|0 $case63|0 $case64|0 $case65|0 $case66|0 $case67|0 $case68|0 $case69|0 $case70|0 $case71|0 $case72|0 $case73|0 $case74|0 $case75|0 $case76|0 $break|0
                                                                               end
                                                                               i32.const 1136
                                                                               return
                                                                              end
                                                                              i32.const 1184
                                                                              return
                                                                             end
                                                                             i32.const 1216
                                                                             return
                                                                            end
                                                                            i32.const 1248
                                                                            return
                                                                           end
                                                                           i32.const 1296
                                                                           return
                                                                          end
                                                                          i32.const 1344
                                                                          return
                                                                         end
                                                                         i32.const 1392
                                                                         return
                                                                        end
                                                                        i32.const 1424
                                                                        return
                                                                       end
                                                                       i32.const 1472
                                                                       return
                                                                      end
                                                                      i32.const 1504
                                                                      return
                                                                     end
                                                                     i32.const 1536
                                                                     return
                                                                    end
                                                                    i32.const 1568
                                                                    return
                                                                   end
                                                                   i32.const 1616
                                                                   return
                                                                  end
                                                                  i32.const 1648
                                                                  return
                                                                 end
                                                                 i32.const 1696
                                                                 return
                                                                end
                                                                i32.const 1744
                                                                return
                                                               end
                                                               i32.const 1792
                                                               return
                                                              end
                                                              i32.const 1824
                                                              return
                                                             end
                                                             i32.const 1872
                                                             return
                                                            end
                                                            i32.const 1904
                                                            return
                                                           end
                                                           i32.const 1936
                                                           return
                                                          end
                                                          i32.const 1968
                                                          return
                                                         end
                                                         i32.const 2000
                                                         return
                                                        end
                                                        i32.const 2032
                                                        return
                                                       end
                                                       i32.const 2080
                                                       return
                                                      end
                                                      i32.const 2112
                                                      return
                                                     end
                                                     i32.const 2144
                                                     return
                                                    end
                                                    i32.const 2192
                                                    return
                                                   end
                                                   i32.const 2224
                                                   return
                                                  end
                                                  i32.const 2256
                                                  return
                                                 end
                                                 i32.const 2288
                                                 return
                                                end
                                                i32.const 2320
                                                return
                                               end
                                               i32.const 2352
                                               return
                                              end
                                              i32.const 2384
                                              return
                                             end
                                             i32.const 2416
                                             return
                                            end
                                            i32.const 2448
                                            return
                                           end
                                           i32.const 2496
                                           return
                                          end
                                          i32.const 2544
                                          return
                                         end
                                         i32.const 2592
                                         return
                                        end
                                        i32.const 2640
                                        return
                                       end
                                       i32.const 2688
                                       return
                                      end
                                      i32.const 2736
                                      return
                                     end
                                     i32.const 2768
                                     return
                                    end
                                    i32.const 2800
                                    return
                                   end
                                   i32.const 2832
                                   return
                                  end
                                  i32.const 2864
                                  return
                                 end
                                 i32.const 2896
                                 return
                                end
                                i32.const 2928
                                return
                               end
                               i32.const 2960
                               return
                              end
                              i32.const 2992
                              return
                             end
                             i32.const 3024
                             return
                            end
                            i32.const 3072
                            return
                           end
                           i32.const 3104
                           return
                          end
                          i32.const 3136
                          return
                         end
                         i32.const 3184
                         return
                        end
                        i32.const 3216
                        return
                       end
                       i32.const 3264
                       return
                      end
                      i32.const 3312
                      return
                     end
                     i32.const 3360
                     return
                    end
                    i32.const 3392
                    return
                   end
                   i32.const 3424
                   return
                  end
                  i32.const 3456
                  return
                 end
                 i32.const 3504
                 return
                end
                i32.const 3552
                return
               end
               i32.const 3584
               return
              end
              i32.const 3616
              return
             end
             i32.const 3648
             return
            end
            i32.const 3696
            return
           end
           i32.const 3744
           return
          end
          i32.const 3776
          return
         end
         i32.const 3808
         return
        end
        i32.const 3840
        return
       end
       i32.const 3872
       return
      end
      i32.const 3904
      return
     end
     i32.const 3952
     return
    end
    i32.const 3984
    return
   end
   i32.const 4016
   return
  end
  i32.const 4064
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
   i32.const 4304
   i32.const 272
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 4304
   i32.const 274
   i32.const 14
   call $~lib/wasi/index/abort
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
   local.set $3
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 4304
   i32.const 287
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
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
    local.tee $4
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $1
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
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
   i32.const 4304
   i32.const 200
   i32.const 14
   call $~lib/wasi/index/abort
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
   i32.const 4304
   i32.const 202
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.const 4
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
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.const 1073741820
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
    i32.const 4
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
    i32.const 4304
    i32.const 223
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741820
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
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 4304
   i32.const 238
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $5
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 4304
   i32.const 239
   i32.const 14
   call $~lib/wasi/index/abort
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
   i32.const 4304
   i32.const 255
   i32.const 14
   call $~lib/wasi/index/abort
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
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
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
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 4304
   i32.const 380
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 4304
    i32.const 387
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
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
    i32.const 4304
    i32.const 400
    i32.const 5
    call $~lib/wasi/index/abort
    unreachable
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
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
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 1
  i32.lt_s
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
  i32.const 5728
  i32.const 0
  i32.store
  i32.const 7296
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
    i32.const 5728
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    loop $for-loop|1
     local.get $0
     i32.const 16
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 5728
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $0
      i32.const 1
      i32.add
      local.set $0
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
  i32.const 5728
  i32.const 7300
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 5728
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 4176
   i32.const 4304
   i32.const 461
   i32.const 30
   call $~lib/wasi/index/abort
   unreachable
  end
  i32.const 12
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $0
  i32.const 12
  i32.le_u
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
   i32.const 31
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
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.set $2
   local.get $1
   local.get $2
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
   i32.const 4304
   i32.const 333
   i32.const 14
   call $~lib/wasi/index/abort
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
     i32.const 4304
     i32.const 346
     i32.const 18
     call $~lib/wasi/index/abort
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
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 4304
   i32.const 360
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 16
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
   i32.const 4
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 4
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
   i32.const 4
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
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $2
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   i32.const 4
   memory.size
   local.tee $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $0
   i32.load offset=1568
   i32.ne
   i32.shl
   local.get $2
   i32.const 1
   i32.const 27
   local.get $2
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $2
   local.get $2
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 4304
    i32.const 499
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 4304
   i32.const 501
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $1
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  local.get $1
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/rt/tcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 4176
   i32.const 4240
   i32.const 117
   i32.const 31
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/tcms/fromSpace
  local.tee $0
  i32.load offset=8
  local.set $1
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $2
  call $~lib/rt/tcms/Object#set:next
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 20
  i32.add
 )
 (func $~lib/process/writeString (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const -1
  local.set $2
  i32.const -1
  local.set $1
  i32.const -1
  local.set $3
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $0
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        br_table $case4|0 $case3|0 $case2|0 $case1|0 $case0|0 $break|0
       end
       local.get $0
       i32.load16_u offset=6
       local.tee $3
       i32.const 128
       i32.ge_u
       br_if $break|0
      end
      local.get $0
      i32.load16_u offset=4
      local.tee $1
      i32.const 128
      i32.ge_u
      br_if $break|0
     end
     local.get $0
     i32.load16_u offset=2
     local.tee $2
     i32.const 128
     i32.ge_u
     br_if $break|0
    end
    local.get $0
    i32.load16_u
    local.tee $4
    i32.const 128
    i32.ge_u
    br_if $break|0
    i32.const 1088
    i32.const 1096
    i32.store
    i32.const 1092
    local.get $2
    i32.const -1
    i32.ne
    i32.const 1
    i32.add
    local.get $1
    i32.const -1
    i32.ne
    i32.add
    local.get $3
    i32.const -1
    i32.ne
    i32.add
    i32.store
    i32.const 1096
    local.get $4
    local.get $2
    i32.const 8
    i32.shl
    i32.or
    local.get $1
    i32.const 16
    i32.shl
    i32.or
    local.get $3
    i32.const 24
    i32.shl
    i32.or
    i32.store
    i32.const 1
    i32.const 1088
    i32.const 1
    i32.const 1100
    call $~lib/bindings/wasi_snapshot_preview1/fd_write
    local.tee $0
    i32.const 65535
    i32.and
    if
     local.get $0
     call $~lib/bindings/wasi_snapshot_preview1/errnoToString
     i32.const 4112
     i32.const 178
     i32.const 16
     call $~lib/wasi/index/abort
     unreachable
    end
   end
   return
  end
  local.get $0
  local.set $1
  i32.const 0
  local.set $2
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $1
   local.get $3
   i32.lt_u
   if
    local.get $1
    i32.load16_u
    local.tee $4
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $2
     i32.const 1
     i32.add
    else
     local.get $4
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 2
      i32.add
     else
      local.get $3
      local.get $1
      i32.const 2
      i32.add
      i32.gt_u
      i32.const 0
      local.get $4
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $1
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $while-continue|0
       end
      end
      local.get $2
      i32.const 3
      i32.add
     end
    end
    local.set $2
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $2
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.get $2
  call $~lib/string/String.UTF8.encodeUnsafe
  drop
  i32.const 1088
  local.get $2
  i32.store
  i32.const 1092
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.store
  i32.const 1
  i32.const 1088
  i32.const 1
  i32.const 1096
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  local.tee $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4112
   i32.const 151
   i32.const 12
   call $~lib/wasi/index/abort
   unreachable
  end
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 3
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 4544
   i32.const 4592
   i32.const 58
   i32.const 60
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $3
  local.get $2
  call $~lib/memory/memory.fill
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
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
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
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
  i32.eqz
  if
   i32.const 0
   i32.const 4304
   i32.const 564
   i32.const 3
   call $~lib/wasi/index/abort
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
 )
 (func $~lib/rt/tlsf/moveBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 5724
  i32.ge_u
  if
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $2
 )
 (func $~lib/rt/tcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  local.get $0
  i32.const 5724
  i32.lt_u
  if
   local.get $1
   local.get $2
   i32.load offset=12
   call $~lib/rt/tcms/__new
   local.tee $3
   local.get $0
   local.get $1
   local.get $2
   i32.load offset=16
   local.tee $0
   local.get $0
   local.get $1
   i32.gt_u
   select
   call $~lib/memory/memory.copy
   local.get $3
   return
  end
  local.get $1
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 4176
   i32.const 4240
   i32.const 138
   i32.const 31
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $0
  local.get $1
  i32.const 16
  i32.add
  local.set $2
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  local.get $0
  i32.const 5724
  i32.lt_u
  if
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/checkUsedBlock
   local.get $2
   call $~lib/rt/tlsf/moveBlock
   local.set $0
  else
   block $__inlined_func$~lib/rt/tlsf/reallocateBlock
    global.get $~lib/rt/tlsf/ROOT
    local.set $3
    local.get $0
    call $~lib/rt/tlsf/checkUsedBlock
    local.set $0
    block $folding-inner0
     local.get $2
     call $~lib/rt/tlsf/prepareSize
     local.tee $5
     local.get $0
     i32.load
     local.tee $6
     i32.const -4
     i32.and
     local.tee $4
     i32.le_u
     br_if $folding-inner0
     local.get $0
     i32.const 4
     i32.add
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.add
     local.tee $7
     i32.load
     local.tee $8
     i32.const 1
     i32.and
     if
      local.get $5
      local.get $4
      i32.const 4
      i32.add
      local.get $8
      i32.const -4
      i32.and
      i32.add
      local.tee $4
      i32.le_u
      if
       local.get $3
       local.get $7
       call $~lib/rt/tlsf/removeBlock
       local.get $0
       local.get $4
       local.get $6
       i32.const 3
       i32.and
       i32.or
       i32.store
       br $folding-inner0
      end
     end
     local.get $3
     local.get $0
     local.get $2
     call $~lib/rt/tlsf/moveBlock
     local.set $0
     br $__inlined_func$~lib/rt/tlsf/reallocateBlock
    end
    local.get $3
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/prepareBlock
   end
  end
  local.get $0
  i32.const 20
  i32.add
  local.tee $2
  i32.const 20
  i32.sub
  local.tee $0
  local.get $1
  i32.store offset=16
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.get $0
  i32.store offset=8
  local.get $0
  i32.load offset=8
  local.get $0
  call $~lib/rt/tcms/Object#set:next
  local.get $2
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $0
  local.get $1
  i32.add
  local.tee $3
  i32.gt_u
  if
   i32.const 0
   i32.const 4640
   i32.const 740
   i32.const 7
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tcms/__new
  local.tee $5
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $2
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $2
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $3
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $4
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $2
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $1
       local.get $4
       local.get $2
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.store16
      else
       local.get $0
       local.get $3
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $6
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $2
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $6
        local.get $2
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $4
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $2
       else
        local.get $0
        local.get $3
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $2
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $4
        i32.const 12
        i32.shl
        i32.or
        local.get $6
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $2
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $2
       i32.const 65536
       i32.lt_u
       if
        local.get $1
        local.get $2
        i32.store16
       else
        local.get $1
        local.get $2
        i32.const 65536
        i32.sub
        local.tee $2
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $2
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 2
        i32.add
        local.set $1
       end
      end
     else
      local.get $2
      i32.eqz
      br_if $while-break|0
      local.get $1
      local.get $2
      i32.store16
     end
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $5
  local.get $1
  local.get $5
  i32.sub
  call $~lib/rt/tcms/__renew
 )
 (func $~lib/array/ensureSize (param $0 i32) (param $1 i32)
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
   i32.const 268435455
   i32.gt_u
   if
    i32.const 4544
    i32.const 4592
    i32.const 14
    i32.const 48
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $2
   local.get $0
   i32.load
   local.tee $4
   local.get $1
   i32.const 2
   i32.shl
   local.tee $3
   call $~lib/rt/tcms/__renew
   local.tee $1
   i32.add
   local.get $3
   local.get $2
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
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/string/String>#__set (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 4688
    i32.const 4592
    i32.const 108
    i32.const 22
    call $~lib/wasi/index/abort
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
 (func $~lib/rt/tlsf/__free (param $0 i32)
  local.get $0
  i32.const 5724
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/array/Array<~lib/string/String>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 4688
   i32.const 4592
   i32.const 92
   i32.const 42
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 4800
   i32.const 4592
   i32.const 96
   i32.const 40
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 4544
   i32.const 4928
   i32.const 49
   i32.const 43
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.tee $1
  i32.const 7
  i32.and
  local.get $2
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $3
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $1
    i64.load
    local.get $2
    i64.load
    i64.eq
    if
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $3
     i32.const 4
     i32.sub
     local.tee $3
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $2
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $3
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $1
  local.get $1
  local.get $3
  i32.gt_s
  select
  local.tee $3
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $1
  local.get $1
  local.get $2
  i32.gt_s
  select
  local.tee $2
  local.get $2
  local.get $3
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $4
  local.get $3
  local.get $2
  local.get $2
  local.get $3
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.tee $2
  i32.sub
  local.tee $3
  i32.eqz
  if
   i32.const 5024
   return
  end
  i32.const 0
  local.get $4
  local.get $1
  i32.const 1
  i32.shl
  i32.eq
  local.get $2
  select
  if
   local.get $0
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/tcms/__new
  local.tee $1
  local.get $0
  local.get $2
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $1
 )
 (func $~lib/util/hash/hashStr (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  local.set $1
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.set $3
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     local.get $1
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
  end
  local.get $1
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  loop $while-continue|0
   local.get $2
   if
    local.get $2
    i32.load offset=8
    local.tee $3
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     block $__inlined_func$~lib/string/String.__eq (result i32)
      i32.const 1
      local.get $1
      local.get $2
      i32.load
      local.tee $0
      i32.eq
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      i32.const 0
      local.get $1
      i32.eqz
      i32.const 1
      local.get $0
      select
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      i32.const 0
      local.get $0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.tee $4
      local.get $1
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.ne
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      local.get $0
      i32.const 0
      local.get $1
      local.get $4
      call $~lib/util/string/compareImpl
      i32.eqz
     end
    end
    if
     local.get $2
     return
    end
    local.get $3
    i32.const -2
    i32.and
    local.set $2
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $6
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $8
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $4
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $8
   i32.ne
   if
    local.get $8
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $8
     i32.load
     local.tee $7
     i32.store
     local.get $2
     local.get $8
     i32.load offset=4
     i32.store offset=4
     local.get $2
     local.get $6
     local.get $7
     call $~lib/util/hash/hashStr
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $7
     i32.load
     i32.store offset=8
     local.get $7
     local.get $2
     i32.store
     local.get $2
     i32.const 12
     i32.add
     local.set $2
    end
    local.get $8
    i32.const 12
    i32.add
    local.set $8
    br $while-continue|0
   end
  end
  local.get $0
  local.get $6
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
  local.get $5
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  local.tee $4
  call $~lib/map/Map<~lib/string/String,~lib/string/String>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,~lib/string/String>#rehash
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $5
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $5
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $1
   i32.load
   i32.store offset=8
   local.get $1
   local.get $3
   i32.store
  end
  local.get $0
 )
 (func $~lib/process/lazyEnv (result i32)
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
  i32.const 1088
  i32.const 1092
  call $~lib/bindings/wasi_snapshot_preview1/environ_sizes_get
  local.tee $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4112
   i32.const 87
   i32.const 12
   call $~lib/wasi/index/abort
   unreachable
  end
  i32.const 1088
  i32.load
  local.tee $8
  i32.const 2
  i32.shl
  local.tee $0
  i32.const 1092
  i32.load
  i32.add
  local.tee $9
  call $~lib/rt/tlsf/__alloc
  local.tee $3
  local.get $0
  local.get $3
  i32.add
  call $~lib/bindings/wasi_snapshot_preview1/environ_get
  local.tee $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4112
   i32.const 94
   i32.const 12
   call $~lib/wasi/index/abort
   unreachable
  end
  i32.const 24
  i32.const 4
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $1
  i32.const 3
  i32.store offset=4
  local.get $1
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  loop $for-loop|0
   local.get $4
   local.get $8
   i32.lt_u
   if
    local.get $3
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $0
    local.get $0
    local.get $9
    i32.add
    local.get $3
    i32.sub
    call $~lib/string/String.UTF8.decodeUnsafe
    local.tee $5
    local.set $6
    block $__inlined_func$~lib/string/String#indexOf
     i32.const 4988
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $7
     i32.eqz
     if
      i32.const 0
      local.set $0
      br $__inlined_func$~lib/string/String#indexOf
     end
     local.get $6
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $2
     i32.eqz
     if
      i32.const -1
      local.set $0
      br $__inlined_func$~lib/string/String#indexOf
     end
     i32.const 0
     local.get $2
     local.get $2
     i32.const 0
     i32.gt_s
     select
     local.set $0
     local.get $2
     local.get $7
     i32.sub
     local.set $2
     loop $for-loop|00
      local.get $0
      local.get $2
      i32.le_s
      if
       local.get $6
       local.get $0
       i32.const 4992
       local.get $7
       call $~lib/util/string/compareImpl
       i32.eqz
       br_if $__inlined_func$~lib/string/String#indexOf
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       br $for-loop|00
      end
     end
     i32.const -1
     local.set $0
    end
    local.get $0
    i32.const -1
    i32.xor
    if (result i32)
     local.get $1
     local.get $5
     i32.const 0
     local.get $0
     call $~lib/string/String#substring
     local.get $5
     local.get $0
     i32.const 1
     i32.add
     i32.const 2147483647
     call $~lib/string/String#substring
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#set
    else
     local.get $1
     local.get $5
     i32.const 5024
     call $~lib/map/Map<~lib/string/String,~lib/string/String>#set
    end
    drop
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/tlsf/__free
  local.get $1
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  loop $do-continue|0
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
   local.get $1
   i32.const 10
   i32.div_u
   local.tee $1
   br_if $do-continue|0
  end
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
  loop $do-continue|0
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
   local.get $1
   i64.const 10
   i64.div_u
   local.tee $1
   i64.const 0
   i64.ne
   br_if $do-continue|0
  end
 )
 (func $start:wasi/process
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 4356
  i32.const 4352
  i32.store
  i32.const 4360
  i32.const 4352
  i32.store
  i32.const 4352
  global.set $~lib/rt/tcms/fromSpace
  i32.const 1056
  call $~lib/process/writeString
  i32.const 4400
  call $~lib/process/writeString
  i32.const 4432
  call $~lib/process/writeString
  i32.const 4400
  call $~lib/process/writeString
  i32.const 4464
  call $~lib/process/writeString
  i32.const 4400
  call $~lib/process/writeString
  i32.const 4512
  call $~lib/process/writeString
  i32.const 4400
  call $~lib/process/writeString
  i32.const 1088
  i32.const 1092
  call $~lib/bindings/wasi_snapshot_preview1/args_sizes_get
  local.tee $1
  i32.const 65535
  i32.and
  if
   local.get $1
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4112
   i32.const 66
   i32.const 12
   call $~lib/wasi/index/abort
   unreachable
  end
  i32.const 1088
  i32.load
  local.tee $5
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 1092
  i32.load
  i32.add
  local.tee $6
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $1
  local.get $4
  i32.add
  call $~lib/bindings/wasi_snapshot_preview1/args_get
  local.tee $4
  i32.const 65535
  i32.and
  if
   local.get $4
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4112
   i32.const 73
   i32.const 12
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $5
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    local.get $4
    local.get $2
    local.get $1
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $7
    local.get $6
    local.get $7
    i32.add
    local.get $1
    i32.sub
    call $~lib/string/String.UTF8.decodeUnsafe
    call $~lib/array/Array<~lib/string/String>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/tlsf/__free
  local.get $4
  global.set $~lib/process/process.argv
  global.get $~lib/process/process.argv
  global.set $wasi/process/argv
  i32.const 4752
  call $~lib/process/writeString
  i32.const 4400
  call $~lib/process/writeString
  global.get $wasi/process/argv
  i32.load offset=12
  local.set $1
  loop $for-loop|00
   local.get $0
   local.get $1
   i32.lt_s
   if
    global.get $wasi/process/argv
    local.get $0
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/process/writeString
    i32.const 4400
    call $~lib/process/writeString
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|00
   end
  end
  call $~lib/process/lazyEnv
  global.set $~lib/process/process.env
  global.get $~lib/process/process.env
  global.set $wasi/process/env
  i32.const 0
  local.set $0
  i32.const 0
  local.set $1
  global.get $wasi/process/env
  local.tee $2
  i32.load offset=8
  local.set $5
  local.get $2
  i32.load offset=16
  local.tee $4
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $for-loop|05
   local.get $1
   local.get $4
   i32.lt_s
   if
    local.get $5
    local.get $1
    i32.const 12
    i32.mul
    i32.add
    local.tee $6
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $0
     local.get $6
     i32.load
     call $~lib/array/Array<~lib/string/String>#__set
     local.get $0
     i32.const 1
     i32.add
     local.set $0
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|05
   end
  end
  local.get $2
  local.get $0
  call $~lib/array/ensureSize
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $2
  global.set $wasi/process/envKeys
  i32.const 5056
  call $~lib/process/writeString
  i32.const 4400
  call $~lib/process/writeString
  i32.const 0
  local.set $0
  global.get $wasi/process/envKeys
  i32.load offset=12
  local.set $2
  loop $for-loop|1
   local.get $0
   local.get $2
   i32.lt_s
   if
    global.get $wasi/process/envKeys
    local.get $0
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $1
    i32.const 5104
    call $~lib/process/writeString
    local.get $1
    call $~lib/process/writeString
    i32.const 4400
    call $~lib/process/writeString
    i32.const 5136
    call $~lib/process/writeString
    global.get $wasi/process/env
    local.get $1
    local.get $1
    call $~lib/util/hash/hashStr
    call $~lib/map/Map<~lib/string/String,~lib/string/String>#find
    local.tee $1
    i32.eqz
    if
     i32.const 5168
     i32.const 5232
     i32.const 105
     i32.const 17
     call $~lib/wasi/index/abort
     unreachable
    end
    local.get $1
    i32.load offset=4
    call $~lib/process/writeString
    i32.const 4400
    call $~lib/process/writeString
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  i32.const 5280
  call $~lib/process/writeString
  i32.const 4400
  call $~lib/process/writeString
  i32.const 0
  i64.const 1000000
  i32.const 1088
  call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
  local.tee $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4112
   i32.const 53
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  block $__inlined_func$~lib/util/number/itoa64
   i32.const 1088
   i64.load
   i64.const 1000000
   i64.div_u
   local.tee $3
   i64.eqz
   if
    i32.const 5520
    local.set $0
    br $__inlined_func$~lib/util/number/itoa64
   end
   i64.const 0
   local.get $3
   i64.sub
   local.get $3
   local.get $3
   i64.const 63
   i64.shr_u
   i32.wrap_i64
   local.tee $1
   select
   local.tee $3
   i64.const 4294967295
   i64.le_u
   if
    local.get $3
    i32.wrap_i64
    local.tee $2
    call $~lib/util/number/decimalCount32
    local.get $1
    i32.add
    local.tee $5
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tcms/__new
    local.tee $0
    local.get $2
    local.get $5
    call $~lib/util/number/utoa_dec_simple<u32>
   else
    local.get $3
    call $~lib/util/number/decimalCount64High
    local.get $1
    i32.add
    local.tee $2
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tcms/__new
    local.tee $0
    local.get $3
    local.get $2
    call $~lib/util/number/utoa_dec_simple<u64>
   end
   local.get $1
   if
    local.get $0
    i32.const 45
    i32.store16
   end
  end
  local.get $0
  call $~lib/process/writeString
  i32.const 4400
  call $~lib/process/writeString
  i32.const 5648
  call $~lib/process/writeString
  i32.const 4400
  call $~lib/process/writeString
  i32.const 1
  i64.const 0
  i32.const 1088
  call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
  local.tee $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4112
   i32.const 59
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  block $__inlined_func$~lib/util/number/utoa64
   i32.const 1088
   i64.load
   local.tee $3
   i64.eqz
   if
    i32.const 5520
    local.set $0
    br $__inlined_func$~lib/util/number/utoa64
   end
   local.get $3
   i64.const 4294967295
   i64.le_u
   if
    local.get $3
    i32.wrap_i64
    local.tee $1
    call $~lib/util/number/decimalCount32
    local.tee $2
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tcms/__new
    local.tee $0
    local.get $1
    local.get $2
    call $~lib/util/number/utoa_dec_simple<u32>
   else
    local.get $3
    call $~lib/util/number/decimalCount64High
    local.tee $1
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tcms/__new
    local.tee $0
    local.get $3
    local.get $1
    call $~lib/util/number/utoa_dec_simple<u64>
   end
  end
  local.get $0
  call $~lib/process/writeString
  i32.const 4400
  call $~lib/process/writeString
  i32.const 5696
  call $~lib/process/writeString
  i32.const 4400
  call $~lib/process/writeString
  i32.const 42
  call $~lib/bindings/wasi_snapshot_preview1/proc_exit
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:wasi/process
 )
)
