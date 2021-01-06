(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $~lib/bindings/wasi_snapshot_preview1/proc_exit (param i32)))
 (import "wasi_snapshot_preview1" "clock_time_get" (func $~lib/bindings/wasi_snapshot_preview1/clock_time_get (param i32 i64 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\0c\00\00\00w\00h\00o\00o\00p\00s")
 (data (i32.const 1068) "<")
 (data (i32.const 1080) "\01\00\00\00$\00\00\00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00f\00a\00i\00l\00e\00d\00:\00 ")
 (data (i32.const 1164) ",")
 (data (i32.const 1176) "\01\00\00\00\0e\00\00\00S\00U\00C\00C\00E\00S\00S")
 (data (i32.const 1212) "\1c")
 (data (i32.const 1224) "\01\00\00\00\0c\00\00\00T\00O\00O\00B\00I\00G")
 (data (i32.const 1244) "\1c")
 (data (i32.const 1256) "\01\00\00\00\n\00\00\00A\00C\00C\00E\00S")
 (data (i32.const 1276) ",")
 (data (i32.const 1288) "\01\00\00\00\12\00\00\00A\00D\00D\00R\00I\00N\00U\00S\00E")
 (data (i32.const 1324) ",")
 (data (i32.const 1336) "\01\00\00\00\18\00\00\00A\00D\00D\00R\00N\00O\00T\00A\00V\00A\00I\00L")
 (data (i32.const 1372) ",")
 (data (i32.const 1384) "\01\00\00\00\16\00\00\00A\00F\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 1420) "\1c")
 (data (i32.const 1432) "\01\00\00\00\n\00\00\00A\00G\00A\00I\00N")
 (data (i32.const 1452) ",")
 (data (i32.const 1464) "\01\00\00\00\0e\00\00\00A\00L\00R\00E\00A\00D\00Y")
 (data (i32.const 1500) "\1c")
 (data (i32.const 1512) "\01\00\00\00\08\00\00\00B\00A\00D\00F")
 (data (i32.const 1532) "\1c")
 (data (i32.const 1544) "\01\00\00\00\0c\00\00\00B\00A\00D\00M\00S\00G")
 (data (i32.const 1564) "\1c")
 (data (i32.const 1576) "\01\00\00\00\08\00\00\00B\00U\00S\00Y")
 (data (i32.const 1596) ",")
 (data (i32.const 1608) "\01\00\00\00\10\00\00\00C\00A\00N\00C\00E\00L\00E\00D")
 (data (i32.const 1644) "\1c")
 (data (i32.const 1656) "\01\00\00\00\n\00\00\00C\00H\00I\00L\00D")
 (data (i32.const 1676) ",")
 (data (i32.const 1688) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00A\00B\00O\00R\00T\00E\00D")
 (data (i32.const 1724) ",")
 (data (i32.const 1736) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00R\00E\00F\00U\00S\00E\00D")
 (data (i32.const 1772) ",")
 (data (i32.const 1784) "\01\00\00\00\12\00\00\00C\00O\00N\00N\00R\00E\00S\00E\00T")
 (data (i32.const 1820) "\1c")
 (data (i32.const 1832) "\01\00\00\00\0c\00\00\00D\00E\00A\00D\00L\00K")
 (data (i32.const 1852) ",")
 (data (i32.const 1864) "\01\00\00\00\16\00\00\00D\00E\00S\00T\00A\00D\00D\00R\00R\00E\00Q")
 (data (i32.const 1900) "\1c")
 (data (i32.const 1912) "\01\00\00\00\06\00\00\00D\00O\00M")
 (data (i32.const 1932) "\1c")
 (data (i32.const 1944) "\01\00\00\00\n\00\00\00D\00Q\00U\00O\00T")
 (data (i32.const 1964) "\1c")
 (data (i32.const 1976) "\01\00\00\00\n\00\00\00E\00X\00I\00S\00T")
 (data (i32.const 1996) "\1c")
 (data (i32.const 2008) "\01\00\00\00\n\00\00\00F\00A\00U\00L\00T")
 (data (i32.const 2028) "\1c")
 (data (i32.const 2040) "\01\00\00\00\08\00\00\00F\00B\00I\00G")
 (data (i32.const 2060) ",")
 (data (i32.const 2072) "\01\00\00\00\16\00\00\00H\00O\00S\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 2108) "\1c")
 (data (i32.const 2120) "\01\00\00\00\08\00\00\00I\00D\00R\00M")
 (data (i32.const 2140) "\1c")
 (data (i32.const 2152) "\01\00\00\00\n\00\00\00I\00L\00S\00E\00Q")
 (data (i32.const 2172) ",")
 (data (i32.const 2184) "\01\00\00\00\14\00\00\00I\00N\00P\00R\00O\00G\00R\00E\00S\00S")
 (data (i32.const 2220) "\1c")
 (data (i32.const 2232) "\01\00\00\00\08\00\00\00I\00N\00T\00R")
 (data (i32.const 2252) "\1c")
 (data (i32.const 2264) "\01\00\00\00\n\00\00\00I\00N\00V\00A\00L")
 (data (i32.const 2284) "\1c")
 (data (i32.const 2296) "\01\00\00\00\04\00\00\00I\00O")
 (data (i32.const 2316) "\1c")
 (data (i32.const 2328) "\01\00\00\00\0c\00\00\00I\00S\00C\00O\00N\00N")
 (data (i32.const 2348) "\1c")
 (data (i32.const 2360) "\01\00\00\00\n\00\00\00I\00S\00D\00I\00R")
 (data (i32.const 2380) "\1c")
 (data (i32.const 2392) "\01\00\00\00\08\00\00\00L\00O\00O\00P")
 (data (i32.const 2412) "\1c")
 (data (i32.const 2424) "\01\00\00\00\n\00\00\00M\00F\00I\00L\00E")
 (data (i32.const 2444) "\1c")
 (data (i32.const 2456) "\01\00\00\00\n\00\00\00M\00L\00I\00N\00K")
 (data (i32.const 2476) ",")
 (data (i32.const 2488) "\01\00\00\00\0e\00\00\00M\00S\00G\00S\00I\00Z\00E")
 (data (i32.const 2524) ",")
 (data (i32.const 2536) "\01\00\00\00\10\00\00\00M\00U\00L\00T\00I\00H\00O\00P")
 (data (i32.const 2572) ",")
 (data (i32.const 2584) "\01\00\00\00\16\00\00\00N\00A\00M\00E\00T\00O\00O\00L\00O\00N\00G")
 (data (i32.const 2620) ",")
 (data (i32.const 2632) "\01\00\00\00\0e\00\00\00N\00E\00T\00D\00O\00W\00N")
 (data (i32.const 2668) ",")
 (data (i32.const 2680) "\01\00\00\00\10\00\00\00N\00E\00T\00R\00E\00S\00E\00T")
 (data (i32.const 2716) ",")
 (data (i32.const 2728) "\01\00\00\00\14\00\00\00N\00E\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 2764) "\1c")
 (data (i32.const 2776) "\01\00\00\00\n\00\00\00N\00F\00I\00L\00E")
 (data (i32.const 2796) "\1c")
 (data (i32.const 2808) "\01\00\00\00\0c\00\00\00N\00O\00B\00U\00F\00S")
 (data (i32.const 2828) "\1c")
 (data (i32.const 2840) "\01\00\00\00\n\00\00\00N\00O\00D\00E\00V")
 (data (i32.const 2860) "\1c")
 (data (i32.const 2872) "\01\00\00\00\n\00\00\00N\00O\00E\00N\00T")
 (data (i32.const 2892) "\1c")
 (data (i32.const 2904) "\01\00\00\00\0c\00\00\00N\00O\00E\00X\00E\00C")
 (data (i32.const 2924) "\1c")
 (data (i32.const 2936) "\01\00\00\00\n\00\00\00N\00O\00L\00C\00K")
 (data (i32.const 2956) "\1c")
 (data (i32.const 2968) "\01\00\00\00\0c\00\00\00N\00O\00L\00I\00N\00K")
 (data (i32.const 2988) "\1c")
 (data (i32.const 3000) "\01\00\00\00\n\00\00\00N\00O\00M\00E\00M")
 (data (i32.const 3020) "\1c")
 (data (i32.const 3032) "\01\00\00\00\n\00\00\00N\00O\00M\00S\00G")
 (data (i32.const 3052) ",")
 (data (i32.const 3064) "\01\00\00\00\14\00\00\00N\00O\00P\00R\00O\00T\00O\00O\00P\00T")
 (data (i32.const 3100) "\1c")
 (data (i32.const 3112) "\01\00\00\00\n\00\00\00N\00O\00S\00P\00C")
 (data (i32.const 3132) "\1c")
 (data (i32.const 3144) "\01\00\00\00\n\00\00\00N\00O\00S\00Y\00S")
 (data (i32.const 3164) ",")
 (data (i32.const 3176) "\01\00\00\00\0e\00\00\00N\00O\00T\00C\00O\00N\00N")
 (data (i32.const 3212) "\1c")
 (data (i32.const 3224) "\01\00\00\00\0c\00\00\00N\00O\00T\00D\00I\00R")
 (data (i32.const 3244) ",")
 (data (i32.const 3256) "\01\00\00\00\10\00\00\00N\00O\00T\00E\00M\00P\00T\00Y")
 (data (i32.const 3292) ",")
 (data (i32.const 3304) "\01\00\00\00\1c\00\00\00N\00O\00T\00R\00E\00C\00O\00V\00E\00R\00A\00B\00L\00E")
 (data (i32.const 3340) ",")
 (data (i32.const 3352) "\01\00\00\00\0e\00\00\00N\00O\00T\00S\00O\00C\00K")
 (data (i32.const 3388) "\1c")
 (data (i32.const 3400) "\01\00\00\00\0c\00\00\00N\00O\00T\00S\00U\00P")
 (data (i32.const 3420) "\1c")
 (data (i32.const 3432) "\01\00\00\00\n\00\00\00N\00O\00T\00T\00Y")
 (data (i32.const 3452) "\1c")
 (data (i32.const 3464) "\01\00\00\00\08\00\00\00N\00X\00I\00O")
 (data (i32.const 3484) ",")
 (data (i32.const 3496) "\01\00\00\00\10\00\00\00O\00V\00E\00R\00F\00L\00O\00W")
 (data (i32.const 3532) ",")
 (data (i32.const 3544) "\01\00\00\00\12\00\00\00O\00W\00N\00E\00R\00D\00E\00A\00D")
 (data (i32.const 3580) "\1c")
 (data (i32.const 3592) "\01\00\00\00\08\00\00\00P\00E\00R\00M")
 (data (i32.const 3612) "\1c")
 (data (i32.const 3624) "\01\00\00\00\08\00\00\00P\00I\00P\00E")
 (data (i32.const 3644) "\1c")
 (data (i32.const 3656) "\01\00\00\00\n\00\00\00P\00R\00O\00T\00O")
 (data (i32.const 3676) ",")
 (data (i32.const 3688) "\01\00\00\00\1c\00\00\00P\00R\00O\00T\00O\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 3724) ",")
 (data (i32.const 3736) "\01\00\00\00\12\00\00\00P\00R\00O\00T\00O\00T\00Y\00P\00E")
 (data (i32.const 3772) "\1c")
 (data (i32.const 3784) "\01\00\00\00\n\00\00\00R\00A\00N\00G\00E")
 (data (i32.const 3804) "\1c")
 (data (i32.const 3816) "\01\00\00\00\08\00\00\00R\00O\00F\00S")
 (data (i32.const 3836) "\1c")
 (data (i32.const 3848) "\01\00\00\00\n\00\00\00S\00P\00I\00P\00E")
 (data (i32.const 3868) "\1c")
 (data (i32.const 3880) "\01\00\00\00\08\00\00\00S\00R\00C\00H")
 (data (i32.const 3900) "\1c")
 (data (i32.const 3912) "\01\00\00\00\n\00\00\00S\00T\00A\00L\00E")
 (data (i32.const 3932) ",")
 (data (i32.const 3944) "\01\00\00\00\10\00\00\00T\00I\00M\00E\00D\00O\00U\00T")
 (data (i32.const 3980) "\1c")
 (data (i32.const 3992) "\01\00\00\00\0c\00\00\00T\00X\00T\00B\00S\00Y")
 (data (i32.const 4012) "\1c")
 (data (i32.const 4024) "\01\00\00\00\08\00\00\00X\00D\00E\00V")
 (data (i32.const 4044) ",")
 (data (i32.const 4056) "\01\00\00\00\14\00\00\00N\00O\00T\00C\00A\00P\00A\00B\00L\00E")
 (data (i32.const 4092) ",")
 (data (i32.const 4104) "\01\00\00\00\0e\00\00\00U\00N\00K\00N\00O\00W\00N")
 (data (i32.const 4140) "<")
 (data (i32.const 4152) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00p\00r\00o\00c\00e\00s\00s\00.\00t\00s")
 (data (i32.const 4204) "<")
 (data (i32.const 4216) "\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 4268) "<")
 (data (i32.const 4280) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 4332) "<")
 (data (i32.const 4344) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 4428) "\1c")
 (data (i32.const 4440) "\01\00\00\00\02\00\00\00\n")
 (data (i32.const 4460) "\1c")
 (data (i32.const 4472) "\01\00\00\00\08\00\00\00p\00h\00e\00w")
 (data (i32.const 4492) ",")
 (data (i32.const 4504) "\01\00\00\00\12\00\00\00h\00e\00l\00l\00o\00 \00l\00o\00g")
 (data (i32.const 4540) ",")
 (data (i32.const 4552) "\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00d\00e\00b\00u\00g")
 (data (i32.const 4588) ",")
 (data (i32.const 4600) "\01\00\00\00\0e\00\00\00D\00e\00b\00u\00g\00:\00 ")
 (data (i32.const 4636) ",")
 (data (i32.const 4648) "\01\00\00\00\14\00\00\00h\00e\00l\00l\00o\00 \00i\00n\00f\00o")
 (data (i32.const 4684) "\1c")
 (data (i32.const 4696) "\01\00\00\00\0c\00\00\00I\00n\00f\00o\00:\00 ")
 (data (i32.const 4716) ",")
 (data (i32.const 4728) "\01\00\00\00\14\00\00\00h\00e\00l\00l\00o\00 \00w\00a\00r\00n")
 (data (i32.const 4764) ",")
 (data (i32.const 4776) "\01\00\00\00\12\00\00\00W\00a\00r\00n\00i\00n\00g\00:\00 ")
 (data (i32.const 4812) ",")
 (data (i32.const 4824) "\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00e\00r\00r\00o\00r")
 (data (i32.const 4860) ",")
 (data (i32.const 4872) "\01\00\00\00\0e\00\00\00E\00r\00r\00o\00r\00:\00 ")
 (data (i32.const 4908) ",")
 (data (i32.const 4920) "\01\00\00\00\12\00\00\00s\00o\00m\00e\00L\00a\00b\00e\00l")
 (data (i32.const 4956) ",")
 (data (i32.const 4968) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 5004) "<")
 (data (i32.const 5016) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 5068) "<")
 (data (i32.const 5080) "\01\00\00\00 \00\00\00W\00a\00r\00n\00i\00n\00g\00:\00 \00L\00a\00b\00e\00l\00 \00\'")
 (data (i32.const 5132) "\\")
 (data (i32.const 5144) "\01\00\00\00H\00\00\00\'\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00 \00f\00o\00r\00 \00c\00o\00n\00s\00o\00l\00e\00.\00t\00i\00m\00e\00(\00)\00\n")
 (data (i32.const 5228) "L")
 (data (i32.const 5240) "\01\00\00\000\00\00\00W\00a\00r\00n\00i\00n\00g\00:\00 \00N\00o\00 \00s\00u\00c\00h\00 \00l\00a\00b\00e\00l\00 \00\'")
 (data (i32.const 5308) "L")
 (data (i32.const 5320) "\01\00\00\000\00\00\00\'\00 \00f\00o\00r\00 \00c\00o\00n\00s\00o\00l\00e\00.\00t\00i\00m\00e\00L\00o\00g\00(\00)\00\n")
 (data (i32.const 5388) "<")
 (data (i32.const 5400) "\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 5452) ",")
 (data (i32.const 5464) "\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 5500) "|")
 (data (i32.const 5512) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 5628) "<")
 (data (i32.const 5640) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 5692) "\1c")
 (data (i32.const 5704) "\01\00\00\00\02\00\00\000")
 (data (i32.const 5724) "\\")
 (data (i32.const 5736) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 5820) "\1c")
 (data (i32.const 5832) "\01\00\00\00\04\00\00\00:\00 ")
 (data (i32.const 5852) "\1c")
 (data (i32.const 5864) "\01\00\00\00\06\00\00\00m\00s\00\n")
 (data (i32.const 5884) "L")
 (data (i32.const 5896) "\01\00\00\000\00\00\00\'\00 \00f\00o\00r\00 \00c\00o\00n\00s\00o\00l\00e\00.\00t\00i\00m\00e\00E\00n\00d\00(\00)\00\n")
 (data (i32.const 5964) ",")
 (data (i32.const 5976) "\01\00\00\00\14\00\00\00w\00r\00o\00n\00g\00L\00a\00b\00e\00l")
 (data (i32.const 6012) ",")
 (data (i32.const 6024) "\01\00\00\00\1c\00\00\00d\00u\00p\00l\00i\00c\00a\00t\00e\00L\00a\00b\00e\00l")
 (data (i32.const 6060) "\1c")
 (data (i32.const 6072) "\01\00\00\00\02\00\00\001")
 (data (i32.const 6092) "\1c")
 (data (i32.const 6104) "\01\00\00\00\04\00\00\001\002")
 (data (i32.const 6124) "\1c")
 (data (i32.const 6136) "\01\00\00\00\06\00\00\001\002\003")
 (data (i32.const 6156) "\1c")
 (data (i32.const 6168) "\01\00\00\00\08\00\00\001\002\003\004")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/console/timers (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
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
                                                                               i32.const 1184
                                                                               return
                                                                              end
                                                                              i32.const 1232
                                                                              return
                                                                             end
                                                                             i32.const 1264
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
                                                                         i32.const 1440
                                                                         return
                                                                        end
                                                                        i32.const 1472
                                                                        return
                                                                       end
                                                                       i32.const 1520
                                                                       return
                                                                      end
                                                                      i32.const 1552
                                                                      return
                                                                     end
                                                                     i32.const 1584
                                                                     return
                                                                    end
                                                                    i32.const 1616
                                                                    return
                                                                   end
                                                                   i32.const 1664
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
                                                               i32.const 1840
                                                               return
                                                              end
                                                              i32.const 1872
                                                              return
                                                             end
                                                             i32.const 1920
                                                             return
                                                            end
                                                            i32.const 1952
                                                            return
                                                           end
                                                           i32.const 1984
                                                           return
                                                          end
                                                          i32.const 2016
                                                          return
                                                         end
                                                         i32.const 2048
                                                         return
                                                        end
                                                        i32.const 2080
                                                        return
                                                       end
                                                       i32.const 2128
                                                       return
                                                      end
                                                      i32.const 2160
                                                      return
                                                     end
                                                     i32.const 2192
                                                     return
                                                    end
                                                    i32.const 2240
                                                    return
                                                   end
                                                   i32.const 2272
                                                   return
                                                  end
                                                  i32.const 2304
                                                  return
                                                 end
                                                 i32.const 2336
                                                 return
                                                end
                                                i32.const 2368
                                                return
                                               end
                                               i32.const 2400
                                               return
                                              end
                                              i32.const 2432
                                              return
                                             end
                                             i32.const 2464
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
                                      i32.const 2784
                                      return
                                     end
                                     i32.const 2816
                                     return
                                    end
                                    i32.const 2848
                                    return
                                   end
                                   i32.const 2880
                                   return
                                  end
                                  i32.const 2912
                                  return
                                 end
                                 i32.const 2944
                                 return
                                end
                                i32.const 2976
                                return
                               end
                               i32.const 3008
                               return
                              end
                              i32.const 3040
                              return
                             end
                             i32.const 3072
                             return
                            end
                            i32.const 3120
                            return
                           end
                           i32.const 3152
                           return
                          end
                          i32.const 3184
                          return
                         end
                         i32.const 3232
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
                     i32.const 3408
                     return
                    end
                    i32.const 3440
                    return
                   end
                   i32.const 3472
                   return
                  end
                  i32.const 3504
                  return
                 end
                 i32.const 3552
                 return
                end
                i32.const 3600
                return
               end
               i32.const 3632
               return
              end
              i32.const 3664
              return
             end
             i32.const 3696
             return
            end
            i32.const 3744
            return
           end
           i32.const 3792
           return
          end
          i32.const 3824
          return
         end
         i32.const 3856
         return
        end
        i32.const 3888
        return
       end
       i32.const 3920
       return
      end
      i32.const 3952
      return
     end
     i32.const 4000
     return
    end
    i32.const 4032
    return
   end
   i32.const 4064
   return
  end
  i32.const 4112
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
   i32.const 4352
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
   i32.const 4352
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
   i32.const 4352
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
   i32.const 4352
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
   i32.const 4352
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
    i32.const 4352
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
   i32.const 4352
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
   i32.const 4352
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
   i32.const 4352
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
   i32.const 4352
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
    i32.const 4352
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
    i32.const 4352
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
   i32.const 4352
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
     i32.const 4352
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
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 4224
   i32.const 4352
   i32.const 461
   i32.const 30
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
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
    i32.const 4352
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
   i32.const 4352
   i32.const 501
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
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
   i32.const 4352
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
   local.tee $2
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $2
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
  local.get $1
 )
 (func $~lib/rt/tcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 4224
   i32.const 4288
   i32.const 127
   i32.const 31
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   memory.size
   local.tee $3
   i32.const 1
   i32.lt_s
   if (result i32)
    i32.const 1
    local.get $3
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
   i32.const 6192
   i32.const 0
   i32.store
   i32.const 7760
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $2
    i32.const 23
    i32.lt_u
    if
     local.get $2
     i32.const 2
     i32.shl
     i32.const 6192
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $3
     loop $for-loop|1
      local.get $3
      i32.const 16
      i32.lt_u
      if
       local.get $3
       local.get $2
       i32.const 4
       i32.shl
       i32.add
       i32.const 2
       i32.shl
       i32.const 6192
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 6192
   i32.const 7764
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 6192
   global.set $~lib/rt/tlsf/ROOT
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/tcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $0
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $2
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 20
  i32.add
 )
 (func $~lib/process/writeString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const -1
  local.set $3
  i32.const -1
  local.set $2
  i32.const -1
  local.set $4
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $1
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        br_table $case4|0 $case3|0 $case2|0 $case1|0 $case0|0 $break|0
       end
       local.get $1
       i32.load16_u offset=6
       local.tee $4
       i32.const 128
       i32.ge_u
       br_if $break|0
      end
      local.get $1
      i32.load16_u offset=4
      local.tee $2
      i32.const 128
      i32.ge_u
      br_if $break|0
     end
     local.get $1
     i32.load16_u offset=2
     local.tee $3
     i32.const 128
     i32.ge_u
     br_if $break|0
    end
    local.get $1
    i32.load16_u
    local.tee $5
    i32.const 128
    i32.ge_u
    br_if $break|0
    i32.const 1136
    i32.const 1144
    i32.store
    i32.const 1140
    local.get $3
    i32.const -1
    i32.ne
    i32.const 1
    i32.add
    local.get $2
    i32.const -1
    i32.ne
    i32.add
    local.get $4
    i32.const -1
    i32.ne
    i32.add
    i32.store
    i32.const 1144
    local.get $5
    local.get $3
    i32.const 8
    i32.shl
    i32.or
    local.get $2
    i32.const 16
    i32.shl
    i32.or
    local.get $4
    i32.const 24
    i32.shl
    i32.or
    i32.store
    local.get $0
    i32.const 1136
    i32.const 1
    i32.const 1148
    call $~lib/bindings/wasi_snapshot_preview1/fd_write
    local.tee $0
    i32.const 65535
    i32.and
    if
     local.get $0
     call $~lib/bindings/wasi_snapshot_preview1/errnoToString
     i32.const 4160
     i32.const 178
     i32.const 16
     call $~lib/wasi/index/abort
     unreachable
    end
   end
   return
  end
  local.get $1
  local.set $2
  i32.const 0
  local.set $3
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $2
   local.get $4
   i32.lt_u
   if
    local.get $2
    i32.load16_u
    local.tee $5
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 1
     i32.add
    else
     local.get $5
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $3
      i32.const 2
      i32.add
     else
      local.get $4
      local.get $2
      i32.const 2
      i32.add
      i32.gt_u
      i32.const 0
      local.get $5
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $2
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $3
        i32.const 4
        i32.add
        local.set $3
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        br $while-continue|0
       end
      end
      local.get $3
      i32.const 3
      i32.add
     end
    end
    local.set $3
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $3
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $3
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.get $3
  call $~lib/string/String.UTF8.encodeUnsafe
  drop
  i32.const 1136
  local.get $3
  i32.store
  i32.const 1140
  local.get $3
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.store
  local.get $0
  i32.const 1136
  i32.const 1
  i32.const 1144
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  local.tee $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4160
   i32.const 151
   i32.const 12
   call $~lib/wasi/index/abort
   unreachable
  end
 )
 (func $~lib/console/console.assert<bool> (param $0 i32) (param $1 i32)
  local.get $0
  i32.eqz
  if
   i32.const 2
   i32.const 1088
   call $~lib/process/writeString
   i32.const 2
   local.get $1
   call $~lib/process/writeString
   i32.const 2
   i32.const 4448
   call $~lib/process/writeString
  end
 )
 (func $~lib/console/console.log (param $0 i32)
  i32.const 1
  local.get $0
  call $~lib/process/writeString
  i32.const 1
  i32.const 4448
  call $~lib/process/writeString
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 4976
   i32.const 5024
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
 (func $~lib/map/Map<~lib/string/String,u64>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
    i32.load offset=16
    local.tee $6
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
      local.tee $5
      i32.eq
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      i32.const 0
      local.get $1
      i32.eqz
      i32.const 1
      local.get $5
      select
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      i32.const 0
      local.get $5
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.tee $3
      local.get $1
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.ne
      br_if $__inlined_func$~lib/string/String.__eq
      drop
      block $__inlined_func$~lib/util/string/compareImpl (result i32)
       local.get $1
       local.set $4
       local.get $5
       i32.const 7
       i32.and
       local.get $1
       i32.const 7
       i32.and
       i32.or
       i32.eqz
       i32.const 0
       local.get $3
       local.tee $0
       i32.const 4
       i32.ge_u
       select
       if
        loop $do-continue|0
         local.get $5
         i64.load
         local.get $4
         i64.load
         i64.eq
         if
          local.get $5
          i32.const 8
          i32.add
          local.set $5
          local.get $4
          i32.const 8
          i32.add
          local.set $4
          local.get $0
          i32.const 4
          i32.sub
          local.tee $0
          i32.const 4
          i32.ge_u
          br_if $do-continue|0
         end
        end
       end
       loop $while-continue|1
        local.get $0
        local.tee $3
        i32.const 1
        i32.sub
        local.set $0
        local.get $3
        if
         local.get $5
         i32.load16_u
         local.tee $3
         local.get $4
         i32.load16_u
         local.tee $7
         i32.ne
         if
          local.get $3
          local.get $7
          i32.sub
          br $__inlined_func$~lib/util/string/compareImpl
         end
         local.get $5
         i32.const 2
         i32.add
         local.set $5
         local.get $4
         i32.const 2
         i32.add
         local.set $4
         br $while-continue|1
        end
       end
       i32.const 0
      end
      i32.eqz
     end
    end
    if
     local.get $2
     return
    end
    local.get $6
    i32.const -2
    i32.and
    local.set $2
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,u64>#has (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  call $~lib/map/Map<~lib/string/String,u64>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/process/process.hrtime (result i64)
  (local $0 i32)
  i32.const 1
  i64.const 0
  i32.const 1136
  call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
  local.tee $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4160
   i32.const 59
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  i32.const 1136
  i64.load
 )
 (func $~lib/map/Map<~lib/string/String,u64>#rehash (param $0 i32) (param $1 i32)
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
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $8
  local.get $0
  i32.load offset=16
  i32.const 24
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
    i32.load offset=16
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
     i64.load offset=8
     i64.store offset=8
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
     i32.store offset=16
     local.get $7
     local.get $2
     i32.store
     local.get $2
     i32.const 24
     i32.add
     local.set $2
    end
    local.get $8
    i32.const 24
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
 (func $~lib/map/Map<~lib/string/String,u64>#set (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/hashStr
  local.tee $4
  call $~lib/map/Map<~lib/string/String,u64>#find
  local.tee $3
  if
   local.get $3
   local.get $2
   i64.store offset=8
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
    call $~lib/map/Map<~lib/string/String,u64>#rehash
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
   i32.const 24
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store
   local.get $3
   local.get $2
   i64.store offset=8
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
   local.tee $0
   i32.load
   i32.store offset=16
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/console/console.time (param $0 i32)
  global.get $~lib/console/timers
  local.get $0
  call $~lib/map/Map<~lib/string/String,u64>#has
  if
   i32.const 1
   i32.const 5088
   call $~lib/process/writeString
   i32.const 1
   local.get $0
   call $~lib/process/writeString
   i32.const 1
   i32.const 5152
   call $~lib/process/writeString
   return
  end
  global.get $~lib/console/timers
  local.get $0
  call $~lib/process/process.hrtime
  call $~lib/map/Map<~lib/string/String,u64>#set
 )
 (func $~lib/util/number/utoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i64.eqz
  if
   i32.const 5712
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
   local.tee $2
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tcms/__new
   local.tee $3
   local.set $4
   loop $do-continue|0
    local.get $4
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
  else
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
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tcms/__new
   local.tee $3
   local.set $2
   loop $do-continue|00
    local.get $2
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i64.const 10
    i64.rem_u
    i32.wrap_i64
    i32.const 48
    i32.add
    i32.store16
    local.get $0
    i64.const 10
    i64.div_u
    local.tee $0
    i64.const 0
    i64.ne
    br_if $do-continue|00
   end
  end
  local.get $3
 )
 (func $~lib/console/timeLogImpl (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  global.get $~lib/console/timers
  local.get $0
  local.get $0
  call $~lib/util/hash/hashStr
  call $~lib/map/Map<~lib/string/String,u64>#find
  local.tee $1
  i32.eqz
  if
   i32.const 5408
   i32.const 5472
   i32.const 105
   i32.const 17
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i64.load offset=8
  local.set $2
  call $~lib/process/process.hrtime
  local.get $2
  i64.sub
  i64.const 1000000
  i64.div_u
  call $~lib/util/number/utoa64
  local.set $1
  i32.const 1
  local.get $0
  call $~lib/process/writeString
  i32.const 1
  i32.const 5840
  call $~lib/process/writeString
  i32.const 1
  local.get $1
  call $~lib/process/writeString
  i32.const 1
  i32.const 5872
  call $~lib/process/writeString
 )
 (func $~lib/console/console.timeLog (param $0 i32)
  global.get $~lib/console/timers
  local.get $0
  call $~lib/map/Map<~lib/string/String,u64>#has
  i32.eqz
  if
   i32.const 1
   i32.const 5248
   call $~lib/process/writeString
   i32.const 1
   local.get $0
   call $~lib/process/writeString
   i32.const 1
   i32.const 5328
   call $~lib/process/writeString
   return
  end
  local.get $0
  call $~lib/console/timeLogImpl
 )
 (func $~lib/console/console.timeEnd (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/console/timers
  local.get $0
  call $~lib/map/Map<~lib/string/String,u64>#has
  i32.eqz
  if
   i32.const 1
   i32.const 5248
   call $~lib/process/writeString
   i32.const 1
   local.get $0
   call $~lib/process/writeString
   i32.const 1
   i32.const 5904
   call $~lib/process/writeString
   return
  end
  local.get $0
  call $~lib/console/timeLogImpl
  global.get $~lib/console/timers
  local.tee $1
  local.get $0
  local.get $0
  call $~lib/util/hash/hashStr
  call $~lib/map/Map<~lib/string/String,u64>#find
  local.tee $0
  if
   local.get $0
   local.get $0
   i32.load offset=16
   i32.const 1
   i32.or
   i32.store offset=16
   local.get $1
   local.get $1
   i32.load offset=20
   i32.const 1
   i32.sub
   i32.store offset=20
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.shr_u
   local.tee $2
   i32.const 1
   i32.add
   i32.const 4
   local.get $1
   i32.load offset=20
   local.tee $0
   local.get $0
   i32.const 4
   i32.lt_u
   select
   i32.ge_u
   if (result i32)
    local.get $1
    i32.load offset=20
    local.get $1
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
   else
    i32.const 0
   end
   if
    local.get $1
    local.get $2
    call $~lib/map/Map<~lib/string/String,u64>#rehash
   end
  end
 )
 (func $start:std-wasi/console
  (local $0 i32)
  i32.const 4404
  i32.const 4400
  i32.store
  i32.const 4408
  i32.const 4400
  i32.store
  i32.const 4400
  global.set $~lib/rt/tcms/fromSpace
  i32.const 0
  i32.const 1056
  call $~lib/console/console.assert<bool>
  i32.const 1
  i32.const 4480
  call $~lib/console/console.assert<bool>
  i32.const 4512
  call $~lib/console/console.log
  i32.const 1
  i32.const 4608
  call $~lib/process/writeString
  i32.const 1
  i32.const 4560
  call $~lib/process/writeString
  i32.const 1
  i32.const 4448
  call $~lib/process/writeString
  i32.const 1
  i32.const 4704
  call $~lib/process/writeString
  i32.const 1
  i32.const 4656
  call $~lib/process/writeString
  i32.const 1
  i32.const 4448
  call $~lib/process/writeString
  i32.const 1
  i32.const 4784
  call $~lib/process/writeString
  i32.const 1
  i32.const 4736
  call $~lib/process/writeString
  i32.const 1
  i32.const 4448
  call $~lib/process/writeString
  i32.const 1
  i32.const 4880
  call $~lib/process/writeString
  i32.const 1
  i32.const 4832
  call $~lib/process/writeString
  i32.const 1
  i32.const 4448
  call $~lib/process/writeString
  i32.const 24
  i32.const 3
  call $~lib/rt/tcms/__new
  local.tee $0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 96
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  global.set $~lib/console/timers
  i32.const 4928
  call $~lib/console/console.time
  i32.const 4928
  call $~lib/console/console.timeLog
  i32.const 4928
  call $~lib/console/console.timeEnd
  i32.const 5984
  call $~lib/console/console.timeLog
  i32.const 5984
  call $~lib/console/console.timeEnd
  i32.const 6032
  call $~lib/console/console.time
  i32.const 6032
  call $~lib/console/console.time
  i32.const 6080
  call $~lib/console/console.log
  i32.const 6112
  call $~lib/console/console.log
  i32.const 6144
  call $~lib/console/console.log
  i32.const 6176
  call $~lib/console/console.log
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:std-wasi/console
 )
)
