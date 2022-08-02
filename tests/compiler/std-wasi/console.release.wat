(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $~lib/bindings/wasi_snapshot_preview1/proc_exit (param i32)))
 (import "wasi_snapshot_preview1" "clock_time_get" (func $~lib/bindings/wasi_snapshot_preview1/clock_time_get (param i32 i64 i32) (result i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/console/timers (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 24700))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\0c\00\00\00w\00h\00o\00o\00p\00s")
 (data (i32.const 1068) "<")
 (data (i32.const 1080) "\01\00\00\00$\00\00\00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00f\00a\00i\00l\00e\00d\00:\00 ")
 (data (i32.const 1164) "<")
 (data (i32.const 1176) "\01\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data (i32.const 1228) ",")
 (data (i32.const 1240) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1276) ",")
 (data (i32.const 1288) "\01\00\00\00\0e\00\00\00S\00U\00C\00C\00E\00S\00S")
 (data (i32.const 1324) "\1c")
 (data (i32.const 1336) "\01\00\00\00\0c\00\00\00T\00O\00O\00B\00I\00G")
 (data (i32.const 1356) "\1c")
 (data (i32.const 1368) "\01\00\00\00\n\00\00\00A\00C\00C\00E\00S")
 (data (i32.const 1388) ",")
 (data (i32.const 1400) "\01\00\00\00\12\00\00\00A\00D\00D\00R\00I\00N\00U\00S\00E")
 (data (i32.const 1436) ",")
 (data (i32.const 1448) "\01\00\00\00\18\00\00\00A\00D\00D\00R\00N\00O\00T\00A\00V\00A\00I\00L")
 (data (i32.const 1484) ",")
 (data (i32.const 1496) "\01\00\00\00\16\00\00\00A\00F\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 1532) "\1c")
 (data (i32.const 1544) "\01\00\00\00\n\00\00\00A\00G\00A\00I\00N")
 (data (i32.const 1564) ",")
 (data (i32.const 1576) "\01\00\00\00\0e\00\00\00A\00L\00R\00E\00A\00D\00Y")
 (data (i32.const 1612) "\1c")
 (data (i32.const 1624) "\01\00\00\00\08\00\00\00B\00A\00D\00F")
 (data (i32.const 1644) "\1c")
 (data (i32.const 1656) "\01\00\00\00\0c\00\00\00B\00A\00D\00M\00S\00G")
 (data (i32.const 1676) "\1c")
 (data (i32.const 1688) "\01\00\00\00\08\00\00\00B\00U\00S\00Y")
 (data (i32.const 1708) ",")
 (data (i32.const 1720) "\01\00\00\00\10\00\00\00C\00A\00N\00C\00E\00L\00E\00D")
 (data (i32.const 1756) "\1c")
 (data (i32.const 1768) "\01\00\00\00\n\00\00\00C\00H\00I\00L\00D")
 (data (i32.const 1788) ",")
 (data (i32.const 1800) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00A\00B\00O\00R\00T\00E\00D")
 (data (i32.const 1836) ",")
 (data (i32.const 1848) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00R\00E\00F\00U\00S\00E\00D")
 (data (i32.const 1884) ",")
 (data (i32.const 1896) "\01\00\00\00\12\00\00\00C\00O\00N\00N\00R\00E\00S\00E\00T")
 (data (i32.const 1932) "\1c")
 (data (i32.const 1944) "\01\00\00\00\0c\00\00\00D\00E\00A\00D\00L\00K")
 (data (i32.const 1964) ",")
 (data (i32.const 1976) "\01\00\00\00\16\00\00\00D\00E\00S\00T\00A\00D\00D\00R\00R\00E\00Q")
 (data (i32.const 2012) "\1c")
 (data (i32.const 2024) "\01\00\00\00\06\00\00\00D\00O\00M")
 (data (i32.const 2044) "\1c")
 (data (i32.const 2056) "\01\00\00\00\n\00\00\00D\00Q\00U\00O\00T")
 (data (i32.const 2076) "\1c")
 (data (i32.const 2088) "\01\00\00\00\n\00\00\00E\00X\00I\00S\00T")
 (data (i32.const 2108) "\1c")
 (data (i32.const 2120) "\01\00\00\00\n\00\00\00F\00A\00U\00L\00T")
 (data (i32.const 2140) "\1c")
 (data (i32.const 2152) "\01\00\00\00\08\00\00\00F\00B\00I\00G")
 (data (i32.const 2172) ",")
 (data (i32.const 2184) "\01\00\00\00\16\00\00\00H\00O\00S\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 2220) "\1c")
 (data (i32.const 2232) "\01\00\00\00\08\00\00\00I\00D\00R\00M")
 (data (i32.const 2252) "\1c")
 (data (i32.const 2264) "\01\00\00\00\n\00\00\00I\00L\00S\00E\00Q")
 (data (i32.const 2284) ",")
 (data (i32.const 2296) "\01\00\00\00\14\00\00\00I\00N\00P\00R\00O\00G\00R\00E\00S\00S")
 (data (i32.const 2332) "\1c")
 (data (i32.const 2344) "\01\00\00\00\08\00\00\00I\00N\00T\00R")
 (data (i32.const 2364) "\1c")
 (data (i32.const 2376) "\01\00\00\00\n\00\00\00I\00N\00V\00A\00L")
 (data (i32.const 2396) "\1c")
 (data (i32.const 2408) "\01\00\00\00\04\00\00\00I\00O")
 (data (i32.const 2428) "\1c")
 (data (i32.const 2440) "\01\00\00\00\0c\00\00\00I\00S\00C\00O\00N\00N")
 (data (i32.const 2460) "\1c")
 (data (i32.const 2472) "\01\00\00\00\n\00\00\00I\00S\00D\00I\00R")
 (data (i32.const 2492) "\1c")
 (data (i32.const 2504) "\01\00\00\00\08\00\00\00L\00O\00O\00P")
 (data (i32.const 2524) "\1c")
 (data (i32.const 2536) "\01\00\00\00\n\00\00\00M\00F\00I\00L\00E")
 (data (i32.const 2556) "\1c")
 (data (i32.const 2568) "\01\00\00\00\n\00\00\00M\00L\00I\00N\00K")
 (data (i32.const 2588) ",")
 (data (i32.const 2600) "\01\00\00\00\0e\00\00\00M\00S\00G\00S\00I\00Z\00E")
 (data (i32.const 2636) ",")
 (data (i32.const 2648) "\01\00\00\00\10\00\00\00M\00U\00L\00T\00I\00H\00O\00P")
 (data (i32.const 2684) ",")
 (data (i32.const 2696) "\01\00\00\00\16\00\00\00N\00A\00M\00E\00T\00O\00O\00L\00O\00N\00G")
 (data (i32.const 2732) ",")
 (data (i32.const 2744) "\01\00\00\00\0e\00\00\00N\00E\00T\00D\00O\00W\00N")
 (data (i32.const 2780) ",")
 (data (i32.const 2792) "\01\00\00\00\10\00\00\00N\00E\00T\00R\00E\00S\00E\00T")
 (data (i32.const 2828) ",")
 (data (i32.const 2840) "\01\00\00\00\14\00\00\00N\00E\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 2876) "\1c")
 (data (i32.const 2888) "\01\00\00\00\n\00\00\00N\00F\00I\00L\00E")
 (data (i32.const 2908) "\1c")
 (data (i32.const 2920) "\01\00\00\00\0c\00\00\00N\00O\00B\00U\00F\00S")
 (data (i32.const 2940) "\1c")
 (data (i32.const 2952) "\01\00\00\00\n\00\00\00N\00O\00D\00E\00V")
 (data (i32.const 2972) "\1c")
 (data (i32.const 2984) "\01\00\00\00\n\00\00\00N\00O\00E\00N\00T")
 (data (i32.const 3004) "\1c")
 (data (i32.const 3016) "\01\00\00\00\0c\00\00\00N\00O\00E\00X\00E\00C")
 (data (i32.const 3036) "\1c")
 (data (i32.const 3048) "\01\00\00\00\n\00\00\00N\00O\00L\00C\00K")
 (data (i32.const 3068) "\1c")
 (data (i32.const 3080) "\01\00\00\00\0c\00\00\00N\00O\00L\00I\00N\00K")
 (data (i32.const 3100) "\1c")
 (data (i32.const 3112) "\01\00\00\00\n\00\00\00N\00O\00M\00E\00M")
 (data (i32.const 3132) "\1c")
 (data (i32.const 3144) "\01\00\00\00\n\00\00\00N\00O\00M\00S\00G")
 (data (i32.const 3164) ",")
 (data (i32.const 3176) "\01\00\00\00\14\00\00\00N\00O\00P\00R\00O\00T\00O\00O\00P\00T")
 (data (i32.const 3212) "\1c")
 (data (i32.const 3224) "\01\00\00\00\n\00\00\00N\00O\00S\00P\00C")
 (data (i32.const 3244) "\1c")
 (data (i32.const 3256) "\01\00\00\00\n\00\00\00N\00O\00S\00Y\00S")
 (data (i32.const 3276) ",")
 (data (i32.const 3288) "\01\00\00\00\0e\00\00\00N\00O\00T\00C\00O\00N\00N")
 (data (i32.const 3324) "\1c")
 (data (i32.const 3336) "\01\00\00\00\0c\00\00\00N\00O\00T\00D\00I\00R")
 (data (i32.const 3356) ",")
 (data (i32.const 3368) "\01\00\00\00\10\00\00\00N\00O\00T\00E\00M\00P\00T\00Y")
 (data (i32.const 3404) ",")
 (data (i32.const 3416) "\01\00\00\00\1c\00\00\00N\00O\00T\00R\00E\00C\00O\00V\00E\00R\00A\00B\00L\00E")
 (data (i32.const 3452) ",")
 (data (i32.const 3464) "\01\00\00\00\0e\00\00\00N\00O\00T\00S\00O\00C\00K")
 (data (i32.const 3500) "\1c")
 (data (i32.const 3512) "\01\00\00\00\0c\00\00\00N\00O\00T\00S\00U\00P")
 (data (i32.const 3532) "\1c")
 (data (i32.const 3544) "\01\00\00\00\n\00\00\00N\00O\00T\00T\00Y")
 (data (i32.const 3564) "\1c")
 (data (i32.const 3576) "\01\00\00\00\08\00\00\00N\00X\00I\00O")
 (data (i32.const 3596) ",")
 (data (i32.const 3608) "\01\00\00\00\10\00\00\00O\00V\00E\00R\00F\00L\00O\00W")
 (data (i32.const 3644) ",")
 (data (i32.const 3656) "\01\00\00\00\12\00\00\00O\00W\00N\00E\00R\00D\00E\00A\00D")
 (data (i32.const 3692) "\1c")
 (data (i32.const 3704) "\01\00\00\00\08\00\00\00P\00E\00R\00M")
 (data (i32.const 3724) "\1c")
 (data (i32.const 3736) "\01\00\00\00\08\00\00\00P\00I\00P\00E")
 (data (i32.const 3756) "\1c")
 (data (i32.const 3768) "\01\00\00\00\n\00\00\00P\00R\00O\00T\00O")
 (data (i32.const 3788) ",")
 (data (i32.const 3800) "\01\00\00\00\1c\00\00\00P\00R\00O\00T\00O\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 3836) ",")
 (data (i32.const 3848) "\01\00\00\00\12\00\00\00P\00R\00O\00T\00O\00T\00Y\00P\00E")
 (data (i32.const 3884) "\1c")
 (data (i32.const 3896) "\01\00\00\00\n\00\00\00R\00A\00N\00G\00E")
 (data (i32.const 3916) "\1c")
 (data (i32.const 3928) "\01\00\00\00\08\00\00\00R\00O\00F\00S")
 (data (i32.const 3948) "\1c")
 (data (i32.const 3960) "\01\00\00\00\n\00\00\00S\00P\00I\00P\00E")
 (data (i32.const 3980) "\1c")
 (data (i32.const 3992) "\01\00\00\00\08\00\00\00S\00R\00C\00H")
 (data (i32.const 4012) "\1c")
 (data (i32.const 4024) "\01\00\00\00\n\00\00\00S\00T\00A\00L\00E")
 (data (i32.const 4044) ",")
 (data (i32.const 4056) "\01\00\00\00\10\00\00\00T\00I\00M\00E\00D\00O\00U\00T")
 (data (i32.const 4092) "\1c")
 (data (i32.const 4104) "\01\00\00\00\0c\00\00\00T\00X\00T\00B\00S\00Y")
 (data (i32.const 4124) "\1c")
 (data (i32.const 4136) "\01\00\00\00\08\00\00\00X\00D\00E\00V")
 (data (i32.const 4156) ",")
 (data (i32.const 4168) "\01\00\00\00\14\00\00\00N\00O\00T\00C\00A\00P\00A\00B\00L\00E")
 (data (i32.const 4204) "L\01")
 (data (i32.const 4216) "\03\00\00\004\01\00\00\10\05\00\00@\05\00\00`\05\00\00\80\05\00\00\b0\05\00\00\e0\05\00\00\10\06\00\000\06\00\00`\06\00\00\80\06\00\00\a0\06\00\00\c0\06\00\00\f0\06\00\00\10\07\00\00@\07\00\00p\07\00\00\a0\07\00\00\c0\07\00\00\f0\07\00\00\10\08\00\000\08\00\00P\08\00\00p\08\00\00\90\08\00\00\c0\08\00\00\e0\08\00\00\00\t\00\000\t\00\00P\t\00\00p\t\00\00\90\t\00\00\b0\t\00\00\d0\t\00\00\f0\t\00\00\10\n\00\000\n\00\00`\n\00\00\90\n\00\00\c0\n\00\00\f0\n\00\00 \0b\00\00P\0b\00\00p\0b\00\00\90\0b\00\00\b0\0b\00\00\d0\0b\00\00\f0\0b\00\00\10\0c\00\000\0c\00\00P\0c\00\00p\0c\00\00\a0\0c\00\00\c0\0c\00\00\e0\0c\00\00\10\0d\00\000\0d\00\00`\0d\00\00\90\0d\00\00\c0\0d\00\00\e0\0d\00\00\00\0e\00\00 \0e\00\00P\0e\00\00\80\0e\00\00\a0\0e\00\00\c0\0e\00\00\e0\0e\00\00\10\0f\00\00@\0f\00\00`\0f\00\00\80\0f\00\00\a0\0f\00\00\c0\0f\00\00\e0\0f\00\00\10\10\00\000\10\00\00P\10")
 (data (i32.const 4540) ",")
 (data (i32.const 4552) "\01\00\00\00\0e\00\00\00U\00N\00K\00N\00O\00W\00N")
 (data (i32.const 4588) "<")
 (data (i32.const 4600) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00p\00r\00o\00c\00e\00s\00s\00.\00t\00s")
 (data (i32.const 4652) "<")
 (data (i32.const 4664) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 4716) "<")
 (data (i32.const 4728) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 4780) "\1c")
 (data (i32.const 4792) "\01\00\00\00\02\00\00\00\n")
 (data (i32.const 4812) "\1c")
 (data (i32.const 4824) "\01\00\00\00\08\00\00\00p\00h\00e\00w")
 (data (i32.const 4844) ",")
 (data (i32.const 4856) "\01\00\00\00\12\00\00\00h\00e\00l\00l\00o\00 \00l\00o\00g")
 (data (i32.const 4892) ",")
 (data (i32.const 4904) "\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00d\00e\00b\00u\00g")
 (data (i32.const 4940) ",")
 (data (i32.const 4952) "\01\00\00\00\0e\00\00\00D\00e\00b\00u\00g\00:\00 ")
 (data (i32.const 4988) ",")
 (data (i32.const 5000) "\01\00\00\00\14\00\00\00h\00e\00l\00l\00o\00 \00i\00n\00f\00o")
 (data (i32.const 5036) "\1c")
 (data (i32.const 5048) "\01\00\00\00\0c\00\00\00I\00n\00f\00o\00:\00 ")
 (data (i32.const 5068) ",")
 (data (i32.const 5080) "\01\00\00\00\14\00\00\00h\00e\00l\00l\00o\00 \00w\00a\00r\00n")
 (data (i32.const 5116) ",")
 (data (i32.const 5128) "\01\00\00\00\12\00\00\00W\00a\00r\00n\00i\00n\00g\00:\00 ")
 (data (i32.const 5164) ",")
 (data (i32.const 5176) "\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00e\00r\00r\00o\00r")
 (data (i32.const 5212) ",")
 (data (i32.const 5224) "\01\00\00\00\0e\00\00\00E\00r\00r\00o\00r\00:\00 ")
 (data (i32.const 5260) ",")
 (data (i32.const 5272) "\01\00\00\00\12\00\00\00s\00o\00m\00e\00L\00a\00b\00e\00l")
 (data (i32.const 5308) "<")
 (data (i32.const 5320) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 5436) "<")
 (data (i32.const 5448) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 5500) ",")
 (data (i32.const 5512) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 5580) ",")
 (data (i32.const 5592) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 5628) "<")
 (data (i32.const 5640) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 5692) "<")
 (data (i32.const 5704) "\01\00\00\00 \00\00\00W\00a\00r\00n\00i\00n\00g\00:\00 \00L\00a\00b\00e\00l\00 \00\'")
 (data (i32.const 5756) "\\")
 (data (i32.const 5768) "\01\00\00\00H\00\00\00\'\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00 \00f\00o\00r\00 \00c\00o\00n\00s\00o\00l\00e\00.\00t\00i\00m\00e\00(\00)\00\n")
 (data (i32.const 5852) "L")
 (data (i32.const 5864) "\01\00\00\000\00\00\00W\00a\00r\00n\00i\00n\00g\00:\00 \00N\00o\00 \00s\00u\00c\00h\00 \00l\00a\00b\00e\00l\00 \00\'")
 (data (i32.const 5932) "L")
 (data (i32.const 5944) "\01\00\00\000\00\00\00\'\00 \00f\00o\00r\00 \00c\00o\00n\00s\00o\00l\00e\00.\00t\00i\00m\00e\00L\00o\00g\00(\00)\00\n")
 (data (i32.const 6012) "<")
 (data (i32.const 6024) "\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 6076) ",")
 (data (i32.const 6088) "\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 6124) "|")
 (data (i32.const 6136) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 6252) "<")
 (data (i32.const 6264) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 6316) "\1c")
 (data (i32.const 6328) "\01\00\00\00\02\00\00\000")
 (data (i32.const 6348) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 6748) "\1c\04")
 (data (i32.const 6760) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 7804) "\\")
 (data (i32.const 7816) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 7900) "\1c")
 (data (i32.const 7912) "\01\00\00\00\04\00\00\00:\00 ")
 (data (i32.const 7932) "\1c")
 (data (i32.const 7944) "\01\00\00\00\06\00\00\00m\00s\00\n")
 (data (i32.const 7964) "L")
 (data (i32.const 7976) "\01\00\00\000\00\00\00\'\00 \00f\00o\00r\00 \00c\00o\00n\00s\00o\00l\00e\00.\00t\00i\00m\00e\00E\00n\00d\00(\00)\00\n")
 (data (i32.const 8044) ",")
 (data (i32.const 8056) "\01\00\00\00\14\00\00\00w\00r\00o\00n\00g\00L\00a\00b\00e\00l")
 (data (i32.const 8092) ",")
 (data (i32.const 8104) "\01\00\00\00\1c\00\00\00d\00u\00p\00l\00i\00c\00a\00t\00e\00L\00a\00b\00e\00l")
 (data (i32.const 8140) "\1c")
 (data (i32.const 8152) "\01\00\00\00\02\00\00\001")
 (data (i32.const 8172) "\1c")
 (data (i32.const 8184) "\01\00\00\00\04\00\00\001\002")
 (data (i32.const 8204) "\1c")
 (data (i32.const 8216) "\01\00\00\00\06\00\00\001\002\003")
 (data (i32.const 8236) "\1c")
 (data (i32.const 8248) "\01\00\00\00\08\00\00\001\002\003\004")
 (data (i32.const 8272) "\05\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 8300) "\04A\00\00\00\00\00\00\10\02\82")
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
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
  if
   i32.const 0
   return
  end
  local.get $0
  local.tee $2
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  local.get $3
  local.tee $0
  i32.const 4
  i32.ge_u
  i32.and
  if
   loop $do-loop|0
    local.get $2
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $0
     i32.const 4
     i32.sub
     local.tee $0
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  block $__inlined_func$~lib/util/string/compareImpl
   loop $while-continue|1
    local.get $0
    local.tee $3
    i32.const 1
    i32.sub
    local.set $0
    local.get $3
    if
     local.get $2
     i32.load16_u
     local.tee $5
     local.get $1
     i32.load16_u
     local.tee $4
     i32.sub
     local.set $3
     local.get $4
     local.get $5
     i32.ne
     br_if $__inlined_func$~lib/util/string/compareImpl
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   i32.const 0
   local.set $3
  end
  local.get $3
  i32.eqz
 )
 (func $~lib/string/String.UTF8.encodeUnsafe@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $2of2
   block $outOfRange
    global.get $~argumentsLength
    i32.const 3
    i32.sub
    br_table $2of2 $2of2 $2of2 $outOfRange
   end
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $4
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $4
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $4
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $4
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $4
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
      i32.const 56320
      i32.lt_u
      local.get $0
      i32.const 2
      i32.add
      local.get $3
      i32.lt_u
      i32.and
      local.get $4
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      i32.and
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
        local.get $4
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
        local.tee $4
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $4
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $4
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $4
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
      local.get $4
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $4
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
      local.get $4
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
 (func $~lib/wasi/index/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 12
  i32.store
  i32.const 12
  i64.const 9071471065260641
  i64.store
  local.get $0
  i32.const 0
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 19
  else
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $4
   i32.const 3
   global.set $~argumentsLength
   local.get $0
   local.get $4
   i32.const 19
   call $~lib/string/String.UTF8.encodeUnsafe@varargs
   i32.const 19
   i32.add
  end
  local.tee $0
  i32.const 544106784
  i32.store
  local.get $0
  i32.const 4
  i32.add
  local.set $0
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $4
   i32.const 3
   global.set $~argumentsLength
   local.get $1
   local.get $4
   local.get $0
   call $~lib/string/String.UTF8.encodeUnsafe@varargs
   local.get $0
   i32.add
   local.set $0
  end
  local.get $0
  i32.const 40
  i32.store8
  local.get $2
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $2
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $2
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $2
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $2
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $2
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $1
  local.get $0
  i32.const 1
  i32.add
  i32.add
  local.set $0
  loop $do-loop|0
   local.get $0
   i32.const 1
   i32.sub
   local.tee $0
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
   br_if $do-loop|0
  end
  local.get $0
  local.get $1
  i32.add
  local.tee $0
  i32.const 58
  i32.store8
  local.get $3
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $3
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $3
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $3
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $3
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $3
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $1
  local.get $0
  i32.const 1
  i32.add
  i32.add
  local.set $0
  loop $do-loop|1
   local.get $0
   i32.const 1
   i32.sub
   local.tee $0
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
   br_if $do-loop|1
  end
  local.get $0
  local.get $1
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
   i32.const 4672
   i32.const 268
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 4672
   i32.const 270
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 4672
   i32.const 284
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $2
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
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 4672
   i32.const 201
   i32.const 14
   call $~lib/wasi/index/abort
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
   i32.const 4672
   i32.const 203
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
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 4672
    i32.const 221
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 4672
   i32.const 233
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 4672
   i32.const 234
   i32.const 14
   call $~lib/wasi/index/abort
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
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 4672
   i32.const 251
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
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
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
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
   i32.const 4672
   i32.const 377
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
  local.get $0
  i32.load offset=1568
  local.tee $4
  if
   local.get $4
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 4672
    i32.const 384
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $4
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 4672
    i32.const 397
    i32.const 5
    call $~lib/wasi/index/abort
    unreachable
   end
  end
  local.get $2
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
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
  local.get $1
  i32.const 4
  i32.add
  local.get $2
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
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
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
  i32.const 24704
  i32.const 0
  i32.store
  i32.const 26272
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 24704
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 24704
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 24704
  i32.const 26276
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 24704
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
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
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 4672
   i32.const 330
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
     i32.const 4672
     i32.const 343
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
  i32.gt_u
  if
   i32.const 4736
   i32.const 4672
   i32.const 458
   i32.const 29
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
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size
   local.tee $1
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   local.get $3
   i32.const 1
   i32.const 27
   local.get $3
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $3
   local.get $3
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
   local.tee $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
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
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 4672
    i32.const 496
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
  end
  local.get $3
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 4672
   i32.const 498
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $4
  local.get $3
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 4672
   i32.const 357
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $4
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $2
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $3
   local.get $4
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $3
   i32.add
   local.tee $3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $4
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 24700
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
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.load
   i32.const 1
   i32.and
  end
  if
   i32.const 0
   i32.const 4672
   i32.const 559
   i32.const 3
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/process/writeString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
        local.tee $5
        br_table $case4|0 $case3|0 $case2|0 $case1|0 $case0|0 $break|0
       end
       local.get $1
       i32.load16_u offset=6
       local.tee $2
       i32.const 128
       i32.ge_u
       br_if $break|0
      end
      local.get $1
      i32.load16_u offset=4
      local.tee $4
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
    local.tee $6
    i32.const 128
    i32.ge_u
    br_if $break|0
    i32.const 1136
    i32.const 1144
    i32.store
    i32.const 1140
    local.get $5
    i32.store
    i32.const 1144
    local.get $6
    local.get $3
    i32.const 8
    i32.shl
    i32.or
    local.get $4
    i32.const 16
    i32.shl
    i32.or
    local.get $2
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
     call $~lib/bindings/wasi_errors/errnoToString
     i32.const 4608
     i32.const 211
     i32.const 16
     call $~lib/wasi/index/abort
     unreachable
    end
   end
   return
  end
  local.get $1
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $4
  i32.const 0
  local.set $3
  loop $while-continue|0
   local.get $1
   local.get $4
   i32.lt_u
   if
    local.get $1
    i32.load16_u
    local.tee $6
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 1
     i32.add
    else
     local.get $6
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $3
      i32.const 2
      i32.add
     else
      local.get $6
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.get $1
      i32.const 2
      i32.add
      local.get $4
      i32.lt_u
      i32.and
      if
       local.get $1
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
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $while-continue|0
       end
      end
      local.get $3
      i32.const 3
      i32.add
     end
    end
    local.set $3
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $3
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.set $1
  i32.const 3
  global.set $~argumentsLength
  local.get $5
  local.get $1
  call $~lib/string/String.UTF8.encodeUnsafe@varargs
  local.get $3
  i32.ne
  if
   i32.const 0
   i32.const 4608
   i32.const 217
   i32.const 3
   call $~lib/wasi/index/abort
   unreachable
  end
  i32.const 1136
  local.get $1
  i32.store
  i32.const 1140
  local.get $3
  i32.store
  local.get $0
  i32.const 1136
  i32.const 1
  i32.const 1144
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  local.set $0
  local.get $1
  call $~lib/rt/tlsf/__free
  local.get $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_errors/errnoToString
   i32.const 4608
   i32.const 222
   i32.const 12
   call $~lib/wasi/index/abort
   unreachable
  end
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/console/timers
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  i32.const 5456
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 5600
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 6032
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 4736
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1184
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 6768
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 7824
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 4224
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 5328
     i32.const 159
     i32.const 16
     call $~lib/wasi/index/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 5328
    i32.const 147
    i32.const 30
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    i32.const 0
    local.get $0
    i32.const 24700
    i32.lt_u
    local.get $0
    i32.load offset=8
    select
    i32.eqz
    if
     i32.const 0
     i32.const 5328
     i32.const 127
     i32.const 18
     call $~lib/wasi/index/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 5328
    i32.const 131
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 8272
   i32.load
   i32.gt_u
   if
    i32.const 5456
    i32.const 5520
    i32.const 22
    i32.const 28
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $1
   i32.const 3
   i32.shl
   i32.const 8276
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $2
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load offset=4
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 24700
      i32.lt_u
      if
       local.get $0
       i32.load
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 5328
     i32.const 228
     i32.const 20
     call $~lib/wasi/index/abort
     unreachable
    end
    local.get $0
    i32.const 24700
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     call $~lib/rt/tlsf/__free
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 4736
   i32.const 5328
   i32.const 260
   i32.const 31
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    local.get $2
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
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
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  if (result i32)
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $2
      local.get $1
      i32.load
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $4
      local.get $1
      i32.load offset=4
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $6
      local.get $1
      i32.load offset=8
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $5
      local.get $1
      i32.load offset=12
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $3
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $2
     local.get $1
     i32.load
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $2
     local.get $1
     i32.load8_u
     i32.const 374761393
     i32.mul
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   local.get $2
   local.get $2
   i32.const 15
   i32.shr_u
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $0
   i32.const 13
   i32.shr_u
   local.get $0
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $0
   i32.const 16
   i32.shr_u
   local.get $0
   i32.xor
  else
   i32.const 0
  end
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
   call $~lib/bindings/wasi_errors/errnoToString
   i32.const 4608
   i32.const 75
   i32.const 16
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
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8316
  i32.lt_s
  if
   i32.const 24720
   i32.const 24768
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $6
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store offset=4
  local.get $0
  i32.load offset=8
  local.tee $7
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
   local.get $7
   i32.ne
   if
    local.get $7
    i32.load offset=16
    i32.const 1
    i32.and
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.load
     local.tee $8
     i32.store offset=8
     local.get $2
     local.get $8
     i32.store
     local.get $2
     local.get $7
     i64.load offset=8
     i64.store offset=8
     local.get $2
     local.get $6
     local.get $8
     call $~lib/util/hash/HASH<~lib/string/String>
     local.get $1
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $8
     i32.load
     i32.store offset=16
     local.get $8
     local.get $2
     i32.store
     local.get $2
     i32.const 24
     i32.add
     local.set $2
    end
    local.get $7
    i32.const 24
    i32.add
    local.set $7
    br $while-continue|0
   end
  end
  local.get $0
  local.get $6
  i32.store
  local.get $6
  if
   local.get $0
   local.get $6
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  local.get $5
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $3
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $0
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 6348
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 6348
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 6348
   i32.add
   i32.load
   i32.store
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 6348
   i32.add
   i32.load
   i32.store
  else
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16
  end
 )
 (func $~lib/number/U64#toString (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8316
  i32.lt_s
  if
   i32.const 24720
   i32.const 24768
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/utoa64
   local.get $0
   i64.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 6336
    local.set $1
    br $__inlined_func$~lib/util/number/utoa64
   end
   local.get $0
   i64.const 4294967295
   i64.le_u
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.wrap_i64
    local.tee $2
    i32.const 100000
    i32.lt_u
    if (result i32)
     local.get $2
     i32.const 100
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 10
      i32.ge_u
      i32.const 1
      i32.add
     else
      local.get $2
      i32.const 10000
      i32.ge_u
      i32.const 3
      i32.add
      local.get $2
      i32.const 1000
      i32.ge_u
      i32.add
     end
    else
     local.get $2
     i32.const 10000000
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 1000000
      i32.ge_u
      i32.const 6
      i32.add
     else
      local.get $2
      i32.const 1000000000
      i32.ge_u
      i32.const 8
      i32.add
      local.get $2
      i32.const 100000000
      i32.ge_u
      i32.add
     end
    end
    local.tee $3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    local.get $1
    local.get $2
    local.get $3
    call $~lib/util/number/utoa32_dec_lut
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i64.const 1000000000000000
    i64.lt_u
    if (result i32)
     local.get $0
     i64.const 1000000000000
     i64.lt_u
     if (result i32)
      local.get $0
      i64.const 100000000000
      i64.ge_u
      i32.const 10
      i32.add
      local.get $0
      i64.const 10000000000
      i64.ge_u
      i32.add
     else
      local.get $0
      i64.const 100000000000000
      i64.ge_u
      i32.const 13
      i32.add
      local.get $0
      i64.const 10000000000000
      i64.ge_u
      i32.add
     end
    else
     local.get $0
     i64.const 100000000000000000
     i64.lt_u
     if (result i32)
      local.get $0
      i64.const 10000000000000000
      i64.ge_u
      i32.const 16
      i32.add
     else
      local.get $0
      i64.const -8446744073709551616
      i64.ge_u
      i32.const 18
      i32.add
      local.get $0
      i64.const 1000000000000000000
      i64.ge_u
      i32.add
     end
    end
    local.tee $2
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    loop $while-continue|0
     local.get $0
     i64.const 100000000
     i64.ge_u
     if
      local.get $1
      local.get $2
      i32.const 4
      i32.sub
      local.tee $2
      i32.const 1
      i32.shl
      i32.add
      local.get $0
      local.get $0
      i64.const 100000000
      i64.div_u
      local.tee $0
      i64.const 100000000
      i64.mul
      i64.sub
      i32.wrap_i64
      local.tee $3
      i32.const 10000
      i32.rem_u
      local.tee $4
      i32.const 100
      i32.div_u
      i32.const 2
      i32.shl
      i32.const 6348
      i32.add
      i64.load32_u
      local.get $4
      i32.const 100
      i32.rem_u
      i32.const 2
      i32.shl
      i32.const 6348
      i32.add
      i64.load32_u
      i64.const 32
      i64.shl
      i64.or
      i64.store
      local.get $1
      local.get $2
      i32.const 4
      i32.sub
      local.tee $2
      i32.const 1
      i32.shl
      i32.add
      local.get $3
      i32.const 10000
      i32.div_u
      local.tee $3
      i32.const 100
      i32.div_u
      i32.const 2
      i32.shl
      i32.const 6348
      i32.add
      i64.load32_u
      local.get $3
      i32.const 100
      i32.rem_u
      i32.const 2
      i32.shl
      i32.const 6348
      i32.add
      i64.load32_u
      i64.const 32
      i64.shl
      i64.or
      i64.store
      br $while-continue|0
     end
    end
    local.get $1
    local.get $0
    i32.wrap_i64
    local.get $2
    call $~lib/util/number/utoa32_dec_lut
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $1
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $invalid
   block $~lib/map/Map<~lib/string/String,u64>
    block $~lib/staticarray/StaticArray<~lib/string/String>
     block $~lib/arraybuffer/ArrayBufferView
      block $~lib/string/String
       block $~lib/arraybuffer/ArrayBuffer
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/staticarray/StaticArray<~lib/string/String> $~lib/map/Map<~lib/string/String,u64> $invalid
       end
       return
      end
      return
     end
     local.get $0
     i32.load
     local.tee $0
     if
      local.get $0
      call $byn-split-outlined-A$~lib/rt/itcms/__visit
     end
     return
    end
    local.get $0
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.add
    local.set $1
    loop $while-continue|0
     local.get $0
     local.get $1
     i32.lt_u
     if
      local.get $0
      i32.load
      local.tee $2
      if
       local.get $2
       call $byn-split-outlined-A$~lib/rt/itcms/__visit
      end
      local.get $0
      i32.const 4
      i32.add
      local.set $0
      br $while-continue|0
     end
    end
    return
   end
   local.get $0
   i32.load
   local.tee $1
   if
    local.get $1
    call $byn-split-outlined-A$~lib/rt/itcms/__visit
   end
   local.get $0
   i32.load offset=16
   i32.const 24
   i32.mul
   local.get $0
   i32.load offset=8
   local.tee $2
   local.tee $0
   i32.add
   local.set $1
   loop $while-continue|01
    local.get $0
    local.get $1
    i32.lt_u
    if
     local.get $0
     i32.load offset=16
     i32.const 1
     i32.and
     i32.eqz
     if
      local.get $0
      i32.load
      local.tee $3
      if
       local.get $3
       call $byn-split-outlined-A$~lib/rt/itcms/__visit
      end
     end
     local.get $0
     i32.const 24
     i32.add
     local.set $0
     br $while-continue|01
    end
   end
   local.get $2
   if
    local.get $2
    call $byn-split-outlined-A$~lib/rt/itcms/__visit
   end
   return
  end
  unreachable
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8316
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 1056
   i32.store
   i32.const 0
   i32.const 1056
   call $~lib/console/console.assert<bool>
   global.get $~lib/memory/__stack_pointer
   i32.const 4832
   i32.store
   i32.const 1
   i32.const 4832
   call $~lib/console/console.assert<bool>
   global.get $~lib/memory/__stack_pointer
   i32.const 4864
   i32.store offset=4
   i32.const 4864
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 4912
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8316
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 4960
   i32.store
   i32.const 1
   i32.const 4960
   call $~lib/process/writeString
   i32.const 1
   i32.const 4912
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 4800
   i32.store
   i32.const 1
   i32.const 4800
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5008
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8316
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 5056
   i32.store
   i32.const 1
   i32.const 5056
   call $~lib/process/writeString
   i32.const 1
   i32.const 5008
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 4800
   i32.store
   i32.const 1
   i32.const 4800
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5088
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8316
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 5136
   i32.store
   i32.const 1
   i32.const 5136
   call $~lib/process/writeString
   i32.const 1
   i32.const 5088
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 4800
   i32.store
   i32.const 1
   i32.const 4800
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5184
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8316
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 5232
   i32.store
   i32.const 1
   i32.const 5232
   call $~lib/process/writeString
   i32.const 1
   i32.const 5184
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 4800
   i32.store
   i32.const 1
   i32.const 4800
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   memory.size
   i32.const 16
   i32.shl
   i32.const 24700
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 5380
   i32.const 5376
   i32.store
   i32.const 5384
   i32.const 5376
   i32.store
   i32.const 5376
   global.set $~lib/rt/itcms/pinSpace
   i32.const 5412
   i32.const 5408
   i32.store
   i32.const 5416
   i32.const 5408
   i32.store
   i32.const 5408
   global.set $~lib/rt/itcms/toSpace
   i32.const 5556
   i32.const 5552
   i32.store
   i32.const 5560
   i32.const 5552
   i32.store
   i32.const 5552
   global.set $~lib/rt/itcms/fromSpace
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8316
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   local.get $0
   i32.const 16
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $1
   i32.store
   local.get $1
   if
    local.get $0
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $0
   i32.const 3
   i32.store offset=4
   local.get $0
   i32.const 96
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $1
   i32.store offset=8
   local.get $1
   if
    local.get $0
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $0
   i32.const 4
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/console/timers
   global.get $~lib/memory/__stack_pointer
   i32.const 5280
   i32.store offset=4
   i32.const 5280
   call $~lib/console/console.time
   global.get $~lib/memory/__stack_pointer
   i32.const 5280
   i32.store offset=4
   i32.const 5280
   call $~lib/console/console.timeLog
   global.get $~lib/memory/__stack_pointer
   i32.const 5280
   i32.store offset=4
   i32.const 5280
   call $~lib/console/console.timeEnd
   global.get $~lib/memory/__stack_pointer
   i32.const 8064
   i32.store offset=4
   i32.const 8064
   call $~lib/console/console.timeLog
   global.get $~lib/memory/__stack_pointer
   i32.const 8064
   i32.store offset=4
   i32.const 8064
   call $~lib/console/console.timeEnd
   global.get $~lib/memory/__stack_pointer
   i32.const 8112
   i32.store offset=4
   i32.const 8112
   call $~lib/console/console.time
   global.get $~lib/memory/__stack_pointer
   i32.const 8112
   i32.store offset=4
   i32.const 8112
   call $~lib/console/console.time
   global.get $~lib/memory/__stack_pointer
   i32.const 8160
   i32.store offset=4
   i32.const 8160
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 8192
   i32.store offset=4
   i32.const 8192
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 8224
   i32.store offset=4
   i32.const 8224
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 8256
   i32.store offset=4
   i32.const 8256
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 24720
  i32.const 24768
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/bindings/wasi_errors/errnoToString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8316
  i32.lt_s
  if
   i32.const 24720
   i32.const 24768
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 65535
  i32.and
  i32.const 77
  i32.lt_u
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 4224
   i32.store
   local.get $0
   i32.const 65535
   i32.and
   i32.const 2
   i32.shl
   i32.const 4224
   i32.add
   i32.load
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 4560
 )
 (func $~lib/console/console.assert<bool> (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8316
  i32.lt_s
  if
   i32.const 24720
   i32.const 24768
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store
   i32.const 2
   i32.const 1088
   call $~lib/process/writeString
   i32.const 2
   local.get $1
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 4800
   i32.store
   i32.const 2
   i32.const 4800
   call $~lib/process/writeString
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.log (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8316
  i32.lt_s
  if
   i32.const 24720
   i32.const 24768
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  local.get $0
  call $~lib/process/writeString
  global.get $~lib/memory/__stack_pointer
  i32.const 4800
  i32.store
  i32.const 1
  i32.const 4800
  call $~lib/process/writeString
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<~lib/string/String,u64>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8316
  i32.lt_s
  if
   i32.const 24720
   i32.const 24768
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
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
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=16
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $3
     i32.store
     local.get $3
     local.get $1
     call $~lib/string/String.__eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/console/console.time (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8316
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   global.get $~lib/console/timers
   local.tee $2
   i32.store
   local.get $2
   local.get $0
   local.get $0
   call $~lib/util/hash/HASH<~lib/string/String>
   call $~lib/map/Map<~lib/string/String,u64>#find
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5712
    i32.store offset=4
    i32.const 1
    i32.const 5712
    call $~lib/process/writeString
    i32.const 1
    local.get $0
    call $~lib/process/writeString
    global.get $~lib/memory/__stack_pointer
    i32.const 5776
    i32.store offset=4
    i32.const 1
    i32.const 5776
    call $~lib/process/writeString
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/console/timers
   local.tee $2
   i32.store
   call $~lib/process/process.hrtime
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8316
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   local.get $0
   call $~lib/util/hash/HASH<~lib/string/String>
   local.tee $4
   call $~lib/map/Map<~lib/string/String,u64>#find
   local.tee $3
   if
    local.get $3
    local.get $1
    i64.store offset=8
   else
    local.get $2
    i32.load offset=16
    local.get $2
    i32.load offset=12
    i32.eq
    if
     local.get $2
     local.get $2
     i32.load offset=20
     local.get $2
     i32.load offset=12
     i32.const 3
     i32.mul
     i32.const 4
     i32.div_s
     i32.lt_s
     if (result i32)
      local.get $2
      i32.load offset=4
     else
      local.get $2
      i32.load offset=4
      i32.const 1
      i32.shl
      i32.const 1
      i32.or
     end
     call $~lib/map/Map<~lib/string/String,u64>#rehash
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=8
    local.tee $5
    i32.store
    local.get $2
    local.get $2
    i32.load offset=16
    local.tee $3
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $5
    local.get $3
    i32.const 24
    i32.mul
    i32.add
    local.tee $3
    local.get $0
    i32.store
    local.get $0
    if
     local.get $2
     local.get $0
     i32.const 1
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $3
    local.get $1
    i64.store offset=8
    local.get $2
    local.get $2
    i32.load offset=20
    i32.const 1
    i32.add
    i32.store offset=20
    local.get $3
    local.get $2
    i32.load
    local.get $4
    local.get $2
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 24720
  i32.const 24768
  i32.const 1
  i32.const 1
  call $~lib/wasi/index/abort
  unreachable
 )
 (func $~lib/console/timeLogImpl (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8316
  i32.lt_s
  if
   i32.const 24720
   i32.const 24768
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  global.get $~lib/console/timers
  local.tee $2
  i32.store
  local.get $2
  local.get $0
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,u64>#find
  local.tee $2
  i32.eqz
  if
   i32.const 6032
   i32.const 6096
   i32.const 105
   i32.const 17
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $2
  i64.load offset=8
  local.set $1
  call $~lib/process/process.hrtime
  local.get $1
  i64.sub
  i64.const 1000000
  i64.div_u
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/number/U64#toString
  local.tee $2
  i32.store offset=4
  i32.const 1
  local.get $0
  call $~lib/process/writeString
  global.get $~lib/memory/__stack_pointer
  i32.const 7920
  i32.store offset=8
  i32.const 1
  i32.const 7920
  call $~lib/process/writeString
  i32.const 1
  local.get $2
  call $~lib/process/writeString
  global.get $~lib/memory/__stack_pointer
  i32.const 7952
  i32.store offset=8
  i32.const 1
  i32.const 7952
  call $~lib/process/writeString
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.timeLog (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8316
  i32.lt_s
  if
   i32.const 24720
   i32.const 24768
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  global.get $~lib/console/timers
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,u64>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 5872
   i32.store offset=4
   i32.const 1
   i32.const 5872
   call $~lib/process/writeString
   i32.const 1
   local.get $0
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 5952
   i32.store offset=4
   i32.const 1
   i32.const 5952
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $0
  call $~lib/console/timeLogImpl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.timeEnd (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8316
  i32.lt_s
  if
   i32.const 24720
   i32.const 24768
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  global.get $~lib/console/timers
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,u64>#find
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 5872
   i32.store offset=4
   i32.const 1
   i32.const 5872
   call $~lib/process/writeString
   i32.const 1
   local.get $0
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 7984
   i32.store offset=4
   i32.const 1
   i32.const 7984
   call $~lib/process/writeString
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $0
  call $~lib/console/timeLogImpl
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/console/timers
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
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
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8316
  i32.lt_s
  if
   i32.const 24720
   i32.const 24768
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 5600
   i32.const 5648
   i32.const 52
   i32.const 43
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 5328
   i32.const 294
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)
