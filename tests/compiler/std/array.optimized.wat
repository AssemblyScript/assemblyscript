(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $f32_f32_=>_i32 (func (param f32 f32) (result i32)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (type $none_=>_f64 (func (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_f32 (func (param i32 i32 i32) (result f32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i64_i32_i64_i32_i64_i32_=>_i32 (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
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
 (global $std/array/ArrayU32 i32 (i32.const 40))
 (global $std/array/ArrayU8 i32 (i32.const 41))
 (global $std/array/ArrayStr i32 (i32.const 42))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 31492))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1084) ",")
 (data (i32.const 1096) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1132) "<")
 (data (i32.const 1144) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1196) "<")
 (data (i32.const 1208) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1324) "<")
 (data (i32.const 1336) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1388) ",")
 (data (i32.const 1400) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1468) "<")
 (data (i32.const 1480) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1532) ",")
 (data (i32.const 1544) "\01\00\00\00\18\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1580) "<")
 (data (i32.const 1592) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1644) "\1c")
 (data (i32.const 1656) "\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 1676) "\1c")
 (data (i32.const 1692) "\05\00\00\00\01\02\03\04\05")
 (data (i32.const 1708) "\1c")
 (data (i32.const 1724) "\05\00\00\00\01\01\01\04\05")
 (data (i32.const 1740) "\1c")
 (data (i32.const 1756) "\05")
 (data (i32.const 1772) "\1c")
 (data (i32.const 1788) "\05\00\00\00\01\01")
 (data (i32.const 1804) "\1c")
 (data (i32.const 1820) "\05\00\00\00\01\01\00\02\02")
 (data (i32.const 1836) "\1c")
 (data (i32.const 1852) "\05\00\00\00\01\01\00\02\02")
 (data (i32.const 1868) ",")
 (data (i32.const 1884) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1916) ",")
 (data (i32.const 1932) "\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 1964) ",")
 (data (i32.const 1980) "\14")
 (data (i32.const 2012) ",")
 (data (i32.const 2028) "\14\00\00\00\01\00\00\00\01")
 (data (i32.const 2060) ",")
 (data (i32.const 2076) "\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 2108) ",")
 (data (i32.const 2124) "\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 2156) ",")
 (data (i32.const 2168) "\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 2204) ",")
 (data (i32.const 2220) "\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04")
 (data (i32.const 2252) "\1c")
 (data (i32.const 2284) "\1c")
 (data (i32.const 2316) ",")
 (data (i32.const 2332) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2364) ",")
 (data (i32.const 2380) "\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2412) ",")
 (data (i32.const 2428) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2460) ",")
 (data (i32.const 2476) "\14\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05")
 (data (i32.const 2508) ",")
 (data (i32.const 2524) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2556) ",")
 (data (i32.const 2572) "\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 2604) ",")
 (data (i32.const 2620) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2652) ",")
 (data (i32.const 2668) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2700) ",")
 (data (i32.const 2716) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2748) ",")
 (data (i32.const 2764) "\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2796) ",")
 (data (i32.const 2812) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2844) ",")
 (data (i32.const 2860) "\14\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2892) ",")
 (data (i32.const 2908) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2940) ",")
 (data (i32.const 2956) "\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 2988) ",")
 (data (i32.const 3004) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3036) ",")
 (data (i32.const 3052) "\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3084) ",")
 (data (i32.const 3100) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3132) ",")
 (data (i32.const 3148) "\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3180) ",")
 (data (i32.const 3196) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3228) ",")
 (data (i32.const 3244) "\14\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3276) ",")
 (data (i32.const 3292) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3324) ",")
 (data (i32.const 3340) "\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 3372) ",")
 (data (i32.const 3388) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3420) ",")
 (data (i32.const 3436) "\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 3468) ",")
 (data (i32.const 3484) "\14\00\00\00\03\00\00\00\05\00\00\00\07\00\00\00\t\00\00\00\0b")
 (data (i32.const 3516) "\1c")
 (data (i32.const 3532) "\0c\00\00\00\07\00\00\00\t\00\00\00\0b")
 (data (i32.const 3548) "\1c")
 (data (i32.const 3564) "\08\00\00\00\07\00\00\00\t")
 (data (i32.const 3580) ",")
 (data (i32.const 3596) "\10\00\00\00\05\00\00\00\07\00\00\00\t\00\00\00\0b")
 (data (i32.const 3628) "\1c")
 (data (i32.const 3644) "\08\00\00\00\t\00\00\00\0b")
 (data (i32.const 3660) "\1c")
 (data (i32.const 3676) "\08\00\00\00\07\00\00\00\t")
 (data (i32.const 3692) "\1c")
 (data (i32.const 3708) "\08\00\00\00\07\00\00\00\t")
 (data (i32.const 3724) "\1c")
 (data (i32.const 3740) "\04\00\00\00\00\00\c0\7f")
 (data (i32.const 3756) "\1c")
 (data (i32.const 3772) "\08")
 (data (i32.const 3782) "\f8\7f")
 (data (i32.const 3788) ",")
 (data (i32.const 3804) "\10\00\00\00\02\00\00\00\05\00\00\00\t\00\00\00\02")
 (data (i32.const 3836) "\1c")
 (data (i32.const 3852) "\04\00\00\00\00\00\c0\7f")
 (data (i32.const 3868) "\1c")
 (data (i32.const 3884) "\08")
 (data (i32.const 3894) "\f8\7f")
 (data (i32.const 3900) ",")
 (data (i32.const 3916) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3948) ",")
 (data (i32.const 3964) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3996) "\1c")
 (data (i32.const 4028) ",")
 (data (i32.const 4044) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4076) "\1c")
 (data (i32.const 4108) ",")
 (data (i32.const 4124) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4156) ",")
 (data (i32.const 4172) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4204) "\1c")
 (data (i32.const 4220) "\0c\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4236) "\1c")
 (data (i32.const 4252) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 4268) ",")
 (data (i32.const 4284) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4316) "\1c")
 (data (i32.const 4332) "\08\00\00\00\03\00\00\00\04")
 (data (i32.const 4348) "\1c")
 (data (i32.const 4364) "\0c\00\00\00\01\00\00\00\02\00\00\00\05")
 (data (i32.const 4380) ",")
 (data (i32.const 4396) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4428) "\1c")
 (data (i32.const 4444) "\04\00\00\00\01")
 (data (i32.const 4460) ",")
 (data (i32.const 4476) "\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4508) ",")
 (data (i32.const 4524) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4556) "\1c")
 (data (i32.const 4572) "\04\00\00\00\05")
 (data (i32.const 4588) ",")
 (data (i32.const 4604) "\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04")
 (data (i32.const 4636) ",")
 (data (i32.const 4652) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4684) "\1c")
 (data (i32.const 4700) "\08\00\00\00\04\00\00\00\05")
 (data (i32.const 4716) "\1c")
 (data (i32.const 4732) "\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4748) ",")
 (data (i32.const 4764) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4796) "\1c")
 (data (i32.const 4812) "\04\00\00\00\04")
 (data (i32.const 4828) ",")
 (data (i32.const 4844) "\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05")
 (data (i32.const 4876) ",")
 (data (i32.const 4892) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4924) "\1c")
 (data (i32.const 4940) "\04\00\00\00\01")
 (data (i32.const 4956) ",")
 (data (i32.const 4972) "\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5004) ",")
 (data (i32.const 5020) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5052) "\1c")
 (data (i32.const 5084) ",")
 (data (i32.const 5100) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5132) ",")
 (data (i32.const 5148) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5180) "\1c")
 (data (i32.const 5212) ",")
 (data (i32.const 5228) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5260) ",")
 (data (i32.const 5276) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5308) "\1c")
 (data (i32.const 5340) ",")
 (data (i32.const 5356) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5388) ",")
 (data (i32.const 5404) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5436) "\1c")
 (data (i32.const 5468) ",")
 (data (i32.const 5484) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5516) ",")
 (data (i32.const 5532) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5564) "\1c")
 (data (i32.const 5596) ",")
 (data (i32.const 5612) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5644) "\1c")
 (data (i32.const 5676) "|")
 (data (i32.const 5688) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 5804) "<")
 (data (i32.const 5816) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 5868) "\1c")
 (data (i32.const 5880) "\0c\00\00\00\08\00\00\00\01")
 (data (i32.const 5900) "\1c")
 (data (i32.const 5912) "\0c\00\00\00\08\00\00\00\02")
 (data (i32.const 5932) "\1c")
 (data (i32.const 5944) "\0c\00\00\00\08\00\00\00\03")
 (data (i32.const 5964) "\1c")
 (data (i32.const 5976) "\0c\00\00\00\08\00\00\00\04")
 (data (i32.const 5996) "\1c")
 (data (i32.const 6008) "\0c\00\00\00\08\00\00\00\05")
 (data (i32.const 6028) "\1c")
 (data (i32.const 6040) "\0c\00\00\00\08\00\00\00\06")
 (data (i32.const 6060) "\1c")
 (data (i32.const 6072) "\0c\00\00\00\08\00\00\00\07")
 (data (i32.const 6092) "\1c")
 (data (i32.const 6104) "\0c\00\00\00\08\00\00\00\08")
 (data (i32.const 6124) "\1c")
 (data (i32.const 6136) "\0c\00\00\00\08\00\00\00\t")
 (data (i32.const 6156) "\1c")
 (data (i32.const 6168) "\0c\00\00\00\08\00\00\00\n")
 (data (i32.const 6188) "\1c")
 (data (i32.const 6200) "\0c\00\00\00\08\00\00\00\0b")
 (data (i32.const 6220) "\1c")
 (data (i32.const 6232) "\0c\00\00\00\08\00\00\00\0c")
 (data (i32.const 6252) "\1c")
 (data (i32.const 6264) "\0c\00\00\00\08\00\00\00\0d")
 (data (i32.const 6284) "\1c")
 (data (i32.const 6296) "\0c\00\00\00\08\00\00\00\0e")
 (data (i32.const 6316) "\1c")
 (data (i32.const 6328) "\0c\00\00\00\08\00\00\00\0f")
 (data (i32.const 6348) "\1c")
 (data (i32.const 6360) "\0c\00\00\00\08\00\00\00\10")
 (data (i32.const 6380) "\1c")
 (data (i32.const 6392) "\0d\00\00\00\08\00\00\00\11")
 (data (i32.const 6412) "\1c")
 (data (i32.const 6424) "\0d\00\00\00\08\00\00\00\12")
 (data (i32.const 6444) "\1c")
 (data (i32.const 6456) "\0d\00\00\00\08\00\00\00\13")
 (data (i32.const 6476) "\1c")
 (data (i32.const 6488) "\0d\00\00\00\08\00\00\00\14")
 (data (i32.const 6508) "\1c")
 (data (i32.const 6520) "\0d\00\00\00\08\00\00\00\15")
 (data (i32.const 6540) "\1c")
 (data (i32.const 6552) "\0e\00\00\00\08\00\00\00\16")
 (data (i32.const 6572) "\1c")
 (data (i32.const 6584) "\0f\00\00\00\08\00\00\00\17")
 (data (i32.const 6604) "\1c")
 (data (i32.const 6616) "\0f\00\00\00\08\00\00\00\18")
 (data (i32.const 6636) "\1c")
 (data (i32.const 6648) "\0f\00\00\00\08\00\00\00\19")
 (data (i32.const 6668) "\1c")
 (data (i32.const 6680) "\0c\00\00\00\08\00\00\00\1a")
 (data (i32.const 6700) "\1c")
 (data (i32.const 6712) "\0c\00\00\00\08\00\00\00\1b")
 (data (i32.const 6732) "\1c")
 (data (i32.const 6744) "\0c\00\00\00\08\00\00\00\1c")
 (data (i32.const 6764) "\1c")
 (data (i32.const 6776) "\0c\00\00\00\08\00\00\00\1d")
 (data (i32.const 6796) "\1c")
 (data (i32.const 6808) "\10\00\00\00\08\00\00\00\1e")
 (data (i32.const 6828) "\1c")
 (data (i32.const 6840) "\10\00\00\00\08\00\00\00\1f")
 (data (i32.const 6860) "\1c")
 (data (i32.const 6872) "\11\00\00\00\08\00\00\00 ")
 (data (i32.const 6892) "\1c")
 (data (i32.const 6904) "\11\00\00\00\08\00\00\00!")
 (data (i32.const 6924) "\1c")
 (data (i32.const 6936) "\10\00\00\00\08\00\00\00\"")
 (data (i32.const 6956) "\1c")
 (data (i32.const 6968) "\10\00\00\00\08\00\00\00#")
 (data (i32.const 6988) "\1c")
 (data (i32.const 7000) "\10\00\00\00\08\00\00\00$")
 (data (i32.const 7020) "\1c")
 (data (i32.const 7032) "\10\00\00\00\08\00\00\00%")
 (data (i32.const 7052) "\1c")
 (data (i32.const 7064) "\10\00\00\00\08\00\00\00&")
 (data (i32.const 7084) "\1c")
 (data (i32.const 7096) "\11\00\00\00\08\00\00\00\'")
 (data (i32.const 7116) "\1c")
 (data (i32.const 7128) "\11\00\00\00\08\00\00\00(")
 (data (i32.const 7148) "\1c")
 (data (i32.const 7160) "\10\00\00\00\08\00\00\00)")
 (data (i32.const 7180) "\1c")
 (data (i32.const 7192) "\10\00\00\00\08\00\00\00*")
 (data (i32.const 7212) "\1c")
 (data (i32.const 7224) "\10\00\00\00\08\00\00\00+")
 (data (i32.const 7244) ",")
 (data (i32.const 7256) "\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 7292) "\bc")
 (data (i32.const 7304) "\01\00\00\00\ac\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?")
 (data (i32.const 7484) "\1c")
 (data (i32.const 7500) "\0c\00\00\00\00\00\00@\00\00\80\bf")
 (data (i32.const 7516) "\1c")
 (data (i32.const 7528) "\12\00\00\00\08\00\00\00,")
 (data (i32.const 7548) "\1c")
 (data (i32.const 7564) "\0c\00\00\00\00\00\80\bf\00\00\00\00\00\00\00@")
 (data (i32.const 7580) "<")
 (data (i32.const 7596) " \00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 7644) "<")
 (data (i32.const 7660) " \00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 7708) "\\")
 (data (i32.const 7724) "@")
 (data (i32.const 7734) "\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?")
 (data (i32.const 7774) "\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 7804) "\1c")
 (data (i32.const 7816) "\13\00\00\00\08\00\00\00-")
 (data (i32.const 7836) "\\")
 (data (i32.const 7852) "@")
 (data (i32.const 7862) "\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf")
 (data (i32.const 7894) "\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 7932) ",")
 (data (i32.const 7948) "\14\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 7980) "\1c")
 (data (i32.const 7992) "\14\00\00\00\08\00\00\00.")
 (data (i32.const 8012) ",")
 (data (i32.const 8028) "\14\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02")
 (data (i32.const 8060) ",")
 (data (i32.const 8076) "\14\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 8108) "\1c")
 (data (i32.const 8120) "\15\00\00\00\08\00\00\00/")
 (data (i32.const 8140) ",")
 (data (i32.const 8156) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 8188) "\1c")
 (data (i32.const 8220) "\1c")
 (data (i32.const 8236) "\04\00\00\00\01")
 (data (i32.const 8252) "\1c")
 (data (i32.const 8268) "\08\00\00\00\02\00\00\00\01")
 (data (i32.const 8284) ",")
 (data (i32.const 8300) "\10\00\00\00\03\00\00\00\02\00\00\00\01")
 (data (i32.const 8332) ",")
 (data (i32.const 8348) "\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 8380) "\1c")
 (data (i32.const 8392) "\14\00\00\00\08\00\00\000")
 (data (i32.const 8412) "\1c")
 (data (i32.const 8428) "\04\00\00\00\01")
 (data (i32.const 8444) "\1c")
 (data (i32.const 8460) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 8476) "\1c")
 (data (i32.const 8488) "\14\00\00\00\08\00\00\001")
 (data (i32.const 8508) "\1c")
 (data (i32.const 8520) "\14\00\00\00\08\00\00\002")
 (data (i32.const 8540) "\1c")
 (data (i32.const 8552) "\14\00\00\00\08\00\00\003")
 (data (i32.const 8572) "\1c")
 (data (i32.const 8584) "\14\00\00\00\08\00\00\004")
 (data (i32.const 8604) "\1c")
 (data (i32.const 8616) "\17\00\00\00\08\00\00\005")
 (data (i32.const 8636) "\1c")
 (data (i32.const 8648) "\1a\00\00\00\08\00\00\006")
 (data (i32.const 8668) "\1c")
 (data (i32.const 8680) "\01\00\00\00\02\00\00\00a")
 (data (i32.const 8700) "\1c")
 (data (i32.const 8712) "\01\00\00\00\02\00\00\00b")
 (data (i32.const 8732) "\1c")
 (data (i32.const 8744) "\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 8764) "\1c")
 (data (i32.const 8776) "\01\00\00\00\04\00\00\00b\00a")
 (data (i32.const 8796) "\1c")
 (data (i32.const 8808) "\01")
 (data (i32.const 8828) ",")
 (data (i32.const 8844) "\1c\00\00\00\f0!\00\00\10\"\00\00\f0!\00\000\"\00\00P\"\00\00p\"")
 (data (i32.const 8876) ",")
 (data (i32.const 8892) "\1c\00\00\00p\"\00\00\f0!\00\00\f0!\00\000\"\00\00\10\"\00\00P\"")
 (data (i32.const 8924) "\1c")
 (data (i32.const 8936) "\1c\00\00\00\08\00\00\007")
 (data (i32.const 8956) "\1c")
 (data (i32.const 8968) "\1e\00\00\00\08\00\00\008")
 (data (i32.const 8988) "\1c")
 (data (i32.const 9004) "\02\00\00\00\01")
 (data (i32.const 9020) "\1c")
 (data (i32.const 9032) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 9052) "\1c")
 (data (i32.const 9064) "\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 9084) "\1c")
 (data (i32.const 9096) "\01\00\00\00\02\00\00\00,")
 (data (i32.const 9116) ",")
 (data (i32.const 9128) "\01\00\00\00\14\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e")
 (data (i32.const 9164) "\1c")
 (data (i32.const 9180) "\0c\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 9196) "|")
 (data (i32.const 9208) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 9324) "<")
 (data (i32.const 9336) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 9388) "\1c")
 (data (i32.const 9400) "\01\00\00\00\02\00\00\000")
 (data (i32.const 9420) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 9820) "\1c\04")
 (data (i32.const 9832) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 10876) "\\")
 (data (i32.const 10888) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 10972) "\1c")
 (data (i32.const 10984) "\01\00\00\00\n\00\00\001\00-\002\00-\003")
 (data (i32.const 11004) "\1c")
 (data (i32.const 11020) "\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 11036) "\1c")
 (data (i32.const 11048) "\01\00\00\00\02\00\00\00-")
 (data (i32.const 11068) "\1c")
 (data (i32.const 11084) "\08\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 11100) "\1c")
 (data (i32.const 11112) "\01\00\00\00\04\00\00\00_\00_")
 (data (i32.const 11132) "L")
 (data (i32.const 11144) "\01\00\00\000\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 11212) "L")
 (data (i32.const 11228) "0")
 (data (i32.const 11246) "\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 11292) "\1c")
 (data (i32.const 11304) "\01\00\00\00\04\00\00\00,\00 ")
 (data (i32.const 11324) "\1c")
 (data (i32.const 11336) "\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 11356) "\1c")
 (data (i32.const 11368) "\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 11388) ",")
 (data (i32.const 11400) "\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 11436) ",")
 (data (i32.const 11448) "\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 11544) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 12240) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 12416) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 12460) "l")
 (data (i32.const 12472) "\01\00\00\00P\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 12572) "\1c")
 (data (i32.const 12584) "\01\00\00\00\02\00\00\001")
 (data (i32.const 12604) "\1c")
 (data (i32.const 12620) "\0c\00\00\00p\"\00\0001")
 (data (i32.const 12636) "<")
 (data (i32.const 12648) "\01\00\00\00\1e\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 12700) "\\")
 (data (i32.const 12712) "\01\00\00\00@\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 12796) "\\")
 (data (i32.const 12808) "\01\00\00\00>\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 12892) "\1c")
 (data (i32.const 12924) "\1c")
 (data (i32.const 12940) "\04\00\00\00\01")
 (data (i32.const 12956) "\1c")
 (data (i32.const 12972) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 12988) ",")
 (data (i32.const 13004) "\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 13036) "\1c")
 (data (i32.const 13048) "\01\00\00\00\06\00\00\001\00,\002")
 (data (i32.const 13068) ",")
 (data (i32.const 13080) "\01\00\00\00\0e\00\00\000\00,\001\00,\002\00,\003")
 (data (i32.const 13116) "\1c")
 (data (i32.const 13132) "\03\00\00\00\01\ff")
 (data (i32.const 13148) "\1c")
 (data (i32.const 13160) "\01\00\00\00\0c\00\00\001\00,\00-\001\00,\000")
 (data (i32.const 13180) "\1c")
 (data (i32.const 13196) "\06\00\00\00\01\00\ff\ff")
 (data (i32.const 13212) ",")
 (data (i32.const 13224) "\01\00\00\00\12\00\00\001\00,\006\005\005\003\005\00,\000")
 (data (i32.const 13260) ",")
 (data (i32.const 13276) "\18\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 13308) "L")
 (data (i32.const 13320) "\01\00\00\000\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000")
 (data (i32.const 13388) "<")
 (data (i32.const 13404) " \00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 13452) "l")
 (data (i32.const 13464) "\01\00\00\00T\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007")
 (data (i32.const 13564) ",")
 (data (i32.const 13580) "\1c\00\00\00p\"\00\00\f0!\00\00\f0!\00\000\"\00\00\10\"\00\00P\"")
 (data (i32.const 13612) ",")
 (data (i32.const 13624) "\01\00\00\00\1a\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,")
 (data (i32.const 13660) "\1c")
 (data (i32.const 13672) "\01\00\00\00\02\00\00\002")
 (data (i32.const 13692) "\1c")
 (data (i32.const 13704) "\01\00\00\00\02\00\00\004")
 (data (i32.const 13724) ",")
 (data (i32.const 13740) "\10\00\00\0001\00\00p5\00\00\00\00\00\00\905")
 (data (i32.const 13772) "\1c")
 (data (i32.const 13784) "\01\00\00\00\0c\00\00\001\00,\002\00,\00,\004")
 (data (i32.const 13804) "\1c")
 (data (i32.const 13820) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 13836) "\1c")
 (data (i32.const 13852) "\08\00\00\00\03\00\00\00\04")
 (data (i32.const 13868) ",")
 (data (i32.const 13880) "\01\00\00\00\0e\00\00\001\00,\002\00,\003\00,\004")
 (data (i32.const 13916) "\1c")
 (data (i32.const 13932) "\02\00\00\00\01\02")
 (data (i32.const 13948) "\1c")
 (data (i32.const 13964) "\02\00\00\00\03\04")
 (data (i32.const 13980) "\1c")
 (data (i32.const 13996) "\04\00\00\00\01")
 (data (i32.const 14012) "\1c")
 (data (i32.const 14028) "\04")
 (data (i32.const 14044) "\1c")
 (data (i32.const 14060) "\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 14076) "\1c")
 (data (i32.const 14092) "\0c\00\00\00\04\00\00\00\05\00\00\00\06")
 (data (i32.const 14108) "\1c")
 (data (i32.const 14124) "\0c\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 14140) "\1c")
 (data (i32.const 14152) "\01\00\00\00\06\00\00\00o\00n\00e")
 (data (i32.const 14172) "\1c")
 (data (i32.const 14188) "\04\00\00\00P7")
 (data (i32.const 14204) "\1c")
 (data (i32.const 14216) "\01\00\00\00\06\00\00\00t\00w\00o")
 (data (i32.const 14236) "\1c")
 (data (i32.const 14248) "\01\00\00\00\n\00\00\00t\00h\00r\00e\00e")
 (data (i32.const 14268) "\1c")
 (data (i32.const 14284) "\0c\00\00\00\907\00\00\00\00\00\00\b07")
 (data (i32.const 14300) "\1c")
 (data (i32.const 14312) "\01\00\00\00\08\00\00\00f\00o\00u\00r")
 (data (i32.const 14332) "\1c")
 (data (i32.const 14344) "\01\00\00\00\08\00\00\00f\00i\00v\00e")
 (data (i32.const 14364) "\1c")
 (data (i32.const 14376) "\01\00\00\00\06\00\00\00s\00i\00x")
 (data (i32.const 14396) "\1c")
 (data (i32.const 14412) "\0c\00\00\00\f07\00\00\108\00\0008")
 (data (i32.const 14428) "\1c")
 (data (i32.const 14440) "\01\00\00\00\n\00\00\00s\00e\00v\00e\00n")
 (data (i32.const 14460) "\1c")
 (data (i32.const 14476) "\04\00\00\00p8")
 (data (i32.const 14492) "<")
 (data (i32.const 14508) " \00\00\00P7\00\00\907\00\00\00\00\00\00\b07\00\00\f07\00\00\108\00\0008\00\00p8")
 (data (i32.const 14556) "\1c")
 (data (i32.const 14588) "\1c")
 (data (i32.const 14620) "<")
 (data (i32.const 14632) "\01\00\00\00(\00\00\00I\00l\00l\00e\00g\00a\00l\00 \00g\00e\00n\00e\00r\00i\00c\00 \00t\00y\00p\00e")
 (data (i32.const 14684) "\1c")
 (data (i32.const 14696) "+\00\00\00\08\00\00\009")
 (data (i32.const 14716) "\1c")
 (data (i32.const 14728) "\1e\00\00\00\08\00\00\00:")
 (data (i32.const 14752) ",\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 14780) "\02\t\00\00\00\00\00\00 \00\00\00\00\00\00\00A\00\00\00\02\00\00\00B\00\00\00\00\00\00\00\02\01\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\19\00\00\00\00\00\00\02\1a\00\00\00\00\00\00\02a")
 (data (i32.const 14932) "\02A")
 (data (i32.const 14948) " \00\00\00\00\00\00\00\02A")
 (data (i32.const 14972) "\02a")
 (data (i32.const 14988) "\02A")
 (data (i32.const 15004) "B\00\00\00\00\00\00\00B\08\00\00\00\00\00\00\82\00\00\00\00\00\00\00\02\02\00\00\00\00\00\00\02\n\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\01\00\00\07\00\00\00B\00\00\00\06\00\00\00\02A\00\00\1d")
 (table $0 59 funcref)
 (elem $0 (i32.const 1) $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|2 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|16 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $start:std/array~anonymous|47 $start:std/array~anonymous|48 $~lib/util/sort/COMPARATOR<~lib/string/String|null>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String|null>~anonymous|0 $~lib/util/sort/COMPARATOR<u8>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String|null>~anonymous|0)
 (export "ArrayU32" (global $std/array/ArrayU32))
 (export "ArrayU8" (global $std/array/ArrayU8))
 (export "ArrayStr" (global $std/array/ArrayStr))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "_start" (func $~start))
 (export "ArrayU32#get:dataStart" (func $export:~lib/array/Array<u32>#get:dataStart))
 (export "ArrayU32#constructor" (func $export:std/array/ArrayU32#constructor@varargs))
 (export "ArrayU32#get:length" (func $export:~lib/array/Array<u32>#get:length))
 (export "ArrayU32#set:length" (func $export:~lib/array/Array<u32>#set:length))
 (export "ArrayU32#every" (func $export:~lib/array/Array<u32>#every))
 (export "ArrayU32#findIndex" (func $export:~lib/array/Array<u32>#findIndex))
 (export "ArrayU32#at" (func $export:~lib/array/Array<u32>#at))
 (export "ArrayU32#fill" (func $export:~lib/array/Array<u32>#fill@varargs))
 (export "ArrayU32#includes" (func $export:~lib/array/Array<u32>#includes@varargs))
 (export "ArrayU32#indexOf" (func $export:~lib/array/Array<u32>#indexOf@varargs))
 (export "ArrayU32#lastIndexOf" (func $export:~lib/array/Array<u32>#lastIndexOf@varargs))
 (export "ArrayU32#push" (func $export:~lib/array/Array<u32>#push))
 (export "ArrayU32#concat" (func $export:~lib/array/Array<u32>#concat))
 (export "ArrayU32#copyWithin" (func $export:~lib/array/Array<u32>#copyWithin@varargs))
 (export "ArrayU32#pop" (func $export:~lib/array/Array<u32>#pop))
 (export "ArrayU32#forEach" (func $export:~lib/array/Array<u32>#forEach))
 (export "ArrayU32#filter" (func $export:~lib/array/Array<u32>#filter))
 (export "ArrayU32#shift" (func $export:~lib/array/Array<u32>#shift))
 (export "ArrayU32#some" (func $export:~lib/array/Array<u32>#some))
 (export "ArrayU32#unshift" (func $export:~lib/array/Array<u32>#unshift))
 (export "ArrayU32#slice" (func $export:~lib/array/Array<u32>#slice@varargs))
 (export "ArrayU32#splice" (func $export:~lib/array/Array<u32>#splice@varargs))
 (export "ArrayU32#reverse" (func $export:~lib/array/Array<u32>#reverse))
 (export "ArrayU32#sort" (func $export:~lib/array/Array<u32>#sort@varargs))
 (export "ArrayU32#join" (func $export:~lib/array/Array<u32>#join@varargs))
 (export "ArrayU32#flat" (func $export:~lib/array/Array<u32>#flat))
 (export "ArrayU32#toString" (func $export:~lib/array/Array<u32>#toString))
 (export "ArrayU8#get:dataStart" (func $export:~lib/array/Array<u32>#get:dataStart))
 (export "ArrayU8#constructor" (func $export:std/array/ArrayU8#constructor@varargs))
 (export "ArrayU8#get:length" (func $export:~lib/array/Array<u32>#get:length))
 (export "ArrayU8#set:length" (func $export:~lib/array/Array<u8>#set:length))
 (export "ArrayU8#every" (func $export:~lib/array/Array<u8>#every))
 (export "ArrayU8#findIndex" (func $export:~lib/array/Array<u8>#findIndex))
 (export "ArrayU8#at" (func $export:~lib/array/Array<u8>#at))
 (export "ArrayU8#fill" (func $export:~lib/array/Array<u8>#fill@varargs))
 (export "ArrayU8#includes" (func $export:~lib/array/Array<u8>#includes@varargs))
 (export "ArrayU8#indexOf" (func $export:~lib/array/Array<u8>#indexOf@varargs))
 (export "ArrayU8#lastIndexOf" (func $export:~lib/array/Array<u8>#lastIndexOf@varargs))
 (export "ArrayU8#push" (func $export:~lib/array/Array<u8>#push))
 (export "ArrayU8#concat" (func $export:~lib/array/Array<u8>#concat))
 (export "ArrayU8#copyWithin" (func $export:~lib/array/Array<u8>#copyWithin@varargs))
 (export "ArrayU8#pop" (func $export:~lib/array/Array<u8>#pop))
 (export "ArrayU8#forEach" (func $export:~lib/array/Array<u8>#forEach))
 (export "ArrayU8#filter" (func $export:~lib/array/Array<u8>#filter))
 (export "ArrayU8#shift" (func $export:~lib/array/Array<u8>#shift))
 (export "ArrayU8#some" (func $export:~lib/array/Array<u8>#some))
 (export "ArrayU8#unshift" (func $export:~lib/array/Array<u8>#unshift))
 (export "ArrayU8#slice" (func $export:~lib/array/Array<u8>#slice@varargs))
 (export "ArrayU8#splice" (func $export:~lib/array/Array<u8>#splice@varargs))
 (export "ArrayU8#reverse" (func $export:~lib/array/Array<u8>#reverse))
 (export "ArrayU8#sort" (func $export:~lib/array/Array<u8>#sort@varargs))
 (export "ArrayU8#join" (func $export:~lib/array/Array<u8>#join@varargs))
 (export "ArrayU8#flat" (func $export:~lib/array/Array<u32>#flat))
 (export "ArrayU8#toString" (func $export:~lib/array/Array<u8>#toString))
 (export "ArrayStr#get:dataStart" (func $export:~lib/array/Array<u32>#get:dataStart))
 (export "ArrayStr#constructor" (func $export:std/array/ArrayStr#constructor@varargs))
 (export "ArrayStr#get:length" (func $export:~lib/array/Array<u32>#get:length))
 (export "ArrayStr#set:length" (func $export:~lib/array/Array<u32>#set:length))
 (export "ArrayStr#every" (func $export:~lib/array/Array<~lib/string/String>#every))
 (export "ArrayStr#findIndex" (func $export:~lib/array/Array<~lib/string/String>#findIndex))
 (export "ArrayStr#at" (func $export:~lib/array/Array<~lib/string/String>#at))
 (export "ArrayStr#fill" (func $export:~lib/array/Array<~lib/string/String>#fill@varargs))
 (export "ArrayStr#includes" (func $export:~lib/array/Array<~lib/string/String>#includes@varargs))
 (export "ArrayStr#indexOf" (func $export:~lib/array/Array<~lib/string/String>#indexOf@varargs))
 (export "ArrayStr#lastIndexOf" (func $export:~lib/array/Array<~lib/string/String>#lastIndexOf@varargs))
 (export "ArrayStr#push" (func $export:~lib/array/Array<~lib/string/String>#push))
 (export "ArrayStr#concat" (func $export:~lib/array/Array<~lib/string/String>#concat))
 (export "ArrayStr#copyWithin" (func $export:~lib/array/Array<u32>#copyWithin@varargs))
 (export "ArrayStr#pop" (func $export:~lib/array/Array<~lib/string/String>#pop))
 (export "ArrayStr#forEach" (func $export:~lib/array/Array<~lib/string/String>#forEach))
 (export "ArrayStr#filter" (func $export:~lib/array/Array<~lib/string/String>#filter))
 (export "ArrayStr#shift" (func $export:~lib/array/Array<~lib/string/String>#shift))
 (export "ArrayStr#some" (func $export:~lib/array/Array<~lib/string/String>#some))
 (export "ArrayStr#unshift" (func $export:~lib/array/Array<~lib/string/String>#unshift))
 (export "ArrayStr#slice" (func $export:~lib/array/Array<~lib/string/String>#slice@varargs))
 (export "ArrayStr#splice" (func $export:~lib/array/Array<~lib/string/String>#splice@varargs))
 (export "ArrayStr#reverse" (func $export:~lib/array/Array<~lib/string/String>#reverse))
 (export "ArrayStr#sort" (func $export:~lib/array/Array<~lib/string/String>#sort@varargs))
 (export "ArrayStr#join" (func $export:~lib/array/Array<~lib/string/String>#join@varargs))
 (export "ArrayStr#flat" (func $export:~lib/array/Array<u32>#flat))
 (export "ArrayStr#toString" (func $export:~lib/array/Array<~lib/string/String>#toString))
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $std/array/arr
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 7312
  call $~lib/rt/itcms/__visit
  i32.const 1344
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 14640
  call $~lib/rt/itcms/__visit
  i32.const 2176
  call $~lib/rt/itcms/__visit
  i32.const 5696
  call $~lib/rt/itcms/__visit
  i32.const 1152
  call $~lib/rt/itcms/__visit
  i32.const 9840
  call $~lib/rt/itcms/__visit
  i32.const 10896
  call $~lib/rt/itcms/__visit
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
     i32.const 1216
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
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
    i32.const 1216
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
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
   local.tee $2
   i32.eqz
   if
    i32.const 0
    local.get $0
    i32.const 31492
    i32.lt_u
    local.get $0
    i32.load offset=8
    select
    i32.eqz
    if
     i32.const 0
     i32.const 1216
     i32.const 127
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink
   end
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1216
    i32.const 131
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.store offset=8
   local.get $1
   local.get $2
   local.get $1
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
   i32.const 14752
   i32.load
   i32.gt_u
   if
    i32.const 1344
    i32.const 1408
    i32.const 22
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 3
   i32.shl
   i32.const 14756
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  local.get $2
  local.get $3
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
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
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
   i32.const 1488
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
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
   i32.const 1488
   i32.const 270
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
   local.set $3
   local.get $2
   local.get $3
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
   i32.const 1488
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
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
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1488
   i32.const 201
   i32.const 14
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
   i32.const 1488
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
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
    i32.const 1488
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
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
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1488
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1488
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $3
   i32.const 1073741820
   local.get $3
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $5
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $5
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1488
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  local.get $5
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
  local.get $5
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
   i32.const 1488
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
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
    i32.const 1488
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
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
    i32.const 1488
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
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
  i32.const 31504
  i32.const 0
  i32.store
  i32.const 33072
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
    i32.const 31504
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
      i32.const 31504
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
  i32.const 31504
  i32.const 33076
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 31504
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 31492
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
   i32.const 1488
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $0
  i32.load
  i32.const 1
  i32.or
  local.set $1
  local.get $0
  local.get $1
  i32.store
  local.get $0
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  block $folding-inner0
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
      br $folding-inner0
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
        local.get $1
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        i32.or
        i32.store offset=4
        i32.const 0
        global.set $~lib/rt/itcms/visitCount
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
        br $folding-inner0
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
       i32.const 31492
       i32.lt_u
       if
        local.get $0
        i32.load
        call $~lib/rt/itcms/__visit
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
         local.get $1
         local.get $0
         i32.load offset=4
         i32.const -4
         i32.and
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
     br $folding-inner0
    end
    global.get $~lib/rt/itcms/iter
    local.tee $0
    global.get $~lib/rt/itcms/toSpace
    i32.ne
    if
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/white
     i32.eqz
     local.get $0
     i32.load offset=4
     i32.const 3
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 1216
      i32.const 228
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 31492
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
    global.get $~lib/rt/itcms/toSpace
    local.tee $0
    local.get $0
    i32.store offset=8
    i32.const 0
    global.set $~lib/rt/itcms/state
   end
   i32.const 0
   return
  end
  global.get $~lib/rt/itcms/visitCount
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
   i32.const 536870910
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
   i32.const 1488
   i32.const 330
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
     i32.const 1488
     i32.const 343
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
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1152
   i32.const 1488
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.tee $2
  local.get $1
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $1
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $0
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 1
    i32.const 27
    local.get $0
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    i32.add
   else
    local.get $0
   end
   i32.const 4
   memory.size
   local.tee $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $2
   i32.load offset=1568
   i32.ne
   i32.shl
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
   local.get $2
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $2
   local.get $0
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1488
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1488
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $3
  local.get $0
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1488
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $0
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $0
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $0
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $0
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $2
   local.get $0
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
   local.tee $3
   i32.const 1
   i32.sub
   local.get $1
   i32.store8
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
   local.get $1
   i32.store8 offset=3
   local.get $3
   i32.const 4
   i32.sub
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
   local.tee $1
   i32.const 4
   i32.sub
   local.get $0
   i32.store
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
   i32.const 12
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   local.get $0
   i32.store
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
   local.tee $4
   local.get $4
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
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1152
   i32.const 1216
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-continue|0
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
     br_if $do-continue|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  local.get $0
  i32.const 16
  i32.add
  local.set $2
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $3
  i32.load offset=8
  local.set $1
  local.get $2
  local.get $3
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $2
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $3
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
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1216
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
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
    i32.const 0
    local.get $3
    i32.const 3
    i32.eq
    select
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
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
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
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
     br $while-continue|1
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
    local.get $1
    i32.load offset=4
    i32.store offset=4
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
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
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
      local.tee $4
      i32.const 2
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 2
      i32.add
      local.set $1
      local.get $4
      local.get $3
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=5
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
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
        br $while-continue|3
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
     local.tee $4
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $3
     i32.const 2
     i32.add
     local.set $1
     local.get $4
     local.get $3
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=6
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
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
       br $while-continue|4
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
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=7
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
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
      br $while-continue|5
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
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
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
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
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
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
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
   local.tee $4
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
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
   local.get $1
   local.get $0
   i32.sub
   local.get $4
   i32.sub
   i32.const 0
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $4
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
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 99
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
 (func $~lib/array/Array<u32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 99
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
 (func $std/array/isArraysEqual<u32> (param $0 i32) (param $1 i32) (result i32)
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
    call $~lib/array/Array<u32>#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<u32>#__get
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
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $5
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 1056
    i32.const 1104
    i32.const 17
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   local.get $2
   i32.shl
   local.set $2
   block $__inlined_func$~lib/rt/itcms/__renew (result i32)
    local.get $3
    if
     local.get $5
     i32.const 1
     i32.shl
     local.tee $1
     i32.const 1073741820
     local.get $1
     i32.const 1073741820
     i32.lt_u
     select
     local.tee $1
     local.get $2
     local.get $1
     local.get $2
     i32.gt_u
     select
     local.set $2
    end
    local.get $2
    local.get $4
    local.tee $1
    i32.const 20
    i32.sub
    local.tee $6
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    i32.le_u
    if
     local.get $6
     local.get $2
     i32.store offset=16
     local.get $1
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $2
    local.get $6
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $3
    local.get $1
    local.get $2
    local.get $6
    i32.load offset=16
    local.tee $1
    local.get $1
    local.get $2
    i32.gt_u
    select
    call $~lib/memory/memory.copy
    local.get $3
   end
   local.tee $1
   local.get $5
   i32.add
   i32.const 0
   local.get $2
   local.get $5
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
    local.get $0
    local.get $1
    i32.const 0
    call $~lib/rt/itcms/__link
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
  i32.const 1
  call $~lib/array/ensureCapacity
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
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 99
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
 (func $~lib/array/Array<i32>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2176
   i32.const 1104
   i32.const 276
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
 (func $~lib/array/Array<std/array/Ref>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<i32>#at (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 0
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $1
  i32.const 0
  i32.ge_s
  select
  i32.add
  local.tee $1
  local.get $2
  i32.ge_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 132
   i32.const 33
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
  local.get $1
  local.get $2
  i32.gt_s
  select
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $0
 )
 (func $std/array/isArraysEqual<i32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   local.get $2
   local.get $3
   i32.gt_s
   if
    local.get $0
    local.get $3
    call $~lib/array/Array<i32>#__get
    local.get $1
    local.get $3
    call $~lib/array/Array<i32>#__get
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
  i32.const 1
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
  local.get $2
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
    i32.const 1344
    i32.const 1104
    i32.const 115
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
   i32.const 1
   call $~lib/array/ensureCapacity
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
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|5 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 100
  i32.eq
 )
 (func $start:std/array~anonymous|6 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ge_s
 )
 (func $start:std/array~anonymous|7 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.le_s
 )
 (func $start:std/array~anonymous|8 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
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
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.lt_s
 )
 (func $start:std/array~anonymous|11 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 3
  i32.ge_s
 )
 (func $start:std/array~anonymous|12 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const -1
  i32.le_s
 )
 (func $start:std/array~anonymous|13 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
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
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.gt_s
 )
 (func $start:std/array~anonymous|16 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|17 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|19 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|20 (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 1552
    i32.const 680
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
  end
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
   i32.const 1344
   i32.const 1104
   i32.const 99
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
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|23 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|24 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
 )
 (func $start:std/array~anonymous|25 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|26 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|27 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|28 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|29 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
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
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|35 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/math/NativeMath.seedRandom (param $0 i64)
  (local $1 i32)
  (local $2 i64)
  i32.const 1
  global.set $~lib/math/random_seeded
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -49064778989728563
  i64.mul
  local.tee $2
  local.get $2
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -4265267296055464877
  i64.mul
  local.tee $2
  local.get $2
  i64.const 33
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  local.tee $2
  local.get $2
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -49064778989728563
  i64.mul
  local.tee $2
  local.get $2
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -4265267296055464877
  i64.mul
  local.tee $2
  local.get $2
  i64.const 33
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $0
  i32.wrap_i64
  i32.const 1831565813
  i32.add
  local.tee $1
  local.get $1
  i32.const 15
  i32.shr_u
  i32.xor
  local.get $1
  i32.const 1
  i32.or
  i32.mul
  local.tee $1
  local.get $1
  local.get $1
  i32.const 61
  i32.or
  local.get $1
  local.get $1
  i32.const 7
  i32.shr_u
  i32.xor
  i32.mul
  i32.add
  i32.xor
  local.tee $1
  local.get $1
  i32.const 14
  i32.shr_u
  i32.xor
  global.set $~lib/math/random_state0_32
  global.get $~lib/math/random_state0_32
  i32.const 1831565813
  i32.add
  local.tee $1
  local.get $1
  i32.const 15
  i32.shr_u
  i32.xor
  local.get $1
  i32.const 1
  i32.or
  i32.mul
  local.tee $1
  local.get $1
  local.get $1
  i32.const 61
  i32.or
  local.get $1
  local.get $1
  i32.const 7
  i32.shr_u
  i32.xor
  i32.mul
  i32.add
  i32.xor
  local.tee $1
  local.get $1
  i32.const 14
  i32.shr_u
  i32.xor
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
   i32.const 7264
   i32.const 1421
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/util/sort/insertionSort<f32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $8
  i32.const 1
  i32.and
  local.get $3
  local.get $8
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $3
  i32.eqz
  select
  i32.add
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $8
   i32.ge_s
   if
    local.get $0
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    local.tee $3
    f32.load
    local.set $5
    local.get $3
    f32.load offset=4
    local.tee $7
    local.set $6
    i32.const 2
    global.set $~argumentsLength
    local.get $5
    local.get $7
    local.get $4
    i32.load
    call_indirect $0 (type $f32_f32_=>_i32)
    i32.const 0
    i32.le_s
    if
     local.get $5
     local.set $6
     local.get $7
     local.set $5
    end
    local.get $8
    i32.const 1
    i32.sub
    local.set $3
    loop $while-continue|1
     local.get $1
     local.get $3
     i32.le_s
     if
      block $while-break|1
       local.get $0
       local.get $3
       i32.const 2
       i32.shl
       i32.add
       f32.load
       local.set $7
       i32.const 2
       global.set $~argumentsLength
       local.get $7
       local.get $5
       local.get $4
       i32.load
       call_indirect $0 (type $f32_f32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|1
       local.get $0
       local.get $3
       i32.const 2
       i32.shl
       i32.add
       local.get $7
       f32.store offset=8
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    f32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $3
     i32.le_s
     if
      block $while-break|2
       local.get $0
       local.get $3
       i32.const 2
       i32.shl
       i32.add
       f32.load
       local.set $5
       i32.const 2
       global.set $~argumentsLength
       local.get $5
       local.get $6
       local.get $4
       i32.load
       call_indirect $0 (type $f32_f32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|2
       local.get $0
       local.get $3
       i32.const 2
       i32.shl
       i32.add
       local.get $5
       f32.store offset=4
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       br $while-continue|2
      end
     end
    end
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    f32.store offset=4
    local.get $8
    i32.const 2
    i32.add
    local.set $8
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/extendRunRight<f32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 i32)
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $1
   return
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  i32.add
  f32.load
  i32.const 2
  global.set $~argumentsLength
  local.get $3
  i32.load
  call_indirect $0 (type $f32_f32_=>_i32)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.tee $7
     f32.load offset=4
     local.get $7
     f32.load
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $f32_f32_=>_i32)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $4
   local.set $2
   loop $while-continue|1
    local.get $1
    local.get $2
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.tee $3
     f32.load
     local.set $5
     local.get $3
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.tee $3
     f32.load
     f32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $5
     f32.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
  else
   loop $while-continue|2
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.tee $1
     f32.load offset=4
     local.get $1
     f32.load
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $f32_f32_=>_i32)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
  end
  local.get $4
 )
 (func $~lib/util/sort/mergeRuns<f32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f32)
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $6
  i32.add
  local.set $7
  local.get $6
  i32.const 1
  i32.add
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 2
    i32.shl
    local.tee $8
    i32.add
    local.get $0
    local.get $8
    i32.add
    f32.load
    f32.store
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $3
   local.get $6
   i32.gt_s
   if
    local.get $4
    local.get $7
    local.get $6
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    f32.load offset=4
    f32.store
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $4
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $9
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $10
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    local.tee $8
    local.get $9
    local.get $10
    local.get $9
    local.get $10
    local.get $5
    i32.load
    call_indirect $0 (type $f32_f32_=>_i32)
    i32.const 31
    i32.shr_u
    local.tee $7
    select
    f32.store
    local.get $8
    local.get $10
    local.get $9
    local.get $7
    select
    f32.store
    local.get $6
    local.get $7
    i32.sub
    local.set $6
    local.get $2
    local.get $7
    i32.const 1
    i32.xor
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
 )
 (func $~lib/util/sort/SORT<f32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 f32)
  (local $13 i32)
  (local $14 f32)
  (local $15 i32)
  (local $16 f32)
  local.get $1
  i32.const 128
  i32.le_s
  if
   local.get $1
   i32.const 1
   i32.le_s
   if
    return
   end
   block $break|0
    block $case1|0
     local.get $1
     i32.const 3
     i32.ne
     if
      local.get $1
      i32.const 2
      i32.eq
      br_if $case1|0
      br $break|0
     end
     local.get $0
     f32.load offset=4
     local.set $16
     local.get $0
     f32.load offset=8
     local.set $14
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $16
     local.get $14
     local.get $16
     local.get $14
     local.get $2
     i32.load
     call_indirect $0 (type $f32_f32_=>_i32)
     i32.const 31
     i32.shr_u
     local.tee $1
     select
     f32.store offset=4
     local.get $0
     f32.load
     local.set $12
     i32.const 2
     global.set $~argumentsLength
     local.get $12
     local.get $14
     local.get $16
     local.get $1
     select
     local.tee $16
     local.get $2
     i32.load
     call_indirect $0 (type $f32_f32_=>_i32)
     i32.const 31
     i32.shr_u
     local.set $1
     local.get $0
     local.get $12
     local.get $16
     local.get $1
     select
     f32.store
     local.get $0
     local.get $16
     local.get $12
     local.get $1
     select
     f32.store offset=8
    end
    local.get $0
    f32.load
    local.set $16
    local.get $0
    f32.load offset=4
    local.set $14
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $16
    local.get $14
    local.get $16
    local.get $14
    local.get $2
    i32.load
    call_indirect $0 (type $f32_f32_=>_i32)
    i32.const 31
    i32.shr_u
    local.tee $1
    select
    f32.store
    local.get $0
    local.get $14
    local.get $16
    local.get $1
    select
    f32.store offset=4
    return
   end
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   i32.const 0
   local.get $2
   call $~lib/util/sort/insertionSort<f32>
   return
  end
  i32.const 33
  local.get $1
  i32.clz
  i32.sub
  local.tee $5
  i32.const 2
  i32.shl
  local.tee $7
  i32.const 1
  i32.shl
  local.set $4
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $4
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $13
  local.get $7
  i32.add
  local.set $11
  i32.const 0
  local.set $7
  loop $for-loop|1
   local.get $5
   local.get $7
   i32.gt_u
   if
    local.get $13
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.const -1
    i32.store
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|1
   end
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $7
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $7
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.set $10
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  i32.sub
  local.tee $15
  local.get $2
  call $~lib/util/sort/extendRunRight<f32>
  local.tee $1
  i32.const 1
  i32.add
  local.tee $7
  i32.const 32
  i32.lt_s
  if
   local.get $0
   i32.const 0
   local.get $15
   i32.const 31
   local.get $15
   i32.const 31
   i32.lt_s
   select
   local.tee $1
   local.get $7
   local.get $2
   call $~lib/util/sort/insertionSort<f32>
  end
  loop $while-continue|2
   local.get $1
   local.get $15
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    local.tee $5
    local.get $15
    local.get $2
    call $~lib/util/sort/extendRunRight<f32>
    local.tee $7
    local.get $5
    i32.sub
    i32.const 1
    i32.add
    local.tee $4
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $5
     local.get $15
     local.get $5
     i32.const 31
     i32.add
     local.tee $7
     local.get $7
     local.get $15
     i32.gt_s
     select
     local.tee $7
     local.get $4
     local.get $2
     call $~lib/util/sort/insertionSort<f32>
    end
    local.get $3
    local.get $5
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $15
    i32.const 1
    i32.add
    i64.extend_i32_u
    local.tee $9
    i64.div_u
    local.get $5
    local.get $7
    i32.add
    i32.const 1
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $9
    i64.div_u
    i64.xor
    i32.wrap_i64
    i32.clz
    local.set $4
    loop $for-loop|3
     local.get $4
     local.get $6
     i32.lt_u
     if
      local.get $13
      local.get $6
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $8
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $8
       local.get $11
       local.get $6
       i32.const 2
       i32.shl
       local.tee $3
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $1
       local.get $10
       local.get $2
       call $~lib/util/sort/mergeRuns<f32>
       local.get $3
       local.get $13
       i32.add
       i32.const -1
       i32.store
       local.get $8
       local.set $3
      end
      local.get $6
      i32.const 1
      i32.sub
      local.set $6
      br $for-loop|3
     end
    end
    local.get $13
    local.get $4
    i32.const 2
    i32.shl
    local.tee $6
    i32.add
    local.get $3
    i32.store
    local.get $6
    local.get $11
    i32.add
    local.get $1
    i32.store
    local.get $5
    local.set $3
    local.get $7
    local.set $1
    local.get $4
    local.set $6
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $6
   if
    local.get $13
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $11
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $15
     local.get $10
     local.get $2
     call $~lib/util/sort/mergeRuns<f32>
    end
    local.get $6
    i32.const 1
    i32.sub
    local.set $6
    br $for-loop|4
   end
  end
  local.get $10
  call $~lib/rt/tlsf/__free
  local.get $13
  call $~lib/rt/tlsf/__free
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
 (func $~lib/util/sort/insertionSort<f64> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $8
  i32.const 1
  i32.and
  local.get $3
  local.get $8
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $3
  i32.eqz
  select
  i32.add
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $8
   i32.ge_s
   if
    local.get $0
    local.get $8
    i32.const 3
    i32.shl
    i32.add
    local.tee $3
    f64.load
    local.set $5
    local.get $3
    f64.load offset=8
    local.tee $7
    local.set $6
    i32.const 2
    global.set $~argumentsLength
    local.get $5
    local.get $7
    local.get $4
    i32.load
    call_indirect $0 (type $f64_f64_=>_i32)
    i32.const 0
    i32.le_s
    if
     local.get $5
     local.set $6
     local.get $7
     local.set $5
    end
    local.get $8
    i32.const 1
    i32.sub
    local.set $3
    loop $while-continue|1
     local.get $1
     local.get $3
     i32.le_s
     if
      block $while-break|1
       local.get $0
       local.get $3
       i32.const 3
       i32.shl
       i32.add
       f64.load
       local.set $7
       i32.const 2
       global.set $~argumentsLength
       local.get $7
       local.get $5
       local.get $4
       i32.load
       call_indirect $0 (type $f64_f64_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|1
       local.get $0
       local.get $3
       i32.const 3
       i32.shl
       i32.add
       local.get $7
       f64.store offset=16
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    local.get $5
    f64.store offset=16
    loop $while-continue|2
     local.get $1
     local.get $3
     i32.le_s
     if
      block $while-break|2
       local.get $0
       local.get $3
       i32.const 3
       i32.shl
       i32.add
       f64.load
       local.set $5
       i32.const 2
       global.set $~argumentsLength
       local.get $5
       local.get $6
       local.get $4
       i32.load
       call_indirect $0 (type $f64_f64_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|2
       local.get $0
       local.get $3
       i32.const 3
       i32.shl
       i32.add
       local.get $5
       f64.store offset=8
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       br $while-continue|2
      end
     end
    end
    local.get $0
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    local.get $6
    f64.store offset=8
    local.get $8
    i32.const 2
    i32.add
    local.set $8
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/extendRunRight<f64> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $1
   return
  end
  local.get $0
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 3
  i32.shl
  i32.add
  f64.load
  i32.const 2
  global.set $~argumentsLength
  local.get $3
  i32.load
  call_indirect $0 (type $f64_f64_=>_i32)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 3
     i32.shl
     i32.add
     local.tee $7
     f64.load offset=8
     local.get $7
     f64.load
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $f64_f64_=>_i32)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $4
   local.set $2
   loop $while-continue|1
    local.get $1
    local.get $2
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.tee $3
     f64.load
     local.set $5
     local.get $3
     local.get $0
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     local.tee $3
     f64.load
     f64.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $5
     f64.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
  else
   loop $while-continue|2
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 3
     i32.shl
     i32.add
     local.tee $1
     f64.load offset=8
     local.get $1
     f64.load
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $f64_f64_=>_i32)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
  end
  local.get $4
 )
 (func $~lib/util/sort/mergeRuns<f64> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $6
  i32.add
  local.set $7
  local.get $6
  i32.const 1
  i32.add
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 3
    i32.shl
    local.tee $8
    i32.add
    local.get $0
    local.get $8
    i32.add
    f64.load
    f64.store
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $3
   local.get $6
   i32.gt_s
   if
    local.get $4
    local.get $7
    local.get $6
    i32.sub
    i32.const 3
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.const 3
    i32.shl
    i32.add
    f64.load offset=8
    f64.store
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $4
    local.get $6
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $9
    local.get $4
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $10
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.tee $8
    local.get $9
    local.get $10
    local.get $9
    local.get $10
    local.get $5
    i32.load
    call_indirect $0 (type $f64_f64_=>_i32)
    i32.const 31
    i32.shr_u
    local.tee $7
    select
    f64.store
    local.get $8
    local.get $10
    local.get $9
    local.get $7
    select
    f64.store
    local.get $6
    local.get $7
    i32.sub
    local.set $6
    local.get $2
    local.get $7
    i32.const 1
    i32.xor
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
 )
 (func $~lib/util/sort/SORT<f64> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 i32)
  (local $14 f64)
  (local $15 i32)
  (local $16 f64)
  local.get $1
  i32.const 128
  i32.le_s
  if
   local.get $1
   i32.const 1
   i32.le_s
   if
    return
   end
   block $break|0
    block $case1|0
     local.get $1
     i32.const 3
     i32.ne
     if
      local.get $1
      i32.const 2
      i32.eq
      br_if $case1|0
      br $break|0
     end
     local.get $0
     f64.load offset=8
     local.set $16
     local.get $0
     f64.load offset=16
     local.set $14
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $16
     local.get $14
     local.get $16
     local.get $14
     local.get $2
     i32.load
     call_indirect $0 (type $f64_f64_=>_i32)
     i32.const 31
     i32.shr_u
     local.tee $1
     select
     f64.store offset=8
     local.get $0
     f64.load
     local.set $12
     i32.const 2
     global.set $~argumentsLength
     local.get $12
     local.get $14
     local.get $16
     local.get $1
     select
     local.tee $16
     local.get $2
     i32.load
     call_indirect $0 (type $f64_f64_=>_i32)
     i32.const 31
     i32.shr_u
     local.set $1
     local.get $0
     local.get $12
     local.get $16
     local.get $1
     select
     f64.store
     local.get $0
     local.get $16
     local.get $12
     local.get $1
     select
     f64.store offset=16
    end
    local.get $0
    f64.load
    local.set $16
    local.get $0
    f64.load offset=8
    local.set $14
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $16
    local.get $14
    local.get $16
    local.get $14
    local.get $2
    i32.load
    call_indirect $0 (type $f64_f64_=>_i32)
    i32.const 31
    i32.shr_u
    local.tee $1
    select
    f64.store
    local.get $0
    local.get $14
    local.get $16
    local.get $1
    select
    f64.store offset=8
    return
   end
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   i32.const 0
   local.get $2
   call $~lib/util/sort/insertionSort<f64>
   return
  end
  i32.const 33
  local.get $1
  i32.clz
  i32.sub
  local.tee $5
  i32.const 2
  i32.shl
  local.tee $7
  i32.const 1
  i32.shl
  local.set $4
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $4
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $13
  local.get $7
  i32.add
  local.set $11
  i32.const 0
  local.set $7
  loop $for-loop|1
   local.get $5
   local.get $7
   i32.gt_u
   if
    local.get $13
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.const -1
    i32.store
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|1
   end
  end
  local.get $1
  i32.const 3
  i32.shl
  local.set $7
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $7
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.set $10
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  i32.sub
  local.tee $15
  local.get $2
  call $~lib/util/sort/extendRunRight<f64>
  local.tee $1
  i32.const 1
  i32.add
  local.tee $7
  i32.const 32
  i32.lt_s
  if
   local.get $0
   i32.const 0
   local.get $15
   i32.const 31
   local.get $15
   i32.const 31
   i32.lt_s
   select
   local.tee $1
   local.get $7
   local.get $2
   call $~lib/util/sort/insertionSort<f64>
  end
  loop $while-continue|2
   local.get $1
   local.get $15
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    local.tee $5
    local.get $15
    local.get $2
    call $~lib/util/sort/extendRunRight<f64>
    local.tee $7
    local.get $5
    i32.sub
    i32.const 1
    i32.add
    local.tee $4
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $5
     local.get $15
     local.get $5
     i32.const 31
     i32.add
     local.tee $7
     local.get $7
     local.get $15
     i32.gt_s
     select
     local.tee $7
     local.get $4
     local.get $2
     call $~lib/util/sort/insertionSort<f64>
    end
    local.get $3
    local.get $5
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $15
    i32.const 1
    i32.add
    i64.extend_i32_u
    local.tee $9
    i64.div_u
    local.get $5
    local.get $7
    i32.add
    i32.const 1
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $9
    i64.div_u
    i64.xor
    i32.wrap_i64
    i32.clz
    local.set $4
    loop $for-loop|3
     local.get $4
     local.get $6
     i32.lt_u
     if
      local.get $13
      local.get $6
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $8
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $8
       local.get $11
       local.get $6
       i32.const 2
       i32.shl
       local.tee $3
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $1
       local.get $10
       local.get $2
       call $~lib/util/sort/mergeRuns<f64>
       local.get $3
       local.get $13
       i32.add
       i32.const -1
       i32.store
       local.get $8
       local.set $3
      end
      local.get $6
      i32.const 1
      i32.sub
      local.set $6
      br $for-loop|3
     end
    end
    local.get $13
    local.get $4
    i32.const 2
    i32.shl
    local.tee $6
    i32.add
    local.get $3
    i32.store
    local.get $6
    local.get $11
    i32.add
    local.get $1
    i32.store
    local.get $5
    local.set $3
    local.get $7
    local.set $1
    local.get $4
    local.set $6
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $6
   if
    local.get $13
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $11
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $15
     local.get $10
     local.get $2
     call $~lib/util/sort/mergeRuns<f64>
    end
    local.get $6
    i32.const 1
    i32.sub
    local.set $6
    br $for-loop|4
   end
  end
  local.get $10
  call $~lib/rt/tlsf/__free
  local.get $13
  call $~lib/rt/tlsf/__free
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
   i32.const 1344
   i32.const 1104
   i32.const 99
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
 (func $~lib/util/sort/insertionSort<i32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $5
  i32.const 1
  i32.and
  local.get $3
  local.get $5
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $3
  i32.eqz
  select
  i32.add
  local.set $7
  loop $for-loop|0
   local.get $2
   local.get $7
   i32.ge_s
   if
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.tee $5
    i32.load
    local.set $3
    local.get $5
    i32.load offset=4
    local.tee $6
    local.set $5
    i32.const 2
    global.set $~argumentsLength
    local.get $3
    local.get $6
    local.get $4
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.le_s
    if
     local.get $3
     local.set $5
     local.get $6
     local.set $3
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $6
    loop $while-continue|1
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|1
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.set $8
       i32.const 2
       global.set $~argumentsLength
       local.get $8
       local.get $3
       local.get $4
       i32.load
       call_indirect $0 (type $i32_i32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|1
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.store offset=8
       local.get $6
       i32.const 1
       i32.sub
       local.set $6
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    i32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|2
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.set $3
       i32.const 2
       global.set $~argumentsLength
       local.get $3
       local.get $5
       local.get $4
       i32.load
       call_indirect $0 (type $i32_i32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|2
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       local.get $3
       i32.store offset=4
       local.get $6
       i32.const 1
       i32.sub
       local.set $6
       br $while-continue|2
      end
     end
    end
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    i32.store offset=4
    local.get $7
    i32.const 2
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/extendRunRight<i32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $1
   return
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  i32.const 2
  global.set $~argumentsLength
  local.get $3
  i32.load
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.tee $5
     i32.load offset=4
     local.get $5
     i32.load
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $4
   local.set $2
   loop $while-continue|1
    local.get $1
    local.get $2
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.tee $3
     i32.load
     local.set $5
     local.get $3
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.tee $3
     i32.load
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $5
     i32.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
  else
   loop $while-continue|2
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.tee $1
     i32.load offset=4
     local.get $1
     i32.load
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
  end
  local.get $4
 )
 (func $~lib/util/sort/mergeRuns<i32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $6
  i32.add
  local.set $7
  local.get $6
  i32.const 1
  i32.add
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 2
    i32.shl
    local.tee $8
    i32.add
    local.get $0
    local.get $8
    i32.add
    i32.load
    i32.store
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $3
   local.get $6
   i32.gt_s
   if
    local.get $4
    local.get $7
    local.get $6
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.store
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $4
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $9
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $10
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    local.tee $8
    local.get $9
    local.get $10
    local.get $9
    local.get $10
    local.get $5
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 31
    i32.shr_u
    local.tee $7
    select
    i32.store
    local.get $8
    local.get $10
    local.get $9
    local.get $7
    select
    i32.store
    local.get $6
    local.get $7
    i32.sub
    local.set $6
    local.get $2
    local.get $7
    i32.const 1
    i32.xor
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
 )
 (func $~lib/util/sort/SORT<i32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  local.get $1
  i32.const 128
  i32.le_s
  if
   local.get $1
   i32.const 1
   i32.le_s
   if
    return
   end
   block $break|0
    block $case1|0
     local.get $1
     i32.const 3
     i32.ne
     if
      local.get $1
      i32.const 2
      i32.eq
      br_if $case1|0
      br $break|0
     end
     local.get $0
     i32.load offset=4
     local.set $1
     local.get $0
     i32.load offset=8
     local.set $4
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $1
     local.get $4
     local.get $1
     local.get $4
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
     local.tee $5
     select
     i32.store offset=4
     local.get $0
     i32.load
     local.set $3
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     local.get $4
     local.get $1
     local.get $5
     select
     local.tee $1
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
     local.set $4
     local.get $0
     local.get $3
     local.get $1
     local.get $4
     select
     i32.store
     local.get $0
     local.get $1
     local.get $3
     local.get $4
     select
     i32.store offset=8
    end
    local.get $0
    i32.load
    local.set $1
    local.get $0
    i32.load offset=4
    local.set $4
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $1
    local.get $4
    local.get $1
    local.get $4
    local.get $2
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 31
    i32.shr_u
    local.tee $2
    select
    i32.store
    local.get $0
    local.get $4
    local.get $1
    local.get $2
    select
    i32.store offset=4
    return
   end
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   i32.const 0
   local.get $2
   call $~lib/util/sort/insertionSort<i32>
   return
  end
  i32.const 33
  local.get $1
  i32.clz
  i32.sub
  local.tee $6
  i32.const 2
  i32.shl
  local.tee $5
  i32.const 1
  i32.shl
  local.set $7
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $7
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $9
  local.get $5
  i32.add
  local.set $10
  i32.const 0
  local.set $5
  loop $for-loop|1
   local.get $5
   local.get $6
   i32.lt_u
   if
    local.get $9
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.const -1
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $5
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $5
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.set $11
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  i32.sub
  local.tee $8
  local.get $2
  call $~lib/util/sort/extendRunRight<i32>
  local.tee $1
  i32.const 1
  i32.add
  local.tee $5
  i32.const 32
  i32.lt_s
  if
   local.get $0
   i32.const 0
   local.get $8
   i32.const 31
   local.get $8
   i32.const 31
   i32.lt_s
   select
   local.tee $1
   local.get $5
   local.get $2
   call $~lib/util/sort/insertionSort<i32>
  end
  loop $while-continue|2
   local.get $1
   local.get $8
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    local.tee $6
    local.get $8
    local.get $2
    call $~lib/util/sort/extendRunRight<i32>
    local.tee $5
    local.get $6
    i32.sub
    i32.const 1
    i32.add
    local.tee $7
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $6
     local.get $8
     local.get $6
     i32.const 31
     i32.add
     local.tee $5
     local.get $5
     local.get $8
     i32.gt_s
     select
     local.tee $5
     local.get $7
     local.get $2
     call $~lib/util/sort/insertionSort<i32>
    end
    local.get $3
    local.get $6
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $8
    i32.const 1
    i32.add
    i64.extend_i32_u
    local.tee $12
    i64.div_u
    local.get $5
    local.get $6
    i32.add
    i32.const 1
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $12
    i64.div_u
    i64.xor
    i32.wrap_i64
    i32.clz
    local.set $7
    loop $for-loop|3
     local.get $4
     local.get $7
     i32.gt_u
     if
      local.get $9
      local.get $4
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $13
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $13
       local.get $10
       local.get $4
       i32.const 2
       i32.shl
       local.tee $3
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $1
       local.get $11
       local.get $2
       call $~lib/util/sort/mergeRuns<i32>
       local.get $3
       local.get $9
       i32.add
       i32.const -1
       i32.store
       local.get $13
       local.set $3
      end
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $for-loop|3
     end
    end
    local.get $9
    local.get $7
    i32.const 2
    i32.shl
    local.tee $4
    i32.add
    local.get $3
    i32.store
    local.get $4
    local.get $10
    i32.add
    local.get $1
    i32.store
    local.get $6
    local.set $3
    local.get $5
    local.set $1
    local.get $7
    local.set $4
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $4
   if
    local.get $9
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $10
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $8
     local.get $11
     local.get $2
     call $~lib/util/sort/mergeRuns<i32>
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|4
   end
  end
  local.get $11
  call $~lib/rt/tlsf/__free
  local.get $9
  call $~lib/rt/tlsf/__free
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/util/sort/insertionSort<u32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $5
  i32.const 1
  i32.and
  local.get $3
  local.get $5
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $3
  i32.eqz
  select
  i32.add
  local.set $7
  loop $for-loop|0
   local.get $2
   local.get $7
   i32.ge_s
   if
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.tee $5
    i32.load
    local.set $3
    local.get $5
    i32.load offset=4
    local.tee $6
    local.set $5
    i32.const 2
    global.set $~argumentsLength
    local.get $3
    local.get $6
    local.get $4
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.le_s
    if
     local.get $3
     local.set $5
     local.get $6
     local.set $3
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $6
    loop $while-continue|1
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|1
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.set $8
       i32.const 2
       global.set $~argumentsLength
       local.get $8
       local.get $3
       local.get $4
       i32.load
       call_indirect $0 (type $i32_i32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|1
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.store offset=8
       local.get $6
       i32.const 1
       i32.sub
       local.set $6
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    i32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|2
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.set $3
       i32.const 2
       global.set $~argumentsLength
       local.get $3
       local.get $5
       local.get $4
       i32.load
       call_indirect $0 (type $i32_i32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|2
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       local.get $3
       i32.store offset=4
       local.get $6
       i32.const 1
       i32.sub
       local.set $6
       br $while-continue|2
      end
     end
    end
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    i32.store offset=4
    local.get $7
    i32.const 2
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/extendRunRight<u32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $1
   return
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  i32.const 2
  global.set $~argumentsLength
  local.get $3
  i32.load
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.tee $5
     i32.load offset=4
     local.get $5
     i32.load
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $4
   local.set $2
   loop $while-continue|1
    local.get $1
    local.get $2
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.tee $3
     i32.load
     local.set $5
     local.get $3
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.tee $3
     i32.load
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $5
     i32.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
  else
   loop $while-continue|2
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.tee $1
     i32.load offset=4
     local.get $1
     i32.load
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
  end
  local.get $4
 )
 (func $~lib/util/sort/mergeRuns<u32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $6
  i32.add
  local.set $7
  local.get $6
  i32.const 1
  i32.add
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 2
    i32.shl
    local.tee $8
    i32.add
    local.get $0
    local.get $8
    i32.add
    i32.load
    i32.store
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $3
   local.get $6
   i32.gt_s
   if
    local.get $4
    local.get $7
    local.get $6
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.store
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $4
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $9
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $10
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    local.tee $8
    local.get $9
    local.get $10
    local.get $9
    local.get $10
    local.get $5
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 31
    i32.shr_u
    local.tee $7
    select
    i32.store
    local.get $8
    local.get $10
    local.get $9
    local.get $7
    select
    i32.store
    local.get $6
    local.get $7
    i32.sub
    local.set $6
    local.get $2
    local.get $7
    i32.const 1
    i32.xor
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
 )
 (func $~lib/util/sort/SORT<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  local.get $1
  i32.const 128
  i32.le_s
  if
   local.get $1
   i32.const 1
   i32.le_s
   if
    return
   end
   block $break|0
    block $case1|0
     local.get $1
     i32.const 3
     i32.ne
     if
      local.get $1
      i32.const 2
      i32.eq
      br_if $case1|0
      br $break|0
     end
     local.get $0
     i32.load offset=4
     local.set $1
     local.get $0
     i32.load offset=8
     local.set $4
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $1
     local.get $4
     local.get $1
     local.get $4
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
     local.tee $5
     select
     i32.store offset=4
     local.get $0
     i32.load
     local.set $3
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     local.get $4
     local.get $1
     local.get $5
     select
     local.tee $1
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
     local.set $4
     local.get $0
     local.get $3
     local.get $1
     local.get $4
     select
     i32.store
     local.get $0
     local.get $1
     local.get $3
     local.get $4
     select
     i32.store offset=8
    end
    local.get $0
    i32.load
    local.set $1
    local.get $0
    i32.load offset=4
    local.set $4
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $1
    local.get $4
    local.get $1
    local.get $4
    local.get $2
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 31
    i32.shr_u
    local.tee $2
    select
    i32.store
    local.get $0
    local.get $4
    local.get $1
    local.get $2
    select
    i32.store offset=4
    return
   end
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   i32.const 0
   local.get $2
   call $~lib/util/sort/insertionSort<u32>
   return
  end
  i32.const 33
  local.get $1
  i32.clz
  i32.sub
  local.tee $6
  i32.const 2
  i32.shl
  local.tee $5
  i32.const 1
  i32.shl
  local.set $7
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $7
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $9
  local.get $5
  i32.add
  local.set $10
  i32.const 0
  local.set $5
  loop $for-loop|1
   local.get $5
   local.get $6
   i32.lt_u
   if
    local.get $9
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.const -1
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $5
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $5
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.set $11
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  i32.sub
  local.tee $8
  local.get $2
  call $~lib/util/sort/extendRunRight<u32>
  local.tee $1
  i32.const 1
  i32.add
  local.tee $5
  i32.const 32
  i32.lt_s
  if
   local.get $0
   i32.const 0
   local.get $8
   i32.const 31
   local.get $8
   i32.const 31
   i32.lt_s
   select
   local.tee $1
   local.get $5
   local.get $2
   call $~lib/util/sort/insertionSort<u32>
  end
  loop $while-continue|2
   local.get $1
   local.get $8
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    local.tee $6
    local.get $8
    local.get $2
    call $~lib/util/sort/extendRunRight<u32>
    local.tee $5
    local.get $6
    i32.sub
    i32.const 1
    i32.add
    local.tee $7
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $6
     local.get $8
     local.get $6
     i32.const 31
     i32.add
     local.tee $5
     local.get $5
     local.get $8
     i32.gt_s
     select
     local.tee $5
     local.get $7
     local.get $2
     call $~lib/util/sort/insertionSort<u32>
    end
    local.get $3
    local.get $6
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $8
    i32.const 1
    i32.add
    i64.extend_i32_u
    local.tee $12
    i64.div_u
    local.get $5
    local.get $6
    i32.add
    i32.const 1
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $12
    i64.div_u
    i64.xor
    i32.wrap_i64
    i32.clz
    local.set $7
    loop $for-loop|3
     local.get $4
     local.get $7
     i32.gt_u
     if
      local.get $9
      local.get $4
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $13
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $13
       local.get $10
       local.get $4
       i32.const 2
       i32.shl
       local.tee $3
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $1
       local.get $11
       local.get $2
       call $~lib/util/sort/mergeRuns<u32>
       local.get $3
       local.get $9
       i32.add
       i32.const -1
       i32.store
       local.get $13
       local.set $3
      end
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $for-loop|3
     end
    end
    local.get $9
    local.get $7
    i32.const 2
    i32.shl
    local.tee $4
    i32.add
    local.get $3
    i32.store
    local.get $4
    local.get $10
    i32.add
    local.get $1
    i32.store
    local.get $6
    local.set $3
    local.get $5
    local.set $1
    local.get $7
    local.set $4
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $4
   if
    local.get $9
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $10
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $8
     local.get $11
     local.get $2
     call $~lib/util/sort/mergeRuns<u32>
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|4
   end
  end
  local.get $11
  call $~lib/rt/tlsf/__free
  local.get $9
  call $~lib/rt/tlsf/__free
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
 (func $start:std/array~anonymous|44 (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 1344
    i32.const 1104
    i32.const 115
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
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<std/array/Ref>#__uset
 )
 (func $start:std/array~anonymous|47 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.sub
 )
 (func $~lib/util/sort/insertionSort<~lib/array/Array<i32>> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $6
  i32.const 1
  i32.and
  local.get $3
  local.get $6
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $3
  i32.eqz
  select
  i32.add
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $8
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $6
    local.get $0
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    local.tee $5
    i32.load
    local.tee $3
    i32.store
    local.get $6
    local.get $5
    i32.load offset=4
    local.tee $6
    i32.store offset=4
    i32.const 2
    global.set $~argumentsLength
    local.get $6
    local.set $5
    local.get $3
    local.get $6
    local.get $4
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.le_s
    if
     local.get $3
     local.set $5
     local.get $6
     local.set $3
    end
    local.get $8
    i32.const 1
    i32.sub
    local.set $6
    loop $while-continue|1
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|1
       global.get $~lib/memory/__stack_pointer
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.tee $7
       i32.store
       i32.const 2
       global.set $~argumentsLength
       local.get $7
       local.get $3
       local.get $4
       i32.load
       call_indirect $0 (type $i32_i32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|1
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       local.get $7
       i32.store offset=8
       local.get $6
       i32.const 1
       i32.sub
       local.set $6
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    i32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|2
       global.get $~lib/memory/__stack_pointer
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.tee $3
       i32.store
       i32.const 2
       global.set $~argumentsLength
       local.get $3
       local.get $5
       local.get $4
       i32.load
       call_indirect $0 (type $i32_i32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|2
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       local.get $3
       i32.store offset=4
       local.get $6
       i32.const 1
       i32.sub
       local.set $6
       br $while-continue|2
      end
     end
    end
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    i32.store offset=4
    local.get $8
    i32.const 2
    i32.add
    local.set $8
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/sort/mergeRuns<~lib/array/Array<i32>> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $6
  i32.add
  local.set $8
  local.get $6
  i32.const 1
  i32.add
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 2
    i32.shl
    local.tee $7
    i32.add
    local.get $0
    local.get $7
    i32.add
    i32.load
    i32.store
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $3
   local.get $6
   i32.gt_s
   if
    local.get $4
    local.get $8
    local.get $6
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.store
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $7
    local.get $4
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    i32.store
    local.get $7
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $7
    i32.store offset=4
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    local.tee $10
    local.get $8
    local.get $7
    local.get $8
    local.get $7
    local.get $5
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 31
    i32.shr_u
    local.tee $9
    select
    i32.store
    local.get $10
    local.get $7
    local.get $8
    local.get $9
    select
    i32.store
    local.get $6
    local.get $9
    i32.sub
    local.set $6
    local.get $2
    local.get $9
    i32.eqz
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/sort/SORT<~lib/array/Array<i32>> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i64.const 0
  i64.store
  local.get $5
  i32.const 0
  i32.store offset=8
  block $folding-inner0
   local.get $1
   i32.const 128
   i32.le_s
   if
    local.get $1
    i32.const 1
    i32.le_s
    br_if $folding-inner0
    block $break|0
     block $case1|0
      local.get $1
      i32.const 3
      i32.ne
      if
       local.get $1
       i32.const 2
       i32.eq
       br_if $case1|0
       br $break|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      local.get $0
      i32.load offset=4
      local.tee $1
      i32.store
      local.get $4
      local.get $0
      i32.load offset=8
      local.tee $4
      i32.store offset=4
      i32.const 2
      global.set $~argumentsLength
      local.get $0
      local.get $1
      local.get $4
      local.get $1
      local.get $4
      local.get $2
      i32.load
      call_indirect $0 (type $i32_i32_=>_i32)
      i32.const 31
      i32.shr_u
      local.tee $3
      select
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $4
      local.get $1
      local.get $3
      select
      local.tee $1
      i32.store offset=4
      local.get $5
      local.get $0
      i32.load
      local.tee $4
      i32.store
      i32.const 2
      global.set $~argumentsLength
      local.get $0
      local.get $4
      local.get $1
      local.get $4
      local.get $1
      local.get $2
      i32.load
      call_indirect $0 (type $i32_i32_=>_i32)
      i32.const 31
      i32.shr_u
      local.tee $3
      select
      i32.store
      local.get $0
      local.get $1
      local.get $4
      local.get $3
      select
      i32.store offset=8
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $0
     i32.load
     local.tee $1
     i32.store offset=8
     local.get $4
     local.get $0
     i32.load offset=4
     local.tee $4
     i32.store offset=4
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $1
     local.get $4
     local.get $1
     local.get $4
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
     local.tee $2
     select
     i32.store
     local.get $0
     local.get $4
     local.get $1
     local.get $2
     select
     i32.store offset=4
     br $folding-inner0
    end
    local.get $0
    i32.const 0
    local.get $1
    i32.const 1
    i32.sub
    i32.const 0
    local.get $2
    call $~lib/util/sort/insertionSort<~lib/array/Array<i32>>
    br $folding-inner0
   end
   i32.const 33
   local.get $1
   i32.clz
   i32.sub
   local.tee $6
   i32.const 2
   i32.shl
   local.tee $5
   i32.const 1
   i32.shl
   local.set $7
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $7
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.tee $9
   local.get $5
   i32.add
   local.set $10
   i32.const 0
   local.set $5
   loop $for-loop|1
    local.get $5
    local.get $6
    i32.lt_u
    if
     local.get $9
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.const -1
     i32.store
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|1
    end
   end
   local.get $1
   i32.const 2
   i32.shl
   local.set $5
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $5
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.set $11
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   local.tee $8
   local.get $2
   call $~lib/util/sort/extendRunRight<~lib/array/Array<i32>>
   local.tee $1
   i32.const 1
   i32.add
   local.tee $5
   i32.const 32
   i32.lt_s
   if
    local.get $0
    i32.const 0
    local.get $8
    i32.const 31
    local.get $8
    i32.const 31
    i32.lt_s
    select
    local.tee $1
    local.get $5
    local.get $2
    call $~lib/util/sort/insertionSort<~lib/array/Array<i32>>
   end
   loop $while-continue|2
    local.get $1
    local.get $8
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     local.tee $6
     local.get $8
     local.get $2
     call $~lib/util/sort/extendRunRight<~lib/array/Array<i32>>
     local.tee $5
     local.get $6
     i32.sub
     i32.const 1
     i32.add
     local.tee $7
     i32.const 32
     i32.lt_s
     if
      local.get $0
      local.get $6
      local.get $8
      local.get $6
      i32.const 31
      i32.add
      local.tee $5
      local.get $5
      local.get $8
      i32.gt_s
      select
      local.tee $5
      local.get $7
      local.get $2
      call $~lib/util/sort/insertionSort<~lib/array/Array<i32>>
     end
     local.get $3
     local.get $6
     i32.add
     i64.extend_i32_u
     i64.const 30
     i64.shl
     local.get $8
     i32.const 1
     i32.add
     i64.extend_i32_u
     local.tee $12
     i64.div_u
     local.get $5
     local.get $6
     i32.add
     i32.const 1
     i32.add
     i64.extend_i32_u
     i64.const 30
     i64.shl
     local.get $12
     i64.div_u
     i64.xor
     i32.wrap_i64
     i32.clz
     local.set $7
     loop $for-loop|3
      local.get $4
      local.get $7
      i32.gt_u
      if
       local.get $9
       local.get $4
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.tee $13
       i32.const -1
       i32.ne
       if
        local.get $0
        local.get $13
        local.get $10
        local.get $4
        i32.const 2
        i32.shl
        local.tee $3
        i32.add
        i32.load
        i32.const 1
        i32.add
        local.get $1
        local.get $11
        local.get $2
        call $~lib/util/sort/mergeRuns<~lib/array/Array<i32>>
        local.get $3
        local.get $9
        i32.add
        i32.const -1
        i32.store
        local.get $13
        local.set $3
       end
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       br $for-loop|3
      end
     end
     local.get $9
     local.get $7
     i32.const 2
     i32.shl
     local.tee $4
     i32.add
     local.get $3
     i32.store
     local.get $4
     local.get $10
     i32.add
     local.get $1
     i32.store
     local.get $6
     local.set $3
     local.get $5
     local.set $1
     local.get $7
     local.set $4
     br $while-continue|2
    end
   end
   loop $for-loop|4
    local.get $4
    if
     local.get $9
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $1
     i32.const -1
     i32.ne
     if
      local.get $0
      local.get $1
      local.get $10
      local.get $4
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 1
      i32.add
      local.get $8
      local.get $11
      local.get $2
      call $~lib/util/sort/mergeRuns<~lib/array/Array<i32>>
     end
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     br $for-loop|4
    end
   end
   local.get $11
   call $~lib/rt/tlsf/__free
   local.get $9
   call $~lib/rt/tlsf/__free
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:std/array~anonymous|48 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
 )
 (func $~lib/util/sort/COMPARATOR<~lib/string/String|null>~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 0
  i32.const 0
  local.get $0
  local.get $0
  local.get $1
  i32.eq
  select
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
  local.tee $6
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $5
  i32.or
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $6
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $5
  i32.eqz
  if
   i32.const 1
   return
  end
  block $__inlined_func$~lib/util/string/compareImpl (result i32)
   local.get $0
   i32.const 7
   i32.and
   local.get $1
   i32.const 7
   i32.and
   i32.or
   i32.const 1
   local.get $6
   local.get $5
   local.get $5
   local.get $6
   i32.gt_s
   select
   local.tee $3
   i32.const 4
   i32.ge_u
   select
   i32.eqz
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
    local.tee $2
    i32.const 1
    i32.sub
    local.set $3
    local.get $2
    if
     local.get $0
     i32.load16_u
     local.tee $2
     local.get $1
     i32.load16_u
     local.tee $4
     i32.ne
     if
      local.get $2
      local.get $4
      i32.sub
      br $__inlined_func$~lib/util/string/compareImpl
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
  end
  local.tee $0
  local.get $6
  local.get $5
  i32.sub
  local.get $0
  select
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  local.tee $2
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
  block $__inlined_func$~lib/util/string/compareImpl (result i32)
   local.get $0
   local.tee $3
   i32.const 7
   i32.and
   local.get $1
   i32.const 7
   i32.and
   i32.or
   i32.const 1
   local.get $2
   local.tee $0
   i32.const 4
   i32.ge_u
   select
   i32.eqz
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
    local.tee $2
    i32.const 1
    i32.sub
    local.set $0
    local.get $2
    if
     local.get $3
     i32.load16_u
     local.tee $2
     local.get $1
     i32.load16_u
     local.tee $4
     i32.ne
     if
      local.get $2
      local.get $4
      i32.sub
      br $__inlined_func$~lib/util/string/compareImpl
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
   i32.const 0
  end
  i32.eqz
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/string/String#concat
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $4
   i32.add
   local.tee $2
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 8816
    local.set $2
    br $__inlined_func$~lib/string/String#concat
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.get $0
   local.get $3
   call $~lib/memory/memory.copy
   local.get $2
   local.get $3
   i32.add
   local.get $1
   local.get $4
   call $~lib/memory/memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $2
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
    i32.const 9420
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 9420
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
   i32.const 9420
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
   i32.const 9420
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
  local.tee $0
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.get $2
  i32.add
  local.tee $0
  call $~lib/util/number/utoa32_dec_lut
  local.get $0
 )
 (func $~lib/array/Array<i32>#join (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/string/joinIntegerArray<i32>
   local.get $0
   i32.const 1
   i32.sub
   local.tee $3
   i32.const 0
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 8816
    local.set $0
    br $__inlined_func$~lib/util/string/joinIntegerArray<i32>
   end
   local.get $3
   i32.eqz
   if
    local.get $4
    i32.load
    call $~lib/util/number/itoa32
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$~lib/util/string/joinIntegerArray<i32>
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
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
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   loop $for-loop|0
    local.get $3
    local.get $6
    i32.gt_s
    if
     local.get $0
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.get $4
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
      local.get $0
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      local.get $1
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
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $4
   local.get $3
   i32.const 2
   i32.shl
   i32.add
   i32.load
   call $~lib/util/number/itoa_buffered<i32>
   local.get $2
   i32.add
   local.tee $1
   i32.gt_s
   if
    local.get $0
    local.get $1
    call $~lib/string/String#substring
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$~lib/util/string/joinIntegerArray<i32>
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
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
  local.tee $0
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $0
  call $~lib/util/number/utoa32_dec_lut
  local.get $0
 )
 (func $~lib/array/Array<u32>#join (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/string/joinIntegerArray<u32>
   local.get $0
   i32.const 1
   i32.sub
   local.tee $3
   i32.const 0
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 8816
    local.set $0
    br $__inlined_func$~lib/util/string/joinIntegerArray<u32>
   end
   local.get $3
   i32.eqz
   if
    local.get $4
    i32.load
    call $~lib/util/number/utoa32
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$~lib/util/string/joinIntegerArray<u32>
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
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
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   loop $for-loop|0
    local.get $3
    local.get $6
    i32.gt_s
    if
     local.get $0
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.get $4
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
      local.get $0
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      local.get $1
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
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $4
   local.get $3
   i32.const 2
   i32.shl
   i32.add
   i32.load
   call $~lib/util/number/itoa_buffered<u32>
   local.get $2
   i32.add
   local.tee $1
   i32.gt_s
   if
    local.get $0
    local.get $1
    call $~lib/string/String#substring
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$~lib/util/string/joinIntegerArray<u32>
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
 )
 (func $~lib/util/number/genDigits (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
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
  local.tee $1
  i64.shl
  local.tee $11
  i64.const 1
  i64.sub
  local.tee $12
  i64.and
  local.set $7
  local.get $3
  local.get $1
  i64.shr_u
  i32.wrap_i64
  local.tee $2
  local.set $4
  local.get $2
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $4
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $4
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $4
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $4
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $4
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $4
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $4
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $4
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.set $8
  loop $while-continue|0
   local.get $8
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
               block $case0|1
                local.get $8
                i32.const 1
                i32.sub
                br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $case1|1 $case0|1 $case10|1
               end
               local.get $2
               i32.const 1000000000
               i32.div_u
               local.set $4
               local.get $2
               i32.const 1000000000
               i32.rem_u
               local.set $2
               br $break|1
              end
              local.get $2
              i32.const 100000000
              i32.div_u
              local.set $4
              local.get $2
              i32.const 100000000
              i32.rem_u
              local.set $2
              br $break|1
             end
             local.get $2
             i32.const 10000000
             i32.div_u
             local.set $4
             local.get $2
             i32.const 10000000
             i32.rem_u
             local.set $2
             br $break|1
            end
            local.get $2
            i32.const 1000000
            i32.div_u
            local.set $4
            local.get $2
            i32.const 1000000
            i32.rem_u
            local.set $2
            br $break|1
           end
           local.get $2
           i32.const 100000
           i32.div_u
           local.set $4
           local.get $2
           i32.const 100000
           i32.rem_u
           local.set $2
           br $break|1
          end
          local.get $2
          i32.const 10000
          i32.div_u
          local.set $4
          local.get $2
          i32.const 10000
          i32.rem_u
          local.set $2
          br $break|1
         end
         local.get $2
         i32.const 1000
         i32.div_u
         local.set $4
         local.get $2
         i32.const 1000
         i32.rem_u
         local.set $2
         br $break|1
        end
        local.get $2
        i32.const 100
        i32.div_u
        local.set $4
        local.get $2
        i32.const 100
        i32.rem_u
        local.set $2
        br $break|1
       end
       local.get $2
       i32.const 10
       i32.div_u
       local.set $4
       local.get $2
       i32.const 10
       i32.rem_u
       local.set $2
       br $break|1
      end
      local.get $2
      local.set $4
      i32.const 0
      local.set $2
      br $break|1
     end
     i32.const 0
     local.set $4
    end
    local.get $4
    local.get $6
    i32.or
    if
     local.get $0
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     local.get $4
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
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    local.get $7
    local.get $2
    i64.extend_i32_u
    local.get $10
    i64.extend_i32_s
    i64.shl
    i64.add
    local.tee $1
    local.get $5
    i64.le_u
    if
     local.get $8
     global.get $~lib/util/number/_K
     i32.add
     global.set $~lib/util/number/_K
     local.get $8
     i32.const 2
     i32.shl
     i32.const 12416
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
      local.get $3
      local.get $5
      local.get $1
      i64.sub
      i64.le_u
      i32.const 0
      local.get $1
      local.get $9
      i64.lt_u
      select
      if (result i32)
       i32.const 1
       local.get $9
       local.get $1
       i64.sub
       local.get $1
       local.get $3
       i64.add
       local.tee $7
       local.get $9
       i64.sub
       i64.gt_u
       local.get $7
       local.get $9
       i64.lt_u
       select
      else
       i32.const 0
      end
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
  local.set $1
  loop $while-continue|4
   local.get $5
   i64.const 10
   i64.mul
   local.set $5
   local.get $7
   i64.const 10
   i64.mul
   local.tee $3
   local.get $1
   i64.shr_u
   local.tee $7
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
    local.get $7
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
   local.get $8
   i32.const 1
   i32.sub
   local.set $8
   local.get $5
   local.get $3
   local.get $12
   i64.and
   local.tee $7
   i64.le_u
   br_if $while-continue|4
  end
  local.get $8
  global.get $~lib/util/number/_K
  i32.add
  global.set $~lib/util/number/_K
  local.get $7
  local.set $1
  local.get $9
  i32.const 0
  local.get $8
  i32.sub
  i32.const 2
  i32.shl
  i32.const 12416
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
   local.get $11
   local.get $5
   local.get $1
   i64.sub
   i64.le_u
   i32.const 0
   local.get $1
   local.get $3
   i64.lt_u
   select
   if (result i32)
    i32.const 1
    local.get $3
    local.get $1
    i64.sub
    local.get $1
    local.get $11
    i64.add
    local.tee $7
    local.get $3
    i64.sub
    i64.gt_u
    local.get $3
    local.get $7
    i64.gt_u
    select
   else
    i32.const 0
   end
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
 )
 (func $~lib/util/number/prettify (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  local.get $2
  i32.add
  local.tee $4
  i32.const 21
  i32.le_s
  i32.const 0
  local.get $1
  local.get $4
  i32.le_s
  select
  if (result i32)
   loop $for-loop|0
    local.get $1
    local.get $4
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
   local.get $4
   i32.const 1
   i32.shl
   i32.add
   i32.const 3145774
   i32.store
   local.get $4
   i32.const 2
   i32.add
  else
   local.get $4
   i32.const 21
   i32.le_s
   i32.const 0
   local.get $4
   i32.const 0
   i32.gt_s
   select
   if (result i32)
    local.get $0
    local.get $4
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
    local.get $4
    i32.const 0
    i32.le_s
    i32.const 0
    local.get $4
    i32.const -6
    i32.gt_s
    select
    if (result i32)
     local.get $0
     i32.const 2
     local.get $4
     i32.sub
     local.tee $5
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
      local.get $5
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
     local.get $5
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
      local.tee $3
      i32.const 4
      i32.add
      local.get $4
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
      local.tee $1
      i32.const 100000
      i32.lt_u
      if (result i32)
       local.get $1
       i32.const 100
       i32.lt_u
       if (result i32)
        local.get $1
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
       else
        local.get $1
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get $1
        i32.const 1000
        i32.ge_u
        i32.add
       end
      else
       local.get $1
       i32.const 10000000
       i32.lt_u
       if (result i32)
        local.get $1
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
       else
        local.get $1
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get $1
        i32.const 100000000
        i32.ge_u
        i32.add
       end
      end
      local.set $1
      local.get $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa32_dec_lut
      local.get $3
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
      local.tee $3
      i32.const 4
      i32.add
      local.get $4
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $5
      if
       i32.const 0
       local.get $0
       i32.sub
       local.set $0
      end
      local.get $0
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
      local.set $2
      local.get $0
      local.get $2
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa32_dec_lut
      local.get $3
      i32.const 45
      i32.const 43
      local.get $5
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
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  f64.const 0
  f64.lt
  local.tee $10
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
  local.tee $2
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.tee $9
  i32.const 0
  i32.ne
  i64.extend_i32_u
  i64.const 52
  i64.shl
  local.get $2
  i64.const 4503599627370495
  i64.and
  i64.add
  local.tee $3
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.tee $2
  local.get $2
  i64.clz
  i32.wrap_i64
  local.tee $8
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_plus
  local.get $9
  i32.const 1
  local.get $9
  select
  i32.const 1075
  i32.sub
  local.tee $9
  i32.const 1
  i32.sub
  local.get $8
  i32.sub
  local.set $8
  local.get $3
  local.get $3
  i64.const 4503599627370496
  i64.eq
  i32.const 1
  i32.add
  local.tee $5
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $9
  local.get $5
  i32.sub
  local.get $8
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $8
  global.set $~lib/util/number/_exp
  i32.const 348
  i32.const -61
  global.get $~lib/util/number/_exp
  local.tee $8
  i32.sub
  f64.convert_i32_s
  f64.const 0.30102999566398114
  f64.mul
  f64.const 347
  f64.add
  local.tee $1
  i32.trunc_f64_s
  local.tee $5
  local.get $1
  local.get $5
  f64.convert_i32_s
  f64.ne
  i32.add
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.tee $5
  i32.const 3
  i32.shl
  local.tee $11
  i32.sub
  global.set $~lib/util/number/_K
  local.get $11
  i32.const 11544
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  local.get $5
  i32.const 1
  i32.shl
  i32.const 12240
  i32.add
  i32.load16_s
  global.set $~lib/util/number/_exp_pow
  global.get $~lib/util/number/_frc_pow
  local.tee $6
  i64.const 4294967295
  i64.and
  local.set $2
  local.get $6
  i64.const 32
  i64.shr_u
  local.tee $6
  global.get $~lib/util/number/_frc_plus
  local.tee $4
  i64.const 32
  i64.shr_u
  local.tee $7
  i64.mul
  local.get $2
  local.get $7
  i64.mul
  local.get $2
  local.get $4
  i64.const 4294967295
  i64.and
  local.tee $4
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $7
  i64.const 32
  i64.shr_u
  i64.add
  local.get $4
  local.get $6
  i64.mul
  local.get $7
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
  local.set $4
  local.get $0
  local.get $10
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $6
  local.get $3
  local.get $3
  i64.clz
  i32.wrap_i64
  local.tee $0
  i64.extend_i32_s
  i64.shl
  local.tee $3
  i64.const 32
  i64.shr_u
  local.tee $7
  i64.mul
  local.get $2
  local.get $7
  i64.mul
  local.get $2
  local.get $3
  i64.const 4294967295
  i64.and
  local.tee $3
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $7
  i64.const 32
  i64.shr_u
  i64.add
  local.get $3
  local.get $6
  i64.mul
  local.get $7
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  global.get $~lib/util/number/_exp_pow
  local.tee $5
  local.get $9
  local.get $0
  i32.sub
  i32.add
  i32.const -64
  i32.sub
  local.get $4
  local.get $5
  local.get $8
  i32.add
  i32.const -64
  i32.sub
  local.get $4
  local.get $6
  global.get $~lib/util/number/_frc_minus
  local.tee $3
  i64.const 32
  i64.shr_u
  local.tee $4
  i64.mul
  local.get $2
  local.get $4
  i64.mul
  local.get $2
  local.get $3
  i64.const 4294967295
  i64.and
  local.tee $2
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $3
  i64.const 32
  i64.shr_u
  i64.add
  local.get $2
  local.get $6
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
  local.get $10
  call $~lib/util/number/genDigits
  local.get $10
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.get $10
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
 (func $~lib/array/Array<~lib/string/String|null>#join (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=12
  local.set $5
  i32.const 0
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $6
  i64.const 0
  i64.store
  local.get $6
  i32.const 0
  i32.store offset=8
  block $__inlined_func$~lib/util/string/joinStringArray
   local.get $5
   i32.const 1
   i32.sub
   local.tee $6
   i32.const 0
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 8816
    local.set $0
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   local.get $6
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $7
    i32.load
    local.tee $0
    i32.store
    local.get $0
    i32.const 8816
    local.get $0
    select
    local.set $0
    local.get $1
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   loop $for-loop|0
    local.get $3
    local.get $5
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $7
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $4
     i32.store offset=4
     local.get $4
     if
      local.get $0
      local.get $4
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.add
      local.set $0
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.get $6
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $5
   i32.mul
   i32.add
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store offset=8
   i32.const 0
   local.set $3
   loop $for-loop|1
    local.get $3
    local.get $6
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $7
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $4
     i32.store offset=4
     local.get $4
     if
      local.get $0
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      local.get $4
      local.get $4
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.tee $4
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $2
      local.get $4
      i32.add
      local.set $2
     end
     local.get $5
     if
      local.get $0
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      local.get $1
      local.get $5
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $2
      local.get $5
      i32.add
      local.set $2
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $7
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $1
   i32.store offset=4
   local.get $1
   if
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $1
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
 )
 (func $~lib/array/Array<std/array/Ref|null>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  i32.store offset=8
  block $__inlined_func$~lib/util/string/joinReferenceArray<std/array/Ref|null>
   local.get $0
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 0
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 8816
    local.set $0
    br $__inlined_func$~lib/util/string/joinReferenceArray<std/array/Ref|null>
   end
   local.get $2
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    local.get $1
    i32.load
    local.tee $1
    i32.store
    local.get $0
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 12656
    i32.const 8816
    local.get $1
    select
    local.set $0
    br $__inlined_func$~lib/util/string/joinReferenceArray<std/array/Ref|null>
   end
   i32.const 8816
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8816
   i32.store offset=4
   i32.const 9100
   i32.load
   i32.const 1
   i32.shr_u
   local.set $5
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $4
     i32.store
     local.get $4
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      i32.const 12656
      i32.store offset=8
      local.get $4
      local.get $0
      i32.const 12656
      call $~lib/string/String.__concat
      local.tee $0
      i32.store offset=4
     end
     local.get $5
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.const 9104
      call $~lib/string/String.__concat
      local.tee $0
      i32.store offset=4
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $1
   i32.store
   local.get $1
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 12656
    i32.store offset=8
    local.get $1
    local.get $0
    i32.const 12656
    call $~lib/string/String.__concat
    local.tee $0
    i32.store offset=4
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
 )
 (func $~lib/util/number/itoa_buffered<i8> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.extend8_s
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
  i32.extend8_s
  i32.const 10
  i32.lt_u
  if
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.extend8_s
   i32.const 48
   i32.or
   i32.store16
   local.get $2
   i32.const 1
   i32.add
   return
  end
  local.get $1
  i32.extend8_s
  local.tee $3
  local.tee $1
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $1
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $1
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $1
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $1
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.set $1
  local.get $0
  local.get $3
  local.get $1
  local.get $2
  i32.add
  local.tee $0
  call $~lib/util/number/utoa32_dec_lut
  local.get $0
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
  local.tee $1
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $1
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $1
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $1
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $1
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa32_dec_lut
  local.get $1
 )
 (func $~lib/util/number/utoa64_dec_lut (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  loop $while-continue|0
   local.get $1
   i64.const 100000000
   i64.ge_u
   if
    local.get $0
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    i32.add
    local.get $1
    local.get $1
    i64.const 100000000
    i64.div_u
    local.tee $1
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
    i32.const 9420
    i32.add
    i64.load32_u
    local.get $4
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 9420
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    local.get $0
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
    i32.const 9420
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 9420
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $0
  local.get $1
  i32.wrap_i64
  local.get $2
  call $~lib/util/number/utoa32_dec_lut
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
   local.set $2
   local.get $0
   local.get $3
   local.get $2
   local.tee $0
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $0
   local.get $1
   local.get $1
   i64.const 1000000000000000
   i64.lt_u
   if (result i32)
    local.get $1
    i64.const 1000000000000
    i64.lt_u
    if (result i32)
     local.get $1
     i64.const 100000000000
     i64.ge_u
     i32.const 10
     i32.add
     local.get $1
     i64.const 10000000000
     i64.ge_u
     i32.add
    else
     local.get $1
     i64.const 100000000000000
     i64.ge_u
     i32.const 13
     i32.add
     local.get $1
     i64.const 10000000000000
     i64.ge_u
     i32.add
    end
   else
    local.get $1
    i64.const 100000000000000000
    i64.lt_u
    if (result i32)
     local.get $1
     i64.const 10000000000000000
     i64.ge_u
     i32.const 16
     i32.add
    else
     local.get $1
     i64.const -8446744073709551616
     i64.ge_u
     i32.const 18
     i32.add
     local.get $1
     i64.const 1000000000000000000
     i64.ge_u
     i32.add
    end
   end
   local.tee $0
   call $~lib/util/number/utoa64_dec_lut
  end
  local.get $0
 )
 (func $~lib/util/number/itoa_buffered<i64> (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i64.const 0
  i64.lt_s
  local.tee $3
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
   local.get $0
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i64.const 48
   i64.or
   i64.store16
   local.get $3
   i32.const 1
   i32.add
   return
  end
  local.get $1
  i64.const 4294967295
  i64.le_u
  if
   local.get $1
   i32.wrap_i64
   local.tee $4
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
   local.set $2
   local.get $0
   local.get $4
   local.get $2
   local.get $3
   i32.add
   local.tee $0
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $0
   local.get $1
   local.get $1
   i64.const 1000000000000000
   i64.lt_u
   if (result i32)
    local.get $1
    i64.const 1000000000000
    i64.lt_u
    if (result i32)
     local.get $1
     i64.const 100000000000
     i64.ge_u
     i32.const 10
     i32.add
     local.get $1
     i64.const 10000000000
     i64.ge_u
     i32.add
    else
     local.get $1
     i64.const 100000000000000
     i64.ge_u
     i32.const 13
     i32.add
     local.get $1
     i64.const 10000000000000
     i64.ge_u
     i32.add
    end
   else
    local.get $1
    i64.const 100000000000000000
    i64.lt_u
    if (result i32)
     local.get $1
     i64.const 10000000000000000
     i64.ge_u
     i32.const 16
     i32.add
    else
     local.get $1
     i64.const -8446744073709551616
     i64.ge_u
     i32.const 18
     i32.add
     local.get $1
     i64.const 1000000000000000000
     i64.ge_u
     i32.add
    end
   end
   local.get $3
   i32.add
   local.tee $0
   call $~lib/util/number/utoa64_dec_lut
  end
  local.get $0
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
  local.tee $1
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $1
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $1
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $1
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $1
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa32_dec_lut
  local.get $1
 )
 (func $~lib/array/Array<u8>#join (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/string/joinIntegerArray<u8>
   local.get $0
   i32.const 1
   i32.sub
   local.tee $3
   i32.const 0
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 8816
    local.set $0
    br $__inlined_func$~lib/util/string/joinIntegerArray<u8>
   end
   local.get $3
   i32.eqz
   if
    local.get $4
    i32.load8_u
    call $~lib/util/number/utoa32
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$~lib/util/string/joinIntegerArray<u8>
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
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
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   loop $for-loop|0
    local.get $3
    local.get $6
    i32.gt_s
    if
     local.get $0
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.get $4
     local.get $6
     i32.add
     i32.load8_u
     call $~lib/util/number/itoa_buffered<u8>
     local.get $2
     i32.add
     local.set $2
     local.get $5
     if
      local.get $0
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      local.get $1
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
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $3
   local.get $4
   i32.add
   i32.load8_u
   call $~lib/util/number/itoa_buffered<u8>
   local.get $2
   i32.add
   local.tee $1
   i32.gt_s
   if
    local.get $0
    local.get $1
    call $~lib/string/String#substring
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$~lib/util/string/joinIntegerArray<u8>
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
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
  i32.const 1
  call $~lib/array/ensureCapacity
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
 (func $~lib/util/sort/insertionSort<u8> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $5
  i32.const 1
  i32.and
  local.get $3
  local.get $5
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $3
  i32.eqz
  select
  i32.add
  local.set $7
  loop $for-loop|0
   local.get $2
   local.get $7
   i32.ge_s
   if
    local.get $0
    local.get $7
    i32.add
    local.tee $5
    i32.load8_u
    local.set $3
    local.get $5
    i32.load8_u offset=1
    local.tee $6
    local.set $5
    i32.const 2
    global.set $~argumentsLength
    local.get $3
    local.get $6
    local.get $4
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.le_s
    if
     local.get $3
     local.set $5
     local.get $6
     local.set $3
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $6
    loop $while-continue|1
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|1
       local.get $0
       local.get $6
       i32.add
       i32.load8_u
       local.set $8
       i32.const 2
       global.set $~argumentsLength
       local.get $8
       local.get $3
       local.get $4
       i32.load
       call_indirect $0 (type $i32_i32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|1
       local.get $0
       local.get $6
       i32.add
       local.get $8
       i32.store8 offset=2
       local.get $6
       i32.const 1
       i32.sub
       local.set $6
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $6
    i32.add
    local.get $3
    i32.store8 offset=2
    loop $while-continue|2
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|2
       local.get $0
       local.get $6
       i32.add
       i32.load8_u
       local.set $3
       i32.const 2
       global.set $~argumentsLength
       local.get $3
       local.get $5
       local.get $4
       i32.load
       call_indirect $0 (type $i32_i32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|2
       local.get $0
       local.get $6
       i32.add
       local.get $3
       i32.store8 offset=1
       local.get $6
       i32.const 1
       i32.sub
       local.set $6
       br $while-continue|2
      end
     end
    end
    local.get $0
    local.get $6
    i32.add
    local.get $5
    i32.store8 offset=1
    local.get $7
    i32.const 2
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/extendRunRight<u8> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $1
   return
  end
  local.get $0
  local.get $1
  i32.add
  i32.load8_u
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.add
  i32.load8_u
  i32.const 2
  global.set $~argumentsLength
  local.get $3
  i32.load
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.add
     local.tee $5
     i32.load8_u offset=1
     local.get $5
     i32.load8_u
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $4
   local.set $2
   loop $while-continue|1
    local.get $1
    local.get $2
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.add
     local.tee $3
     i32.load8_u
     local.set $5
     local.get $3
     local.get $0
     local.get $2
     i32.add
     local.tee $3
     i32.load8_u
     i32.store8
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $5
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
  else
   loop $while-continue|2
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $0
     local.get $4
     i32.add
     local.tee $1
     i32.load8_u offset=1
     local.get $1
     i32.load8_u
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
  end
  local.get $4
 )
 (func $~lib/util/sort/mergeRuns<u8> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $6
  i32.add
  local.set $7
  local.get $6
  i32.const 1
  i32.add
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    local.tee $8
    i32.add
    local.get $0
    local.get $8
    i32.add
    i32.load8_u
    i32.store8
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $3
   local.get $6
   i32.gt_s
   if
    local.get $4
    local.get $7
    local.get $6
    i32.sub
    i32.add
    local.get $0
    local.get $6
    i32.add
    i32.load8_u offset=1
    i32.store8
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $4
    local.get $6
    i32.add
    i32.load8_u
    local.set $9
    local.get $2
    local.get $4
    i32.add
    i32.load8_u
    local.set $10
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $1
    i32.add
    local.tee $8
    local.get $9
    local.get $10
    local.get $9
    local.get $10
    local.get $5
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 31
    i32.shr_u
    local.tee $7
    select
    i32.store8
    local.get $8
    local.get $10
    local.get $9
    local.get $7
    select
    i32.store8
    local.get $6
    local.get $7
    i32.sub
    local.set $6
    local.get $2
    local.get $7
    i32.const 1
    i32.xor
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
 )
 (func $~lib/util/sort/SORT<u8> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  local.get $1
  i32.const 128
  i32.le_s
  if
   local.get $1
   i32.const 1
   i32.le_s
   if
    return
   end
   block $break|0
    block $case1|0
     local.get $1
     i32.const 3
     i32.ne
     if
      local.get $1
      i32.const 2
      i32.eq
      br_if $case1|0
      br $break|0
     end
     local.get $0
     i32.load8_u offset=1
     local.set $1
     local.get $0
     i32.load8_u offset=2
     local.set $4
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $1
     local.get $4
     local.get $1
     local.get $4
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
     local.tee $5
     select
     i32.store8 offset=1
     local.get $0
     i32.load8_u
     local.set $3
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     local.get $4
     local.get $1
     local.get $5
     select
     local.tee $1
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
     local.set $4
     local.get $0
     local.get $3
     local.get $1
     local.get $4
     select
     i32.store8
     local.get $0
     local.get $1
     local.get $3
     local.get $4
     select
     i32.store8 offset=2
    end
    local.get $0
    i32.load8_u
    local.set $1
    local.get $0
    i32.load8_u offset=1
    local.set $4
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $1
    local.get $4
    local.get $1
    local.get $4
    local.get $2
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 31
    i32.shr_u
    local.tee $2
    select
    i32.store8
    local.get $0
    local.get $4
    local.get $1
    local.get $2
    select
    i32.store8 offset=1
    return
   end
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   i32.const 0
   local.get $2
   call $~lib/util/sort/insertionSort<u8>
   return
  end
  i32.const 33
  local.get $1
  i32.clz
  i32.sub
  local.tee $6
  i32.const 2
  i32.shl
  local.tee $5
  i32.const 1
  i32.shl
  local.set $7
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $7
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $9
  local.get $5
  i32.add
  local.set $10
  i32.const 0
  local.set $5
  loop $for-loop|1
   local.get $5
   local.get $6
   i32.lt_u
   if
    local.get $9
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.const -1
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.set $11
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  i32.sub
  local.tee $8
  local.get $2
  call $~lib/util/sort/extendRunRight<u8>
  local.tee $1
  i32.const 1
  i32.add
  local.tee $5
  i32.const 32
  i32.lt_s
  if
   local.get $0
   i32.const 0
   local.get $8
   i32.const 31
   local.get $8
   i32.const 31
   i32.lt_s
   select
   local.tee $1
   local.get $5
   local.get $2
   call $~lib/util/sort/insertionSort<u8>
  end
  loop $while-continue|2
   local.get $1
   local.get $8
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    local.tee $6
    local.get $8
    local.get $2
    call $~lib/util/sort/extendRunRight<u8>
    local.tee $5
    local.get $6
    i32.sub
    i32.const 1
    i32.add
    local.tee $7
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $6
     local.get $8
     local.get $6
     i32.const 31
     i32.add
     local.tee $5
     local.get $5
     local.get $8
     i32.gt_s
     select
     local.tee $5
     local.get $7
     local.get $2
     call $~lib/util/sort/insertionSort<u8>
    end
    local.get $3
    local.get $6
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $8
    i32.const 1
    i32.add
    i64.extend_i32_u
    local.tee $12
    i64.div_u
    local.get $5
    local.get $6
    i32.add
    i32.const 1
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $12
    i64.div_u
    i64.xor
    i32.wrap_i64
    i32.clz
    local.set $7
    loop $for-loop|3
     local.get $4
     local.get $7
     i32.gt_u
     if
      local.get $9
      local.get $4
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $13
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $13
       local.get $10
       local.get $4
       i32.const 2
       i32.shl
       local.tee $3
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $1
       local.get $11
       local.get $2
       call $~lib/util/sort/mergeRuns<u8>
       local.get $3
       local.get $9
       i32.add
       i32.const -1
       i32.store
       local.get $13
       local.set $3
      end
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $for-loop|3
     end
    end
    local.get $9
    local.get $7
    i32.const 2
    i32.shl
    local.tee $4
    i32.add
    local.get $3
    i32.store
    local.get $4
    local.get $10
    i32.add
    local.get $1
    i32.store
    local.get $6
    local.set $3
    local.get $5
    local.set $1
    local.get $7
    local.set $4
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $4
   if
    local.get $9
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $10
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $8
     local.get $11
     local.get $2
     call $~lib/util/sort/mergeRuns<u8>
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|4
   end
  end
  local.get $11
  call $~lib/rt/tlsf/__free
  local.get $9
  call $~lib/rt/tlsf/__free
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32) (result i32)
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
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/util/sort/COMPARATOR<u8>~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  local.tee $0
  local.get $1
  i32.const 255
  i32.and
  local.tee $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $~lib/array/Array<std/array/Ref>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $2
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $3
    if
     local.get $3
     call $~lib/rt/itcms/__visit
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $folding-inner4
   block $folding-inner3
    block $folding-inner2
     block $folding-inner1
      block $folding-inner0
       block $invalid
        block $std/array/ArrayStr
         block $std/array/Proxy<i32>
          block $std/array/Ref
           block $~lib/string/String
            block $~lib/arraybuffer/ArrayBuffer
             local.get $0
             i32.const 8
             i32.sub
             i32.load
             br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner4 $folding-inner0 $std/array/Ref $folding-inner4 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner1 $folding-inner2 $std/array/Proxy<i32> $folding-inner1 $folding-inner2 $folding-inner1 $folding-inner2 $folding-inner1 $folding-inner2 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner3 $folding-inner3 $std/array/ArrayStr $folding-inner2 $invalid
            end
            return
           end
           return
          end
          return
         end
         return
        end
        local.get $0
        call $~lib/array/Array<std/array/Ref>~visit
        return
       end
       unreachable
      end
      local.get $0
      i32.load
      call $~lib/rt/itcms/__visit
      return
     end
     local.get $0
     call $~lib/array/Array<std/array/Ref>~visit
     return
    end
    local.get $0
    i32.load offset=4
    call $~lib/rt/itcms/__visit
    return
   end
   local.get $0
   i32.load
   call $~lib/rt/itcms/__visit
   return
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:std/array
 )
 (func $std/array/assertSorted<i32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/sort/SORT<i32>
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  block $__inlined_func$std/array/isSorted<i32> (result i32)
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
     local.get $0
     local.get $2
     i32.const 1
     i32.sub
     call $~lib/array/Array<i32>#__get
     local.set $4
     local.get $0
     local.get $2
     call $~lib/array/Array<i32>#__get
     local.set $5
     i32.const 2
     global.set $~argumentsLength
     i32.const 0
     local.get $4
     local.get $5
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     br_if $__inlined_func$std/array/isSorted<i32>
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1552
   i32.const 942
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/array/assertSortedDefault<i32> (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 8400
  i32.store
  local.get $0
  i32.const 8400
  call $std/array/assertSorted<i32>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/sort/extendRunRight<~lib/array/Array<i32>> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store
  local.get $4
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $2
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $5
  i32.store
  local.get $4
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $6
  i32.store offset=4
  i32.const 2
  global.set $~argumentsLength
  local.get $5
  local.get $6
  local.get $3
  i32.load
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.tee $6
     i32.load offset=4
     local.tee $7
     i32.store
     local.get $5
     local.get $6
     i32.load
     local.tee $5
     i32.store offset=4
     i32.const 2
     global.set $~argumentsLength
     local.get $7
     local.get $5
     local.get $3
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $4
   local.set $2
   loop $while-continue|1
    local.get $1
    local.get $2
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.tee $3
     i32.load
     local.tee $5
     i32.store offset=8
     local.get $3
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.tee $3
     i32.load
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $5
     i32.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
  else
   loop $while-continue|2
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.tee $5
     i32.load offset=4
     local.tee $6
     i32.store
     local.get $1
     local.get $5
     i32.load
     local.tee $1
     i32.store offset=4
     i32.const 2
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $3
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $std/array/assertSorted<~lib/array/Array<i32>> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=12
   local.get $1
   call $~lib/util/sort/SORT<~lib/array/Array<i32>>
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   block $__inlined_func$std/array/isSorted<~lib/array/Array<i32>> (result i32)
    local.get $2
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 15108
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
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
      local.get $0
      local.get $2
      i32.const 1
      i32.sub
      call $~lib/array/Array<std/array/Ref>#__get
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      local.get $0
      local.get $2
      call $~lib/array/Array<std/array/Ref>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=4
      i32.const 2
      global.set $~argumentsLength
      local.get $3
      local.get $4
      local.get $1
      i32.load
      call_indirect $0 (type $i32_i32_=>_i32)
      i32.const 0
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 0
       br $__inlined_func$std/array/isSorted<~lib/array/Array<i32>>
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 942
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<i32>#toString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 9104
  i32.store
  local.get $0
  i32.const 9104
  call $~lib/array/Array<i32>#join
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String|null>#toString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 9104
  i32.store
  local.get $0
  i32.const 9104
  call $~lib/array/Array<~lib/string/String|null>#join
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u8>#toString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 9104
  i32.store
  local.get $0
  i32.const 9104
  call $~lib/array/Array<u8>#join
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#toString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 9104
  i32.store
  local.get $0
  i32.const 9104
  call $~lib/array/Array<u32>#join
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   i32.const 9104
   i32.store
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=12
   local.set $0
   local.get $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u32>>
    local.get $0
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 8816
     local.set $0
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u32>>
    end
    local.get $2
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.load
     local.tee $0
     i32.store
     local.get $0
     if (result i32)
      local.get $0
      call $~lib/array/Array<u32>#toString
     else
      i32.const 8816
     end
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u32>>
    end
    i32.const 8816
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 8816
    i32.store offset=4
    i32.const 9100
    i32.load
    i32.const 1
    i32.shr_u
    local.set $5
    loop $for-loop|0
     local.get $1
     local.get $2
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $3
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $4
      i32.store
      local.get $4
      if
       global.get $~lib/memory/__stack_pointer
       local.get $4
       call $~lib/array/Array<u32>#toString
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=8
       local.get $0
       local.get $4
       call $~lib/string/String.__concat
       local.tee $0
       i32.store offset=4
      end
      local.get $5
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.const 9104
       call $~lib/string/String.__concat
       local.tee $0
       i32.store offset=4
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.store
    local.get $1
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     call $~lib/array/Array<u32>#toString
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     local.get $0
     local.get $1
     call $~lib/string/String.__concat
     local.tee $0
     i32.store offset=4
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
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
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 f64)
  (local $12 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 76
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $1
   i64.const 0
   i64.store offset=16
   local.get $1
   i64.const 0
   i64.store offset=24
   local.get $1
   i64.const 0
   i64.store offset=32
   local.get $1
   i64.const 0
   i64.store offset=40
   local.get $1
   i64.const 0
   i64.store offset=48
   local.get $1
   i64.const 0
   i64.store offset=56
   local.get $1
   i64.const 0
   i64.store offset=64
   local.get $1
   i32.const 0
   i32.store offset=72
   memory.size
   i32.const 16
   i32.shl
   i32.const 31492
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 1268
   i32.const 1264
   i32.store
   i32.const 1272
   i32.const 1264
   i32.store
   i32.const 1264
   global.set $~lib/rt/itcms/pinSpace
   i32.const 1300
   i32.const 1296
   i32.store
   i32.const 1304
   i32.const 1296
   i32.store
   i32.const 1296
   global.set $~lib/rt/itcms/toSpace
   i32.const 1444
   i32.const 1440
   i32.store
   i32.const 1448
   i32.const 1440
   i32.store
   i32.const 1440
   global.set $~lib/rt/itcms/fromSpace
   i32.const 0
   call $~lib/array/Array<i32>#constructor
   global.set $std/array/arr
   i32.const 0
   call $std/array/Ref#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 12
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $1
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
   end
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 1
   call $~lib/memory/memory.fill
   local.get $1
   local.get $3
   i32.store
   local.get $1
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   local.get $3
   i32.store offset=4
   local.get $1
   i32.const 1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 1664
   i32.store
   local.get $0
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 52
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 0
   i32.const 6
   i32.const 1696
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.const 1
   i32.const 1
   i32.const 3
   call $~lib/array/Array<u8>#fill
   drop
   i32.const 5
   i32.const 0
   i32.const 6
   i32.const 1728
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $std/array/isArraysEqual<u8>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 60
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   i32.const 0
   i32.const 2147483647
   call $~lib/array/Array<u8>#fill
   drop
   i32.const 5
   i32.const 0
   i32.const 6
   i32.const 1760
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $std/array/isArraysEqual<u8>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 63
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.const 0
   i32.const -3
   call $~lib/array/Array<u8>#fill
   drop
   i32.const 5
   i32.const 0
   i32.const 6
   i32.const 1792
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $std/array/isArraysEqual<u8>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 66
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   i32.const -2
   i32.const 2147483647
   call $~lib/array/Array<u8>#fill
   drop
   i32.const 5
   i32.const 0
   i32.const 6
   i32.const 1824
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $std/array/isArraysEqual<u8>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 69
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~lib/array/Array<u8>#fill
   drop
   i32.const 5
   i32.const 0
   i32.const 6
   i32.const 1856
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $std/array/isArraysEqual<u8>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 72
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 1888
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=12
   local.get $1
   i32.load offset=4
   local.set $4
   i32.const 1
   local.get $1
   i32.load offset=12
   local.tee $3
   local.get $3
   i32.const 1
   i32.gt_s
   select
   local.set $0
   i32.const 3
   local.get $3
   local.get $3
   i32.const 3
   i32.gt_s
   select
   local.set $3
   loop $for-loop|0
    local.get $0
    local.get $3
    i32.lt_s
    if
     local.get $4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.const 1
     i32.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 1936
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 79
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load offset=4
   local.set $3
   i32.const 0
   local.get $1
   i32.load offset=12
   local.tee $4
   local.get $4
   i32.const 0
   i32.gt_s
   select
   local.set $0
   loop $for-loop|02
    local.get $0
    local.get $4
    i32.lt_s
    if
     local.get $3
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.const 0
     i32.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|02
    end
   end
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 1984
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 82
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load offset=4
   local.set $4
   i32.const 0
   local.get $1
   i32.load offset=12
   local.tee $3
   local.get $3
   i32.const 0
   i32.gt_s
   select
   local.set $0
   local.get $3
   i32.const 3
   i32.sub
   local.tee $3
   i32.const 0
   local.get $3
   i32.const 0
   i32.gt_s
   select
   local.set $3
   loop $for-loop|04
    local.get $0
    local.get $3
    i32.lt_s
    if
     local.get $4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.const 1
     i32.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|04
    end
   end
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 2032
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 85
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load offset=4
   local.set $4
   local.get $1
   i32.load offset=12
   local.tee $3
   i32.const 2
   i32.sub
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
   local.set $0
   loop $for-loop|06
    local.get $0
    local.get $3
    i32.lt_s
    if
     local.get $4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.const 2
     i32.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|06
    end
   end
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 2080
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 88
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.tee $0
   i32.load offset=4
   local.set $4
   i32.const 1
   local.get $1
   i32.load offset=12
   local.tee $3
   local.get $3
   i32.const 1
   i32.gt_s
   select
   local.set $1
   i32.const 0
   local.get $3
   local.get $3
   i32.const 0
   i32.gt_s
   select
   local.set $3
   loop $for-loop|08
    local.get $1
    local.get $3
    i32.lt_s
    if
     local.get $4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.const 0
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|08
    end
   end
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 2128
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 91
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 97
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 98
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 42
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 102
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 103
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 104
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 108
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 109
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 110
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 43
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 114
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 115
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 43
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 116
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 44
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 120
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 121
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 43
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 122
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 44
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 123
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 45
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 127
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 128
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 43
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 129
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 44
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 130
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#__get
   i32.const 45
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 131
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 2
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 1
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   local.get $0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.const 2
   i32.const 0
   call $~lib/array/ensureCapacity
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 139
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 2224
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=12
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#at
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 147
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#at
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 148
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const -1
   call $~lib/array/Array<i32>#at
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 149
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const -4
   call $~lib/array/Array<i32>#at
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 150
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/array/Array<i32>#constructor
   local.tee $3
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $0
   local.get $1
   local.get $3
   call $~lib/array/Array<i32>#concat
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 159
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 160
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 161
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 2272
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $~lib/array/Array<i32>#concat
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 164
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 43
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 166
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 44
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 167
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#__get
   i32.const 45
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 168
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 46
   call $~lib/array/Array<i32>#push
   drop
   local.get $3
   i32.const 47
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $0
   local.get $1
   local.get $3
   call $~lib/array/Array<i32>#concat
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 175
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 176
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
    i32.const 1552
    i32.const 177
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 43
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 178
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 44
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 179
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#__get
   i32.const 45
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 180
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#__get
   i32.const 46
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 181
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 4
   call $~lib/array/Array<i32>#__get
   i32.const 47
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 182
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
    i32.const 1552
    i32.const 185
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 2304
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 193
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $1
   i32.store offset=8
   local.get $0
   local.get $3
   local.get $1
   call $~lib/array/Array<i32>#concat
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.load offset=12
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 195
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 196
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2336
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.const 3
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2384
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 203
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2432
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const 1
   i32.const 3
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2480
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 205
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2528
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const 1
   i32.const 2
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2576
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 207
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2624
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const 2
   i32.const 2
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2672
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 209
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2720
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.const 3
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2768
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 211
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2816
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const 1
   i32.const 3
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2864
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 213
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2912
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const 1
   i32.const 2
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2960
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 215
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3008
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.const -2
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3056
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 217
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3104
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.const -2
   i32.const -1
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3152
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 219
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3200
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const -4
   i32.const -3
   i32.const -2
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3248
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 221
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3296
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const -4
   i32.const -3
   i32.const -1
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3344
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 223
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3392
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   local.get $1
   i32.const -4
   i32.const -3
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3440
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 225
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 42
   call $~lib/array/Array<i32>#unshift
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 233
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 234
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 235
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 43
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 236
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#__get
   i32.const 44
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 237
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#__get
   i32.const 45
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 238
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 41
   call $~lib/array/Array<i32>#unshift
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 5
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 242
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 243
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 41
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 244
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 245
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#__get
   i32.const 43
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 246
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#__get
   i32.const 44
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 247
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 4
   call $~lib/array/Array<i32>#__get
   i32.const 45
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 248
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $5
   i32.load offset=12
   local.tee $1
   i32.const 1
   i32.lt_s
   if
    i32.const 2176
    i32.const 1104
    i32.const 335
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $5
   i32.load offset=4
   local.tee $4
   i32.load
   local.get $4
   local.get $4
   i32.const 4
   i32.add
   local.get $1
   i32.const 1
   i32.sub
   local.tee $0
   i32.const 2
   i32.shl
   local.tee $1
   call $~lib/memory/memory.copy
   local.get $1
   local.get $4
   i32.add
   i32.const 0
   i32.store
   local.get $5
   local.get $0
   i32.store offset=12
   global.set $std/array/i
   global.get $std/array/i
   i32.const 41
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 257
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 258
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 259
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 260
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 43
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 261
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#__get
   i32.const 44
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 262
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#__get
   i32.const 45
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 263
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   global.set $std/array/i
   global.get $std/array/i
   i32.const 45
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 267
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 268
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 269
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 270
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 43
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 271
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#__get
   i32.const 44
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 272
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3488
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 2
   i32.const 2147483647
   call $~lib/array/Array<i32>#slice
   local.tee $1
   i32.store offset=16
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 3536
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 282
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 2
   i32.const 4
   call $~lib/array/Array<i32>#slice
   local.tee $1
   i32.store offset=16
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 3568
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 285
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 1
   i32.const 5
   call $~lib/array/Array<i32>#slice
   local.tee $1
   i32.store offset=16
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 3600
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 288
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 0
   i32.const 2147483647
   call $~lib/array/Array<i32>#slice
   local.tee $1
   i32.store offset=16
   local.get $1
   local.get $3
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 291
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const -2
   i32.const 2147483647
   call $~lib/array/Array<i32>#slice
   local.tee $1
   i32.store offset=16
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 3648
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 294
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 2
   i32.const -1
   call $~lib/array/Array<i32>#slice
   local.tee $1
   i32.store offset=16
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 3680
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 297
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const -3
   i32.const -1
   call $~lib/array/Array<i32>#slice
   local.tee $1
   i32.store offset=16
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 3712
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 300
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const -1
   i32.const -3
   call $~lib/array/Array<i32>#slice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 302
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 10
   i32.const 2147483647
   call $~lib/array/Array<i32>#slice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 303
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $3
   i32.store
   local.get $3
   i32.load offset=12
   local.tee $1
   if
    local.get $3
    i32.load offset=4
    local.set $0
    local.get $3
    i32.load offset=4
    local.get $1
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.set $6
    loop $while-continue|0
     local.get $0
     local.get $6
     i32.lt_u
     if
      local.get $0
      i32.load
      local.set $1
      local.get $0
      local.get $6
      i32.load
      i32.store
      local.get $6
      local.get $1
      i32.store
      local.get $0
      i32.const 4
      i32.add
      local.set $0
      local.get $6
      i32.const 4
      i32.sub
      local.set $6
      br $while-continue|0
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 311
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 312
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 44
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 313
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 43
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 314
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#__get
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 315
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 43
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 44
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   i32.const 0
   local.set $1
   block $__inlined_func$~lib/array/Array<i32>#indexOf
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#indexOf
    end
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|09
     local.get $1
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 44
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|09
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   if
    i32.const 0
    i32.const 1552
    i32.const 325
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   i32.const 0
   local.set $1
   block $__inlined_func$~lib/array/Array<i32>#indexOf10
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#indexOf10
    end
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|011
     local.get $1
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 42
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf10
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|011
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 328
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   i32.const 0
   local.set $1
   block $__inlined_func$~lib/array/Array<i32>#indexOf12
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#indexOf12
    end
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|013
     local.get $1
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 45
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf12
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|013
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 331
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   i32.const 100
   local.set $1
   block $__inlined_func$~lib/array/Array<i32>#indexOf14
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const 100
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#indexOf14
    end
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|015
     local.get $1
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf14
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|015
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 334
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   block $__inlined_func$~lib/array/Array<i32>#indexOf16
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const -100
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#indexOf16
    end
    local.get $3
    i32.const 100
    i32.sub
    local.tee $1
    i32.const 0
    local.get $1
    i32.const 0
    i32.gt_s
    select
    local.set $1
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|017
     local.get $1
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf16
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|017
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 337
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   block $__inlined_func$~lib/array/Array<i32>#indexOf18
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const -2
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#indexOf18
    end
    local.get $3
    i32.const 2
    i32.sub
    local.tee $1
    i32.const 0
    local.get $1
    i32.const 0
    i32.gt_s
    select
    local.set $1
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|019
     local.get $1
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf18
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|019
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 340
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   block $__inlined_func$~lib/array/Array<i32>#indexOf20
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const -4
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#indexOf20
    end
    local.get $3
    i32.const 4
    i32.sub
    local.tee $1
    i32.const 0
    local.get $1
    i32.const 0
    i32.gt_s
    select
    local.set $1
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|021
     local.get $1
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf20
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|021
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 343
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   i32.const 0
   local.set $1
   block $__inlined_func$~lib/array/Array<i32>#indexOf22
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#indexOf22
    end
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|023
     local.get $1
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf22
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|023
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 346
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   i32.const 1
   local.set $1
   block $__inlined_func$~lib/array/Array<i32>#indexOf24
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const 1
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#indexOf24
    end
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|025
     local.get $1
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf24
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|025
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 349
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   i32.const 2
   local.set $1
   block $__inlined_func$~lib/array/Array<i32>#indexOf26
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const 2
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#indexOf26
    end
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|027
     local.get $1
     local.get $3
     i32.lt_s
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf26
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|027
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 352
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   i32.const 2
   i32.const 9
   i32.const 3744
   call $~lib/rt/__newArray
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   i32.const 0
   local.set $1
   i32.const -1
   local.set $0
   block $__inlined_func$~lib/array/Array<f32>#indexOf
    local.get $3
    i32.load offset=12
    local.tee $4
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $4
    select
    br_if $__inlined_func$~lib/array/Array<f32>#indexOf
    local.get $3
    i32.load offset=4
    local.set $3
    loop $while-continue|024
     local.get $1
     local.get $4
     i32.lt_s
     if
      local.get $3
      local.get $1
      local.tee $0
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
      local.set $1
      br $while-continue|024
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
    i32.const 1552
    i32.const 354
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   i32.const 3
   i32.const 10
   i32.const 3776
   call $~lib/rt/__newArray
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   i32.const 0
   local.set $1
   i32.const -1
   local.set $0
   block $__inlined_func$~lib/array/Array<f64>#indexOf
    local.get $3
    i32.load offset=12
    local.tee $4
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $4
    select
    br_if $__inlined_func$~lib/array/Array<f64>#indexOf
    local.get $3
    i32.load offset=4
    local.set $3
    loop $while-continue|02528
     local.get $1
     local.get $4
     i32.lt_s
     if
      local.get $3
      local.get $1
      local.tee $0
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
      local.set $1
      br $while-continue|02528
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
    i32.const 1552
    i32.const 355
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 3808
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=16
   i32.const 1
   global.set $~argumentsLength
   local.get $1
   i32.load offset=12
   local.set $3
   i32.const -1
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf
    local.get $1
    i32.load offset=12
    local.tee $4
    i32.eqz
    br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf
    local.get $3
    local.get $4
    i32.add
    local.get $4
    i32.const 1
    i32.sub
    local.get $3
    local.get $3
    local.get $4
    i32.ge_s
    select
    local.get $3
    i32.const 0
    i32.lt_s
    select
    local.set $3
    local.get $1
    i32.load offset=4
    local.set $4
    loop $while-continue|01
     local.get $3
     i32.const 0
     i32.ge_s
     if
      local.get $4
      local.get $3
      local.tee $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 2
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf
      local.get $0
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|01
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 362
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   global.set $~argumentsLength
   local.get $1
   i32.load offset=12
   local.set $3
   i32.const -1
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf6
    local.get $1
    i32.load offset=12
    local.tee $4
    i32.eqz
    br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf6
    local.get $3
    local.get $4
    i32.add
    local.get $4
    i32.const 1
    i32.sub
    local.get $3
    local.get $3
    local.get $4
    i32.ge_s
    select
    local.get $3
    i32.const 0
    i32.lt_s
    select
    local.set $3
    local.get $1
    i32.load offset=4
    local.set $4
    loop $while-continue|07
     local.get $3
     i32.const 0
     i32.ge_s
     if
      local.get $4
      local.get $3
      local.tee $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 7
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf6
      local.get $0
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|07
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
    i32.const 1552
    i32.const 363
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf8
    local.get $1
    i32.load offset=12
    local.tee $0
    i32.eqz
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#lastIndexOf8
    end
    local.get $0
    i32.const 1
    i32.sub
    i32.const 3
    local.get $0
    i32.const 3
    i32.le_s
    select
    local.set $0
    local.get $1
    i32.load offset=4
    local.set $3
    loop $while-continue|029
     local.get $0
     i32.const 0
     i32.ge_s
     if
      local.get $3
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 2
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf8
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $while-continue|029
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 364
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf30
    local.get $1
    i32.load offset=12
    local.tee $0
    i32.eqz
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#lastIndexOf30
    end
    local.get $0
    i32.const 1
    i32.sub
    i32.const 2
    local.get $0
    i32.const 2
    i32.le_s
    select
    local.set $0
    local.get $1
    i32.load offset=4
    local.set $3
    loop $while-continue|031
     local.get $0
     i32.const 0
     i32.ge_s
     if
      local.get $3
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 2
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf30
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $while-continue|031
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
   if
    i32.const 0
    i32.const 1552
    i32.const 365
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf32
    local.get $1
    i32.load offset=12
    local.tee $0
    i32.eqz
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#lastIndexOf32
    end
    local.get $0
    i32.const 2
    i32.sub
    local.set $0
    local.get $1
    i32.load offset=4
    local.set $3
    loop $while-continue|033
     local.get $0
     i32.const 0
     i32.ge_s
     if
      local.get $3
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 2
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf32
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $while-continue|033
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
   if
    i32.const 0
    i32.const 1552
    i32.const 366
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf34
    local.get $1
    local.tee $0
    i32.load offset=12
    local.tee $1
    i32.eqz
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#lastIndexOf34
    end
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|035
     local.get $1
     i32.const 0
     i32.ge_s
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 2
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf34
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      br $while-continue|035
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 367
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   i32.const 0
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#indexOf9
    local.get $1
    i32.load offset=12
    local.tee $0
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $0
    select
    if
     i32.const -1
     local.set $3
     br $__inlined_func$~lib/array/Array<i32>#indexOf9
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|010
     local.get $0
     local.get $3
     i32.gt_s
     if
      local.get $1
      local.get $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 44
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf9
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $while-continue|010
     end
    end
    i32.const -1
    local.set $3
   end
   local.get $3
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    i32.const 1552
    i32.const 375
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   i32.const 0
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#indexOf13
    local.get $1
    i32.load offset=12
    local.tee $0
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $0
    select
    if
     i32.const -1
     local.set $3
     br $__inlined_func$~lib/array/Array<i32>#indexOf13
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|014
     local.get $0
     local.get $3
     i32.gt_s
     if
      local.get $1
      local.get $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 42
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf13
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $while-continue|014
     end
    end
    i32.const -1
    local.set $3
   end
   local.get $3
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    i32.const 1552
    i32.const 378
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   i32.const 0
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#indexOf17
    local.get $1
    i32.load offset=12
    local.tee $0
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $0
    select
    if
     i32.const -1
     local.set $3
     br $__inlined_func$~lib/array/Array<i32>#indexOf17
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|018
     local.get $0
     local.get $3
     i32.gt_s
     if
      local.get $1
      local.get $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 45
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf17
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $while-continue|018
     end
    end
    i32.const -1
    local.set $3
   end
   local.get $3
   i32.const 0
   i32.ge_s
   if
    i32.const 0
    i32.const 1552
    i32.const 381
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   i32.const 100
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#indexOf21
    local.get $1
    i32.load offset=12
    local.tee $0
    i32.const 100
    i32.le_s
    i32.const 1
    local.get $0
    select
    if
     i32.const -1
     local.set $3
     br $__inlined_func$~lib/array/Array<i32>#indexOf21
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|022
     local.get $0
     local.get $3
     i32.gt_s
     if
      local.get $1
      local.get $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf21
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $while-continue|022
     end
    end
    i32.const -1
    local.set $3
   end
   local.get $3
   i32.const 0
   i32.ge_s
   if
    i32.const 0
    i32.const 1552
    i32.const 384
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   block $__inlined_func$~lib/array/Array<i32>#indexOf25
    local.get $1
    i32.load offset=12
    local.tee $3
    i32.const -100
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf25
    end
    local.get $3
    i32.const 100
    i32.sub
    local.tee $0
    i32.const 0
    local.get $0
    i32.const 0
    i32.gt_s
    select
    local.set $0
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|026
     local.get $0
     local.get $3
     i32.lt_s
     if
      local.get $1
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf25
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|026
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    i32.const 1552
    i32.const 387
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   block $__inlined_func$~lib/array/Array<i32>#indexOf28
    local.get $1
    i32.load offset=12
    local.tee $3
    i32.const -2
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf28
    end
    local.get $3
    i32.const 2
    i32.sub
    local.tee $0
    i32.const 0
    local.get $0
    i32.const 0
    i32.gt_s
    select
    local.set $0
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|030
     local.get $0
     local.get $3
     i32.lt_s
     if
      local.get $1
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf28
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|030
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    i32.const 1552
    i32.const 390
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   block $__inlined_func$~lib/array/Array<i32>#indexOf32
    local.get $1
    i32.load offset=12
    local.tee $3
    i32.const -4
    i32.le_s
    i32.const 1
    local.get $3
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf32
    end
    local.get $3
    i32.const 4
    i32.sub
    local.tee $0
    i32.const 0
    local.get $0
    i32.const 0
    i32.gt_s
    select
    local.set $0
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|034
     local.get $0
     local.get $3
     i32.lt_s
     if
      local.get $1
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf32
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|034
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    i32.const 1552
    i32.const 393
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   i32.const 0
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#indexOf36
    local.get $1
    i32.load offset=12
    local.tee $0
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $0
    select
    if
     i32.const -1
     local.set $3
     br $__inlined_func$~lib/array/Array<i32>#indexOf36
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|037
     local.get $0
     local.get $3
     i32.gt_s
     if
      local.get $1
      local.get $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf36
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $while-continue|037
     end
    end
    i32.const -1
    local.set $3
   end
   local.get $3
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    i32.const 1552
    i32.const 396
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   i32.const 1
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#indexOf39
    local.get $1
    i32.load offset=12
    local.tee $0
    i32.const 1
    i32.le_s
    i32.const 1
    local.get $0
    select
    if
     i32.const -1
     local.set $3
     br $__inlined_func$~lib/array/Array<i32>#indexOf39
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|040
     local.get $0
     local.get $3
     i32.gt_s
     if
      local.get $1
      local.get $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf39
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $while-continue|040
     end
    end
    i32.const -1
    local.set $3
   end
   local.get $3
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    i32.const 1552
    i32.const 399
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   i32.const 2
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#indexOf42
    local.get $1
    i32.load offset=12
    local.tee $0
    i32.const 2
    i32.le_s
    i32.const 1
    local.get $0
    select
    if
     i32.const -1
     local.set $3
     br $__inlined_func$~lib/array/Array<i32>#indexOf42
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|043
     local.get $0
     local.get $3
     i32.gt_s
     if
      local.get $1
      local.get $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf42
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $while-continue|043
     end
    end
    i32.const -1
    local.set $3
   end
   local.get $3
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    i32.const 1552
    i32.const 402
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   i32.const 2
   i32.const 9
   i32.const 3856
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $__inlined_func$~lib/array/Array<f32>#includes (result i32)
    i32.const 0
    local.set $1
    i32.const 0
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $3
    select
    br_if $__inlined_func$~lib/array/Array<f32>#includes
    drop
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|02644
     local.get $1
     local.get $3
     i32.lt_s
     if
      i32.const 1
      i32.const 1
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      f32.load
      local.tee $12
      local.get $12
      f32.ne
      local.get $12
      f32.const nan:0x400000
      f32.eq
      select
      br_if $__inlined_func$~lib/array/Array<f32>#includes
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|02644
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 404
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   i32.const 3
   i32.const 10
   i32.const 3888
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $__inlined_func$~lib/array/Array<f64>#includes (result i32)
    i32.const 0
    local.set $1
    i32.const 0
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $3
    select
    br_if $__inlined_func$~lib/array/Array<f64>#includes
    drop
    local.get $0
    i32.load offset=4
    local.set $0
    loop $while-continue|02736
     local.get $1
     local.get $3
     i32.lt_s
     if
      i32.const 1
      i32.const 1
      local.get $0
      local.get $1
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.tee $11
      local.get $11
      f64.ne
      local.get $11
      f64.const nan:0x8000000000000
      f64.eq
      select
      br_if $__inlined_func$~lib/array/Array<f64>#includes
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|02736
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 405
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   i32.const 1
   call $~lib/array/Array<i32>#splice
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 409
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $std/array/internalCapacity<i32>
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 410
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 44
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 411
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 412
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3920
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 2147483647
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3968
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 419
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 4016
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 420
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 4048
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 4096
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 423
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 4128
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 424
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 4176
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 2
   i32.const 2147483647
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 4224
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 427
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 4256
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 428
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 4288
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 2
   i32.const 2
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 4336
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 431
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 4368
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 432
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 4400
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 4448
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 435
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 4480
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 436
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 4528
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const -1
   i32.const 2147483647
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 4576
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 439
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 4608
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 440
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 4656
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const -2
   i32.const 2147483647
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 4704
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 443
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 4736
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 444
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 4768
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const -2
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 4816
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 447
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 4848
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 448
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 4896
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const -7
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 4944
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 451
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 4976
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 452
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 5024
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const -2
   i32.const -1
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 5072
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 455
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 5104
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 456
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 5152
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 1
   i32.const -2
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 5200
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 459
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 5232
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 460
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 5280
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 4
   i32.const 0
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 5328
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 463
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 5360
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 464
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 5408
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 7
   i32.const 0
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 5456
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 467
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 5488
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 468
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 5536
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   local.get $3
   i32.const 7
   i32.const 5
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 5584
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 471
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 5616
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 472
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 2
   i32.const 8
   i32.const 5664
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   call $~lib/array/Array<std/array/Ref>#splice
   local.tee $1
   i32.store offset=12
   local.get $1
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 476
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 477
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 5
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=24
   local.get $0
   i32.const 0
   i32.const 1
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 1
   i32.const 2
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 2
   i32.const 3
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 3
   i32.const 4
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 4
   i32.const 5
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   local.get $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 2
   call $~lib/array/Array<std/array/Ref>#splice
   local.tee $1
   i32.store offset=12
   local.get $1
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 482
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 0
   call $~lib/array/Array<std/array/Ref>#__get
   i32.load
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 483
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 1
   call $~lib/array/Array<std/array/Ref>#__get
   i32.load
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 484
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=12
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 486
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   call $~lib/array/Array<std/array/Ref>#__get
   i32.load
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 487
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   call $~lib/array/Array<std/array/Ref>#__get
   i32.load
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 488
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   call $~lib/array/Array<std/array/Ref>#__get
   i32.load
   i32.const 5
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 489
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 3
   i32.const 2
   i32.const 11
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=20
   local.get $1
   i32.const 0
   i32.const 1
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 1
   i32.const 0
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 2
   i32.const 2
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $1
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   i32.const 0
   local.get $1
   i32.load offset=12
   local.tee $9
   local.get $9
   i32.const 0
   i32.gt_s
   select
   local.set $5
   local.get $0
   i32.const 1
   local.get $9
   local.get $5
   i32.sub
   local.tee $0
   local.get $0
   i32.const 1
   i32.gt_s
   select
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
   local.tee $2
   i32.const 2
   i32.const 11
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $7
   i32.store
   local.get $7
   i32.load offset=4
   local.get $1
   i32.load offset=4
   local.tee $3
   local.get $5
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   local.get $2
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
   local.get $9
   local.get $2
   local.get $5
   i32.add
   local.tee $5
   i32.ne
   if
    local.get $0
    local.get $3
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    local.get $9
    local.get $5
    i32.sub
    i32.const 2
    i32.shl
    call $~lib/memory/memory.copy
   end
   local.get $1
   local.get $9
   local.get $2
   i32.sub
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $7
   i32.store offset=24
   local.get $7
   i32.load offset=12
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 494
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.const 0
   call $~lib/array/Array<std/array/Ref|null>#__get
   local.tee $0
   i32.store offset=28
   local.get $0
   i32.eqz
   if
    i32.const 5824
    i32.const 1552
    i32.const 495
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 495
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
    i32.const 1552
    i32.const 497
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 0
   call $~lib/array/Array<std/array/Ref|null>#__get
   if
    i32.const 0
    i32.const 1552
    i32.const 498
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 1
   call $~lib/array/Array<std/array/Ref|null>#__get
   local.tee $1
   i32.store offset=28
   local.get $1
   i32.eqz
   if
    i32.const 5824
    i32.const 1552
    i32.const 499
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 499
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   i32.const 1
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   i32.const 2
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   i32.const 3
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 5888
   i32.store offset=8
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#findIndex
    loop $for-loop|037
     local.get $1
     local.get $3
     local.get $4
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $3
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $4
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 3
      global.set $~argumentsLength
      local.get $1
      local.get $4
      i32.const 5888
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|037
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   if
    i32.const 0
    i32.const 1552
    i32.const 512
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 5920
   i32.store offset=8
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#findIndex38
    loop $for-loop|039
     local.get $1
     local.get $3
     local.get $4
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $3
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $4
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 3
      global.set $~argumentsLength
      local.get $1
      local.get $4
      i32.const 5920
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex38
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|039
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 515
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 5952
   i32.store offset=8
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#findIndex40
    loop $for-loop|041
     local.get $1
     local.get $3
     local.get $4
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $3
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $4
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 3
      global.set $~argumentsLength
      local.get $1
      local.get $4
      i32.const 5952
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex40
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|041
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 518
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 5984
   i32.store offset=8
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#findIndex42
    loop $for-loop|043
     local.get $1
     local.get $3
     local.get $4
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $3
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $4
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 3
      global.set $~argumentsLength
      local.get $1
      local.get $4
      i32.const 5984
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex42
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|043
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 526
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 527
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6016
   i32.store offset=8
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#findIndex44
    loop $for-loop|045
     local.get $1
     local.get $3
     local.get $4
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $3
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $4
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 3
      global.set $~argumentsLength
      local.get $1
      local.get $4
      i32.const 6016
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex44
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|045
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.eq
   if
    i32.const 0
    i32.const 1552
    i32.const 529
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6048
   i32.store offset=8
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $3
   block $__inlined_func$~lib/array/Array<i32>#findIndex46
    loop $for-loop|047
     local.get $1
     local.get $3
     local.get $4
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $3
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $4
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 3
      global.set $~argumentsLength
      local.get $1
      local.get $4
      i32.const 6048
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex46
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|047
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 542
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 543
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $1
   i32.const 6080
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#every (result i32)
    i32.const 0
    local.set $0
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|048
     local.get $0
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $4
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $5
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $1
      i32.const 3
      global.set $~argumentsLength
      i32.const 0
      local.get $1
      local.get $0
      local.get $5
      i32.const 6080
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.eqz
      br_if $__inlined_func$~lib/array/Array<i32>#every
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|048
     end
    end
    i32.const 1
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 553
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $1
   i32.const 6112
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#every49 (result i32)
    i32.const 0
    local.set $0
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|050
     local.get $0
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $4
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $5
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $1
      i32.const 3
      global.set $~argumentsLength
      i32.const 0
      local.get $1
      local.get $0
      local.get $5
      i32.const 6112
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.eqz
      br_if $__inlined_func$~lib/array/Array<i32>#every49
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|050
     end
    end
    i32.const 1
   end
   if
    i32.const 0
    i32.const 1552
    i32.const 556
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $1
   i32.const 6144
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#every51 (result i32)
    i32.const 0
    local.set $0
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|052
     local.get $0
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $4
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $5
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $1
      i32.const 3
      global.set $~argumentsLength
      i32.const 0
      local.get $1
      local.get $0
      local.get $5
      i32.const 6144
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.eqz
      br_if $__inlined_func$~lib/array/Array<i32>#every51
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|052
     end
    end
    i32.const 1
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 564
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 565
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $1
   i32.const 6176
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#every53 (result i32)
    i32.const 0
    local.set $0
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|054
     local.get $0
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $4
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $5
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $1
      i32.const 3
      global.set $~argumentsLength
      i32.const 0
      local.get $1
      local.get $0
      local.get $5
      i32.const 6176
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.eqz
      br_if $__inlined_func$~lib/array/Array<i32>#every53
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|054
     end
    end
    i32.const 1
   end
   if
    i32.const 0
    i32.const 1552
    i32.const 567
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $1
   i32.const 6208
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#every55 (result i32)
    i32.const 0
    local.set $0
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|056
     local.get $0
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $4
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $5
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $1
      i32.const 3
      global.set $~argumentsLength
      i32.const 0
      local.get $1
      local.get $0
      local.get $5
      i32.const 6208
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.eqz
      br_if $__inlined_func$~lib/array/Array<i32>#every55
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|056
     end
    end
    i32.const 1
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 580
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 581
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $1
   i32.const 6240
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#some (result i32)
    i32.const 0
    local.set $0
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|057
     local.get $0
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $4
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $5
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $1
      i32.const 3
      global.set $~argumentsLength
      i32.const 1
      local.get $1
      local.get $0
      local.get $5
      i32.const 6240
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#some
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|057
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 591
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $1
   i32.const 6272
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#some58 (result i32)
    i32.const 0
    local.set $0
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|059
     local.get $0
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $4
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $5
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $1
      i32.const 3
      global.set $~argumentsLength
      i32.const 1
      local.get $1
      local.get $0
      local.get $5
      i32.const 6272
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#some58
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|059
     end
    end
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1552
    i32.const 594
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $1
   i32.const 6304
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#some60 (result i32)
    i32.const 0
    local.set $0
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|061
     local.get $0
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $4
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $5
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $1
      i32.const 3
      global.set $~argumentsLength
      i32.const 1
      local.get $1
      local.get $0
      local.get $5
      i32.const 6304
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#some60
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|061
     end
    end
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1552
    i32.const 602
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 603
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $1
   i32.const 6336
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#some62 (result i32)
    i32.const 0
    local.set $0
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|063
     local.get $0
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $4
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $5
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $1
      i32.const 3
      global.set $~argumentsLength
      i32.const 1
      local.get $1
      local.get $0
      local.get $5
      i32.const 6336
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#some62
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|063
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 605
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $1
   i32.const 6368
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#some64 (result i32)
    i32.const 0
    local.set $0
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|065
     local.get $0
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $4
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $5
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $1
      i32.const 3
      global.set $~argumentsLength
      i32.const 1
      local.get $1
      local.get $0
      local.get $5
      i32.const 6368
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#some64
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|065
     end
    end
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1552
    i32.const 618
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 619
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6400
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|066
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 3
     global.set $~argumentsLength
     local.get $0
     local.get $4
     i32.const 6400
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_none)
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|066
    end
   end
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 630
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6432
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|068
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 3
     global.set $~argumentsLength
     local.get $0
     local.get $4
     i32.const 6432
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_none)
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|068
    end
   end
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 639
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 640
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6464
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|070
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 3
     global.set $~argumentsLength
     local.get $0
     local.get $4
     i32.const 6464
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_none)
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|070
    end
   end
   global.get $std/array/i
   i32.const 406
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 643
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6496
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|072
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 3
     global.set $~argumentsLength
     local.get $0
     local.get $4
     i32.const 6496
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_none)
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|072
    end
   end
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 657
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 658
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6528
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|074
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 3
     global.set $~argumentsLength
     local.get $0
     local.get $4
     i32.const 6528
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_none)
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|074
    end
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 683
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $0
   loop $for-loop|075
    local.get $0
    i32.const 100
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     global.get $std/array/arr
     local.tee $1
     i32.store
     local.get $1
     call $~lib/array/Array<i32>#pop
     drop
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|075
    end
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $7
   i32.store
   local.get $1
   i32.const 6560
   i32.store offset=8
   i32.const 0
   local.set $6
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $7
   i32.load offset=12
   local.tee $5
   i32.const 2
   i32.const 9
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.set $4
   loop $for-loop|044
    local.get $6
    local.get $5
    local.get $7
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $5
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $6
     i32.const 2
     i32.shl
     local.tee $3
     local.get $7
     i32.load offset=4
     i32.add
     i32.load
     local.set $0
     i32.const 3
     global.set $~argumentsLength
     local.get $3
     local.get $4
     i32.add
     local.get $0
     local.get $6
     local.get $7
     i32.const 6560
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_f32)
     f32.store
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $for-loop|044
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   i32.store offset=24
   local.get $2
   i32.load offset=12
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 697
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 0
   call $~lib/array/Array<f32>#__get
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   f32.convert_i32_s
   f32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 698
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $0
   i32.const 6592
   i32.store offset=8
   local.get $1
   i32.const 6592
   call $~lib/array/Array<i32>#map<i32>
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 707
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 708
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $0
   i32.const 6624
   i32.store offset=8
   local.get $1
   i32.const 6624
   call $~lib/array/Array<i32>#map<i32>
   global.get $std/array/i
   i32.const 406
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 715
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $0
   i32.const 6656
   i32.store offset=8
   local.get $1
   i32.const 6656
   call $~lib/array/Array<i32>#map<i32>
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 730
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 731
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $0
   i32.const 6688
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 6688
   call $~lib/array/Array<i32>#filter
   local.tee $1
   i32.store offset=24
   local.get $1
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 741
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $0
   i32.const 6720
   i32.store offset=8
   local.get $1
   i32.const 6720
   call $~lib/array/Array<i32>#filter
   drop
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 750
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 751
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $0
   i32.const 6752
   i32.store offset=8
   local.get $1
   i32.const 6752
   call $~lib/array/Array<i32>#filter
   drop
   global.get $std/array/i
   i32.const 406
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 758
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $0
   i32.const 6784
   i32.store offset=8
   local.get $1
   i32.const 6784
   call $~lib/array/Array<i32>#filter
   drop
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 773
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 774
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6816
   i32.store offset=8
   i32.const 0
   local.set $6
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|077
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $4
     i32.const 6816
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|077
    end
   end
   local.get $6
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 784
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6848
   i32.store offset=8
   i32.const 4
   local.set $6
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|079
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $4
     i32.const 6848
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|079
    end
   end
   local.get $6
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 788
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6880
   i32.store offset=8
   i32.const 0
   local.set $6
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|081
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $4
     i32.const 6880
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|081
    end
   end
   local.get $6
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 791
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6912
   i32.store offset=8
   i32.const 0
   local.set $6
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|083
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $4
     i32.const 6912
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|083
    end
   end
   local.get $6
   if
    i32.const 0
    i32.const 1552
    i32.const 794
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6944
   i32.store offset=8
   i32.const 0
   local.set $6
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|085
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $4
     i32.const 6944
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|085
    end
   end
   local.get $6
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 802
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 803
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 6976
   i32.store offset=8
   i32.const 0
   local.set $6
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|087
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $4
     i32.const 6976
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|087
    end
   end
   local.get $6
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 805
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $1
   i32.const 7008
   i32.store offset=8
   i32.const 0
   local.set $6
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $3
   loop $for-loop|089
    local.get $0
    local.get $3
    local.get $4
    i32.load offset=12
    local.tee $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $4
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $4
     i32.const 7008
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|089
    end
   end
   local.get $6
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 818
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 819
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $3
   i32.store
   local.get $1
   i32.const 7040
   i32.store offset=8
   i32.const 0
   local.set $6
   local.get $3
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $0
   loop $for-loop|090
    local.get $0
    i32.const 0
    i32.ge_s
    if
     local.get $3
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $3
     i32.const 7040
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|090
    end
   end
   local.get $6
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 829
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $3
   i32.store
   local.get $1
   i32.const 7072
   i32.store offset=8
   i32.const 4
   local.set $6
   local.get $3
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $0
   loop $for-loop|092
    local.get $0
    i32.const 0
    i32.ge_s
    if
     local.get $3
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $3
     i32.const 7072
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|092
    end
   end
   local.get $6
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 833
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $3
   i32.store
   local.get $1
   i32.const 7104
   i32.store offset=8
   i32.const 0
   local.set $6
   local.get $3
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $0
   loop $for-loop|094
    local.get $0
    i32.const 0
    i32.ge_s
    if
     local.get $3
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $3
     i32.const 7104
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|094
    end
   end
   local.get $6
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 836
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $3
   i32.store
   local.get $1
   i32.const 7136
   i32.store offset=8
   i32.const 0
   local.set $6
   local.get $3
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $0
   loop $for-loop|096
    local.get $0
    i32.const 0
    i32.ge_s
    if
     local.get $3
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $3
     i32.const 7136
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|096
    end
   end
   local.get $6
   if
    i32.const 0
    i32.const 1552
    i32.const 839
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $3
   i32.store
   local.get $1
   i32.const 7168
   i32.store offset=8
   i32.const 0
   local.set $6
   local.get $3
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $0
   loop $for-loop|098
    local.get $0
    i32.const 0
    i32.ge_s
    if
     local.get $3
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $3
     i32.const 7168
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|098
    end
   end
   local.get $6
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 847
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 848
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $3
   i32.store
   local.get $1
   i32.const 7200
   i32.store offset=8
   i32.const 0
   local.set $6
   local.get $3
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $0
   loop $for-loop|0100
    local.get $0
    i32.const 0
    i32.ge_s
    if
     local.get $3
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $3
     i32.const 7200
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|0100
    end
   end
   local.get $6
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 850
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $3
   i32.store
   local.get $1
   i32.const 7232
   i32.store offset=8
   i32.const 0
   local.set $6
   local.get $3
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $0
   loop $for-loop|0102
    local.get $0
    i32.const 0
    i32.ge_s
    if
     local.get $3
     i32.load offset=4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     i32.const 4
     global.set $~argumentsLength
     local.get $6
     local.get $1
     local.get $0
     local.get $3
     i32.const 7232
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $6
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|0102
    end
   end
   local.get $6
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 863
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 864
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 1
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   local.get $1
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   call $~lib/bindings/Math/random
   i64.reinterpret_f64
   call $~lib/math/NativeMath.seedRandom
   global.get $~lib/memory/__stack_pointer
   i32.const 3
   i32.const 2
   i32.const 9
   i32.const 7504
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=20
   i32.const 0
   global.set $~argumentsLength
   local.get $0
   call $~lib/array/Array<f32>#sort@varargs
   i32.const 3
   i32.const 2
   i32.const 9
   i32.const 7568
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $std/array/isArraysEqual<f32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 953
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 2
   i32.const 9
   i32.const 7600
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=24
   i32.const 0
   global.set $~argumentsLength
   local.get $0
   call $~lib/array/Array<f32>#sort@varargs
   i32.const 8
   i32.const 2
   i32.const 9
   i32.const 7664
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $std/array/isArraysEqual<f32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 957
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 3
   i32.const 10
   i32.const 7728
   call $~lib/rt/__newArray
   local.tee $5
   i32.store offset=12
   i32.const 0
   global.set $~argumentsLength
   i32.const 0
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of146
    block $0of147
     block $outOfRange48
      global.get $~argumentsLength
      br_table $0of147 $1of146 $outOfRange48
     end
     unreachable
    end
    i32.const 7824
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 7824
    i32.store
   end
   local.get $5
   i32.load offset=4
   local.get $5
   i32.load offset=12
   local.get $1
   call $~lib/util/sort/SORT<f64>
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 3
   i32.const 10
   i32.const 7856
   call $~lib/rt/__newArray
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   block $__inlined_func$std/array/isArraysEqual<f64> (result i32)
    i32.const 0
    local.set $1
    i32.const 0
    local.get $5
    i32.load offset=12
    local.tee $0
    local.get $4
    i32.load offset=12
    i32.ne
    br_if $__inlined_func$std/array/isArraysEqual<f64>
    drop
    i32.const 1
    local.get $4
    local.get $5
    i32.eq
    br_if $__inlined_func$std/array/isArraysEqual<f64>
    drop
    loop $for-loop|025
     local.get $0
     local.get $1
     i32.gt_s
     if
      local.get $5
      local.get $1
      call $~lib/array/Array<f64>#__get
      local.tee $11
      local.get $11
      f64.ne
      if (result i32)
       local.get $4
       local.get $1
       call $~lib/array/Array<f64>#__get
       local.tee $11
       local.get $11
       f64.ne
      else
       i32.const 0
      end
      i32.eqz
      if
       i32.const 0
       local.get $5
       local.get $1
       call $~lib/array/Array<f64>#__get
       local.get $4
       local.get $1
       call $~lib/array/Array<f64>#__get
       f64.ne
       br_if $__inlined_func$std/array/isArraysEqual<f64>
       drop
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|025
     end
    end
    i32.const 1
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 961
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 7952
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=16
   i32.const 0
   global.set $~argumentsLength
   i32.const 0
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of155
    block $0of156
     block $outOfRange57
      global.get $~argumentsLength
      br_table $0of156 $1of155 $outOfRange57
     end
     unreachable
    end
    i32.const 8000
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 8000
    i32.store
   end
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=12
   local.get $1
   call $~lib/util/sort/SORT<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 8032
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 965
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 8080
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=4
   i32.const 0
   global.set $~argumentsLength
   local.get $0
   i32.const 0
   call $~lib/array/Array<u32>#sort@varargs
   drop
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 8160
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $std/array/isArraysEqual<u32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 969
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 8208
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 8240
   call $~lib/rt/__newArray
   local.tee $10
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 8272
   call $~lib/rt/__newArray
   local.tee $9
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 8304
   call $~lib/rt/__newArray
   local.tee $7
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 8352
   call $~lib/rt/__newArray
   local.tee $6
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   call $std/array/createReverseOrderedArray
   local.tee $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   i32.const 128
   call $std/array/createReverseOrderedArray
   local.tee $5
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   i32.const 1024
   call $std/array/createReverseOrderedArray
   local.tee $4
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   i32.const 10000
   call $std/array/createReverseOrderedArray
   local.tee $3
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   i32.const 512
   call $std/array/createRandomOrderedArray
   local.tee $1
   i32.store offset=64
   local.get $0
   call $std/array/assertSortedDefault<i32>
   local.get $10
   call $std/array/assertSortedDefault<i32>
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 8432
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $10
   local.get $0
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 989
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $9
   call $std/array/assertSortedDefault<i32>
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 8464
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $9
   local.get $0
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 992
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   call $std/array/assertSortedDefault<i32>
   local.get $7
   local.get $6
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 995
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   call $std/array/assertSortedDefault<i32>
   local.get $2
   local.get $6
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 998
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $5
   call $std/array/assertSortedDefault<i32>
   local.get $5
   local.get $6
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1001
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   call $std/array/assertSortedDefault<i32>
   local.get $4
   local.get $6
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1004
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   call $std/array/assertSortedDefault<i32>
   local.get $3
   local.get $6
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1007
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $std/array/assertSortedDefault<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   call $std/array/createRandomOrderedArray
   local.tee $0
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   i32.const 257
   call $std/array/createRandomOrderedArray
   local.tee $1
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   i32.const 8496
   i32.store offset=8
   local.get $0
   i32.const 8496
   call $std/array/assertSorted<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 8528
   i32.store offset=8
   local.get $0
   i32.const 8528
   call $std/array/assertSorted<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 8560
   i32.store offset=8
   local.get $1
   i32.const 8560
   call $std/array/assertSorted<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 8592
   i32.store offset=8
   local.get $1
   i32.const 8592
   call $std/array/assertSorted<i32>
   i32.const 0
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 16
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.store
   local.get $5
   i32.const 0
   i32.store
   local.get $5
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $5
   i32.const 0
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.store offset=8
   local.get $5
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.const 32
   call $~lib/memory/memory.fill
   local.get $5
   local.get $1
   i32.store
   local.get $5
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $5
   local.get $1
   i32.store offset=4
   local.get $5
   i32.const 32
   i32.store offset=8
   local.get $5
   i32.const 2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $5
   i32.store
   loop $for-loop|058
    local.get $0
    i32.const 2
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     call $~lib/array/Array<i32>#constructor
     local.tee $1
     i32.store offset=4
     local.get $1
     i32.const 0
     i32.const 1
     local.get $0
     i32.sub
     call $~lib/array/Array<i32>#__set
     local.get $5
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/array/Array<i32>>#__set
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|058
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $5
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   i32.const 8624
   i32.store offset=8
   local.get $5
   i32.const 8624
   call $std/array/assertSorted<~lib/array/Array<i32>>
   i32.const 0
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 16
   i32.const 25
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 2048
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.const 2048
   call $~lib/memory/memory.fill
   local.get $1
   local.get $4
   i32.store
   local.get $1
   local.get $4
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   local.get $4
   i32.store offset=4
   local.get $1
   i32.const 2048
   i32.store offset=8
   local.get $1
   i32.const 512
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store
   loop $for-loop|053
    local.get $5
    i32.const 512
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 15108
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i32.const 0
     i32.store
     local.get $0
     i32.const 4
     i32.const 24
     call $~lib/rt/itcms/__new
     local.tee $0
     i32.store
     local.get $0
     i32.const 511
     local.get $5
     i32.sub
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $1
     local.get $5
     local.get $0
     call $~lib/array/Array<~lib/array/Array<i32>>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|053
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $1
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   i32.const 8656
   i32.store offset=8
   local.get $1
   i32.const 8656
   call $std/array/assertSorted<~lib/array/Array<i32>>
   global.get $~lib/memory/__stack_pointer
   i32.const 7
   i32.const 2
   i32.const 27
   i32.const 8848
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   i32.const 7
   i32.const 2
   i32.const 27
   i32.const 8896
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=56
   i32.const 1
   global.set $~argumentsLength
   local.get $1
   local.set $0
   i32.const 0
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of156
    block $0of157
     block $outOfRange58
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of157 $1of156 $outOfRange58
     end
     unreachable
    end
    i32.const 8944
    local.set $7
    global.get $~lib/memory/__stack_pointer
    i32.const 8944
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=12
   local.get $7
   call $~lib/util/sort/SORT<~lib/array/Array<i32>>
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store
   block $__inlined_func$std/array/isSorted<~lib/string/String|null> (result i32)
    local.get $4
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 15108
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    i32.const 1
    local.set $9
    local.get $0
    i32.load offset=12
    local.set $4
    loop $for-loop|060
     local.get $4
     local.get $9
     i32.gt_s
     if
      local.get $0
      local.get $9
      i32.const 1
      i32.sub
      call $~lib/array/Array<std/array/Ref|null>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      local.get $0
      local.get $9
      call $~lib/array/Array<std/array/Ref|null>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      i32.const 2
      global.set $~argumentsLength
      local.get $2
      local.get $5
      local.get $7
      i32.load
      call_indirect $0 (type $i32_i32_=>_i32)
      i32.const 0
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 0
       br $__inlined_func$std/array/isSorted<~lib/string/String|null>
      end
      local.get $9
      i32.const 1
      i32.add
      local.set $9
      br $for-loop|060
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 942
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   block $__inlined_func$std/array/isArraysEqual<~lib/string/String|null> (result i32)
    i32.const 0
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 15108
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    block $folding-inner161
     block $folding-inner062
      local.get $1
      i32.load offset=12
      local.tee $0
      local.get $3
      i32.load offset=12
      i32.ne
      br_if $folding-inner062
      local.get $1
      local.get $3
      i32.eq
      br_if $folding-inner161
      loop $for-loop|064
       local.get $0
       local.get $2
       i32.gt_s
       if
        local.get $1
        local.get $2
        call $~lib/array/Array<std/array/Ref|null>#__get
        local.set $5
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $3
        local.get $2
        call $~lib/array/Array<std/array/Ref|null>#__get
        local.set $4
        global.get $~lib/memory/__stack_pointer
        local.get $4
        i32.store offset=4
        local.get $5
        local.get $4
        call $~lib/string/String.__eq
        i32.eqz
        br_if $folding-inner062
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|064
       end
      end
      br $folding-inner161
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     br $__inlined_func$std/array/isArraysEqual<~lib/string/String|null>
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1044
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.const 400
   call $~lib/array/Array<~lib/string/String>#constructor
   local.tee $10
   i32.store
   loop $for-loop|059107
    local.get $0
    i32.const 400
    i32.lt_s
    if
     call $~lib/math/NativeMath.random
     f64.const 32
     f64.mul
     i32.trunc_f64_s
     local.set $5
     i32.const 0
     local.set $9
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 15108
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i64.const 0
     i64.store
     local.get $3
     i32.const 0
     i32.store offset=8
     i32.const 8816
     local.set $1
     local.get $3
     i32.const 8816
     i32.store
     loop $for-loop|067
      local.get $5
      local.get $9
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       i32.const 7312
       i32.store offset=4
       call $~lib/math/NativeMath.random
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       i32.const 7312
       i32.store offset=8
       i32.const 7308
       i32.load
       i32.const 1
       i32.shr_u
       f64.convert_i32_s
       f64.mul
       f64.floor
       i32.trunc_f64_s
       local.set $7
       local.get $3
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 15108
       i32.lt_s
       br_if $folding-inner2
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.store
       block $__inlined_func$~lib/string/String#charAt
        local.get $7
        i32.const 7308
        i32.load
        i32.const 1
        i32.shr_u
        i32.ge_u
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const 8816
         local.set $3
         br $__inlined_func$~lib/string/String#charAt
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 2
        i32.const 1
        call $~lib/rt/itcms/__new
        local.tee $3
        i32.store
        local.get $3
        local.get $7
        i32.const 1
        i32.shl
        i32.const 7312
        i32.add
        i32.load16_u
        i32.store16
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
       end
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=4
       local.get $4
       local.get $1
       local.get $3
       call $~lib/string/String.__concat
       local.tee $1
       i32.store
       local.get $9
       i32.const 1
       i32.add
       local.set $9
       br $for-loop|067
      end
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $10
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/array/Array<i32>>#__set
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|059107
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $10
   i32.store offset=60
   i32.const 1
   global.set $~argumentsLength
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of160
    block $0of161
     block $outOfRange62
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of161 $1of160 $outOfRange62
     end
     unreachable
    end
    i32.const 8976
    local.set $6
    global.get $~lib/memory/__stack_pointer
    i32.const 8976
    i32.store
   end
   local.get $10
   local.get $6
   call $std/array/assertSorted<~lib/array/Array<i32>>
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2
   i32.const 0
   i32.const 31
   i32.const 9008
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $1
   i32.store offset=68
   local.get $3
   i32.const 9104
   i32.store offset=72
   local.get $1
   i32.load offset=4
   local.set $7
   local.get $1
   i32.load offset=12
   local.set $1
   i32.const 0
   local.set $0
   i32.const 0
   local.set $6
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/string/joinBooleanArray
    local.get $1
    i32.const 1
    i32.sub
    local.tee $9
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 8816
     local.set $1
     br $__inlined_func$~lib/util/string/joinBooleanArray
    end
    block $folding-inner069
     local.get $9
     i32.eqz
     if
      i32.const 9040
      i32.const 9072
      local.get $7
      i32.load8_u
      select
      local.set $1
      br $folding-inner069
     end
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.const 9100
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $2
     i32.const 5
     i32.add
     i32.mul
     i32.const 5
     i32.add
     local.tee $4
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     loop $for-loop|1
      local.get $6
      local.get $9
      i32.lt_s
      if
       local.get $6
       local.get $7
       i32.add
       i32.load8_u
       local.tee $3
       i32.eqz
       i32.const 4
       i32.add
       local.set $5
       local.get $1
       local.get $0
       i32.const 1
       i32.shl
       i32.add
       i32.const 9040
       i32.const 9072
       local.get $3
       select
       local.get $5
       i32.const 1
       i32.shl
       call $~lib/memory/memory.copy
       local.get $0
       local.get $5
       i32.add
       local.set $0
       local.get $2
       if
        local.get $1
        local.get $0
        i32.const 1
        i32.shl
        i32.add
        i32.const 9104
        local.get $2
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get $0
        local.get $2
        i32.add
        local.set $0
       end
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       br $for-loop|1
      end
     end
     local.get $7
     local.get $9
     i32.add
     i32.load8_u
     local.tee $3
     i32.eqz
     i32.const 4
     i32.add
     local.set $5
     local.get $1
     local.get $0
     i32.const 1
     i32.shl
     i32.add
     i32.const 9040
     i32.const 9072
     local.get $3
     select
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $4
     local.get $0
     local.get $5
     i32.add
     local.tee $0
     i32.gt_s
     if
      local.get $1
      local.get $0
      call $~lib/string/String#substring
      local.set $1
      br $folding-inner069
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinBooleanArray
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 9136
   i32.store offset=8
   local.get $1
   i32.const 9136
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1053
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 9184
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=68
   local.get $1
   i32.const 8816
   i32.store offset=72
   local.get $0
   i32.const 8816
   call $~lib/array/Array<i32>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 10992
   i32.store offset=8
   local.get $0
   i32.const 10992
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1054
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 7
   i32.const 11024
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=68
   local.get $1
   i32.const 11056
   i32.store offset=72
   local.get $0
   i32.const 11056
   call $~lib/array/Array<u32>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 10992
   i32.store offset=8
   local.get $0
   i32.const 10992
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1055
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 11088
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=68
   local.get $1
   i32.const 11120
   i32.store offset=72
   local.get $0
   i32.const 11120
   call $~lib/array/Array<i32>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 11152
   i32.store offset=8
   local.get $0
   i32.const 11152
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1056
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 6
   i32.const 3
   i32.const 10
   i32.const 11232
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=68
   local.get $1
   i32.const 11312
   i32.store offset=72
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=12
   call $~lib/util/string/joinFloatArray<f64>
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 12480
   i32.store offset=8
   local.get $0
   i32.const 12480
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1057
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 27
   i32.const 12624
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=68
   local.get $1
   i32.const 8816
   i32.store offset=72
   local.get $0
   i32.const 8816
   call $~lib/array/Array<~lib/string/String|null>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 12592
   i32.store offset=8
   local.get $0
   i32.const 12592
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1058
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 3
   i32.const 2
   i32.const 11
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=56
   local.get $0
   i32.const 0
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 1
   i32.const 0
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 2
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   local.get $0
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   i32.const 9104
   i32.store offset=72
   local.get $0
   call $~lib/array/Array<std/array/Ref|null>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 12720
   i32.store offset=8
   local.get $0
   i32.const 12720
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1060
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 2
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=64
   local.get $0
   i32.const 0
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 1
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   local.get $0
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   i32.const 9104
   i32.store offset=72
   local.get $0
   call $~lib/array/Array<std/array/Ref|null>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 12816
   i32.store offset=8
   local.get $0
   i32.const 12816
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1063
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 12912
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 12944
   call $~lib/rt/__newArray
   local.tee $4
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 12976
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 13008
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=48
   local.get $1
   call $~lib/array/Array<i32>#toString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $5
   i32.store
   local.get $1
   i32.const 8816
   i32.store offset=8
   local.get $5
   i32.const 8816
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1073
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   call $~lib/array/Array<i32>#toString
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $4
   i32.store
   local.get $1
   i32.const 12592
   i32.store offset=8
   local.get $4
   i32.const 12592
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1074
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   call $~lib/array/Array<i32>#toString
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $3
   i32.store
   local.get $1
   i32.const 13056
   i32.store offset=8
   local.get $3
   i32.const 13056
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1075
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/array/Array<i32>#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 13088
   i32.store offset=8
   local.get $0
   i32.const 13088
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1076
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 0
   i32.const 32
   i32.const 13136
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=68
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 9104
   i32.store
   local.get $0
   i32.load offset=4
   local.set $5
   local.get $0
   i32.load offset=12
   local.set $1
   i32.const 0
   local.set $0
   i32.const 0
   local.set $6
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/string/joinIntegerArray<i8>
    local.get $1
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 8816
     local.set $1
     br $__inlined_func$~lib/util/string/joinIntegerArray<i8>
    end
    block $folding-inner0110
     local.get $2
     i32.eqz
     if
      local.get $5
      i32.load8_s
      call $~lib/util/number/itoa32
      local.set $1
      br $folding-inner0110
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.const 9100
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $4
     i32.const 11
     i32.add
     i32.mul
     i32.const 11
     i32.add
     local.tee $3
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     loop $for-loop|0111
      local.get $2
      local.get $6
      i32.gt_s
      if
       local.get $1
       local.get $0
       i32.const 1
       i32.shl
       i32.add
       local.get $5
       local.get $6
       i32.add
       i32.load8_s
       call $~lib/util/number/itoa_buffered<i8>
       local.get $0
       i32.add
       local.set $0
       local.get $4
       if
        local.get $1
        local.get $0
        i32.const 1
        i32.shl
        i32.add
        i32.const 9104
        local.get $4
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get $0
        local.get $4
        i32.add
        local.set $0
       end
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       br $for-loop|0111
      end
     end
     local.get $3
     local.get $1
     local.get $0
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $5
     i32.add
     i32.load8_s
     call $~lib/util/number/itoa_buffered<i8>
     local.get $0
     i32.add
     local.tee $0
     i32.gt_s
     if
      local.get $1
      local.get $0
      call $~lib/string/String#substring
      local.set $1
      br $folding-inner0110
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinIntegerArray<i8>
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 13168
   i32.store offset=8
   local.get $1
   i32.const 13168
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1078
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 1
   i32.const 33
   i32.const 13200
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=68
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 9104
   i32.store
   local.get $0
   i32.load offset=4
   local.set $5
   local.get $0
   i32.load offset=12
   local.set $1
   i32.const 0
   local.set $0
   i32.const 0
   local.set $6
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/string/joinIntegerArray<u16>
    local.get $1
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 8816
     local.set $1
     br $__inlined_func$~lib/util/string/joinIntegerArray<u16>
    end
    block $folding-inner0113
     local.get $2
     i32.eqz
     if
      local.get $5
      i32.load16_u
      call $~lib/util/number/utoa32
      local.set $1
      br $folding-inner0113
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.const 9100
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $4
     i32.const 10
     i32.add
     i32.mul
     i32.const 10
     i32.add
     local.tee $3
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     loop $for-loop|0114
      local.get $2
      local.get $6
      i32.gt_s
      if
       local.get $1
       local.get $0
       i32.const 1
       i32.shl
       i32.add
       local.get $5
       local.get $6
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
       call $~lib/util/number/itoa_buffered<u16>
       local.get $0
       i32.add
       local.set $0
       local.get $4
       if
        local.get $1
        local.get $0
        i32.const 1
        i32.shl
        i32.add
        i32.const 9104
        local.get $4
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get $0
        local.get $4
        i32.add
        local.set $0
       end
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       br $for-loop|0114
      end
     end
     local.get $3
     local.get $1
     local.get $0
     i32.const 1
     i32.shl
     i32.add
     local.get $5
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     call $~lib/util/number/itoa_buffered<u16>
     local.get $0
     i32.add
     local.tee $0
     i32.gt_s
     if
      local.get $1
      local.get $0
      call $~lib/string/String#substring
      local.set $1
      br $folding-inner0113
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinIntegerArray<u16>
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 13232
   i32.store offset=8
   local.get $1
   i32.const 13232
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1079
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 3
   i32.const 34
   i32.const 13280
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=68
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 9104
   i32.store
   local.get $0
   i32.load offset=4
   local.set $5
   local.get $0
   i32.load offset=12
   local.set $1
   i32.const 0
   local.set $0
   i32.const 0
   local.set $6
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/string/joinIntegerArray<u64>
    local.get $1
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 8816
     local.set $1
     br $__inlined_func$~lib/util/string/joinIntegerArray<u64>
    end
    block $folding-inner0116
     local.get $2
     i32.eqz
     if
      block $__inlined_func$~lib/util/number/utoa64 (result i32)
       local.get $5
       i64.load
       local.set $8
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 15108
       i32.lt_s
       br_if $folding-inner2
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.store
       local.get $8
       i64.eqz
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 9408
        br $__inlined_func$~lib/util/number/utoa64
       end
       local.get $8
       i64.const 4294967295
       i64.le_u
       if
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.wrap_i64
        local.tee $3
        local.tee $1
        i32.const 100000
        i32.lt_u
        if (result i32)
         local.get $1
         i32.const 100
         i32.lt_u
         if (result i32)
          local.get $1
          i32.const 10
          i32.ge_u
          i32.const 1
          i32.add
         else
          local.get $1
          i32.const 10000
          i32.ge_u
          i32.const 3
          i32.add
          local.get $1
          i32.const 1000
          i32.ge_u
          i32.add
         end
        else
         local.get $1
         i32.const 10000000
         i32.lt_u
         if (result i32)
          local.get $1
          i32.const 1000000
          i32.ge_u
          i32.const 6
          i32.add
         else
          local.get $1
          i32.const 1000000000
          i32.ge_u
          i32.const 8
          i32.add
          local.get $1
          i32.const 100000000
          i32.ge_u
          i32.add
         end
        end
        local.tee $1
        i32.const 1
        i32.shl
        i32.const 1
        call $~lib/rt/itcms/__new
        local.tee $0
        i32.store
        local.get $0
        local.get $3
        local.get $1
        call $~lib/util/number/utoa32_dec_lut
       else
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i64.const 1000000000000000
        i64.lt_u
        if (result i32)
         local.get $8
         i64.const 1000000000000
         i64.lt_u
         if (result i32)
          local.get $8
          i64.const 100000000000
          i64.ge_u
          i32.const 10
          i32.add
          local.get $8
          i64.const 10000000000
          i64.ge_u
          i32.add
         else
          local.get $8
          i64.const 100000000000000
          i64.ge_u
          i32.const 13
          i32.add
          local.get $8
          i64.const 10000000000000
          i64.ge_u
          i32.add
         end
        else
         local.get $8
         i64.const 100000000000000000
         i64.lt_u
         if (result i32)
          local.get $8
          i64.const 10000000000000000
          i64.ge_u
          i32.const 16
          i32.add
         else
          local.get $8
          i64.const -8446744073709551616
          i64.ge_u
          i32.const 18
          i32.add
          local.get $8
          i64.const 1000000000000000000
          i64.ge_u
          i32.add
         end
        end
        local.tee $1
        i32.const 1
        i32.shl
        i32.const 1
        call $~lib/rt/itcms/__new
        local.tee $0
        i32.store
        local.get $0
        local.get $8
        local.get $1
        call $~lib/util/number/utoa64_dec_lut
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $0
      end
      local.set $1
      br $folding-inner0116
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.const 9100
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $4
     i32.const 20
     i32.add
     i32.mul
     i32.const 20
     i32.add
     local.tee $3
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     loop $for-loop|0117
      local.get $2
      local.get $6
      i32.gt_s
      if
       local.get $1
       local.get $0
       i32.const 1
       i32.shl
       i32.add
       local.get $5
       local.get $6
       i32.const 3
       i32.shl
       i32.add
       i64.load
       call $~lib/util/number/itoa_buffered<u64>
       local.get $0
       i32.add
       local.set $0
       local.get $4
       if
        local.get $1
        local.get $0
        i32.const 1
        i32.shl
        i32.add
        i32.const 9104
        local.get $4
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get $0
        local.get $4
        i32.add
        local.set $0
       end
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       br $for-loop|0117
      end
     end
     local.get $3
     local.get $1
     local.get $0
     i32.const 1
     i32.shl
     i32.add
     local.get $5
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     call $~lib/util/number/itoa_buffered<u64>
     local.get $0
     i32.add
     local.tee $0
     i32.gt_s
     if
      local.get $1
      local.get $0
      call $~lib/string/String#substring
      local.set $1
      br $folding-inner0116
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinIntegerArray<u64>
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 13328
   i32.store offset=8
   local.get $1
   i32.const 13328
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1080
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 3
   i32.const 35
   i32.const 13408
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=68
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 9104
   i32.store
   local.get $0
   i32.load offset=4
   local.set $5
   local.get $0
   i32.load offset=12
   local.set $1
   i32.const 0
   local.set $0
   i32.const 0
   local.set $6
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/string/joinIntegerArray<i64>
    local.get $1
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 8816
     local.set $1
     br $__inlined_func$~lib/util/string/joinIntegerArray<i64>
    end
    block $folding-inner0119
     local.get $2
     i32.eqz
     if
      local.get $5
      i64.load
      i32.wrap_i64
      i64.extend_i32_s
      local.set $8
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 15108
      i32.lt_s
      br_if $folding-inner2
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      block $__inlined_func$~lib/util/number/itoa64
       local.get $8
       i64.eqz
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 9408
        local.set $1
        br $__inlined_func$~lib/util/number/itoa64
       end
       i64.const 0
       local.get $8
       i64.sub
       local.get $8
       local.get $8
       i64.const 63
       i64.shr_u
       i32.wrap_i64
       local.tee $4
       select
       local.tee $8
       i64.const 4294967295
       i64.le_u
       if
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.wrap_i64
        local.tee $3
        local.tee $1
        i32.const 100000
        i32.lt_u
        if (result i32)
         local.get $1
         i32.const 100
         i32.lt_u
         if (result i32)
          local.get $1
          i32.const 10
          i32.ge_u
          i32.const 1
          i32.add
         else
          local.get $1
          i32.const 10000
          i32.ge_u
          i32.const 3
          i32.add
          local.get $1
          i32.const 1000
          i32.ge_u
          i32.add
         end
        else
         local.get $1
         i32.const 10000000
         i32.lt_u
         if (result i32)
          local.get $1
          i32.const 1000000
          i32.ge_u
          i32.const 6
          i32.add
         else
          local.get $1
          i32.const 1000000000
          i32.ge_u
          i32.const 8
          i32.add
          local.get $1
          i32.const 100000000
          i32.ge_u
          i32.add
         end
        end
        local.get $4
        i32.add
        local.tee $0
        i32.const 1
        i32.shl
        i32.const 1
        call $~lib/rt/itcms/__new
        local.tee $1
        i32.store
        local.get $1
        local.get $3
        local.get $0
        call $~lib/util/number/utoa32_dec_lut
       else
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i64.const 1000000000000000
        i64.lt_u
        if (result i32)
         local.get $8
         i64.const 1000000000000
         i64.lt_u
         if (result i32)
          local.get $8
          i64.const 100000000000
          i64.ge_u
          i32.const 10
          i32.add
          local.get $8
          i64.const 10000000000
          i64.ge_u
          i32.add
         else
          local.get $8
          i64.const 100000000000000
          i64.ge_u
          i32.const 13
          i32.add
          local.get $8
          i64.const 10000000000000
          i64.ge_u
          i32.add
         end
        else
         local.get $8
         i64.const 100000000000000000
         i64.lt_u
         if (result i32)
          local.get $8
          i64.const 10000000000000000
          i64.ge_u
          i32.const 16
          i32.add
         else
          local.get $8
          i64.const -8446744073709551616
          i64.ge_u
          i32.const 18
          i32.add
          local.get $8
          i64.const 1000000000000000000
          i64.ge_u
          i32.add
         end
        end
        local.get $4
        i32.add
        local.tee $0
        i32.const 1
        i32.shl
        i32.const 1
        call $~lib/rt/itcms/__new
        local.tee $1
        i32.store
        local.get $1
        local.get $8
        local.get $0
        call $~lib/util/number/utoa64_dec_lut
       end
       local.get $4
       if
        local.get $1
        i32.const 45
        i32.store16
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
      end
      br $folding-inner0119
     end
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.const 9100
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $4
     i32.const 21
     i32.add
     i32.mul
     i32.const 21
     i32.add
     local.tee $3
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     loop $for-loop|0120
      local.get $2
      local.get $6
      i32.gt_s
      if
       local.get $1
       local.get $0
       i32.const 1
       i32.shl
       i32.add
       local.get $5
       local.get $6
       i32.const 3
       i32.shl
       i32.add
       i64.load
       call $~lib/util/number/itoa_buffered<i64>
       local.get $0
       i32.add
       local.set $0
       local.get $4
       if
        local.get $1
        local.get $0
        i32.const 1
        i32.shl
        i32.add
        i32.const 9104
        local.get $4
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get $0
        local.get $4
        i32.add
        local.set $0
       end
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       br $for-loop|0120
      end
     end
     local.get $3
     local.get $1
     local.get $0
     i32.const 1
     i32.shl
     i32.add
     local.get $5
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     call $~lib/util/number/itoa_buffered<i64>
     local.get $0
     i32.add
     local.tee $0
     i32.gt_s
     if
      local.get $1
      local.get $0
      call $~lib/string/String#substring
      local.set $1
      br $folding-inner0119
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinIntegerArray<i64>
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 13472
   i32.store offset=8
   local.get $1
   i32.const 13472
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1081
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 7
   i32.const 2
   i32.const 27
   i32.const 13584
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=44
   local.get $1
   call $~lib/array/Array<~lib/string/String|null>#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 13632
   i32.store offset=8
   local.get $0
   i32.const 13632
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1085
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 2
   i32.const 27
   i32.const 13744
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=68
   local.get $1
   call $~lib/array/Array<~lib/string/String|null>#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 13792
   i32.store offset=8
   local.get $0
   i32.const 13792
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1086
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 2
   i32.const 2
   i32.const 22
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=64
   local.get $0
   i32.const 0
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 13824
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 1
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 13856
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   local.get $0
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 9104
   i32.store
   local.get $0
   i32.load offset=4
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $0
   i32.const 0
   local.set $7
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<i32>>
    local.get $0
    i32.const 1
    i32.sub
    local.tee $5
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 8816
     local.set $1
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<i32>>
    end
    local.get $5
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load
     local.tee $1
     i32.store
     local.get $1
     if (result i32)
      local.get $1
      call $~lib/array/Array<i32>#toString
     else
      i32.const 8816
     end
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<i32>>
    end
    i32.const 8816
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 8816
    i32.store offset=4
    i32.const 9100
    i32.load
    i32.const 1
    i32.shr_u
    local.set $3
    loop $for-loop|076
     local.get $5
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $7
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $4
      i32.store
      local.get $4
      if
       global.get $~lib/memory/__stack_pointer
       local.get $4
       call $~lib/array/Array<i32>#toString
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=8
       local.get $1
       local.get $4
       call $~lib/string/String.__concat
       local.tee $1
       i32.store offset=4
      end
      local.get $3
      if
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.const 9104
       call $~lib/string/String.__concat
       local.tee $1
       i32.store offset=4
      end
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|076
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $3
    i32.store
    local.get $3
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     call $~lib/array/Array<i32>#toString
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=8
     local.get $1
     local.get $3
     call $~lib/string/String.__concat
     local.tee $1
     i32.store offset=4
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 13888
   i32.store offset=8
   local.get $1
   i32.const 13888
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1089
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 2
   i32.const 2
   i32.const 36
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=36
   local.get $0
   i32.const 0
   i32.const 2
   i32.const 0
   i32.const 6
   i32.const 13936
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 1
   i32.const 2
   i32.const 0
   i32.const 6
   i32.const 13968
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 9104
   i32.store
   local.get $0
   i32.load offset=4
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $0
   i32.const 0
   local.set $7
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u8>>
    local.get $0
    i32.const 1
    i32.sub
    local.tee $5
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 8816
     local.set $1
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u8>>
    end
    local.get $5
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load
     local.tee $1
     i32.store
     local.get $1
     if (result i32)
      local.get $1
      call $~lib/array/Array<u8>#toString
     else
      i32.const 8816
     end
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u8>>
    end
    i32.const 8816
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 8816
    i32.store offset=4
    i32.const 9100
    i32.load
    i32.const 1
    i32.shr_u
    local.set $3
    loop $for-loop|078
     local.get $5
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $7
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $4
      i32.store
      local.get $4
      if
       global.get $~lib/memory/__stack_pointer
       local.get $4
       call $~lib/array/Array<u8>#toString
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=8
       local.get $1
       local.get $4
       call $~lib/string/String.__concat
       local.tee $1
       i32.store offset=4
      end
      local.get $3
      if
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.const 9104
       call $~lib/string/String.__concat
       local.tee $1
       i32.store offset=4
      end
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|078
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $3
    i32.store
    local.get $3
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     call $~lib/array/Array<u8>#toString
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=8
     local.get $1
     local.get $3
     call $~lib/string/String.__concat
     local.tee $1
     i32.store offset=4
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 13888
   i32.store offset=8
   local.get $1
   i32.const 13888
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1092
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 1
   i32.const 2
   i32.const 38
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $3
   i32.load offset=4
   i32.store offset=32
   local.get $1
   i32.const 1
   i32.const 2
   i32.const 37
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 2
   i32.const 7
   i32.const 14000
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $3
   i32.const 0
   local.get $1
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $3
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 9104
   i32.store
   local.get $3
   i32.load offset=4
   local.set $2
   local.get $3
   i32.load offset=12
   local.set $0
   i32.const 0
   local.set $7
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<~lib/array/Array<u32>>>
    local.get $0
    i32.const 1
    i32.sub
    local.tee $5
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 8816
     local.set $1
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<~lib/array/Array<u32>>>
    end
    local.get $5
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load
     local.tee $1
     i32.store
     local.get $1
     if (result i32)
      local.get $1
      call $~lib/array/Array<~lib/array/Array<u32>>#toString
     else
      i32.const 8816
     end
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<~lib/array/Array<u32>>>
    end
    i32.const 8816
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 8816
    i32.store offset=4
    i32.const 9100
    i32.load
    i32.const 1
    i32.shr_u
    local.set $3
    loop $for-loop|080
     local.get $5
     local.get $7
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $7
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $4
      i32.store
      local.get $4
      if
       global.get $~lib/memory/__stack_pointer
       local.get $4
       call $~lib/array/Array<~lib/array/Array<u32>>#toString
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=8
       local.get $1
       local.get $4
       call $~lib/string/String.__concat
       local.tee $1
       i32.store offset=4
      end
      local.get $3
      if
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.const 9104
       call $~lib/string/String.__concat
       local.tee $1
       i32.store offset=4
      end
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|080
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $3
    i32.store
    local.get $3
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     call $~lib/array/Array<~lib/array/Array<u32>>#toString
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=8
     local.get $1
     local.get $3
     call $~lib/string/String.__concat
     local.tee $1
     i32.store offset=4
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 12592
   i32.store offset=8
   local.get $1
   i32.const 12592
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1095
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 4
   i32.const 2
   i32.const 22
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=36
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 14032
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 1
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 14064
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 2
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 14096
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 3
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 14128
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   local.get $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/array/Array<~lib/array/Array<i32>>#flat
   local.tee $1
   i32.store offset=32
   local.get $1
   i32.load offset=12
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 1102
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $0
   loop $for-loop|1124
    local.get $0
    i32.const 10
    i32.lt_s
    if
     local.get $1
     local.get $0
     call $~lib/array/Array<i32>#__get
     local.get $0
     i32.ne
     if
      i32.const 0
      i32.const 1552
      i32.const 1104
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|1124
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 4
   i32.const 2
   i32.const 39
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $4
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   i32.store offset=44
   local.get $4
   i32.const 0
   i32.const 1
   i32.const 2
   i32.const 27
   i32.const 14192
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $4
   i32.const 1
   i32.const 3
   i32.const 2
   i32.const 27
   i32.const 14288
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $4
   i32.const 2
   i32.const 3
   i32.const 2
   i32.const 27
   i32.const 14416
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $4
   i32.const 3
   i32.const 1
   i32.const 2
   i32.const 27
   i32.const 14480
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   local.get $4
   i32.store offset=44
   i32.const 0
   local.set $0
   i32.const 0
   local.set $7
   i32.const 0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner2
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $4
   i32.load offset=12
   local.set $5
   local.get $4
   i32.load offset=4
   local.set $4
   loop $for-loop|0125
    local.get $0
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $1
     if (result i32)
      local.get $1
      i32.load offset=12
     else
      i32.const 0
     end
     local.get $7
     i32.add
     local.set $7
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0125
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.const 2
   i32.shl
   local.tee $1
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $9
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 27
   call $~lib/rt/itcms/__new
   local.tee $10
   i32.store offset=4
   local.get $10
   local.get $7
   i32.store offset=12
   local.get $10
   local.get $1
   i32.store offset=8
   local.get $10
   local.get $9
   i32.store offset=4
   local.get $10
   local.get $9
   i32.store
   local.get $10
   local.get $9
   i32.const 0
   call $~lib/rt/itcms/__link
   i32.const 0
   local.set $0
   loop $for-loop|1126
    local.get $0
    local.get $5
    i32.lt_s
    if
     local.get $4
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $1
     if
      local.get $2
      local.get $9
      i32.add
      local.get $1
      i32.load offset=4
      local.get $1
      i32.load offset=8
      local.tee $1
      call $~lib/memory/memory.copy
      local.get $1
      local.get $2
      i32.add
      local.set $2
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|1126
    end
   end
   i32.const 0
   local.set $0
   loop $for-loop|2
    local.get $0
    local.get $7
    i32.lt_s
    if
     local.get $9
     local.get $9
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $10
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 2
   i32.const 27
   i32.const 14512
   call $~lib/rt/__newArray
   local.tee $4
   i32.store offset=52
   local.get $10
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 1110
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $0
   loop $for-loop|2127
    local.get $0
    local.get $4
    i32.load offset=12
    i32.lt_s
    if
     local.get $10
     local.get $0
     call $~lib/array/Array<std/array/Ref|null>#__get
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $4
     local.get $0
     call $~lib/array/Array<std/array/Ref|null>#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     local.get $3
     local.get $1
     call $~lib/string/String.__eq
     i32.eqz
     if
      i32.const 0
      i32.const 1552
      i32.const 1112
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|2127
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 2
   i32.const 2
   i32.const 22
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=60
   local.get $0
   i32.const 0
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 14576
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 1
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 14608
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   local.get $0
   i32.store offset=60
   local.get $0
   call $~lib/array/Array<~lib/array/Array<i32>>#flat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 1116
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/arr
   i32.const 31492
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.gt_s
   if
    loop $while-continue|067
     global.get $~lib/rt/itcms/state
     if
      call $~lib/rt/itcms/step
      drop
      br $while-continue|067
     end
    end
   end
   call $~lib/rt/itcms/step
   drop
   loop $while-continue|1
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|1
    end
   end
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
   global.get $~lib/memory/__stack_pointer
   i32.const 76
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<~lib/string/String>#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.ge_s
  i32.const 1
  local.get $3
  select
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
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
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $4
    i32.store
    local.get $4
    local.get $1
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const -1
 )
 (func $~lib/array/Array<i32>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 16
  i32.const 3
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
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
   i32.const 1056
   i32.const 1104
   i32.const 64
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $std/array/Ref#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 4
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.shl
  local.tee $4
  local.set $6
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.set $1
  local.get $3
  if
   local.get $1
   local.get $3
   local.get $6
   call $~lib/memory/memory.copy
  end
  local.get $5
  local.get $1
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $1
  i32.store
  local.get $2
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $4
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $std/array/internalCapacity<i32> (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_s
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
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
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 229
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.store
  local.get $2
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<i32>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
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
  global.get $~lib/memory/__stack_pointer
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
  local.tee $3
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.store
  local.get $2
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $3
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<i32>#splice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  local.get $2
  local.get $0
  i32.load offset=12
  local.tee $4
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
  i32.sub
  local.tee $3
  local.get $2
  local.get $3
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
  call $~lib/rt/__newArray
  local.tee $3
  i32.store
  local.get $3
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
  local.get $4
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
   local.get $4
   local.get $1
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $4
  local.get $2
  i32.sub
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<std/array/Ref>#splice (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
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
  local.get $2
  i32.const 2
  i32.gt_s
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
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/array/Array<std/array/Ref>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 99
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 5696
   i32.const 1104
   i32.const 103
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<std/array/Ref|null>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 99
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<i32>#map<i32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $4
  i32.load offset=4
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $5
   local.get $2
   local.get $5
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $3
    i32.const 2
    i32.shl
    local.tee $5
    local.get $0
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
    local.get $3
    local.get $0
    local.get $1
    i32.load
    call_indirect $0 (type $i32_i32_i32_=>_i32)
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#filter (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.store
  local.get $0
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $3
   local.get $5
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $4
   local.get $5
   i32.gt_s
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
    i32.const 3
    global.set $~argumentsLength
    local.get $4
    local.get $3
    local.get $0
    local.get $1
    i32.load
    call_indirect $0 (type $i32_i32_i32_=>_i32)
    if
     local.get $2
     local.get $4
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<f32>#sort@varargs (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 7536
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 7536
   i32.store
  end
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/sort/SORT<f32>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#sort@varargs (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 8128
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 8128
   i32.store
  end
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/sort/SORT<u32>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $std/array/createReverseOrderedArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  call $~lib/array/Array<i32>#constructor
  local.tee $1
  i32.store
  loop $for-loop|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    local.get $1
    local.get $2
    local.get $0
    i32.const 1
    i32.sub
    local.get $2
    i32.sub
    call $~lib/array/Array<i32>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $std/array/createRandomOrderedArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  call $~lib/array/Array<i32>#constructor
  local.tee $1
  i32.store
  loop $for-loop|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    local.get $1
    local.get $2
    call $~lib/math/NativeMath.random
    local.get $0
    f64.convert_i32_s
    f64.mul
    i32.trunc_f64_s
    call $~lib/array/Array<i32>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 29
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
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
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 64
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 8
  local.get $1
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $2
  local.get $2
  i32.const 0
  i32.gt_s
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
  local.get $1
  local.get $3
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $4
  local.get $3
  local.get $1
  local.get $1
  local.get $3
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.tee $1
  i32.sub
  local.tee $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 8816
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  local.get $0
  local.get $1
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 9408
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  i32.sub
  local.get $0
  local.get $0
  i32.const 31
  i32.shr_u
  local.tee $1
  select
  local.tee $2
  local.tee $0
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.get $1
  i32.add
  local.tee $3
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  local.get $0
  local.get $2
  local.get $3
  call $~lib/util/number/utoa32_dec_lut
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 9408
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.tee $1
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $1
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $1
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $1
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $1
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $0
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  local.get $1
  local.get $0
  call $~lib/util/number/utoa32_dec_lut
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/util/string/joinFloatArray<f64> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $1
   i32.const 1
   i32.sub
   local.tee $4
   i32.const 0
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 8816
    return
   end
   block $folding-inner0
    local.get $4
    i32.eqz
    if
     local.get $0
     f64.load
     local.set $3
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 15108
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     block $__inlined_func$~lib/util/number/dtoa
      local.get $3
      f64.const 0
      f64.eq
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 11344
       local.set $0
       br $__inlined_func$~lib/util/number/dtoa
      end
      local.get $3
      local.get $3
      f64.sub
      f64.const 0
      f64.ne
      if
       local.get $3
       local.get $3
       f64.ne
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 11376
        local.set $0
        br $__inlined_func$~lib/util/number/dtoa
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 11408
       i32.const 11456
       local.get $3
       f64.const 0
       f64.lt
       select
       local.set $0
       br $__inlined_func$~lib/util/number/dtoa
      end
      i32.const 11488
      local.get $3
      call $~lib/util/number/dtoa_core
      i32.const 1
      i32.shl
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 1
      call $~lib/rt/itcms/__new
      local.tee $0
      i32.store
      local.get $0
      i32.const 11488
      local.get $1
      call $~lib/memory/memory.copy
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 11308
    i32.load
    i32.const 1
    i32.shr_u
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
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    loop $for-loop|0
     local.get $4
     local.get $6
     i32.gt_s
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
       i32.const 11312
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
     local.set $0
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#flat (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
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
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 3
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store offset=4
  local.get $0
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
  i32.store
  local.get $0
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__link
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
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:~lib/array/Array<u32>#get:dataStart (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:std/array/ArrayU32#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 40
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 7
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
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
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1056
    i32.const 1104
    i32.const 64
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   i32.const 2
   i32.shl
   local.tee $3
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 0
   local.get $3
   call $~lib/memory/memory.fill
   local.get $0
   local.get $2
   i32.store
   local.get $0
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $3
   i32.store offset=8
   local.get $0
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u32>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#set:length (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $0
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  block $__inlined_func$~lib/array/Array<u32>#every (result i32)
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $4
   loop $for-loop|0
    local.get $2
    local.get $4
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $4
    i32.gt_s
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
     i32.const 0
     local.get $3
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     i32.eqz
     br_if $__inlined_func$~lib/array/Array<u32>#every
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  i32.const 0
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $4
  block $__inlined_func$~lib/array/Array<u32>#findIndex
   loop $for-loop|0
    local.get $2
    local.get $4
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $4
    i32.gt_s
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
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     br_if $__inlined_func$~lib/array/Array<u32>#findIndex
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:~lib/array/Array<u32>#at (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  i32.const 0
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $1
  i32.const 0
  i32.ge_s
  select
  i32.add
  local.tee $1
  local.get $2
  i32.ge_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 132
   i32.const 33
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#fill@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  local.get $1
  local.set $4
  local.get $0
  local.tee $5
  i32.load offset=4
  local.set $6
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
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $1
   local.get $1
   local.get $2
   i32.gt_s
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
   local.get $1
   local.get $3
   i32.gt_s
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $export:~lib/array/Array<u32>#includes@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  block $__inlined_func$~lib/array/Array<u32>#indexOf
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.ge_s
   i32.const 1
   local.get $3
   select
   if
    i32.const -1
    local.set $2
    br $__inlined_func$~lib/array/Array<u32>#indexOf
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
     br_if $__inlined_func$~lib/array/Array<u32>#indexOf
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  i32.ge_s
 )
 (func $export:~lib/array/Array<u32>#indexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  block $__inlined_func$~lib/array/Array<u32>#indexOf
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.ge_s
   i32.const 1
   local.get $3
   select
   if
    i32.const -1
    local.set $2
    br $__inlined_func$~lib/array/Array<u32>#indexOf
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
     br_if $__inlined_func$~lib/array/Array<u32>#indexOf
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:~lib/array/Array<u32>#lastIndexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.set $3
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
  i32.const -1
  local.set $1
  block $__inlined_func$~lib/array/Array<u32>#lastIndexOf
   local.get $0
   i32.load offset=12
   local.tee $4
   i32.eqz
   br_if $__inlined_func$~lib/array/Array<u32>#lastIndexOf
   local.get $2
   local.get $4
   i32.add
   local.get $4
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $4
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $0
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $3
     local.get $0
     local.get $2
     local.tee $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.eq
     br_if $__inlined_func$~lib/array/Array<u32>#lastIndexOf
     local.get $1
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:~lib/array/Array<u32>#push (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#concat (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
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
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1056
    i32.const 1104
    i32.const 229
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 2
   i32.const 7
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $2
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u32>#copyWithin@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2176
   i32.const 1104
   i32.const 276
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#forEach (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  i32.const 0
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $3
   local.get $4
   i32.gt_s
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
    i32.load
    call_indirect $0 (type $i32_i32_i32_=>_none)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#filter (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.const 2
   i32.const 7
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $0
   i32.load offset=12
   local.set $5
   loop $for-loop|0
    local.get $3
    local.get $5
    local.get $0
    i32.load offset=12
    local.tee $4
    local.get $4
    local.get $5
    i32.gt_s
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
     i32.const 3
     global.set $~argumentsLength
     local.get $4
     local.get $3
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     if
      local.get $2
      local.get $4
      call $~lib/array/Array<i32>#push
      drop
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u32>#shift (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2176
   i32.const 1104
   i32.const 335
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  block $__inlined_func$~lib/array/Array<u32>#some (result i32)
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $4
   loop $for-loop|0
    local.get $2
    local.get $4
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $4
    i32.gt_s
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
     i32.const 1
     local.get $3
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     br_if $__inlined_func$~lib/array/Array<u32>#some
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#unshift (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#unshift
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#slice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
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
   local.tee $3
   i32.const 2
   i32.const 7
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.get $0
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u32>#splice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $4
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
   i32.sub
   local.tee $3
   local.get $2
   local.get $3
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
   call $~lib/rt/__newArray
   local.tee $3
   i32.store
   local.get $3
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
   local.get $4
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
    local.get $4
    local.get $1
    i32.sub
    i32.const 2
    i32.shl
    call $~lib/memory/memory.copy
   end
   local.get $0
   local.get $4
   local.get $2
   i32.sub
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u32>#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
    local.get $1
    local.get $2
    i32.gt_u
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:~lib/array/Array<u32>#sort@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#sort@varargs
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u32>#join@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of1
    block $0of1
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of1 $1of1 $outOfRange
     end
     unreachable
    end
    i32.const 9104
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 9104
    i32.store
   end
   local.get $0
   local.get $1
   call $~lib/array/Array<u32>#join
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
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u32>#flat (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  i32.const 14640
  i32.const 1104
  i32.const 465
  i32.const 7
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u32>#toString (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/array/Array<u32>#toString
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:std/array/ArrayU8#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 41
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 6
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
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
   i32.const 1073741820
   i32.gt_u
   if
    i32.const 1056
    i32.const 1104
    i32.const 64
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   local.tee $3
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 0
   local.get $3
   call $~lib/memory/memory.fill
   local.get $0
   local.get $2
   i32.store
   local.get $0
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $3
   i32.store offset=8
   local.get $0
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u8>#set:length (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $0
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u8>#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  block $__inlined_func$~lib/array/Array<u8>#every (result i32)
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $4
   loop $for-loop|0
    local.get $2
    local.get $4
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $4
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $2
     local.get $0
     i32.load offset=4
     i32.add
     i32.load8_u
     local.set $3
     i32.const 3
     global.set $~argumentsLength
     i32.const 0
     local.get $3
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     i32.eqz
     br_if $__inlined_func$~lib/array/Array<u8>#every
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u8>#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  i32.const 0
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $4
  block $__inlined_func$~lib/array/Array<u8>#findIndex
   loop $for-loop|0
    local.get $2
    local.get $4
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $4
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $2
     local.get $0
     i32.load offset=4
     i32.add
     i32.load8_u
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     br_if $__inlined_func$~lib/array/Array<u8>#findIndex
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:~lib/array/Array<u8>#at (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  i32.const 0
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $1
  i32.const 0
  i32.ge_s
  select
  i32.add
  local.tee $1
  local.get $2
  i32.ge_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 132
   i32.const 33
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u8>#fill@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u8>#includes@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  block $__inlined_func$~lib/array/Array<u8>#indexOf
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.ge_s
   i32.const 1
   local.get $3
   select
   if
    i32.const -1
    local.set $2
    br $__inlined_func$~lib/array/Array<u8>#indexOf
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
     br_if $__inlined_func$~lib/array/Array<u8>#indexOf
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  i32.const 0
  i32.ge_s
 )
 (func $export:~lib/array/Array<u8>#indexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  block $__inlined_func$~lib/array/Array<u8>#indexOf
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $3
   i32.ge_s
   i32.const 1
   local.get $3
   select
   if
    i32.const -1
    local.set $2
    br $__inlined_func$~lib/array/Array<u8>#indexOf
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
     br_if $__inlined_func$~lib/array/Array<u8>#indexOf
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:~lib/array/Array<u8>#lastIndexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.set $3
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
  i32.const -1
  local.set $1
  block $__inlined_func$~lib/array/Array<u8>#lastIndexOf
   local.get $0
   i32.load offset=12
   local.tee $4
   i32.eqz
   br_if $__inlined_func$~lib/array/Array<u8>#lastIndexOf
   local.get $2
   local.get $4
   i32.add
   local.get $4
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $4
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $0
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $2
     local.tee $1
     local.get $0
     i32.add
     i32.load8_u
     local.get $3
     i32.const 255
     i32.and
     i32.eq
     br_if $__inlined_func$~lib/array/Array<u8>#lastIndexOf
     local.get $1
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:~lib/array/Array<u8>#push (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u8>#concat (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $1
   i32.load offset=12
   i32.const 0
   local.get $1
   select
   local.tee $4
   i32.add
   local.tee $3
   i32.const 1073741820
   i32.gt_u
   if
    i32.const 1056
    i32.const 1104
    i32.const 229
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 0
   i32.const 6
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store
   local.get $3
   i32.load offset=4
   local.tee $5
   local.get $0
   i32.load offset=4
   local.get $2
   call $~lib/memory/memory.copy
   local.get $2
   local.get $5
   i32.add
   local.get $1
   i32.load offset=4
   local.get $4
   call $~lib/memory/memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u8>#copyWithin@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  local.get $3
  local.get $0
  local.tee $4
  i32.load offset=12
  local.tee $5
  local.get $3
  local.get $5
  i32.lt_s
  select
  local.set $3
  local.get $0
  i32.load offset=4
  local.tee $6
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $5
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $5
   local.get $1
   local.get $5
   i32.lt_s
   select
  end
  local.tee $1
  i32.add
  local.get $6
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $5
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $5
   local.get $2
   local.get $5
   i32.lt_s
   select
  end
  local.tee $0
  i32.add
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $5
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $3
   local.get $5
   local.get $3
   local.get $5
   i32.lt_s
   select
  end
  local.get $0
  i32.sub
  local.tee $2
  local.get $5
  local.get $1
  i32.sub
  local.tee $0
  local.get $0
  local.get $2
  i32.gt_s
  select
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $export:~lib/array/Array<u8>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2176
   i32.const 1104
   i32.const 276
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u8>#forEach (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  i32.const 0
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $3
   local.get $4
   i32.gt_s
   select
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.load offset=4
    i32.add
    i32.load8_u
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $0
    local.get $1
    i32.load
    call_indirect $0 (type $i32_i32_i32_=>_none)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u8>#filter (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.const 0
   i32.const 6
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $0
   i32.load offset=12
   local.set $5
   loop $for-loop|0
    local.get $3
    local.get $5
    local.get $0
    i32.load offset=12
    local.tee $4
    local.get $4
    local.get $5
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $3
     local.get $0
     i32.load offset=4
     i32.add
     i32.load8_u
     local.set $4
     i32.const 3
     global.set $~argumentsLength
     local.get $4
     local.get $3
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     if
      local.get $2
      local.get $4
      call $~lib/array/Array<u8>#push
      drop
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u8>#shift (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 2176
   i32.const 1104
   i32.const 335
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u8>#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  block $__inlined_func$~lib/array/Array<u8>#some (result i32)
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $4
   loop $for-loop|0
    local.get $2
    local.get $4
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $4
    i32.gt_s
    select
    i32.lt_s
    if
     local.get $2
     local.get $0
     i32.load offset=4
     i32.add
     i32.load8_u
     local.set $3
     i32.const 3
     global.set $~argumentsLength
     i32.const 1
     local.get $3
     local.get $2
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     br_if $__inlined_func$~lib/array/Array<u8>#some
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<u8>#unshift (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.add
  local.tee $2
  i32.const 0
  i32.const 1
  call $~lib/array/ensureCapacity
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:~lib/array/Array<u8>#slice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
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
   local.tee $3
   i32.const 0
   i32.const 6
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.get $1
   local.get $0
   i32.load offset=4
   i32.add
   local.get $3
   call $~lib/memory/memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u8>#splice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $4
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
   i32.sub
   local.tee $3
   local.get $2
   local.get $3
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
   call $~lib/rt/__newArray
   local.tee $3
   i32.store
   local.get $3
   i32.load offset=4
   local.get $1
   local.get $0
   i32.load offset=4
   local.tee $5
   i32.add
   local.tee $6
   local.get $2
   call $~lib/memory/memory.copy
   local.get $4
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
    local.get $4
    local.get $1
    i32.sub
    call $~lib/memory/memory.copy
   end
   local.get $0
   local.get $4
   local.get $2
   i32.sub
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u8>#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
    local.get $1
    local.get $2
    i32.gt_u
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:~lib/array/Array<u8>#sort@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of1
    block $0of1
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of1 $1of1 $outOfRange
     end
     unreachable
    end
    i32.const 14704
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 14704
    i32.store
   end
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=12
   local.get $1
   call $~lib/util/sort/SORT<u8>
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u8>#join@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of1
    block $0of1
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of1 $1of1 $outOfRange
     end
     unreachable
    end
    i32.const 9104
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 9104
    i32.store
   end
   local.get $0
   local.get $1
   call $~lib/array/Array<u8>#join
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
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<u8>#toString (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/array/Array<u8>#toString
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:std/array/ArrayStr#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.const 42
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   call $~lib/array/Array<~lib/string/String>#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   block $__inlined_func$~lib/array/Array<~lib/string/String>#every (result i32)
    local.get $2
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 15108
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    local.get $0
    i32.load offset=12
    local.set $2
    loop $for-loop|0
     local.get $3
     local.get $2
     local.get $0
     i32.load offset=12
     local.tee $4
     local.get $2
     local.get $4
     i32.lt_s
     select
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.get $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $4
      i32.store
      i32.const 3
      global.set $~argumentsLength
      local.get $4
      local.get $3
      local.get $0
      local.get $1
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 0
       br $__inlined_func$~lib/array/Array<~lib/string/String>#every
      end
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=12
   local.set $3
   block $__inlined_func$~lib/array/Array<~lib/string/String>#findIndex
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
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $4
      i32.store
      i32.const 3
      global.set $~argumentsLength
      local.get $4
      local.get $2
      local.get $0
      local.get $1
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$~lib/array/Array<~lib/string/String>#findIndex
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const -1
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#at (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $1
   i32.const 0
   i32.ge_s
   select
   i32.add
   local.tee $1
   local.get $2
   i32.ge_u
   if
    i32.const 1344
    i32.const 1104
    i32.const 132
    i32.const 33
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 5696
    i32.const 1104
    i32.const 136
    i32.const 40
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#fill@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  local.get $0
  i32.store
  local.get $4
  local.get $1
  i32.store offset=4
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
    local.get $0
    local.get $1
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:~lib/array/Array<~lib/string/String>#includes@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store
  local.get $3
  local.get $1
  i32.store offset=4
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
  i32.const 0
  i32.ge_s
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<~lib/string/String>#indexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store
  local.get $3
  local.get $1
  i32.store offset=4
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
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<~lib/string/String>#lastIndexOf@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/array/Array<~lib/string/String>#lastIndexOf
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const -1
     local.set $2
     br $__inlined_func$~lib/array/Array<~lib/string/String>#lastIndexOf
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
    local.set $0
    loop $while-continue|0
     local.get $2
     i32.const 0
     i32.ge_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $3
      i32.store
      local.get $3
      local.get $1
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$~lib/array/Array<~lib/string/String>#lastIndexOf
      end
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $while-continue|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const -1
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:~lib/array/Array<~lib/string/String>#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $1
   i32.load offset=12
   i32.const 0
   local.get $1
   select
   local.tee $6
   local.get $0
   i32.load offset=12
   local.tee $4
   i32.add
   local.tee $2
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1056
    i32.const 1104
    i32.const 229
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 2
   i32.const 29
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.set $5
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
     local.get $3
     local.get $5
     i32.add
     local.get $0
     local.get $3
     i32.add
     i32.load
     local.tee $7
     i32.store
     local.get $2
     local.get $7
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $3
     i32.const 4
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   local.get $4
   local.get $5
   i32.add
   local.set $3
   local.get $1
   i32.load offset=4
   local.set $1
   local.get $6
   i32.const 2
   i32.shl
   local.set $5
   i32.const 0
   local.set $0
   loop $for-loop|1
    local.get $0
    local.get $5
    i32.lt_u
    if
     local.get $0
     local.get $3
     i32.add
     local.get $0
     local.get $1
     i32.add
     i32.load
     local.tee $4
     i32.store
     local.get $2
     local.get $4
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $0
     i32.const 4
     i32.add
     local.set $0
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=12
   local.tee $1
   i32.const 1
   i32.lt_s
   if
    i32.const 2176
    i32.const 1104
    i32.const 276
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
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
   local.tee $3
   i32.store
   local.get $0
   local.get $1
   i32.store offset=12
   local.get $2
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#forEach (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=12
   local.set $2
   loop $for-loop|0
    local.get $3
    local.get $2
    local.get $0
    i32.load offset=12
    local.tee $4
    local.get $2
    local.get $4
    i32.lt_s
    select
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $4
     i32.store
     i32.const 3
     global.set $~argumentsLength
     local.get $4
     local.get $3
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_none)
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
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
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#filter (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.const 2
   i32.const 29
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $0
   i32.load offset=12
   local.set $5
   loop $for-loop|0
    local.get $3
    local.get $5
    local.get $0
    i32.load offset=12
    local.tee $4
    local.get $4
    local.get $5
    i32.gt_s
    select
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $4
     i32.store offset=4
     i32.const 3
     global.set $~argumentsLength
     local.get $4
     local.get $3
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     if
      local.get $2
      local.get $4
      call $~lib/array/Array<~lib/string/String>#push
      drop
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#shift (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=12
   local.tee $2
   i32.const 1
   i32.lt_s
   if
    i32.const 2176
    i32.const 1104
    i32.const 335
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.load
   local.tee $3
   i32.store
   local.get $1
   local.get $1
   i32.const 4
   i32.add
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 2
   i32.shl
   local.tee $4
   call $~lib/memory/memory.copy
   local.get $1
   local.get $4
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   block $__inlined_func$~lib/array/Array<~lib/string/String>#some (result i32)
    local.get $2
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 15108
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    local.get $0
    i32.load offset=12
    local.set $2
    loop $for-loop|0
     local.get $3
     local.get $2
     local.get $0
     i32.load offset=12
     local.tee $4
     local.get $2
     local.get $4
     i32.lt_s
     select
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.get $3
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $4
      i32.store
      i32.const 3
      global.set $~argumentsLength
      local.get $4
      local.get $3
      local.get $0
      local.get $1
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 1
       br $__inlined_func$~lib/array/Array<~lib/string/String>#some
      end
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#unshift (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.const 1
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
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:~lib/array/Array<~lib/string/String>#slice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
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
   local.tee $3
   i32.const 2
   i32.const 29
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.set $4
   local.get $0
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.set $1
   i32.const 0
   local.set $0
   local.get $3
   i32.const 2
   i32.shl
   local.set $3
   loop $while-continue|0
    local.get $0
    local.get $3
    i32.lt_u
    if
     local.get $0
     local.get $4
     i32.add
     local.get $0
     local.get $1
     i32.add
     i32.load
     local.tee $5
     i32.store
     local.get $2
     local.get $5
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $0
     i32.const 4
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#splice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $4
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
   i32.sub
   local.tee $3
   local.get $2
   local.get $3
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
   i32.const 29
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store
   local.get $3
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
   local.get $4
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
    local.get $4
    local.get $1
    i32.sub
    i32.const 2
    i32.shl
    call $~lib/memory/memory.copy
   end
   local.get $0
   local.get $4
   local.get $2
   i32.sub
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
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
    local.set $2
    loop $while-continue|0
     local.get $1
     local.get $2
     i32.lt_u
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load
      local.tee $3
      i32.store
      local.get $1
      local.get $2
      i32.load
      i32.store
      local.get $2
      local.get $3
      i32.store
      local.get $1
      i32.const 4
      i32.add
      local.set $1
      local.get $2
      i32.const 4
      i32.sub
      local.set $2
      br $while-continue|0
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#sort@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of1
    block $0of1
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of1 $1of1 $outOfRange
     end
     unreachable
    end
    i32.const 14736
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 14736
    i32.store
   end
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=12
   local.get $1
   call $~lib/util/sort/SORT<~lib/array/Array<i32>>
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#join@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15108
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of1
    block $0of1
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of1 $1of1 $outOfRange
     end
     unreachable
    end
    i32.const 9104
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 9104
    i32.store
   end
   local.get $0
   local.get $1
   call $~lib/array/Array<~lib/string/String|null>#join
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
  i32.const 31520
  i32.const 31568
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#toString (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15108
  i32.lt_s
  if
   i32.const 31520
   i32.const 31568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/array/Array<~lib/string/String|null>#toString
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
